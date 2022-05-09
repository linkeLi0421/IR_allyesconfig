; ModuleID = '/llk/IR_all_yes/drivers/scsi/bnx2i/bnx2i_iscsi.c_pt.bc'
source_filename = "../drivers/scsi/bnx2i/bnx2i_iscsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iscsi_transport = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.bnx2i_percpu_s = type { ptr, %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bnx2i_cmd = type { %struct.iscsi_hdr, ptr, ptr, ptr, %struct.io_bdt, i32, %struct.bnx2i_cmd_request }
%struct.iscsi_hdr = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, [12 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.io_bdt = type { ptr, i32, i16 }
%struct.bnx2i_cmd_request = type { i8, i8, i16, i16, i16, [2 x i32], i16, i16, i32, i32, i32, [4 x i32], i32, i32, i32, i8, i8, i8, i8 }
%struct.bnx2i_hba = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, i32, %struct.iscsi_cid_queue, %struct.rwlock_t, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, %struct.spinlock, %struct.mutex, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bnx2i_stats_info, %struct.iscsi_stats_info }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iscsi_cid_queue = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bnx2i_stats_info = type { i64, i64, i64, i64 }
%struct.iscsi_stats_info = type { [12 x i8], [8 x i8], [8 x i8], i32, [64 x i8], [64 x i8], [64 x i8], [16 x i8], i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_cls_session = type { %struct.list_head, ptr, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i8, %struct.delayed_work, i32, i8, i32, i32, i32, ptr, %struct.device }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.bnx2i_endpoint = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i32, %struct.qp_info, %struct.ep_handles, %struct.timer_list, %struct.wait_queue_head }
%struct.qp_info = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32 }
%struct.ep_handles = type { i32, i32, i16, i16 }
%struct.cnic_dev = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, [6 x i8], i32, i32, i32, i32, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.130, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.130 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.iscsi_bd = type { i32, i32, i16, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iscsi_cls_conn = type { %struct.list_head, ptr, ptr, i32, %struct.mutex, ptr, i32, %struct.work_struct, %struct.device, i32 }
%struct.iscsi_conn = type { ptr, ptr, ptr, i32, %struct.timer_list, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_session = type { ptr, %struct.mutex, %struct.wait_queue_head, %struct.iscsi_tm, %struct.timer_list, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.iscsi_pool, ptr }
%struct.iscsi_tm = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.iscsi_pool = type { %struct.kfifo, ptr, i32 }
%struct.kfifo = type { %union.anon.112, [0 x i8] }
%union.anon.112 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.91, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.91 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.iscsi_task = type { ptr, i16, i16, i32, i32, %struct.scsi_lun, i32, i32, %struct.iscsi_r2t_info, ptr, i32, ptr, ptr, i32, i32, i8, i8, i32, %struct.refcount_struct, %struct.list_head, ptr }
%struct.iscsi_r2t_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bnx2i_conn = type { ptr, ptr, %struct.completion, i32, i32, %struct.timer_list, ptr, %struct.generic_pdu_resc, i64, %struct.atomic_t }
%struct.generic_pdu_resc = type { ptr, i32, i32, ptr, %struct.iscsi_hdr, ptr, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.bnx2i_work = type { %struct.list_head, ptr, ptr, %struct.cqe }
%struct.cqe = type { [64 x i8] }
%struct.cnic_sock = type { ptr, ptr, [4 x i32], [4 x i32], i16, i16, i16, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.kwqe, %struct.kwqe, %struct.kwqe }
%struct.kwqe = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_stats = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.iscsi_stats_custom] }
%struct.iscsi_stats_custom = type { [64 x i8], i64 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_scsi_req = type { i8, i8, i16, i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, [16 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.cnic_sockaddr = type { %union.anon.131, %union.anon.132 }
%union.anon.131 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%union.anon.132 = type { %struct.sockaddr_in6 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.115, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.129, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.115 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.129 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@bnx2i_get_conn_from_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2i: ERROR - missing conn<->cid table\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2i_get_conn_from_id\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/bnx2i/bnx2i_iscsi.c\00", [63 x i8] zeroinitializer }, align 32
@bnx2i_get_conn_from_id._entry_ptr = internal global ptr @bnx2i_get_conn_from_id._entry, section ".printk_index", align 4
@bnx2i_get_conn_from_id._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013bnx2i: wrong cid #%d\0A\00", [40 x i8] zeroinitializer }, align 32
@bnx2i_get_conn_from_id._entry_ptr.5 = internal global ptr @bnx2i_get_conn_from_id._entry.3, section ".printk_index", align 4
@bnx2i_find_ep_in_ofld_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013l5 cid %d not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2i_find_ep_in_ofld_list\00", [37 x i8] zeroinitializer }, align 32
@bnx2i_find_ep_in_ofld_list._entry_ptr = internal global ptr @bnx2i_find_ep_in_ofld_list._entry, section ".printk_index", align 4
@bnx2i_find_ep_in_destroy_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.8, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bnx2i_find_ep_in_destroy_list\00", [34 x i8] zeroinitializer }, align 32
@bnx2i_find_ep_in_destroy_list._entry_ptr = internal global ptr @bnx2i_find_ep_in_destroy_list._entry, section ".printk_index", align 4
@bnx2i_host_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @iscsi_queuecommand, ptr null, ptr null, ptr @.str.34, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_eh_abort, ptr @iscsi_eh_device_reset, ptr @iscsi_eh_recover_target, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_target_alloc, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_eh_cmd_timed_out, ptr null, ptr null, ptr @.str.22, ptr null, i32 2048, i32 -1, i16 32, i16 0, i32 127, i32 0, i32 0, i32 0, i16 128, i8 0, i32 0, i8 -128, i32 0, ptr @bnx2i_dev_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@bnx2i_scsi_xport_template = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@bnx2i_alloc_hba.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&hba->ep_rdwr_lock\00", [45 x i8] zeroinitializer }, align 32
@sq_size = external dso_local local_unnamed_addr global i32, align 4
@rq_size = external dso_local local_unnamed_addr global i32, align 4
@bnx2i_alloc_hba.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&hba->lock\00", [21 x i8] zeroinitializer }, align 32
@bnx2i_alloc_hba.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&hba->net_dev_lock\00", [45 x i8] zeroinitializer }, align 32
@bnx2i_alloc_hba.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&hba->eh_wait\00", [18 x i8] zeroinitializer }, align 32
@bnx2i_hw_ep_disconnect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&bnx2i_ep->ofld_timer)\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bnx2i_hw_ep_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 2074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\011bnx2i (%s): WARNING logout response was not received!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2i_hw_ep_disconnect\00", [41 x i8] zeroinitializer }, align 32
@bnx2i_hw_ep_disconnect._entry_ptr = internal global ptr @bnx2i_hw_ep_disconnect._entry, section ".printk_index", align 4
@bnx2i_hw_ep_disconnect._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 2094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\011bnx2i (%s): close/abort(%d) returned %d\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2i_hw_ep_disconnect._entry_ptr.21 = internal global ptr @bnx2i_hw_ep_disconnect._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bnx2i\00", [26 x i8] zeroinitializer }, align 32
@bnx2i_iscsi_transport = dso_local global { %struct.iscsi_transport, [60 x i8] } { %struct.iscsi_transport { ptr null, ptr @.str.22, i32 2233, ptr @bnx2i_session_create, ptr @bnx2i_session_destroy, ptr @bnx2i_conn_create, ptr @iscsi_conn_unbind, ptr @bnx2i_conn_bind, ptr @bnx2i_conn_start, ptr @iscsi_conn_stop, ptr @bnx2i_conn_destroy, ptr @iscsi_set_param, ptr @bnx2i_ep_get_param, ptr @iscsi_conn_get_param, ptr @iscsi_session_get_param, ptr @bnx2i_host_get_param, ptr null, ptr @iscsi_conn_send_pdu, ptr @bnx2i_conn_get_stats, ptr null, ptr @bnx2i_task_xmit, ptr @bnx2i_cleanup_task, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_session_recovery_timedout, ptr @bnx2i_ep_connect, ptr @bnx2i_ep_poll, ptr @bnx2i_ep_disconnect, ptr null, ptr @bnx2i_nl_set_path, ptr null, ptr null, ptr @bnx2i_attr_is_visible, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@bnx2i_setup_mp_bdt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013unable to allocate Middle Path BDT\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2i_setup_mp_bdt\00", [45 x i8] zeroinitializer }, align 32
@bnx2i_setup_mp_bdt._entry_ptr = internal global ptr @bnx2i_setup_mp_bdt._entry, section ".printk_index", align 4
@bnx2i_setup_mp_bdt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013unable to alloc Middle Path Dummy Buffer\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2i_setup_mp_bdt._entry_ptr.27 = internal global ptr @bnx2i_setup_mp_bdt._entry.25, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bnx2i_tear_down_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 1733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [125 x i8], [35 x i8] } { [125 x i8] c"\011bnx2i (%s): - WARN - CONN_DISCON timed out, please submit GRC Dump, NW/PCIe trace, driver msgs to developers for analysis\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2i_tear_down_conn\00", [43 x i8] zeroinitializer }, align 32
@bnx2i_tear_down_conn._entry_ptr = internal global ptr @bnx2i_tear_down_conn._entry, section ".printk_index", align 4
@bnx2i_tear_down_conn.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&ep->ofld_timer)\00", [46 x i8] zeroinitializer }, align 32
@bnx2i_tear_down_conn._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.2, i32 1758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\011bnx2i - conn destroy failed\0A\00", [33 x i8] zeroinitializer }, align 32
@bnx2i_tear_down_conn._entry_ptr.33 = internal global ptr @bnx2i_tear_down_conn._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"QLogic Offload iSCSI Initiator\00", [33 x i8] zeroinitializer }, align 32
@bnx2i_dev_groups = external dso_local global [0 x ptr], align 4
@bnx2i_session_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013bnx2i: missing ep.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2i_session_create\00", [43 x i8] zeroinitializer }, align 32
@bnx2i_session_create._entry_ptr = internal global ptr @bnx2i_session_create._entry, section ".printk_index", align 4
@bnx2i_alloc_bdt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 455, ptr @.str.39, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not allocate bdt.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2i_alloc_bdt\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bnx2i_alloc_bdt._entry_ptr = internal global ptr @bnx2i_alloc_bdt._entry, section ".printk_index", align 4
@bnx2i_conn_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1381, ptr @.str.43, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"conn_new: login resc alloc failed!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnx2i_conn_create\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@bnx2i_conn_create._entry_ptr = internal global ptr @bnx2i_conn_create._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@bnx2i_conn_alloc_login_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1034, ptr @.str.39, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"login resource alloc failed!!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bnx2i_conn_alloc_login_resources\00", [63 x i8] zeroinitializer }, align 32
@bnx2i_conn_alloc_login_resources._entry_ptr = internal global ptr @bnx2i_conn_alloc_login_resources._entry, section ".printk_index", align 4
@bnx2i_conn_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1446, ptr @.str.43, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"conn bind, ep=0x%p (%s) does not\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2i_conn_bind\00", [16 x i8] zeroinitializer }, align 32
@bnx2i_conn_bind._entry_ptr = internal global ptr @bnx2i_conn_bind._entry, section ".printk_index", align 4
@bnx2i_conn_bind._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 1449, ptr @.str.43, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"belong to hba (%s)\0A\00", [44 x i8] zeroinitializer }, align 32
@bnx2i_conn_bind._entry_ptr.51 = internal global ptr @bnx2i_conn_bind._entry.49, section ".printk_index", align 4
@bnx2i_bind_conn_to_iscsi_cid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 244, ptr @.str.43, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"conn bind - entry #%d not free\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bnx2i_bind_conn_to_iscsi_cid\00", [35 x i8] zeroinitializer }, align 32
@bnx2i_bind_conn_to_iscsi_cid._entry_ptr = internal global ptr @bnx2i_bind_conn_to_iscsi_cid._entry, section ".printk_index", align 4
@bnx2i_conn_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(&bnx2i_conn->ep->ofld_timer)\00", [34 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@bnx2i_percpu = external dso_local global %struct.bnx2i_percpu_s, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI4\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI6\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eh_abort_cnt\00", [19 x i8] zeroinitializer }, align 32
@bnx2i_iscsi_send_generic_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1114, ptr @.str.43, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"send_gen: unsupported op 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bnx2i_iscsi_send_generic_request\00", [63 x i8] zeroinitializer }, align 32
@bnx2i_iscsi_send_generic_request._entry_ptr = internal global ptr @bnx2i_iscsi_send_generic_request._entry, section ".printk_index", align 4
@bnx2i_setup_write_cmd_bd_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 122, ptr @.str.43, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"bnx2i- error, buf offset 0x%x bd_valid %d use_sg %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bnx2i_setup_write_cmd_bd_info\00", [34 x i8] zeroinitializer }, align 32
@bnx2i_setup_write_cmd_bd_info._entry_ptr = internal global ptr @bnx2i_setup_write_cmd_bd_info._entry, section ".printk_index", align 4
@bnx2i_setup_write_cmd_bd_info._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 127, ptr @.str.43, ptr @.str.40 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2i err, bd[%d]: len %x\0A\00", [37 x i8] zeroinitializer }, align 32
@bnx2i_setup_write_cmd_bd_info._entry_ptr.66 = internal global ptr @bnx2i_setup_write_cmd_bd_info._entry.64, section ".printk_index", align 4
@bnx2i_ep_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\011bnx2i (%s): alloc_ep - unable to allocate iscsi cid\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2i_ep_connect\00", [47 x i8] zeroinitializer }, align 32
@bnx2i_ep_connect._entry_ptr = internal global ptr @bnx2i_ep_connect._entry, section ".printk_index", align 4
@bnx2i_ep_connect._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\011bnx2i (%s): ep_conn - alloc QP resc error\0A\00", [51 x i8] zeroinitializer }, align 32
@bnx2i_ep_connect._entry_ptr.71 = internal global ptr @bnx2i_ep_connect._entry.69, section ".printk_index", align 4
@bnx2i_ep_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bnx2i_ep_connect._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 1848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\011bnx2i (%s): iscsi cid %d is busy\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2i_ep_connect._entry_ptr.74 = internal global ptr @bnx2i_ep_connect._entry.72, section ".printk_index", align 4
@bnx2i_ep_connect._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.68, ptr @.str.2, i32 1853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\011bnx2i (%s): unable to send conn offld kwqe\0A\00", [50 x i8] zeroinitializer }, align 32
@bnx2i_ep_connect._entry_ptr.77 = internal global ptr @bnx2i_ep_connect._entry.75, section ".printk_index", align 4
@bnx2i_ep_connect._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 1871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2i_ep_connect._entry_ptr.79 = internal global ptr @bnx2i_ep_connect._entry.78, section ".printk_index", align 4
@bnx2i_check_route._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 1680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\011bnx2i: no route,can't connect using cnic\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnx2i_check_route\00", [46 x i8] zeroinitializer }, align 32
@bnx2i_check_route._entry_ptr = internal global ptr @bnx2i_check_route._entry, section ".printk_index", align 4
@bnx2i_check_route._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 1688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\011bnx2i: check route, hba not found\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2i_check_route._entry_ptr.84 = internal global ptr @bnx2i_check_route._entry.82, section ".printk_index", align 4
@bnx2i_check_route._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.2, i32 1693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\011bnx2i: %s network i/f mtu is set to %d\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2i_check_route._entry_ptr.87 = internal global ptr @bnx2i_check_route._entry.85, section ".printk_index", align 4
@bnx2i_check_route._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str.2, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\011bnx2i: iSCSI HBA can support mtu of %d\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2i_check_route._entry_ptr.90 = internal global ptr @bnx2i_check_route._entry.88, section ".printk_index", align 4
@bnx2i_alloc_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013bnx2i: Could not allocate ep\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2i_alloc_ep\00", [17 x i8] zeroinitializer }, align 32
@bnx2i_alloc_ep._entry_ptr = internal global ptr @bnx2i_alloc_ep._entry, section ".printk_index", align 4
@event_coal_div = external dso_local local_unnamed_addr global i32, align 4
@bnx2i_alloc_ep.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&bnx2i_ep->ofld_wait\00", [43 x i8] zeroinitializer }, align 32
@bnx2i_resc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.94, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2i_resc_lock\00", [16 x i8] zeroinitializer }, align 32
@switch.table.bnx2i_attr_is_visible = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 292, i16 0, i16 292, i16 292], [24 x i8] zeroinitializer }, align 32
@switch.table.bnx2i_attr_is_visible.95 = internal constant { [42 x i16], [44 x i8] } { [42 x i16] [i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 0, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 0, i16 0, i16 0, i16 292, i16 292, i16 292], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 536870912]
@__sancov_gen_cov_switch_values.96 = internal global [12 x i64] [i64 10, i64 32, i64 16, i64 32, i64 64, i64 128, i64 4096, i64 8192, i64 16384, i64 32768, i64 33554432, i64 268435456]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 4096]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 4096]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 21]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.103 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 2147483648]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 32, i64 134217728, i64 268435456]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 134217728, i64 268435456]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 134217728, i64 268435456]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 536870912]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 262, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 266, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 689, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 717, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c"bnx2i_host_template\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 2253, i32 34 }
@___asan_gen_.148 = private unnamed_addr constant [26 x i8] c"bnx2i_scsi_xport_template\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 23, i32 33 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 832, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 865, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 866, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 867, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 2058, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 2071, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 2093, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 2275, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant [22 x i8] c"bnx2i_iscsi_transport\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 2273, i32 24 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 532, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 541, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1730, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1737, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1758, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 2255, i32 12 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1294, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 454, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1380, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 87, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1033, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1444, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1447, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 243, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1620, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1541, i32 23 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1547, i32 23 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1574, i32 22 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1589, i32 24 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1657, i32 32 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1112, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 118, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 124, i32 5 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1821, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1831, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1841, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1847, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1852, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1870, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1679, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1688, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1692, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 1694, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 389, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 406, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [16 x i8] c"bnx2i_resc_lock\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.440 = private constant [36 x i8] c"../drivers/scsi/bnx2i/bnx2i_iscsi.c\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 30, i32 8 }
@___asan_gen_.442 = private unnamed_addr constant [35 x i8] c"switch.table.bnx2i_attr_is_visible\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [38 x i8] c"switch.table.bnx2i_attr_is_visible.95\00", align 1
@llvm.compiler.used = appending global [142 x ptr] [ptr @bnx2i_alloc_bdt._entry, ptr @bnx2i_alloc_bdt._entry_ptr, ptr @bnx2i_alloc_ep._entry, ptr @bnx2i_alloc_ep._entry_ptr, ptr @bnx2i_bind_conn_to_iscsi_cid._entry, ptr @bnx2i_bind_conn_to_iscsi_cid._entry_ptr, ptr @bnx2i_check_route._entry, ptr @bnx2i_check_route._entry.82, ptr @bnx2i_check_route._entry.85, ptr @bnx2i_check_route._entry.88, ptr @bnx2i_check_route._entry_ptr, ptr @bnx2i_check_route._entry_ptr.84, ptr @bnx2i_check_route._entry_ptr.87, ptr @bnx2i_check_route._entry_ptr.90, ptr @bnx2i_conn_alloc_login_resources._entry, ptr @bnx2i_conn_alloc_login_resources._entry_ptr, ptr @bnx2i_conn_bind._entry, ptr @bnx2i_conn_bind._entry.49, ptr @bnx2i_conn_bind._entry_ptr, ptr @bnx2i_conn_bind._entry_ptr.51, ptr @bnx2i_conn_create._entry, ptr @bnx2i_conn_create._entry_ptr, ptr @bnx2i_ep_connect._entry, ptr @bnx2i_ep_connect._entry.69, ptr @bnx2i_ep_connect._entry.72, ptr @bnx2i_ep_connect._entry.75, ptr @bnx2i_ep_connect._entry.78, ptr @bnx2i_ep_connect._entry_ptr, ptr @bnx2i_ep_connect._entry_ptr.71, ptr @bnx2i_ep_connect._entry_ptr.74, ptr @bnx2i_ep_connect._entry_ptr.77, ptr @bnx2i_ep_connect._entry_ptr.79, ptr @bnx2i_find_ep_in_destroy_list._entry, ptr @bnx2i_find_ep_in_destroy_list._entry_ptr, ptr @bnx2i_find_ep_in_ofld_list._entry, ptr @bnx2i_find_ep_in_ofld_list._entry_ptr, ptr @bnx2i_get_conn_from_id._entry, ptr @bnx2i_get_conn_from_id._entry.3, ptr @bnx2i_get_conn_from_id._entry_ptr, ptr @bnx2i_get_conn_from_id._entry_ptr.5, ptr @bnx2i_hw_ep_disconnect._entry, ptr @bnx2i_hw_ep_disconnect._entry.19, ptr @bnx2i_hw_ep_disconnect._entry_ptr, ptr @bnx2i_hw_ep_disconnect._entry_ptr.21, ptr @bnx2i_iscsi_send_generic_request._entry, ptr @bnx2i_iscsi_send_generic_request._entry_ptr, ptr @bnx2i_session_create._entry, ptr @bnx2i_session_create._entry_ptr, ptr @bnx2i_setup_mp_bdt._entry, ptr @bnx2i_setup_mp_bdt._entry.25, ptr @bnx2i_setup_mp_bdt._entry_ptr, ptr @bnx2i_setup_mp_bdt._entry_ptr.27, ptr @bnx2i_setup_write_cmd_bd_info._entry, ptr @bnx2i_setup_write_cmd_bd_info._entry.64, ptr @bnx2i_setup_write_cmd_bd_info._entry_ptr, ptr @bnx2i_setup_write_cmd_bd_info._entry_ptr.66, ptr @bnx2i_tear_down_conn._entry, ptr @bnx2i_tear_down_conn._entry.31, ptr @bnx2i_tear_down_conn._entry_ptr, ptr @bnx2i_tear_down_conn._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @bnx2i_host_template, ptr @bnx2i_scsi_xport_template, ptr @bnx2i_alloc_hba.__key, ptr @.str.9, ptr @bnx2i_alloc_hba.__key.10, ptr @.str.11, ptr @bnx2i_alloc_hba.__key.12, ptr @.str.13, ptr @bnx2i_alloc_hba.__key.14, ptr @.str.15, ptr @bnx2i_hw_ep_disconnect.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @bnx2i_iscsi_transport, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @bnx2i_tear_down_conn.__key, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @init_completion.__key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @bnx2i_conn_start.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @bnx2i_ep_connect.__key, ptr @.str.73, ptr @.str.76, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @bnx2i_alloc_ep.__key, ptr @.str.93, ptr @bnx2i_resc_lock, ptr @.str.94, ptr @switch.table.bnx2i_attr_is_visible, ptr @switch.table.bnx2i_attr_is_visible.95], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_get_conn_from_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_get_conn_from_id._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_find_ep_in_ofld_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_find_ep_in_destroy_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_scsi_xport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_alloc_hba.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_alloc_hba.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_alloc_hba.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_alloc_hba.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_hw_ep_disconnect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_hw_ep_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_hw_ep_disconnect._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_iscsi_transport to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_setup_mp_bdt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_setup_mp_bdt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_tear_down_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_tear_down_conn.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_tear_down_conn._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_session_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_alloc_bdt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_conn_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_conn_alloc_login_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_conn_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_conn_bind._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_bind_conn_to_iscsi_cid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_conn_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_iscsi_send_generic_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_setup_write_cmd_bd_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_setup_write_cmd_bd_info._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_ep_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_ep_connect._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_ep_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_ep_connect._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_ep_connect._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_ep_connect._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_check_route._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_check_route._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_check_route._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_check_route._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_alloc_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_alloc_ep.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_resc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bnx2i_attr_is_visible to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bnx2i_attr_is_visible.95 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2i_iscsi_unmap_sg_list(ptr nocapture noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_cmd = getelementptr inbounds %struct.bnx2i_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %scsi_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsi_cmd, align 4
  %bd_valid = getelementptr inbounds %struct.bnx2i_cmd, ptr %cmd, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %bd_valid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bd_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_dma_unmap(ptr noundef nonnull %1) #13
  %4 = ptrtoint ptr %bd_valid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %bd_valid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bnx2i_get_conn_from_id(ptr nocapture noundef readonly %hba, i16 noundef zeroext %iscsi_cid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_cid_tbl = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 20, i32 6
  %0 = ptrtoint ptr %conn_cid_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_cid_tbl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %return

if.else:                                          ; preds = %entry
  %conv = zext i16 %iscsi_cid to i32
  %max_active_conns = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 19
  %2 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_active_conns, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp sgt i32 %3, %conv
  br i1 %cmp.not, label %if.end8, label %do.end4

do.end4:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv) #16
  br label %return

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr ptr, ptr %1, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end8, %do.end4, %do.end
  %retval.0 = phi ptr [ null, %do.end4 ], [ %5, %if.end8 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2i_drop_session(ptr nocapture noundef readonly %cls_session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 16
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  tail call void @iscsi_session_failure(ptr noundef %1, i32 noundef 1011) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_failure(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bnx2i_find_ep_in_ofld_list(ptr noundef %hba, i32 noundef %iscsi_cid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_rdwr_lock = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 21
  tail call void @_raw_read_lock_bh(ptr noundef %ep_rdwr_lock) #13
  %ep_ofld_list = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 22
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %list.0.in = phi ptr [ %ep_ofld_list, %entry ], [ %list.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %list.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %list.0 = load ptr, ptr %list.0.in, align 4
  %cmp.i.not = icmp eq ptr %list.0, %ep_ofld_list
  br i1 %cmp.i.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_read_unlock_bh(ptr noundef %ep_rdwr_lock) #13
  br label %do.end

for.body:                                         ; preds = %for.cond
  %drv_iscsi_cid = getelementptr inbounds %struct.bnx2i_endpoint, ptr %list.0, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %drv_iscsi_cid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %drv_iscsi_cid, align 4
  %cmp = icmp eq i32 %2, %iscsi_cid
  br i1 %cmp, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body
  tail call void @_raw_read_unlock_bh(ptr noundef %ep_rdwr_lock) #13
  %tobool5.not = icmp eq ptr %list.0, null
  br i1 %tobool5.not, label %for.end.do.end_crit_edge, label %for.end.if.end9_crit_edge

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.end.thread
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %iscsi_cid) #16
  br label %if.end9

if.end9:                                          ; preds = %do.end, %for.end.if.end9_crit_edge
  %ep.121 = phi ptr [ null, %do.end ], [ %list.0, %for.end.if.end9_crit_edge ]
  ret ptr %ep.121
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bnx2i_find_ep_in_destroy_list(ptr noundef %hba, i32 noundef %iscsi_cid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_rdwr_lock = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 21
  tail call void @_raw_read_lock_bh(ptr noundef %ep_rdwr_lock) #13
  %ep_destroy_list = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 24
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %list.0.in = phi ptr [ %ep_destroy_list, %entry ], [ %list.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %list.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %list.0 = load ptr, ptr %list.0.in, align 4
  %cmp.i.not = icmp eq ptr %list.0, %ep_destroy_list
  br i1 %cmp.i.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_read_unlock_bh(ptr noundef %ep_rdwr_lock) #13
  br label %do.end

for.body:                                         ; preds = %for.cond
  %drv_iscsi_cid = getelementptr inbounds %struct.bnx2i_endpoint, ptr %list.0, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %drv_iscsi_cid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %drv_iscsi_cid, align 4
  %cmp = icmp eq i32 %2, %iscsi_cid
  br i1 %cmp, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.body
  tail call void @_raw_read_unlock_bh(ptr noundef %ep_rdwr_lock) #13
  %tobool5.not = icmp eq ptr %list.0, null
  br i1 %tobool5.not, label %for.end.do.end_crit_edge, label %for.end.if.end9_crit_edge

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.end.thread
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %iscsi_cid) #16
  br label %if.end9

if.end9:                                          ; preds = %do.end, %for.end.if.end9_crit_edge
  %ep.121 = phi ptr [ null, %do.end ], [ %list.0, %for.end.if.end9_crit_edge ]
  ret ptr %ep.121
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bnx2i_alloc_hba(ptr noundef %cnic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iscsi_host_alloc(ptr noundef nonnull @bnx2i_host_template, i32 noundef 792, i1 noundef zeroext false) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcidev = getelementptr inbounds %struct.cnic_dev, ptr %cnic, i32 0, i32 1
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %dma_mask = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dma_mask, align 8
  %conv = trunc i64 %3 to i32
  %dma_boundary = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 32
  %4 = ptrtoint ptr %dma_boundary to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %dma_boundary, align 8
  %5 = load ptr, ptr @bnx2i_scsi_xport_template, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 12
  %6 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %transportt, align 4
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 21
  %7 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 127, ptr %max_id, align 4
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 20
  %8 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %max_channel, align 8
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 22
  %9 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 512, ptr %max_lun, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 24
  %10 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 16, ptr %max_cmd_len, align 4
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 1
  %shost2 = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 10, i32 0, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %shost2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %shost2, align 4
  %12 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cnic, align 4
  %netdev3 = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 6
  %14 = ptrtoint ptr %netdev3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %netdev3, align 8
  %15 = load ptr, ptr %pcidev, align 4
  %pcidev5 = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 3
  %16 = ptrtoint ptr %pcidev5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %pcidev5, align 4
  %call7 = tail call ptr @pci_dev_get(ptr noundef %15) #13
  %17 = ptrtoint ptr %pcidev5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev5, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device, align 2
  %pci_did = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 37, i32 10
  %21 = ptrtoint ptr %pci_did to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %pci_did, align 8
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 7
  %22 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vendor, align 8
  %pci_vid = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 37, i32 12
  %24 = ptrtoint ptr %pci_vid to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %pci_vid, align 2
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 10
  %25 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %subsystem_device, align 2
  %pci_sdid = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 37, i32 14
  %27 = ptrtoint ptr %pci_sdid to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %pci_sdid, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 9
  %28 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %subsystem_vendor, align 4
  %pci_svid = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 37, i32 16
  %30 = ptrtoint ptr %pci_svid to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %pci_svid, align 2
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 6
  %31 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %devfn, align 4
  %33 = trunc i32 %32 to i16
  %conv13 = and i16 %33, 7
  %pci_func = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 37, i32 18
  %34 = ptrtoint ptr %pci_func to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv13, ptr %pci_func, align 8
  %35 = load i32, ptr %devfn, align 4
  %36 = trunc i32 %35 to i16
  %37 = lshr i16 %36, 3
  %conv17 = and i16 %37, 31
  %pci_devno = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 37, i32 20
  %38 = ptrtoint ptr %pci_devno to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv17, ptr %pci_devno, align 2
  tail call void @bnx2i_identify_device(ptr noundef %add.ptr, ptr noundef %cnic) #13
  %cnic_dev_type.i = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 7
  %39 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %41 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 26
  %42 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3556, ptr %can_queue.i, align 4
  br label %bnx2i_setup_host_queue_size.exit

if.else.i:                                        ; preds = %if.end
  %43 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %45 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool3.not.i = icmp eq i32 %45, 0
  br i1 %tobool3.not.i, label %if.else6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %can_queue5.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 26
  %46 = ptrtoint ptr %can_queue5.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 16256, ptr %can_queue5.i, align 4
  br label %bnx2i_setup_host_queue_size.exit

if.else6.i:                                       ; preds = %if.else.i
  %47 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %49 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool9.not.i = icmp eq i32 %49, 0
  %can_queue13.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 26
  br i1 %tobool9.not.i, label %if.else12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %can_queue13.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 32512, ptr %can_queue13.i, align 4
  br label %bnx2i_setup_host_queue_size.exit

if.else12.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %can_queue13.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3556, ptr %can_queue13.i, align 4
  br label %bnx2i_setup_host_queue_size.exit

bnx2i_setup_host_queue_size.exit:                 ; preds = %if.else12.i, %if.then10.i, %if.then4.i, %if.then.i
  %52 = ptrtoint ptr %pcidev5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcidev5, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 47
  %54 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %resource, align 8
  %reg_base = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 6
  %56 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %reg_base, align 8
  %57 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %59 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool20.not = icmp eq i32 %59, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %bnx2i_setup_host_queue_size.exit
  %call23 = tail call ptr @pci_iomap(ptr noundef %53, i32 noundef 0, i32 noundef 15616) #13
  %regview = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 7
  %60 = ptrtoint ptr %regview to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call23, ptr %regview, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %if.then21.ioreg_map_err_crit_edge, label %if.then21.if.end40_crit_edge

if.then21.if.end40_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then21.ioreg_map_err_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %ioreg_map_err

if.else:                                          ; preds = %bnx2i_setup_host_queue_size.exit
  %61 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %63 = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool30.not = icmp eq i32 %63, 0
  br i1 %tobool30.not, label %if.else.if.end40_crit_edge, label %if.then31

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then31:                                        ; preds = %if.else
  %call33 = tail call ptr @pci_iomap(ptr noundef %53, i32 noundef 0, i32 noundef 4096) #13
  %regview34 = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 7
  %64 = ptrtoint ptr %regview34 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call33, ptr %regview34, align 4
  %tobool36.not = icmp eq ptr %call33, null
  br i1 %tobool36.not, label %if.then31.ioreg_map_err_crit_edge, label %if.then31.if.end40_crit_edge

if.then31.if.end40_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then31.ioreg_map_err_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %ioreg_map_err

if.end40:                                         ; preds = %if.then31.if.end40_crit_edge, %if.else.if.end40_crit_edge, %if.then21.if.end40_crit_edge
  %65 = ptrtoint ptr %pcidev5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcidev5, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %mp_bd_dma.i = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 1, i32 4, i32 6
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef %mp_bd_dma.i, i32 noundef 3264, i32 noundef 0) #13
  %mp_bd_tbl.i = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 1, i32 4, i32 3
  %67 = ptrtoint ptr %mp_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i.i, ptr %mp_bd_tbl.i, align 4
  %tobool.not.i219 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i219, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #16
  br label %mp_bdt_mem_err

if.end.i:                                         ; preds = %if.end40
  %68 = ptrtoint ptr %pcidev5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcidev5, align 4
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %dummy_buf_dma.i = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 2
  %call.i41.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev4.i, i32 noundef 4096, ptr noundef %dummy_buf_dma.i, i32 noundef 3264, i32 noundef 0) #13
  %dummy_buffer.i = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 1, i32 4, i32 7
  %70 = ptrtoint ptr %dummy_buffer.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i41.i, ptr %dummy_buffer.i, align 4
  %tobool7.not.i = icmp eq ptr %call.i41.i, null
  br i1 %tobool7.not.i, label %do.end11.i, label %if.end44

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  %71 = ptrtoint ptr %pcidev5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pcidev5, align 4
  %dev15.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %73 = ptrtoint ptr %mp_bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mp_bd_tbl.i, align 4
  %75 = ptrtoint ptr %mp_bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mp_bd_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev15.i, i32 noundef 4096, ptr noundef %74, i32 noundef %76, i32 noundef 0) #13
  %77 = ptrtoint ptr %mp_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %mp_bd_tbl.i, align 4
  br label %mp_bdt_mem_err

if.end44:                                         ; preds = %if.end.i
  %78 = ptrtoint ptr %mp_bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mp_bd_tbl.i, align 4
  %80 = ptrtoint ptr %dummy_buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dummy_buf_dma.i, align 8
  %buffer_addr_lo.i = getelementptr inbounds %struct.iscsi_bd, ptr %79, i32 0, i32 1
  %82 = ptrtoint ptr %buffer_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %buffer_addr_lo.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %79, align 4
  %buffer_length.i = getelementptr inbounds %struct.iscsi_bd, ptr %79, i32 0, i32 3
  %84 = ptrtoint ptr %buffer_length.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 4096, ptr %buffer_length.i, align 2
  %flags.i = getelementptr inbounds %struct.iscsi_bd, ptr %79, i32 0, i32 5
  %85 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 192, ptr %flags.i, align 2
  %ep_ofld_list = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 1, i32 2
  %86 = ptrtoint ptr %ep_ofld_list to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %ep_ofld_list, ptr %ep_ofld_list, align 4
  %prev.i = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 1, i32 3
  %87 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %ep_ofld_list, ptr %prev.i, align 4
  %ep_active_list = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 1, i32 4
  %88 = ptrtoint ptr %ep_active_list to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %ep_active_list, ptr %ep_active_list, align 4
  %prev.i220 = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1
  %89 = ptrtoint ptr %prev.i220 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %ep_active_list, ptr %prev.i220, align 4
  %ep_destroy_list = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %90 = ptrtoint ptr %ep_destroy_list to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %ep_destroy_list, ptr %ep_destroy_list, align 4
  %prev.i221 = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 1, i32 4, i32 2
  %91 = ptrtoint ptr %prev.i221 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %ep_destroy_list, ptr %prev.i221, align 4
  %ep_rdwr_lock = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 5
  tail call void @__rwlock_init(ptr noundef %ep_rdwr_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @bnx2i_alloc_hba.__key) #13
  %mtu_supported = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 10
  %92 = ptrtoint ptr %mtu_supported to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 9000, ptr %mtu_supported, align 8
  %max_active_conns = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 0, i32 1, i32 2
  %93 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 128, ptr %max_active_conns, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %94 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %94, i32 noundef 3264, i32 noundef 4096) #17
  %cid_que.i = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 0, i32 2
  %95 = ptrtoint ptr %cid_que.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call7.i.i, ptr %cid_que.i, align 4
  %tobool.not.i222 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i222, label %if.end44.cid_que_err_crit_edge, label %if.end8.i86.i

if.end44.cid_que_err_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cid_que_err

if.end8.i86.i:                                    ; preds = %if.end44
  %96 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_active_conns, align 8
  %mul4.i = shl i32 %97, 2
  %add5.i = add i32 %mul4.i, 4095
  %and6.i = and i32 %add5.i, -4096
  %call9.i85.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and6.i, i32 noundef 3264) #18
  %conn_cid_tbl.i = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 4
  %98 = ptrtoint ptr %conn_cid_tbl.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call9.i85.i, ptr %conn_cid_tbl.i, align 4
  %tobool11.not.i = icmp eq ptr %call9.i85.i, null
  br i1 %tobool11.not.i, label %if.end8.i86.i.cid_que_err.sink.split_crit_edge, label %if.end17.i

if.end8.i86.i.cid_que_err.sink.split_crit_edge:   ; preds = %if.end8.i86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cid_que_err.sink.split

if.end17.i:                                       ; preds = %if.end8.i86.i
  %99 = ptrtoint ptr %cid_que.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cid_que.i, align 4
  %cid_que21.i = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 0, i32 2, i32 1
  %101 = ptrtoint ptr %cid_que21.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %cid_que21.i, align 4
  %cid_q_prod_idx.i = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 0, i32 2, i32 2
  %102 = ptrtoint ptr %cid_q_prod_idx.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %cid_q_prod_idx.i, align 4
  %cid_q_cons_idx.i = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 1
  %103 = ptrtoint ptr %cid_q_cons_idx.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %cid_q_cons_idx.i, align 4
  %104 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %max_active_conns, align 8
  %cid_q_max_idx.i = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 2
  %106 = ptrtoint ptr %cid_q_max_idx.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %cid_q_max_idx.i, align 4
  %cid_free_cnt.i = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 3
  %107 = ptrtoint ptr %cid_free_cnt.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %105, ptr %cid_free_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp97.i = icmp sgt i32 %105, 0
  br i1 %cmp97.i, label %if.end17.i.for.body.i_crit_edge, label %if.end17.i.if.end48_crit_edge

if.end17.i.if.end48_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end17.i.for.body.i_crit_edge
  %i.098.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end17.i.for.body.i_crit_edge ]
  %108 = ptrtoint ptr %cid_que21.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cid_que21.i, align 4
  %arrayidx.i = getelementptr i32, ptr %109, i32 %i.098.i
  %110 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %i.098.i, ptr %arrayidx.i, align 4
  %111 = ptrtoint ptr %conn_cid_tbl.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %conn_cid_tbl.i, align 4
  %arrayidx33.i = getelementptr ptr, ptr %112, i32 %i.098.i
  %113 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %arrayidx33.i, align 4
  %inc.i = add nuw nsw i32 %i.098.i, 1
  %114 = ptrtoint ptr %max_active_conns to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %max_active_conns, align 8
  %cmp.i = icmp slt i32 %inc.i, %115
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end48_crit_edge

for.body.i.if.end48_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end48:                                         ; preds = %for.body.i.if.end48_crit_edge, %if.end17.i.if.end48_crit_edge
  %116 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %118 = and i32 %117, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool51.not = icmp eq i32 %118, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sq_size to i32))
  %119 = load i32, ptr @sq_size, align 4
  %120 = add i32 %119, -1
  br i1 %tobool51.not, label %if.else59, label %if.then52

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %120)
  %121 = icmp ult i32 %120, 512
  %max_sqes = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  br i1 %121, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  %122 = ptrtoint ptr %max_sqes to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %119, ptr %max_sqes, align 8
  br label %if.end69

if.else56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %max_sqes to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 128, ptr %max_sqes, align 8
  br label %if.end69

if.else59:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %120)
  %124 = icmp ult i32 %120, 128
  %max_sqes65 = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  br i1 %124, label %if.then64, label %if.else66

if.then64:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #15
  %125 = ptrtoint ptr %max_sqes65 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %119, ptr %max_sqes65, align 8
  br label %if.end69

if.else66:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %max_sqes65 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 128, ptr %max_sqes65, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.else66, %if.then64, %if.else56, %if.then55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rq_size to i32))
  %127 = load i32, ptr @rq_size, align 4
  %max_rqes = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 10, i32 0, i32 0, i32 0, i32 3
  %128 = ptrtoint ptr %max_rqes to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %max_rqes, align 4
  %max_sqes70 = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  %129 = ptrtoint ptr %max_sqes70 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %max_sqes70, align 8
  %131 = load i32, ptr @rq_size, align 4
  %add = add i32 %131, %130
  %max_cqes = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4
  %132 = ptrtoint ptr %max_cqes to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %add, ptr %max_cqes, align 8
  %133 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %135 = and i32 %134, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool73.not = icmp eq i32 %135, 0
  br i1 %tobool73.not, label %if.else81, label %if.then74

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add)
  %cmp76 = icmp ugt i32 %add, 512
  br i1 %cmp76, label %if.then74.if.end88.sink.split_crit_edge, label %if.then74.if.end88_crit_edge

if.then74.if.end88_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then74.if.end88.sink.split_crit_edge:          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.sink.split

if.else81:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp83 = icmp ugt i32 %add, 128
  br i1 %cmp83, label %if.else81.if.end88.sink.split_crit_edge, label %if.else81.if.end88_crit_edge

if.else81.if.end88_crit_edge:                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.else81.if.end88.sink.split_crit_edge:          ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.sink.split

if.end88.sink.split:                              ; preds = %if.else81.if.end88.sink.split_crit_edge, %if.then74.if.end88.sink.split_crit_edge
  %.sink243 = phi i32 [ 512, %if.then74.if.end88.sink.split_crit_edge ], [ 128, %if.else81.if.end88.sink.split_crit_edge ]
  %136 = ptrtoint ptr %max_cqes to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %.sink243, ptr %max_cqes, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.end88.sink.split, %if.else81.if.end88_crit_edge, %if.then74.if.end88_crit_edge
  %137 = ptrtoint ptr %max_sqes70 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %max_sqes70, align 8
  %div209 = lshr i32 %138, 1
  %num_ccell = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 1
  %139 = ptrtoint ptr %num_ccell to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %div209, ptr %num_ccell, align 4
  %lock = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 13, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @bnx2i_alloc_hba.__key.10, i16 noundef signext 3) #13
  %net_dev_lock = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 14, i32 1
  tail call void @__mutex_init(ptr noundef %net_dev_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @bnx2i_alloc_hba.__key.12) #13
  %eh_wait = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 10, i32 0, i32 0, i32 0, i32 4, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %eh_wait, ptr noundef nonnull @.str.15, ptr noundef nonnull @bnx2i_alloc_hba.__key.14) #13
  %140 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %142 = and i32 %141, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool102.not = icmp eq i32 %142, 0
  %.sink242 = select i1 %tobool102.not, i32 2000, i32 3000
  %.sink241 = select i1 %tobool102.not, i32 1000, i32 2000
  %.sink = select i1 %tobool102.not, i32 200, i32 600
  %143 = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 36
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %.sink242, ptr %143, align 4
  %145 = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 37, i32 2
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %.sink241, ptr %145, align 8
  %147 = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 37, i32 6
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %.sink, ptr %147, align 4
  %stats = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 49, i32 0, i32 6
  %149 = call ptr @memset(ptr %stats, i32 0, i32 316)
  %150 = ptrtoint ptr %pcidev5 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pcidev5, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %151, i32 0, i32 44
  %call110 = tail call i32 @iscsi_host_add(ptr noundef nonnull %call, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end88.cleanup_crit_edge, label %free_dump_mem

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

free_dump_mem:                                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  %152 = ptrtoint ptr %cid_que.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cid_que.i, align 4
  tail call void @kfree(ptr noundef %153) #13
  %154 = ptrtoint ptr %cid_que.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %cid_que.i, align 4
  %conn_cid_tbl.i225 = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 4
  br label %cid_que_err.sink.split

cid_que_err.sink.split:                           ; preds = %free_dump_mem, %if.end8.i86.i.cid_que_err.sink.split_crit_edge
  %cid_que.i.sink245 = phi ptr [ %conn_cid_tbl.i225, %free_dump_mem ], [ %cid_que.i, %if.end8.i86.i.cid_que_err.sink.split_crit_edge ]
  %155 = ptrtoint ptr %cid_que.i.sink245 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cid_que.i.sink245, align 4
  tail call void @kfree(ptr noundef %156) #13
  %157 = ptrtoint ptr %cid_que.i.sink245 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %cid_que.i.sink245, align 4
  br label %cid_que_err

cid_que_err:                                      ; preds = %cid_que_err.sink.split, %if.end44.cid_que_err_crit_edge
  %158 = ptrtoint ptr %mp_bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mp_bd_tbl.i, align 4
  %tobool.not.i227 = icmp eq ptr %159, null
  br i1 %tobool.not.i227, label %cid_que_err.if.end.i234_crit_edge, label %if.then.i231

cid_que_err.if.end.i234_crit_edge:                ; preds = %cid_que_err
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i234

if.then.i231:                                     ; preds = %cid_que_err
  call void @__sanitizer_cov_trace_pc() #15
  %160 = ptrtoint ptr %pcidev5 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pcidev5, align 4
  %dev.i229 = getelementptr inbounds %struct.pci_dev, ptr %161, i32 0, i32 44
  %162 = ptrtoint ptr %mp_bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %mp_bd_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i229, i32 noundef 4096, ptr noundef nonnull %159, i32 noundef %163, i32 noundef 0) #13
  %164 = ptrtoint ptr %mp_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %mp_bd_tbl.i, align 4
  br label %if.end.i234

if.end.i234:                                      ; preds = %if.then.i231, %cid_que_err.if.end.i234_crit_edge
  %165 = ptrtoint ptr %dummy_buffer.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dummy_buffer.i, align 4
  %tobool3.not.i233 = icmp eq ptr %166, null
  br i1 %tobool3.not.i233, label %if.end.i234.mp_bdt_mem_err_crit_edge, label %if.then4.i236

if.end.i234.mp_bdt_mem_err_crit_edge:             ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #15
  br label %mp_bdt_mem_err

if.then4.i236:                                    ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #15
  %167 = ptrtoint ptr %pcidev5 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pcidev5, align 4
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %168, i32 0, i32 44
  %169 = ptrtoint ptr %dummy_buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %dummy_buf_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef 4096, ptr noundef nonnull %166, i32 noundef %170, i32 noundef 0) #13
  %171 = ptrtoint ptr %dummy_buffer.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %dummy_buffer.i, align 4
  br label %mp_bdt_mem_err

mp_bdt_mem_err:                                   ; preds = %if.then4.i236, %if.end.i234.mp_bdt_mem_err_crit_edge, %do.end11.i, %do.end.i
  %regview114 = getelementptr %struct.Scsi_Host, ptr %call, i32 1, i32 5, i32 5, i32 7
  %172 = ptrtoint ptr %regview114 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regview114, align 4
  %tobool115.not = icmp eq ptr %173, null
  br i1 %tobool115.not, label %mp_bdt_mem_err.ioreg_map_err_crit_edge, label %if.then116

mp_bdt_mem_err.ioreg_map_err_crit_edge:           ; preds = %mp_bdt_mem_err
  call void @__sanitizer_cov_trace_pc() #15
  br label %ioreg_map_err

if.then116:                                       ; preds = %mp_bdt_mem_err
  call void @__sanitizer_cov_trace_pc() #15
  %174 = ptrtoint ptr %pcidev5 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pcidev5, align 4
  tail call void @pci_iounmap(ptr noundef %175, ptr noundef nonnull %173) #13
  %176 = ptrtoint ptr %regview114 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %regview114, align 4
  br label %ioreg_map_err

ioreg_map_err:                                    ; preds = %if.then116, %mp_bdt_mem_err.ioreg_map_err_crit_edge, %if.then31.ioreg_map_err_crit_edge, %if.then21.ioreg_map_err_crit_edge
  %177 = ptrtoint ptr %pcidev5 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pcidev5, align 4
  tail call void @pci_dev_put(ptr noundef %178) #13
  tail call void @scsi_host_put(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %ioreg_map_err, %if.end88.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %ioreg_map_err ], [ null, %entry.cleanup_crit_edge ], [ %add.ptr, %if.end88.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_host_alloc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_identify_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_host_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2i_free_hba(ptr noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shost1 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 12
  %0 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost1, align 4
  tail call void @iscsi_host_remove(ptr noundef %1) #13
  %ep_ofld_list = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 22
  %2 = ptrtoint ptr %ep_ofld_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %ep_ofld_list, ptr %ep_ofld_list, align 4
  %prev.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 22, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ep_ofld_list, ptr %prev.i, align 4
  %ep_active_list = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 23
  %4 = ptrtoint ptr %ep_active_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ep_active_list, ptr %ep_active_list, align 4
  %prev.i16 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 23, i32 1
  %5 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ep_active_list, ptr %prev.i16, align 4
  %ep_destroy_list = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 24
  %6 = ptrtoint ptr %ep_destroy_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ep_destroy_list, ptr %ep_destroy_list, align 4
  %prev.i17 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 24, i32 1
  %7 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ep_destroy_list, ptr %prev.i17, align 4
  %regview = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 4
  %8 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regview, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 2
  %10 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev, align 4
  tail call void @pci_iounmap(ptr noundef %11, ptr noundef nonnull %9) #13
  %12 = ptrtoint ptr %regview to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %regview, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pcidev4 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 2
  %13 = ptrtoint ptr %pcidev4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcidev4, align 4
  tail call void @pci_dev_put(ptr noundef %14) #13
  %mp_bd_tbl.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 25
  %15 = ptrtoint ptr %mp_bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mp_bd_tbl.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %pcidev4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev4, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %mp_bd_dma.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 26
  %19 = ptrtoint ptr %mp_bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mp_bd_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %16, i32 noundef %20, i32 noundef 0) #13
  %21 = ptrtoint ptr %mp_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %mp_bd_tbl.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %dummy_buffer.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 27
  %22 = ptrtoint ptr %dummy_buffer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dummy_buffer.i, align 4
  %tobool3.not.i = icmp eq ptr %23, null
  br i1 %tobool3.not.i, label %if.end.i.bnx2i_free_mp_bdt.exit_crit_edge, label %if.then4.i

if.end.i.bnx2i_free_mp_bdt.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_free_mp_bdt.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %pcidev4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcidev4, align 4
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %dummy_buf_dma.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 28
  %26 = ptrtoint ptr %dummy_buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dummy_buf_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef 4096, ptr noundef nonnull %23, i32 noundef %27, i32 noundef 0) #13
  %28 = ptrtoint ptr %dummy_buffer.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %dummy_buffer.i, align 4
  br label %bnx2i_free_mp_bdt.exit

bnx2i_free_mp_bdt.exit:                           ; preds = %if.then4.i, %if.end.i.bnx2i_free_mp_bdt.exit_crit_edge
  %cid_que.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 20
  %29 = ptrtoint ptr %cid_que.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cid_que.i, align 4
  tail call void @kfree(ptr noundef %30) #13
  %31 = ptrtoint ptr %cid_que.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cid_que.i, align 4
  %conn_cid_tbl.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 20, i32 6
  %32 = ptrtoint ptr %conn_cid_tbl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %conn_cid_tbl.i, align 4
  tail call void @kfree(ptr noundef %33) #13
  %34 = ptrtoint ptr %conn_cid_tbl.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %conn_cid_tbl.i, align 4
  tail call void @iscsi_host_free(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_host_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_host_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_hw_ep_disconnect(ptr noundef %bnx2i_ep) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hba1 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %bnx2i_ep, i32 0, i32 1
  %0 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup113_crit_edge, label %if.end

entry.cleanup113_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup113

if.end:                                           ; preds = %entry
  %cnic2 = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cnic2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cnic2, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup113_crit_edge, label %if.end5

if.end.cleanup113_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup113

if.end5:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %bnx2i_ep, i32 0, i32 6
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end9 [
    i32 0, label %if.end5.cleanup113_crit_edge
    i32 536870912, label %if.end5.cleanup113_crit_edge186
  ]

if.end5.cleanup113_crit_edge186:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup113

if.end5.cleanup113_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup113

if.end9:                                          ; preds = %if.end5
  %cnic_dev_type.i = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %cnic_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %cnic_dev_type.i, align 4
  %9 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %5, label %if.end9.destroy_conn_crit_edge [
    i32 8192, label %bnx2i_ep_tcp_conn_active.exit
    i32 33554432, label %if.end9.if.end12_crit_edge
    i32 32768, label %if.end9.if.end12_crit_edge187
    i32 16, label %if.end9.if.end12_crit_edge188
    i32 268435456, label %if.end9.if.end12_crit_edge189
    i32 32, label %if.end9.if.end12_crit_edge190
    i32 64, label %if.end9.if.end12_crit_edge191
    i32 128, label %if.end9.if.end12_crit_edge192
    i32 4096, label %if.end9.if.end12_crit_edge193
    i32 16384, label %if.end9.if.end12_crit_edge194
  ]

if.end9.if.end12_crit_edge194:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end9.if.end12_crit_edge193:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end9.if.end12_crit_edge192:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end9.if.end12_crit_edge191:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end9.if.end12_crit_edge190:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end9.if.end12_crit_edge189:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end9.if.end12_crit_edge188:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end9.if.end12_crit_edge187:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end9.destroy_conn_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %destroy_conn

bnx2i_ep_tcp_conn_active.exit:                    ; preds = %if.end9
  %10 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not.not = icmp eq i32 %10, 0
  br i1 %tobool10.not.not, label %bnx2i_ep_tcp_conn_active.exit.if.end12_crit_edge, label %bnx2i_ep_tcp_conn_active.exit.destroy_conn_crit_edge

bnx2i_ep_tcp_conn_active.exit.destroy_conn_crit_edge: ; preds = %bnx2i_ep_tcp_conn_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %destroy_conn

bnx2i_ep_tcp_conn_active.exit.if.end12_crit_edge: ; preds = %bnx2i_ep_tcp_conn_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end12:                                         ; preds = %bnx2i_ep_tcp_conn_active.exit.if.end12_crit_edge, %if.end9.if.end12_crit_edge, %if.end9.if.end12_crit_edge187, %if.end9.if.end12_crit_edge188, %if.end9.if.end12_crit_edge189, %if.end9.if.end12_crit_edge190, %if.end9.if.end12_crit_edge191, %if.end9.if.end12_crit_edge192, %if.end9.if.end12_crit_edge193, %if.end9.if.end12_crit_edge194
  %conn13 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %bnx2i_ep, i32 0, i32 2
  %11 = ptrtoint ptr %conn13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn13, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %if.end12.do.body_crit_edge, label %if.then15

if.end12.do.body_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dd_data, align 8
  %session17 = getelementptr inbounds %struct.iscsi_conn, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %session17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %session17, align 8
  br label %do.body

do.body:                                          ; preds = %if.then15, %if.end12.do.body_crit_edge
  %session.0 = phi ptr [ %18, %if.then15 ], [ null, %if.end12.do.body_crit_edge ]
  %ofld_timer = getelementptr inbounds %struct.bnx2i_endpoint, ptr %bnx2i_ep, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %ofld_timer, ptr noundef nonnull @bnx2i_ep_ofld_timer, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @bnx2i_hw_ep_disconnect.__key) #13
  %conn_teardown_tmo = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 32
  %19 = ptrtoint ptr %conn_teardown_tmo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %conn_teardown_tmo, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %21, %20
  %expires = getelementptr inbounds %struct.bnx2i_endpoint, ptr %bnx2i_ep, i32 0, i32 12, i32 1
  %22 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %ofld_timer) #13
  %reg_with_cnic = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %reg_with_cnic to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %reg_with_cnic, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool22.not = icmp eq i32 %25, 0
  br i1 %tobool22.not, label %do.body.out_crit_edge, label %if.end24

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end24:                                         ; preds = %do.body
  %tobool25.not = icmp eq ptr %session.0, null
  br i1 %tobool25.not, label %if.end24.if.else55_crit_edge, label %if.then26

if.end24.if.else55_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else55

if.then26:                                        ; preds = %if.end24
  %frwd_lock = getelementptr inbounds %struct.iscsi_session, ptr %session.0, i32 0, i32 52
  tail call void @_raw_spin_lock_bh(ptr noundef %frwd_lock) #13
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %27)
  %cmp28.not = icmp eq i32 %27, 4096
  br i1 %cmp28.not, label %if.then26.if.then53_crit_edge, label %if.then29

if.then26.if.then53_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then53

if.then29:                                        ; preds = %if.then26
  %state30 = getelementptr inbounds %struct.iscsi_session, ptr %session.0, i32 0, i32 54
  %28 = ptrtoint ptr %state30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %29)
  %cmp31 = icmp eq i32 %29, 7
  br i1 %cmp31, label %if.then32, label %if.then29.if.end50.thread174_crit_edge

if.then29.if.end50.thread174_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.thread174

if.then32:                                        ; preds = %if.then29
  %30 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %27, label %if.then32.if.end50.thread174_crit_edge [
    i32 16384, label %do.end38
    i32 32768, label %if.then32.if.then53_crit_edge
  ]

if.then32.if.then53_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then53

if.then32.if.end50.thread174_crit_edge:           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.thread174

do.end38:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hba1, align 4
  %netdev = getelementptr inbounds %struct.bnx2i_hba, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev, align 8
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %34) #16
  br label %if.end50.thread174

if.end50.thread174:                               ; preds = %do.end38, %if.then32.if.end50.thread174_crit_edge, %if.then29.if.end50.thread174_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %frwd_lock) #13
  br label %if.else55

if.then53:                                        ; preds = %if.then32.if.then53_crit_edge, %if.then26.if.then53_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %frwd_lock) #13
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 256, ptr %state, align 4
  %cm_close = getelementptr inbounds %struct.cnic_dev, ptr %3, i32 0, i32 12
  br label %if.end58

if.else55:                                        ; preds = %if.end50.thread174, %if.end24.if.else55_crit_edge
  %36 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 256, ptr %state, align 4
  %cm_abort = getelementptr inbounds %struct.cnic_dev, ptr %3, i32 0, i32 11
  br label %if.end58

if.end58:                                         ; preds = %if.else55, %if.then53
  %cm_abort.sink = phi ptr [ %cm_abort, %if.else55 ], [ %cm_close, %if.then53 ]
  %close.1172 = phi i32 [ 0, %if.else55 ], [ 1, %if.then53 ]
  %37 = ptrtoint ptr %cm_abort.sink to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cm_abort.sink, align 4
  %cm_sk56 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %bnx2i_ep, i32 0, i32 4
  %39 = ptrtoint ptr %cm_sk56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cm_sk56, align 4
  %call57 = tail call i32 %38(ptr noundef %40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool59.not = icmp eq i32 %call57, 0
  br i1 %tobool59.not, label %if.else70, label %do.end63

do.end63:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hba1, align 4
  %netdev66 = getelementptr inbounds %struct.bnx2i_hba, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %netdev66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev66, align 8
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %44, i32 noundef %close.1172, i32 noundef %call57) #16
  br label %if.end98

if.else70:                                        ; preds = %if.end58
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2099) #13
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %46, label %if.else70.if.end98_crit_edge [
    i32 256, label %if.else70.if.then81_crit_edge
    i32 4096, label %if.else70.if.then81_crit_edge195
  ]

if.else70.if.then81_crit_edge195:                 ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then81

if.else70.if.then81_crit_edge:                    ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then81

if.else70.if.end98_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98

if.then81:                                        ; preds = %if.else70.if.then81_crit_edge, %if.else70.if.then81_crit_edge195
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %48 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %ofld_wait = getelementptr inbounds %struct.bnx2i_endpoint, ptr %bnx2i_ep, i32 0, i32 13
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then81
  %call83 = call i32 @prepare_to_wait_event(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %50, label %for.end [
    i32 256, label %for.cond.if.end90_crit_edge
    i32 4096, label %for.cond.if.end90_crit_edge196
  ]

for.cond.if.end90_crit_edge196:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

for.cond.if.end90_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.end90:                                         ; preds = %for.cond.if.end90_crit_edge, %for.cond.if.end90_crit_edge196
  %tobool91.not = icmp eq i32 %call83, 0
  br i1 %tobool91.not, label %cleanup, label %if.end90.__out_crit_edge

if.end90.__out_crit_edge:                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out

cleanup:                                          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  call void @schedule() #13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  call void @finish_wait(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry) #13
  br label %__out

__out:                                            ; preds = %for.end, %if.end90.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end98

if.end98:                                         ; preds = %__out, %if.else70.if.end98_crit_edge, %do.end63
  %52 = call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stack.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %60 = and i32 %59, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end98.if.then102_crit_edge, !prof !201

if.end98.if.then102_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

signal_pending.exit:                              ; preds = %if.end98
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %57, align 4
  %and1.i.i.i.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool101.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool101.not, label %signal_pending.exit.if.end105_crit_edge, label %signal_pending.exit.if.then102_crit_edge

signal_pending.exit.if.then102_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

signal_pending.exit.if.end105_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then102:                                       ; preds = %signal_pending.exit.if.then102_crit_edge, %if.end98.if.then102_crit_edge
  call void @flush_signals(ptr noundef %55) #13
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %signal_pending.exit.if.end105_crit_edge
  %call107 = call i32 @del_timer_sync(ptr noundef %ofld_timer) #13
  br label %destroy_conn

destroy_conn:                                     ; preds = %if.end105, %bnx2i_ep_tcp_conn_active.exit.destroy_conn_crit_edge, %if.end9.destroy_conn_crit_edge
  %ep_rdwr_lock.i = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 21
  call void @_raw_write_lock_bh(ptr noundef %ep_rdwr_lock.i) #13
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %bnx2i_ep) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %destroy_conn.bnx2i_ep_active_list_del.exit_crit_edge

destroy_conn.bnx2i_ep_active_list_del.exit_crit_edge: ; preds = %destroy_conn
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_ep_active_list_del.exit

if.end.i.i.i:                                     ; preds = %destroy_conn
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %bnx2i_ep, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i.i, align 4
  %65 = ptrtoint ptr %bnx2i_ep to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bnx2i_ep, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %bnx2i_ep_active_list_del.exit

bnx2i_ep_active_list_del.exit:                    ; preds = %if.end.i.i.i, %destroy_conn.bnx2i_ep_active_list_del.exit_crit_edge
  %69 = ptrtoint ptr %bnx2i_ep to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %bnx2i_ep, ptr %bnx2i_ep, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %bnx2i_ep, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %bnx2i_ep, ptr %prev.i3.i.i, align 4
  call void @_raw_write_unlock_bh(ptr noundef %ep_rdwr_lock.i) #13
  call fastcc void @bnx2i_tear_down_conn(ptr noundef nonnull %1, ptr noundef %bnx2i_ep)
  br label %out

out:                                              ; preds = %bnx2i_ep_active_list_del.exit, %do.body.out_crit_edge
  %71 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %state, align 4
  br label %cleanup113

cleanup113:                                       ; preds = %out, %if.end5.cleanup113_crit_edge, %if.end5.cleanup113_crit_edge186, %if.end.cleanup113_crit_edge, %entry.cleanup113_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_ep_ofld_timer(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2i_ep_active_list_del(ptr noundef %hba, ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_rdwr_lock = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 21
  tail call void @_raw_write_lock_bh(ptr noundef %ep_rdwr_lock) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ep) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ep, ptr %ep, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %ep, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ep, ptr %prev.i3.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %ep_rdwr_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2i_tear_down_conn(ptr noundef %hba, ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_with_cnic = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 9
  %0 = ptrtoint ptr %reg_with_cnic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %reg_with_cnic, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cm_sk = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 4
  %3 = ptrtoint ptr %cm_sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cm_sk, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %cnic = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 1
  %5 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cnic, align 8
  %cm_destroy = getelementptr inbounds %struct.cnic_dev, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %cm_destroy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cm_destroy, align 4
  %call3 = tail call i32 %8(ptr noundef nonnull %4) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cnic_dev_type = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 7
  %9 = ptrtoint ptr %cnic_dev_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %cnic_dev_type, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %if.end.if.end23_crit_edge, label %land.lhs.true6

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

land.lhs.true6:                                   ; preds = %if.end
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 6
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %13)
  %cmp = icmp eq i32 %13, 536870912
  br i1 %cmp, label %if.then7, label %land.lhs.true6.if.end23_crit_edge

land.lhs.true6.if.end23_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then7:                                         ; preds = %land.lhs.true6
  %conn = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 2
  %14 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conn, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.then7.do.end_crit_edge, label %land.lhs.true9

if.then7.do.end_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true9:                                   ; preds = %if.then7
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %land.lhs.true9.do.end_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dd_data, align 8
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %land.lhs.true12.do.end_crit_edge, label %if.then16

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then16:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  %suspend_rx = getelementptr inbounds %struct.iscsi_conn, ptr %19, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 1, ptr noundef %suspend_rx) #13
  br label %do.end

do.end:                                           ; preds = %if.then16, %land.lhs.true12.do.end_crit_edge, %land.lhs.true9.do.end_crit_edge, %if.then7.do.end_crit_edge
  %netdev = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 3
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %21) #16
  br label %if.end23

if.end23:                                         ; preds = %do.end, %land.lhs.true6.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %state24 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 6
  %22 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1024, ptr %state24, align 4
  %ofld_timer = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %ofld_timer, ptr noundef nonnull @bnx2i_ep_ofld_timer, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @bnx2i_tear_down_conn.__key) #13
  %conn_ctx_destroy_tmo = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 33
  %23 = ptrtoint ptr %conn_ctx_destroy_tmo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %conn_ctx_destroy_tmo, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %25, %24
  %expires = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 12, i32 1
  %26 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %ofld_timer) #13
  %ep_rdwr_lock.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 21
  tail call void @_raw_write_lock_bh(ptr noundef %ep_rdwr_lock.i) #13
  %ep_destroy_list.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 24
  %prev.i.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 24, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep, ptr noundef %28, ptr noundef %ep_destroy_list.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end23.bnx2i_ep_destroy_list_add.exit_crit_edge

if.end23.bnx2i_ep_destroy_list_add.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_ep_destroy_list_add.exit

if.end.i.i.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ep, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ep_destroy_list.i, ptr %ep, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %ep, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %ep, ptr %28, align 4
  br label %bnx2i_ep_destroy_list_add.exit

bnx2i_ep_destroy_list_add.exit:                   ; preds = %if.end.i.i.i, %if.end23.bnx2i_ep_destroy_list_add.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %ep_rdwr_lock.i) #13
  %call30 = tail call i32 @bnx2i_send_conn_destroy(ptr noundef %hba, ptr noundef %ep) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %bnx2i_ep_destroy_list_add.exit.if.end34_crit_edge, label %if.then32

bnx2i_ep_destroy_list_add.exit.if.end34_crit_edge: ; preds = %bnx2i_ep_destroy_list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then32:                                        ; preds = %bnx2i_ep_destroy_list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2048, ptr %state24, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %bnx2i_ep_destroy_list_add.exit.if.end34_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1748) #13
  %34 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %35)
  %cmp41.not = icmp eq i32 %35, 1024
  br i1 %cmp41.not, label %if.then42, label %if.end34.if.end54_crit_edge

if.end34.if.end54_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then42:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %36 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %ofld_wait = getelementptr inbounds %struct.bnx2i_endpoint, ptr %ep, i32 0, i32 13
  %call4414 = call i32 @prepare_to_wait_event(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %37 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %38)
  %cmp46.not15 = icmp eq i32 %38, 1024
  br i1 %cmp46.not15, label %if.then42.if.end48_crit_edge, label %if.then42.for.end_crit_edge

if.then42.for.end_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  br label %if.end48

if.end48:                                         ; preds = %cleanup.if.end48_crit_edge, %if.then42.if.end48_crit_edge
  %call4416 = phi i32 [ %call44, %cleanup.if.end48_crit_edge ], [ %call4414, %if.then42.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4416)
  %tobool49.not = icmp eq i32 %call4416, 0
  br i1 %tobool49.not, label %cleanup, label %if.end48.__out_crit_edge

if.end48.__out_crit_edge:                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out

cleanup:                                          ; preds = %if.end48
  call void @schedule() #13
  %call44 = call i32 @prepare_to_wait_event(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %39 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state24, align 4
  %cmp46.not = icmp eq i32 %40, 1024
  br i1 %cmp46.not, label %cleanup.if.end48_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.if.end48_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then42.for.end_crit_edge
  call void @finish_wait(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry) #13
  br label %__out

__out:                                            ; preds = %for.end, %if.end48.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end54

if.end54:                                         ; preds = %__out, %if.end34.if.end54_crit_edge
  %41 = call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stack.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %49 = and i32 %48, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end54.if.then59_crit_edge, !prof !201

if.end54.if.then59_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then59

signal_pending.exit:                              ; preds = %if.end54
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %46, align 4
  %and1.i.i.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool58.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool58.not, label %signal_pending.exit.if.end62_crit_edge, label %signal_pending.exit.if.then59_crit_edge

signal_pending.exit.if.then59_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then59

signal_pending.exit.if.end62_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then59:                                        ; preds = %signal_pending.exit.if.then59_crit_edge, %if.end54.if.then59_crit_edge
  call void @flush_signals(ptr noundef %44) #13
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %signal_pending.exit.if.end62_crit_edge
  %call64 = call i32 @del_timer_sync(ptr noundef %ofld_timer) #13
  call void @_raw_write_lock_bh(ptr noundef %ep_rdwr_lock.i) #13
  %call.i.i.i4 = call zeroext i1 @__list_del_entry_valid(ptr noundef %ep) #13
  br i1 %call.i.i.i4, label %if.end.i.i.i5, label %if.end62.bnx2i_ep_destroy_list_del.exit_crit_edge

if.end62.bnx2i_ep_destroy_list_del.exit_crit_edge: ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_ep_destroy_list_del.exit

if.end.i.i.i5:                                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ep, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ep, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %bnx2i_ep_destroy_list_del.exit

bnx2i_ep_destroy_list_del.exit:                   ; preds = %if.end.i.i.i5, %if.end62.bnx2i_ep_destroy_list_del.exit_crit_edge
  %58 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %ep, ptr %ep, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %ep, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %ep, ptr %prev.i3.i.i, align 4
  call void @_raw_write_unlock_bh(ptr noundef %ep_rdwr_lock.i) #13
  %60 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %61)
  %cmp67.not = icmp eq i32 %61, 2048
  br i1 %cmp67.not, label %bnx2i_ep_destroy_list_del.exit.if.end74_crit_edge, label %do.end71

bnx2i_ep_destroy_list_del.exit.if.end74_crit_edge: ; preds = %bnx2i_ep_destroy_list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

do.end71:                                         ; preds = %bnx2i_ep_destroy_list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #16
  br label %if.end74

if.end74:                                         ; preds = %do.end71, %bnx2i_ep_destroy_list_del.exit.if.end74_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bnx2i_session_create(ptr noundef readonly %ep, i16 noundef zeroext %cmds_max, i16 noundef zeroext %qdepth, i32 noundef %initial_cmdsn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %hba1 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba1, align 4
  %shost2 = getelementptr inbounds %struct.bnx2i_hba, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %shost2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost2, align 4
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %5, i32 1, i32 5, i32 5, i32 1
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %adapter_state.i = getelementptr %struct.Scsi_Host, ptr %5, i32 1, i32 9
  %6 = ptrtoint ptr %adapter_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %adapter_state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %adapter_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %adapter_state.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not.i = icmp eq i32 %10, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false3.i.cleanup_crit_edge

lor.lhs.false3.i.cleanup_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false3.i
  %11 = ptrtoint ptr %adapter_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %adapter_state.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not.i = icmp eq i32 %13, 0
  br i1 %tobool10.not.i, label %if.end7, label %lor.lhs.false7.i.cleanup_crit_edge

lor.lhs.false7.i.cleanup_crit_edge:               ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false7.i
  %conv = zext i16 %cmds_max to i32
  %max_sqes = getelementptr %struct.Scsi_Host, ptr %5, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %max_sqes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_sqes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv)
  %cmp = icmp ult i32 %15, %conv
  %conv11 = trunc i32 %15 to i16
  %16 = tail call i16 @llvm.umax.i16(i16 %cmds_max, i16 16)
  %cmds_max.addr.0 = select i1 %cmp, i16 %conv11, i16 %16
  %call18 = tail call ptr @iscsi_session_setup(ptr noundef nonnull @bnx2i_iscsi_transport, ptr noundef %5, i16 noundef zeroext %cmds_max.addr.0, i32 noundef 0, i32 noundef 140, i32 noundef %initial_cmdsn, i32 noundef -1) #13
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end7.cleanup_crit_edge, label %if.end21

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  %dd_data22 = getelementptr inbounds %struct.iscsi_cls_session, ptr %call18, i32 0, i32 16
  %17 = ptrtoint ptr %dd_data22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dd_data22, align 4
  %cmds_max.i = getelementptr inbounds %struct.iscsi_session, ptr %18, i32 0, i32 57
  %19 = ptrtoint ptr %cmds_max.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cmds_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp23.i = icmp sgt i32 %20, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end21
  %cmds.i = getelementptr inbounds %struct.iscsi_session, ptr %18, i32 0, i32 58
  %pcidev.i.i = getelementptr %struct.Scsi_Host, ptr %5, i32 1, i32 5, i32 5, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmds.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %22, i32 %i.024.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %dd_data.i = getelementptr inbounds %struct.iscsi_task, ptr %24, i32 0, i32 20
  %25 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dd_data.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %24, align 4
  %hdr_max.i = getelementptr inbounds %struct.iscsi_task, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %hdr_max.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 48, ptr %hdr_max.i, align 4
  %io_tbl.i.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %26, i32 0, i32 4
  %29 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcidev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %bd_tbl_dma.i.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %26, i32 0, i32 4, i32 1
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 512, ptr noundef %bd_tbl_dma.i.i, i32 noundef 3264, i32 noundef 0) #13
  %31 = ptrtoint ptr %io_tbl.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i.i, ptr %io_tbl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %free_bdts.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %bd_valid.i.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %26, i32 0, i32 4, i32 2
  %32 = ptrtoint ptr %bd_valid.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %bd_valid.i.i, align 4
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %33 = ptrtoint ptr %cmds_max.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cmds_max.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %34
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

free_bdts.i:                                      ; preds = %for.body.i
  %35 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %18, align 4
  %dev2.i.i = getelementptr inbounds %struct.iscsi_cls_session, ptr %36, i32 0, i32 17
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.39, ptr noundef %dev2.i.i, ptr noundef nonnull @.str.37) #16
  %37 = ptrtoint ptr %cmds_max.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cmds_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp9.i.i = icmp sgt i32 %38, 0
  br i1 %cmp9.i.i, label %free_bdts.i.for.body.i.i_crit_edge, label %free_bdts.i.session_teardown_crit_edge

free_bdts.i.session_teardown_crit_edge:           ; preds = %free_bdts.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %session_teardown

free_bdts.i.for.body.i.i_crit_edge:               ; preds = %free_bdts.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i18.i.for.body.i.i_crit_edge, %free_bdts.i.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %if.end.i18.i.for.body.i.i_crit_edge ], [ 0, %free_bdts.i.for.body.i.i_crit_edge ]
  %39 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cmds.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %40, i32 %i.010.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i, align 4
  %dd_data.i.i = getelementptr inbounds %struct.iscsi_task, ptr %42, i32 0, i32 20
  %43 = ptrtoint ptr %dd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dd_data.i.i, align 4
  %io_tbl.i14.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %io_tbl.i14.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_tbl.i14.i, align 4
  %tobool.not.i15.i = icmp eq ptr %46, null
  br i1 %tobool.not.i15.i, label %for.body.i.i.if.end.i18.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i18.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i18.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcidev.i.i, align 4
  %dev.i16.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %bd_tbl_dma.i17.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %44, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %bd_tbl_dma.i17.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bd_tbl_dma.i17.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i16.i, i32 noundef 512, ptr noundef nonnull %46, i32 noundef %50, i32 noundef 0) #13
  br label %if.end.i18.i

if.end.i18.i:                                     ; preds = %if.then.i.i, %for.body.i.i.if.end.i18.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %51 = ptrtoint ptr %cmds_max.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cmds_max.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %52
  br i1 %cmp.i.i, label %if.end.i18.i.for.body.i.i_crit_edge, label %if.end.i18.i.session_teardown_crit_edge

if.end.i18.i.session_teardown_crit_edge:          ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %session_teardown

if.end.i18.i.for.body.i.i_crit_edge:              ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

session_teardown:                                 ; preds = %if.end.i18.i.session_teardown_crit_edge, %free_bdts.i.session_teardown_crit_edge
  tail call void @iscsi_session_teardown(ptr noundef nonnull %call18) #13
  br label %cleanup

cleanup:                                          ; preds = %session_teardown, %for.inc.i.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %lor.lhs.false7.i.cleanup_crit_edge, %lor.lhs.false3.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %session_teardown ], [ null, %do.end ], [ null, %if.end7.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %lor.lhs.false3.i.cleanup_crit_edge ], [ null, %lor.lhs.false7.i.cleanup_crit_edge ], [ %call18, %if.end21.cleanup_crit_edge ], [ %call18, %for.inc.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2i_session_destroy(ptr noundef %cls_session) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 16
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %parent = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %3, %entry ], [ %5, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %cmds_max.i = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 57
  %6 = ptrtoint ptr %cmds_max.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmds_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.i = icmp sgt i32 %7, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %dev_to_shost.exit.bnx2i_destroy_cmd_pool.exit_crit_edge

dev_to_shost.exit.bnx2i_destroy_cmd_pool.exit_crit_edge: ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_destroy_cmd_pool.exit

for.body.lr.ph.i:                                 ; preds = %dev_to_shost.exit
  %cmds.i = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 58
  %pcidev.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmds.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %i.010.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %dd_data.i = getelementptr inbounds %struct.iscsi_task, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dd_data.i, align 4
  %io_tbl.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %io_tbl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_tbl.i, align 4
  %tobool.not.i4 = icmp eq ptr %15, null
  br i1 %tobool.not.i4, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %bd_tbl_dma.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %13, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %bd_tbl_dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bd_tbl_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 512, ptr noundef nonnull %15, i32 noundef %19, i32 noundef 0) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %20 = ptrtoint ptr %cmds_max.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmds_max.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %21
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.bnx2i_destroy_cmd_pool.exit_crit_edge

if.end.i.bnx2i_destroy_cmd_pool.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_destroy_cmd_pool.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

bnx2i_destroy_cmd_pool.exit:                      ; preds = %if.end.i.bnx2i_destroy_cmd_pool.exit_crit_edge, %dev_to_shost.exit.bnx2i_destroy_cmd_pool.exit_crit_edge
  tail call void @iscsi_session_teardown(ptr noundef %cls_session) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bnx2i_conn_create(ptr noundef %cls_session, i32 noundef %cid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %call2 = tail call ptr @iscsi_conn_setup(ptr noundef %cls_session, i32 noundef 240, i32 noundef %cid) #13
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %dev_to_shost.exit.cleanup_crit_edge, label %if.end

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 1
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %call2, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 8
  %dd_data3 = getelementptr inbounds %struct.iscsi_conn, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dd_data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %7, align 8
  %hba5 = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %hba5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %hba5, align 4
  %work_cnt = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %work_cnt, i32 noundef 4) #13
  %10 = ptrtoint ptr %work_cnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %work_cnt, align 4
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 6
  %11 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ep, align 8
  %cmd_cleanup_cmpl = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %cmd_cleanup_cmpl to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cmd_cleanup_cmpl, align 4
  %wait.i = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_completion.__key) #13
  %pcidev.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 3
  %13 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %gen_pdu.i = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 7
  %req_dma_addr.i = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 7, i32 1
  %call.i.i28 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 8192, ptr noundef %req_dma_addr.i, i32 noundef 3264, i32 noundef 0) #13
  %15 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i28, ptr %gen_pdu.i, align 4
  %cmp.i = icmp eq ptr %call.i.i28, null
  br i1 %cmp.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %req_buf_size.i = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %req_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %req_buf_size.i, align 4
  %req_wr_ptr.i = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 7, i32 3
  %17 = ptrtoint ptr %req_wr_ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i28, ptr %req_wr_ptr.i, align 4
  %18 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcidev.i, align 4
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %resp_dma_addr.i = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 7, i32 6
  %call.i101.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev9.i, i32 noundef 8192, ptr noundef %resp_dma_addr.i, i32 noundef 3264, i32 noundef 0) #13
  %resp_buf.i = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 7, i32 5
  %20 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i101.i, ptr %resp_buf.i, align 4
  %cmp15.i = icmp eq ptr %call.i101.i, null
  br i1 %cmp15.i, label %if.end.i.login_resp_buf_failure.i_crit_edge, label %if.end17.i

if.end.i.login_resp_buf_failure.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %login_resp_buf_failure.i

if.end17.i:                                       ; preds = %if.end.i
  %resp_buf_size.i = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 7, i32 7
  %21 = ptrtoint ptr %resp_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8192, ptr %resp_buf_size.i, align 4
  %resp_wr_ptr.i = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 7, i32 8
  %22 = ptrtoint ptr %resp_wr_ptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i101.i, ptr %resp_wr_ptr.i, align 4
  %23 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcidev.i, align 4
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %req_bd_dma.i = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 7, i32 10
  %call.i102.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev23.i, i32 noundef 4096, ptr noundef %req_bd_dma.i, i32 noundef 3264, i32 noundef 0) #13
  %req_bd_tbl.i = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 7, i32 9
  %25 = ptrtoint ptr %req_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i102.i, ptr %req_bd_tbl.i, align 4
  %cmp29.i = icmp eq ptr %call.i102.i, null
  br i1 %cmp29.i, label %if.end17.i.login_req_bd_tbl_failure.i_crit_edge, label %if.end31.i

if.end17.i.login_req_bd_tbl_failure.i_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %login_req_bd_tbl_failure.i

if.end31.i:                                       ; preds = %if.end17.i
  %26 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcidev.i, align 4
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %resp_bd_dma.i = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 7, i32 12
  %call.i103.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev33.i, i32 noundef 4096, ptr noundef %resp_bd_dma.i, i32 noundef 3264, i32 noundef 0) #13
  %resp_bd_tbl.i = getelementptr inbounds %struct.bnx2i_conn, ptr %7, i32 0, i32 7, i32 11
  %28 = ptrtoint ptr %resp_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i103.i, ptr %resp_bd_tbl.i, align 4
  %cmp39.i = icmp eq ptr %call.i103.i, null
  br i1 %cmp39.i, label %login_resp_bd_tbl_failure.i, label %if.end31.i.cleanup_crit_edge

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

login_resp_bd_tbl_failure.i:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcidev.i, align 4
  %dev43.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %req_bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req_bd_tbl.i, align 4
  %33 = ptrtoint ptr %req_bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %req_bd_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev43.i, i32 noundef 4096, ptr noundef %32, i32 noundef %34, i32 noundef 0) #13
  %35 = ptrtoint ptr %req_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %req_bd_tbl.i, align 4
  br label %login_req_bd_tbl_failure.i

login_req_bd_tbl_failure.i:                       ; preds = %login_resp_bd_tbl_failure.i, %if.end17.i.login_req_bd_tbl_failure.i_crit_edge
  %36 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcidev.i, align 4
  %dev51.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %resp_buf.i, align 4
  %40 = ptrtoint ptr %resp_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %resp_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev51.i, i32 noundef 8192, ptr noundef %39, i32 noundef %41, i32 noundef 0) #13
  %42 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %resp_buf.i, align 4
  br label %login_resp_buf_failure.i

login_resp_buf_failure.i:                         ; preds = %login_req_bd_tbl_failure.i, %if.end.i.login_resp_buf_failure.i_crit_edge
  %43 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcidev.i, align 4
  %dev59.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %45 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %gen_pdu.i, align 4
  %47 = ptrtoint ptr %req_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %req_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev59.i, i32 noundef 8192, ptr noundef %46, i32 noundef %48, i32 noundef 0) #13
  %49 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %gen_pdu.i, align 4
  br label %do.end

do.end:                                           ; preds = %login_resp_buf_failure.i, %if.end.do.end_crit_edge
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %7, align 8
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dd_data.i, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %dev67.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %55, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.39, ptr noundef %dev67.i, ptr noundef nonnull @.str.45) #16
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %5, align 8
  %dev10 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %57, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev10, ptr noundef nonnull @.str.41) #16
  tail call void @iscsi_conn_teardown(ptr noundef nonnull %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end31.i.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %dev_to_shost.exit.cleanup_crit_edge ], [ %call2, %if.end31.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_unbind(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2i_conn_bind(ptr noundef %cls_session, ptr noundef %cls_conn, i64 noundef %transport_fd, i32 noundef %is_leading) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %parent = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %5, %entry ], [ %7, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 1
  %call3 = tail call ptr @iscsi_lookup_endpoint(i64 noundef %transport_fd) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %dev_to_shost.exit.cleanup_crit_edge, label %if.end

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %tobool.not.i80 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i80, label %if.end.put_ep_crit_edge, label %lor.lhs.false.i

if.end.put_ep_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_ep

lor.lhs.false.i:                                  ; preds = %if.end
  %adapter_state.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 9
  %8 = ptrtoint ptr %adapter_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %adapter_state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.put_ep_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.put_ep_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_ep

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %10 = ptrtoint ptr %adapter_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %adapter_state.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not.i = icmp eq i32 %12, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false3.i.put_ep_crit_edge

lor.lhs.false3.i.put_ep_crit_edge:                ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_ep

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false3.i
  %13 = ptrtoint ptr %adapter_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %adapter_state.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not.i = icmp eq i32 %15, 0
  br i1 %tobool10.not.i, label %if.end7, label %lor.lhs.false7.i.put_ep_crit_edge

lor.lhs.false7.i.put_ep_crit_edge:                ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_ep

if.end7:                                          ; preds = %lor.lhs.false7.i
  %16 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call3, align 8
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %19, label %if.end12 [
    i32 4096, label %if.end7.put_ep_crit_edge
    i32 8192, label %if.end7.put_ep_crit_edge92
  ]

if.end7.put_ep_crit_edge92:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_ep

if.end7.put_ep_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_ep

if.end12:                                         ; preds = %if.end7
  %call13 = tail call i32 @iscsi_conn_bind(ptr noundef %cls_session, ptr noundef %cls_conn, i32 noundef %is_leading) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.put_ep_crit_edge

if.end12.put_ep_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_ep

if.end16:                                         ; preds = %if.end12
  %hba17 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %hba17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hba17, align 4
  %cmp18.not = icmp eq ptr %22, %add.ptr
  br i1 %cmp18.not, label %land.lhs.true.i, label %do.end

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dd_data, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %dev22 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %26, i32 0, i32 8
  %netdev = getelementptr inbounds %struct.bnx2i_hba, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev22, ptr noundef nonnull @.str.47, ptr noundef %17, ptr noundef %28) #16
  %29 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dd_data, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %dev29 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %32, i32 0, i32 8
  %netdev30 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 6
  %33 = ptrtoint ptr %netdev30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev30, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev29, ptr noundef nonnull @.str.50, ptr noundef %34) #16
  br label %put_ep

land.lhs.true.i:                                  ; preds = %if.end16
  %conn34 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %17, i32 0, i32 2
  %35 = ptrtoint ptr %conn34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %3, ptr %conn34, align 4
  %ep35 = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 6
  %36 = ptrtoint ptr %ep35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %17, ptr %ep35, align 8
  %ids = getelementptr inbounds %struct.bnx2i_endpoint, ptr %17, i32 0, i32 11
  %drv_iscsi_cid = getelementptr inbounds %struct.bnx2i_endpoint, ptr %17, i32 0, i32 11, i32 1
  %37 = ptrtoint ptr %drv_iscsi_cid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %drv_iscsi_cid, align 4
  %iscsi_conn_cid = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %iscsi_conn_cid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %iscsi_conn_cid, align 8
  %40 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ids, align 4
  %fw_cid37 = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 4
  %42 = ptrtoint ptr %fw_cid37 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %fw_cid37, align 4
  %43 = load i32, ptr %drv_iscsi_cid, align 4
  %conn_cid_tbl.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 13, i32 4
  %44 = ptrtoint ptr %conn_cid_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %conn_cid_tbl.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %45, i32 %43
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i82 = icmp eq ptr %47, null
  br i1 %tobool1.not.i82, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 8
  %dd_data.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dd_data.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %dev.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %53, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev.i, ptr noundef nonnull @.str.52, i32 noundef %43) #16
  br label %bnx2i_bind_conn_to_iscsi_cid.exit

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %conn_cid_tbl.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %conn_cid_tbl.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %55, i32 %43
  %56 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %3, ptr %arrayidx5.i, align 4
  br label %bnx2i_bind_conn_to_iscsi_cid.exit

bnx2i_bind_conn_to_iscsi_cid.exit:                ; preds = %if.end.i, %do.end.i
  %retval.0.i83 = phi i32 [ -16, %do.end.i ], [ 0, %if.end.i ]
  %57 = ptrtoint ptr %hba17 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hba17, align 4
  %cnic_dev_type = getelementptr inbounds %struct.bnx2i_hba, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %cnic_dev_type to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %cnic_dev_type, align 4
  %61 = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool43.not = icmp eq i32 %61, 0
  br i1 %tobool43.not, label %bnx2i_bind_conn_to_iscsi_cid.exit.if.end45_crit_edge, label %if.then44

bnx2i_bind_conn_to_iscsi_cid.exit.if.end45_crit_edge: ; preds = %bnx2i_bind_conn_to_iscsi_cid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then44:                                        ; preds = %bnx2i_bind_conn_to_iscsi_cid.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bnx2i_put_rq_buf(ptr noundef %3, i32 noundef 0) #13
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %bnx2i_bind_conn_to_iscsi_cid.exit.if.end45_crit_edge
  %62 = ptrtoint ptr %ep35 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ep35, align 8
  %call47 = tail call i32 @bnx2i_arm_cq_event_coalescing(ptr noundef %63, i8 noundef zeroext 1) #13
  br label %put_ep

put_ep:                                           ; preds = %if.end45, %do.end, %if.end12.put_ep_crit_edge, %if.end7.put_ep_crit_edge, %if.end7.put_ep_crit_edge92, %lor.lhs.false7.i.put_ep_crit_edge, %lor.lhs.false3.i.put_ep_crit_edge, %lor.lhs.false.i.put_ep_crit_edge, %if.end.put_ep_crit_edge
  %ret_code.0 = phi i32 [ -17, %do.end ], [ %retval.0.i83, %if.end45 ], [ -22, %if.end7.put_ep_crit_edge ], [ -22, %if.end7.put_ep_crit_edge92 ], [ -22, %if.end12.put_ep_crit_edge ], [ -5, %if.end.put_ep_crit_edge ], [ -5, %lor.lhs.false.i.put_ep_crit_edge ], [ -5, %lor.lhs.false3.i.put_ep_crit_edge ], [ -5, %lor.lhs.false7.i.put_ep_crit_edge ]
  tail call void @iscsi_put_endpoint(ptr noundef nonnull %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %put_ep, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_code.0, %put_ep ], [ -22, %dev_to_shost.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2i_conn_start(ptr noundef %cls_conn) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep, align 8
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 64, ptr %state, align 4
  tail call void @bnx2i_update_iscsi_conn(ptr noundef %1) #13
  %7 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ep, align 8
  %ofld_timer = getelementptr inbounds %struct.bnx2i_endpoint, ptr %8, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %ofld_timer, ptr noundef nonnull @bnx2i_ep_ofld_timer, i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef nonnull @bnx2i_conn_start.__key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 100
  %10 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep, align 8
  %expires = getelementptr inbounds %struct.bnx2i_endpoint, ptr %11, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %expires, align 4
  %13 = load ptr, ptr %ep, align 8
  %ofld_timer6 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %13, i32 0, i32 12
  tail call void @add_timer(ptr noundef %ofld_timer6) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1625) #13
  %14 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep, align 8
  %state14 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %17)
  %cmp.not = icmp eq i32 %17, 64
  br i1 %cmp.not, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %19 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep, align 8
  %ofld_wait58 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %20, i32 0, i32 13
  %call59 = call i32 @prepare_to_wait_event(ptr noundef %ofld_wait58, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %21 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ep, align 8
  %state1860 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %state1860 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state1860, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %24)
  %cmp19.not61 = icmp eq i32 %24, 64
  br i1 %cmp19.not61, label %if.then.if.end_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call62 = phi i32 [ %call, %cleanup.if.end_crit_edge ], [ %call59, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool.not = icmp eq i32 %call62, 0
  br i1 %tobool.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #13
  %25 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep, align 8
  %ofld_wait = getelementptr inbounds %struct.bnx2i_endpoint, ptr %26, i32 0, i32 13
  %call = call i32 @prepare_to_wait_event(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %27 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep, align 8
  %state18 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %state18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state18, align 4
  %cmp19.not = icmp eq i32 %30, 64
  br i1 %cmp19.not, label %cleanup.if.end_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  %31 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ep, align 8
  %ofld_wait24 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %32, i32 0, i32 13
  call void @finish_wait(ptr noundef %ofld_wait24, ptr noundef nonnull %__wq_entry) #13
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end25

if.end25:                                         ; preds = %__out, %entry.if.end25_crit_edge
  %33 = call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stack.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %41 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end25.if.then30_crit_edge, !prof !201

if.end25.if.then30_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

signal_pending.exit:                              ; preds = %if.end25
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %38, align 4
  %and1.i.i.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool29.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool29.not, label %signal_pending.exit.if.end33_crit_edge, label %signal_pending.exit.if.then30_crit_edge

signal_pending.exit.if.then30_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

signal_pending.exit.if.end33_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then30:                                        ; preds = %signal_pending.exit.if.then30_crit_edge, %if.end25.if.then30_crit_edge
  call void @flush_signals(ptr noundef %36) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %signal_pending.exit.if.end33_crit_edge
  %44 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ep, align 8
  %ofld_timer35 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %45, i32 0, i32 12
  %call36 = call i32 @del_timer_sync(ptr noundef %ofld_timer35) #13
  %call37 = call i32 @iscsi_conn_start(ptr noundef %cls_conn) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_stop(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2i_conn_destroy(ptr noundef %cls_conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %parent = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %parent4 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent4, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %7, %entry ], [ %9, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %gen_pdu.i = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 7
  %resp_bd_tbl.i = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 7, i32 11
  %10 = ptrtoint ptr %resp_bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resp_bd_tbl.i, align 4
  %tobool.not.i59 = icmp eq ptr %11, null
  br i1 %tobool.not.i59, label %dev_to_shost.exit.if.end.i_crit_edge, label %if.then.i

dev_to_shost.exit.if.end.i_crit_edge:             ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 3
  %12 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcidev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %resp_bd_dma.i = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 7, i32 12
  %14 = ptrtoint ptr %resp_bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resp_bd_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %11, i32 noundef %15, i32 noundef 0) #13
  %16 = ptrtoint ptr %resp_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %resp_bd_tbl.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %dev_to_shost.exit.if.end.i_crit_edge
  %req_bd_tbl.i = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 7, i32 9
  %17 = ptrtoint ptr %req_bd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req_bd_tbl.i, align 4
  %tobool7.not.i = icmp eq ptr %18, null
  br i1 %tobool7.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then8.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev9.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 3
  %19 = ptrtoint ptr %pcidev9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcidev9.i, align 4
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %req_bd_dma.i = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 7, i32 10
  %21 = ptrtoint ptr %req_bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %req_bd_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10.i, i32 noundef 4096, ptr noundef nonnull %18, i32 noundef %22, i32 noundef 0) #13
  %23 = ptrtoint ptr %req_bd_tbl.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %req_bd_tbl.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then8.i, %if.end.i.if.end16.i_crit_edge
  %resp_buf.i = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 7, i32 5
  %24 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resp_buf.i, align 4
  %tobool18.not.i = icmp eq ptr %25, null
  br i1 %tobool18.not.i, label %if.end16.i.if.end27.i_crit_edge, label %if.then19.i

if.end16.i.if.end27.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev20.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 3
  %26 = ptrtoint ptr %pcidev20.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcidev20.i, align 4
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %resp_dma_addr.i = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 7, i32 6
  %28 = ptrtoint ptr %resp_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resp_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev21.i, i32 noundef 8192, ptr noundef nonnull %25, i32 noundef %29, i32 noundef 0) #13
  %30 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %resp_buf.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end27.i_crit_edge
  %31 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gen_pdu.i, align 4
  %tobool29.not.i = icmp eq ptr %32, null
  br i1 %tobool29.not.i, label %if.end27.i.bnx2i_conn_free_login_resources.exit_crit_edge, label %if.then30.i

if.end27.i.bnx2i_conn_free_login_resources.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_conn_free_login_resources.exit

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %pcidev31.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 3
  %33 = ptrtoint ptr %pcidev31.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcidev31.i, align 4
  %dev32.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %req_dma_addr.i = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %req_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %req_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev32.i, i32 noundef 8192, ptr noundef nonnull %32, i32 noundef %36, i32 noundef 0) #13
  %37 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %gen_pdu.i, align 4
  br label %bnx2i_conn_free_login_resources.exit

bnx2i_conn_free_login_resources.exit:             ; preds = %if.then30.i, %if.end27.i.bnx2i_conn_free_login_resources.exit_crit_edge
  %work_cnt = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %work_cnt, i32 noundef 4) #13
  %38 = ptrtoint ptr %work_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %work_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not = icmp eq i32 %39, 0
  br i1 %tobool.not, label %bnx2i_conn_free_login_resources.exit.if.end40_crit_edge, label %for.cond.preheader

bnx2i_conn_free_login_resources.exit.if.end40_crit_edge: ; preds = %bnx2i_conn_free_login_resources.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

for.cond.preheader:                               ; preds = %bnx2i_conn_free_login_resources.exit
  %call867 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call867, i32 %40)
  %cmp68 = icmp ult i32 %call867, %40
  br i1 %cmp68, label %do.body.lr.ph, label %for.cond.preheader.if.end40_crit_edge

for.cond.preheader.if.end40_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %session23 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %do.body.lr.ph
  %call869 = phi i32 [ %call867, %do.body.lr.ph ], [ %call8, %for.end.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call869
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %add = add i32 %42, ptrtoint (ptr @bnx2i_percpu to i32)
  %43 = inttoptr i32 %add to ptr
  %p_work_lock = getelementptr inbounds %struct.bnx2i_percpu_s, ptr %43, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %p_work_lock) #13
  %work_list = getelementptr inbounds %struct.bnx2i_percpu_s, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %work_list, align 4
  %cmp21.not63 = icmp eq ptr %45, %work_list
  br i1 %cmp21.not63, label %do.body.for.end_crit_edge, label %do.body.for.body22_crit_edge

do.body.for.body22_crit_edge:                     ; preds = %do.body
  br label %for.body22

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body22:                                       ; preds = %for.body22.backedge, %do.body.for.body22_crit_edge
  %work.064 = phi ptr [ %tmp.066, %for.body22.backedge ], [ %45, %do.body.for.body22_crit_edge ]
  %46 = ptrtoint ptr %work.064 to i32
  call void @__asan_load4_noabort(i32 %46)
  %tmp.066 = load ptr, ptr %work.064, align 4
  %session = getelementptr inbounds %struct.bnx2i_work, ptr %work.064, i32 0, i32 1
  %47 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %session, align 4
  %49 = ptrtoint ptr %session23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %session23, align 8
  %cmp24 = icmp eq ptr %48, %50
  br i1 %cmp24, label %land.lhs.true, label %for.body22.for.inc_crit_edge

for.body22.for.inc_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body22
  %bnx2i_conn25 = getelementptr inbounds %struct.bnx2i_work, ptr %work.064, i32 0, i32 2
  %51 = ptrtoint ptr %bnx2i_conn25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bnx2i_conn25, align 4
  %cmp26 = icmp eq ptr %52, %3
  br i1 %cmp26, label %if.then27, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then27:                                        ; preds = %land.lhs.true
  %call.i.i60 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %work.064) #13
  br i1 %call.i.i60, label %if.end.i.i, label %if.then27.list_del_init.exit_crit_edge

if.then27.list_del_init.exit_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %work.064, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %55 = ptrtoint ptr %work.064 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %work.064, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then27.list_del_init.exit_crit_edge
  %59 = ptrtoint ptr %work.064 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %work.064, ptr %work.064, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %work.064, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %work.064, ptr %prev.i3.i, align 4
  tail call void @kfree(ptr noundef %work.064) #13
  %call.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %work_cnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %work_cnt, i32 1, i32 3, i32 1) #13
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %work_cnt, ptr %work_cnt, i32 1, ptr elementtype(i32) %work_cnt) #13, !srcloc !203
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp ne i32 %asmresult.i.i.i.i.i, 0
  %cmp21.not = icmp eq ptr %tmp.066, %work_list
  %or.cond = select i1 %cmp.i.i, i1 true, i1 %cmp21.not
  br i1 %or.cond, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body22.backedge_crit_edge

list_del_init.exit.for.body22.backedge_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body22.backedge

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body22.for.inc_crit_edge
  %cmp21.not.old = icmp eq ptr %tmp.066, %work_list
  br i1 %cmp21.not.old, label %for.inc.for.end_crit_edge, label %for.inc.for.body22.backedge_crit_edge

for.inc.for.body22.backedge_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body22.backedge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body22.backedge:                              ; preds = %for.inc.for.body22.backedge_crit_edge, %list_del_init.exit.for.body22.backedge_crit_edge
  br label %for.body22

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del_init.exit.for.end_crit_edge, %do.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %p_work_lock) #13
  %call8 = tail call i32 @cpumask_next(i32 noundef %call869, ptr noundef nonnull @__cpu_online_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %62 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call8, %62
  br i1 %cmp, label %for.end.do.body_crit_edge, label %for.end.if.end40_crit_edge

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end40:                                         ; preds = %for.end.if.end40_crit_edge, %for.cond.preheader.if.end40_crit_edge, %bnx2i_conn_free_login_resources.exit.if.end40_crit_edge
  tail call void @iscsi_conn_teardown(ptr noundef %cls_conn) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_set_param(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2i_ep_get_param(ptr nocapture noundef readonly %ep, i32 noundef %param, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %hba1 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %param, label %if.end.cleanup_crit_edge [
    i32 20, label %sw.bb
    i32 21, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %net_dev_lock = getelementptr inbounds %struct.bnx2i_hba, ptr %3, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %net_dev_lock, i32 noundef 0) #13
  %cm_sk = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %cm_sk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cm_sk, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %sw.bb.cleanup.sink.split_crit_edge, label %if.then3

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %dst_port = getelementptr inbounds %struct.cnic_sock, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dst_port, align 2
  %conv = zext i16 %8 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.55, i32 noundef %conv)
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %if.end
  %net_dev_lock8 = getelementptr inbounds %struct.bnx2i_hba, ptr %3, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %net_dev_lock8, i32 noundef 0) #13
  %cm_sk9 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %cm_sk9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cm_sk9, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %sw.bb7.cleanup.sink.split_crit_edge, label %if.then11

sw.bb7.cleanup.sink.split_crit_edge:              ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then11:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  %dst_ip = getelementptr inbounds %struct.cnic_sock, ptr %10, i32 0, i32 3
  %call13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.56, ptr noundef %dst_ip)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then11, %sw.bb7.cleanup.sink.split_crit_edge, %if.then3, %sw.bb.cleanup.sink.split_crit_edge
  %net_dev_lock.sink = phi ptr [ %net_dev_lock, %if.then3 ], [ %net_dev_lock, %sw.bb.cleanup.sink.split_crit_edge ], [ %net_dev_lock8, %if.then11 ], [ %net_dev_lock8, %sw.bb7.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %if.then3 ], [ -107, %sw.bb.cleanup.sink.split_crit_edge ], [ %call13, %if.then11 ], [ -107, %sw.bb7.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %net_dev_lock.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_get_param(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_session_get_param(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2i_host_get_param(ptr noundef %shost, i32 noundef %param, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %param, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cnic = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 2
  %1 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cnic, align 8
  %mac_addr = getelementptr inbounds %struct.cnic_dev, ptr %2, i32 0, i32 18
  %call1 = tail call i32 @sysfs_format_mac(ptr noundef %buf, ptr noundef %mac_addr, i32 noundef 6) #13
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %netdev = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 6
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 8
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.57, ptr noundef %4)
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %ep_active_list = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4
  %ep_rdwr_lock = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 5
  tail call void @_raw_read_lock_bh(ptr noundef %ep_rdwr_lock) #13
  %5 = ptrtoint ptr %ep_active_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %ep_active_list, align 4
  %cmp.i.not = icmp eq ptr %6, %ep_active_list
  br i1 %cmp.i.not, label %sw.bb5.if.end17_crit_edge, label %if.then

sw.bb5.if.end17_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  %cm_sk = getelementptr inbounds %struct.bnx2i_endpoint, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %cm_sk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cm_sk, align 4
  %flags = getelementptr inbounds %struct.cnic_sock, ptr %8, i32 0, i32 24
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  %src_ip14 = getelementptr inbounds %struct.cnic_sock, ptr %8, i32 0, i32 2
  %.str.56..str.58 = select i1 %tobool10.not, ptr @.str.56, ptr @.str.58
  %call13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull %.str.56..str.58, ptr noundef %src_ip14)
  br label %if.end17

if.end17:                                         ; preds = %if.then, %sw.bb5.if.end17_crit_edge
  %len.1 = phi i32 [ 0, %sw.bb5.if.end17_crit_edge ], [ %call13, %if.then ]
  tail call void @_raw_read_unlock_bh(ptr noundef %ep_rdwr_lock) #13
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 @iscsi_host_get_param(ptr noundef %shost, i32 noundef %param, ptr noundef %buf) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end17, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %call19, %sw.default ], [ %len.1, %if.end17 ], [ %call4, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_send_pdu(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnx2i_conn_get_stats(ptr nocapture noundef readonly %cls_conn, ptr nocapture noundef writeonly %stats) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %txdata_octets = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %txdata_octets to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %txdata_octets, align 8
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %stats, align 8
  %rxdata_octets = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %rxdata_octets to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rxdata_octets, align 8
  %rxdata_octets2 = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 1
  %7 = ptrtoint ptr %rxdata_octets2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %rxdata_octets2, align 8
  %scsicmd_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 49
  %8 = ptrtoint ptr %scsicmd_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scsicmd_pdus_cnt, align 8
  %scsicmd_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 3
  %10 = ptrtoint ptr %scsicmd_pdus to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %scsicmd_pdus, align 4
  %dataout_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 50
  %11 = ptrtoint ptr %dataout_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dataout_pdus_cnt, align 4
  %dataout_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 7
  %13 = ptrtoint ptr %dataout_pdus to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dataout_pdus, align 4
  %scsirsp_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 51
  %14 = ptrtoint ptr %scsirsp_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scsirsp_pdus_cnt, align 8
  %scsirsp_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 11
  %16 = ptrtoint ptr %scsirsp_pdus to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %scsirsp_pdus, align 4
  %datain_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 52
  %17 = ptrtoint ptr %datain_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %datain_pdus_cnt, align 4
  %datain_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 14
  %19 = ptrtoint ptr %datain_pdus to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %datain_pdus, align 8
  %r2t_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 53
  %20 = ptrtoint ptr %r2t_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %r2t_pdus_cnt, align 8
  %r2t_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 16
  %22 = ptrtoint ptr %r2t_pdus to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %r2t_pdus, align 8
  %tmfcmd_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 54
  %23 = ptrtoint ptr %tmfcmd_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmfcmd_pdus_cnt, align 4
  %tmfcmd_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 4
  %25 = ptrtoint ptr %tmfcmd_pdus to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmfcmd_pdus, align 8
  %tmfrsp_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 55
  %26 = ptrtoint ptr %tmfrsp_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmfrsp_pdus_cnt, align 8
  %tmfrsp_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 12
  %28 = ptrtoint ptr %tmfrsp_pdus to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmfrsp_pdus, align 8
  %digest_err = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 19
  %29 = ptrtoint ptr %digest_err to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %digest_err, align 4
  %timeout_err = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 20
  %30 = ptrtoint ptr %timeout_err to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %timeout_err, align 8
  %custom = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 22
  %31 = call ptr @memcpy(ptr %custom, ptr @.str.59, i32 13)
  %eh_abort_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 56
  %32 = ptrtoint ptr %eh_abort_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %eh_abort_cnt, align 4
  %conv = zext i32 %33 to i64
  %value = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 1, i32 14
  %34 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv, ptr %value, align 8
  %custom_length = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 21
  %35 = ptrtoint ptr %custom_length to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %custom_length, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2i_task_xmit(ptr noundef %task) #0 align 64 {
entry:
  %scsi_lun.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 12
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  %session2 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %session2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %session2, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %parent = getelementptr inbounds %struct.iscsi_cls_session, ptr %5, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %7, %entry ], [ %9, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dd_data, align 4
  %sc4 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 11
  %12 = ptrtoint ptr %sc4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc4, align 4
  %dd_data5 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %14 = ptrtoint ptr %dd_data5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dd_data5, align 4
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 4
  %ep = getelementptr inbounds %struct.bnx2i_conn, ptr %11, i32 0, i32 6
  %18 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep, align 8
  %num_active_cmds = getelementptr inbounds %struct.bnx2i_endpoint, ptr %19, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_active_cmds, i32 noundef 4) #13
  %20 = ptrtoint ptr %num_active_cmds to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %num_active_cmds, align 4
  %add = add i32 %21, 1
  %max_sqes = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 10, i32 0, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %max_sqes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_sqes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %23)
  %cmp = icmp ugt i32 %add, %23
  br i1 %cmp, label %dev_to_shost.exit.cleanup_crit_edge, label %if.end

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %24 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dd_data, align 4
  %hba1.i = getelementptr inbounds %struct.bnx2i_conn, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %hba1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hba1.i, align 4
  %28 = ptrtoint ptr %dd_data5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dd_data5, align 4
  %gen_pdu.i = getelementptr inbounds %struct.bnx2i_conn, ptr %25, i32 0, i32 7
  %30 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gen_pdu.i, align 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 8192)
  %req.i.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %29, i32 0, i32 6
  %33 = call ptr @memset(ptr %req.i.i, i32 0, i32 64)
  %34 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %req.i.i, align 4
  %bd_tbl_dma.i.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %29, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %bd_tbl_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bd_tbl_dma.i.i, align 4
  %bd_list_addr_lo.i.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %29, i32 0, i32 6, i32 13
  %37 = ptrtoint ptr %bd_list_addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %bd_list_addr_lo.i.i, align 4
  %data_count.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 10
  %38 = ptrtoint ptr %data_count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_count.i, align 4
  %req_buf_size.i = getelementptr inbounds %struct.bnx2i_conn, ptr %25, i32 0, i32 7, i32 2
  %40 = ptrtoint ptr %req_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %req_buf_size.i, align 4
  %tx_pdus.i = getelementptr inbounds %struct.bnx2i_hba, ptr %27, i32 0, i32 48, i32 2
  %41 = ptrtoint ptr %tx_pdus.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %tx_pdus.i, align 8
  %add.i = add i64 %42, 1
  store i64 %add.i, ptr %tx_pdus.i, align 8
  %43 = load i32, ptr %data_count.i, align 4
  %conv.i = zext i32 %43 to i64
  %tx_bytes.i = getelementptr inbounds %struct.bnx2i_hba, ptr %27, i32 0, i32 48, i32 3
  %44 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %tx_bytes.i, align 8
  %add7.i = add i64 %45, %conv.i
  store i64 %add7.i, ptr %tx_bytes.i, align 8
  %46 = load i32, ptr %data_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i99 = icmp eq i32 %46, 0
  br i1 %tobool.not.i99, label %if.then8.if.end.i_crit_edge, label %if.then.i

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %gen_pdu.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gen_pdu.i, align 4
  %data.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 9
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i, align 4
  %51 = call ptr @memcpy(ptr %48, ptr %50, i32 %46)
  %52 = load ptr, ptr %gen_pdu.i, align 4
  %53 = ptrtoint ptr %data_count.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_count.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %52, i32 %54
  %req_wr_ptr.i = getelementptr inbounds %struct.bnx2i_conn, ptr %25, i32 0, i32 7, i32 3
  %55 = ptrtoint ptr %req_wr_ptr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i100, ptr %req_wr_ptr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then8.if.end.i_crit_edge
  %56 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dd_data, align 4
  %conn19.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %29, i32 0, i32 1
  %58 = ptrtoint ptr %conn19.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %conn19.i, align 4
  %scsi_cmd.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %29, i32 0, i32 2
  %59 = ptrtoint ptr %scsi_cmd.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %scsi_cmd.i, align 4
  %60 = ptrtoint ptr %dd_data5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dd_data5, align 4
  %conn.i.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %conn.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %conn.i.i, align 4
  %gen_pdu.i.i.i = getelementptr inbounds %struct.bnx2i_conn, ptr %63, i32 0, i32 7
  %req_bd_tbl.i.i.i = getelementptr inbounds %struct.bnx2i_conn, ptr %63, i32 0, i32 7, i32 9
  %64 = ptrtoint ptr %req_bd_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %req_bd_tbl.i.i.i, align 4
  %req_dma_addr.i.i.i = getelementptr inbounds %struct.bnx2i_conn, ptr %63, i32 0, i32 7, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %65, align 4
  %67 = ptrtoint ptr %req_dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %req_dma_addr.i.i.i, align 4
  %buffer_addr_lo.i.i.i = getelementptr inbounds %struct.iscsi_bd, ptr %65, i32 0, i32 1
  %69 = ptrtoint ptr %buffer_addr_lo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %buffer_addr_lo.i.i.i, align 4
  %req_wr_ptr.i.i.i = getelementptr inbounds %struct.bnx2i_conn, ptr %63, i32 0, i32 7, i32 3
  %70 = ptrtoint ptr %req_wr_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %req_wr_ptr.i.i.i, align 4
  %72 = ptrtoint ptr %gen_pdu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %gen_pdu.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %73 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv7.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %buffer_length.i.i.i = getelementptr inbounds %struct.iscsi_bd, ptr %65, i32 0, i32 3
  %74 = ptrtoint ptr %buffer_length.i.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv7.i.i.i, ptr %buffer_length.i.i.i, align 2
  %reserved0.i.i.i = getelementptr inbounds %struct.iscsi_bd, ptr %65, i32 0, i32 2
  %75 = ptrtoint ptr %reserved0.i.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %reserved0.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.iscsi_bd, ptr %65, i32 0, i32 5
  %76 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 192, ptr %flags.i.i.i, align 2
  %resp_bd_tbl.i.i.i = getelementptr inbounds %struct.bnx2i_conn, ptr %63, i32 0, i32 7, i32 11
  %77 = ptrtoint ptr %resp_bd_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %resp_bd_tbl.i.i.i, align 4
  %resp_dma_addr.i.i.i = getelementptr inbounds %struct.bnx2i_conn, ptr %63, i32 0, i32 7, i32 6
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %78, align 4
  %80 = ptrtoint ptr %resp_dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %resp_dma_addr.i.i.i, align 4
  %buffer_addr_lo16.i.i.i = getelementptr inbounds %struct.iscsi_bd, ptr %78, i32 0, i32 1
  %82 = ptrtoint ptr %buffer_addr_lo16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %buffer_addr_lo16.i.i.i, align 4
  %buffer_length17.i.i.i = getelementptr inbounds %struct.iscsi_bd, ptr %78, i32 0, i32 3
  %83 = ptrtoint ptr %buffer_length17.i.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 8192, ptr %buffer_length17.i.i.i, align 2
  %reserved018.i.i.i = getelementptr inbounds %struct.iscsi_bd, ptr %78, i32 0, i32 2
  %84 = ptrtoint ptr %reserved018.i.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %reserved018.i.i.i, align 4
  %flags19.i.i.i = getelementptr inbounds %struct.iscsi_bd, ptr %78, i32 0, i32 5
  %85 = ptrtoint ptr %flags19.i.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 192, ptr %flags19.i.i.i, align 2
  %86 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 4
  %conv.i.i = zext i8 %89 to i32
  %and.i.i = and i32 %conv.i.i, 63
  %90 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %and.i.i, label %do.end.i.i [
    i32 3, label %sw.bb.i.i
    i32 0, label %sw.bb1.i.i
    i32 6, label %sw.bb5.i.i
    i32 2, label %sw.bb7.i.i
    i32 4, label %sw.bb9.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i101 = tail call i32 @bnx2i_send_iscsi_login(ptr noundef %63, ptr noundef %task) #13
  br label %cleanup

sw.bb1.i.i:                                       ; preds = %if.end.i
  %req_buf_size.i.i = getelementptr inbounds %struct.bnx2i_conn, ptr %63, i32 0, i32 7, i32 2
  %91 = ptrtoint ptr %req_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %req_buf_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i.i = icmp eq i32 %92, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %gen_pdu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %gen_pdu.i.i.i, align 4
  %call3.i.i = tail call i32 @bnx2i_send_iscsi_nopout(ptr noundef %63, ptr noundef %task, ptr noundef %94, i32 noundef %92, i32 noundef 1) #13
  br label %cleanup

if.else.i.i:                                      ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i.i = tail call i32 @bnx2i_send_iscsi_nopout(ptr noundef %63, ptr noundef %task, ptr noundef null, i32 noundef 0, i32 noundef 1) #13
  br label %cleanup

sw.bb5.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i.i = tail call i32 @bnx2i_send_iscsi_logout(ptr noundef %63, ptr noundef %task) #13
  br label %cleanup

sw.bb7.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i.i = tail call i32 @bnx2i_send_iscsi_tmf(ptr noundef %63, ptr noundef %task) #13
  br label %cleanup

sw.bb9.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i.i = tail call i32 @bnx2i_send_iscsi_text(ptr noundef %63, ptr noundef %task) #13
  br label %cleanup

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %63, align 8
  %dd_data11.i.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %dd_data11.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dd_data11.i.i, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  %dev.i.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %100, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev.i.i, ptr noundef nonnull @.str.60, i32 noundef %conv.i.i) #16
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %req.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 6
  %101 = call ptr @memset(ptr %req.i, i32 0, i32 64)
  %bd_tbl_dma.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 4, i32 1
  %102 = ptrtoint ptr %bd_tbl_dma.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bd_tbl_dma.i, align 4
  %bd_list_addr_lo.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 6, i32 13
  %104 = ptrtoint ptr %bd_list_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %bd_list_addr_lo.i, align 4
  %105 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %req.i, align 4
  %conn11 = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 1
  %106 = ptrtoint ptr %conn11 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %11, ptr %conn11, align 4
  %scsi_cmd = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 2
  %107 = ptrtoint ptr %scsi_cmd to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %13, ptr %scsi_cmd, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %13, i32 0, i32 17, i32 1
  %108 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %length.i, align 4
  %total_data_transfer_length = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 6, i32 8
  %110 = ptrtoint ptr %total_data_transfer_length to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %total_data_transfer_length, align 4
  %cmdsn = getelementptr inbounds %struct.iscsi_scsi_req, ptr %17, i32 0, i32 8
  %111 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cmdsn, align 4
  %cmd_sn = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 6, i32 9
  %113 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %cmd_sn, align 4
  %io_tbl.i.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 4
  %114 = ptrtoint ptr %io_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %io_tbl.i.i, align 4
  %nents.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %13, i32 0, i32 17, i32 0, i32 1
  %116 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nents.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %117)
  %cmp.i.i = icmp ugt i32 %117, 32
  br i1 %cmp.i.i, label %do.body2.i.i, label %do.end7.i.i, !prof !205

do.body2.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/bnx2i/bnx2i_iscsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 155, 0\0A.popsection", ""() #13, !srcloc !206
  unreachable

do.end7.i.i:                                      ; preds = %if.end10
  %call8.i.i102 = tail call i32 @scsi_dma_map(ptr noundef nonnull %13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i102)
  %cmp101.i.i = icmp sgt i32 %call8.i.i102, 0
  br i1 %cmp101.i.i, label %for.body.preheader.i.i, label %do.body32.i.thread.i

for.body.preheader.i.i:                           ; preds = %do.end7.i.i
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %13, i32 0, i32 17
  %118 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sdb.i.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.05.i.i = phi i32 [ %inc23.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %byte_count.03.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %sg.02.i.i = phi ptr [ %call24.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %119, %for.body.preheader.i.i ]
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.02.i.i, i32 0, i32 4
  %120 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dma_length.i.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.02.i.i, i32 0, i32 3
  %122 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dma_address.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.iscsi_bd, ptr %115, i32 %i.05.i.i
  %buffer_addr_lo.i.i = getelementptr %struct.iscsi_bd, ptr %115, i32 %i.05.i.i, i32 1
  %124 = ptrtoint ptr %buffer_addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %buffer_addr_lo.i.i, align 4
  %125 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %arrayidx.i.i, align 4
  %conv14.i.i = trunc i32 %121 to i16
  %buffer_length.i.i = getelementptr %struct.iscsi_bd, ptr %115, i32 %i.05.i.i, i32 3
  %126 = ptrtoint ptr %buffer_length.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv14.i.i, ptr %buffer_length.i.i, align 2
  %flags.i.i = getelementptr %struct.iscsi_bd, ptr %115, i32 %i.05.i.i, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.05.i.i)
  %cmp17.i.i = icmp eq i32 %i.05.i.i, 0
  %spec.select.i.i = select i1 %cmp17.i.i, i16 128, i16 0
  %127 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %spec.select.i.i, ptr %flags.i.i, align 2
  %add.i.i = add i32 %121, %byte_count.03.i.i
  %inc23.i.i = add nuw nsw i32 %i.05.i.i, 1
  %call24.i.i = tail call ptr @sg_next(ptr noundef %sg.02.i.i) #13
  %exitcond.not.i.i = icmp eq i32 %inc23.i.i, %call8.i.i102
  br i1 %exitcond.not.i.i, label %do.body32.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

do.body32.i.i:                                    ; preds = %for.body.i.i
  %sub.i.i = add i32 %call8.i.i102, -1
  %flags28.i.i = getelementptr %struct.iscsi_bd, ptr %115, i32 %sub.i.i, i32 5
  %128 = ptrtoint ptr %flags28.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %flags28.i.i, align 2
  %130 = or i16 %129, 64
  store i16 %130, ptr %flags28.i.i, align 2
  %131 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %132)
  %cmp34.not.i.i = icmp eq i32 %add.i.i, %132
  br i1 %cmp34.not.i.i, label %do.body32.i.i.bnx2i_iscsi_map_sg_list.exit_crit_edge, label %do.body32.i.i.do.body43.i.i_crit_edge, !prof !201

do.body32.i.i.do.body43.i.i_crit_edge:            ; preds = %do.body32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43.i.i

do.body32.i.i.bnx2i_iscsi_map_sg_list.exit_crit_edge: ; preds = %do.body32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_iscsi_map_sg_list.exit

do.body32.i.thread.i:                             ; preds = %do.end7.i.i
  %133 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp34.not.i15.i = icmp eq i32 %134, 0
  br i1 %cmp34.not.i15.i, label %if.then.i103, label %do.body32.i.thread.i.do.body43.i.i_crit_edge, !prof !201

do.body32.i.thread.i.do.body43.i.i_crit_edge:     ; preds = %do.body32.i.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43.i.i

do.body43.i.i:                                    ; preds = %do.body32.i.thread.i.do.body43.i.i_crit_edge, %do.body32.i.i.do.body43.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/bnx2i/bnx2i_iscsi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #13, !srcloc !207
  unreachable

if.then.i103:                                     ; preds = %do.body32.i.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  %135 = ptrtoint ptr %io_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %io_tbl.i.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %136, align 4
  %buffer_addr_lo.i = getelementptr inbounds %struct.iscsi_bd, ptr %136, i32 0, i32 1
  %138 = ptrtoint ptr %buffer_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %buffer_addr_lo.i, align 4
  %flags.i = getelementptr inbounds %struct.iscsi_bd, ptr %136, i32 0, i32 5
  %139 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %flags.i, align 2
  %buffer_length.i = getelementptr inbounds %struct.iscsi_bd, ptr %136, i32 0, i32 3
  %140 = ptrtoint ptr %buffer_length.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %buffer_length.i, align 2
  br label %bnx2i_iscsi_map_sg_list.exit

bnx2i_iscsi_map_sg_list.exit:                     ; preds = %if.then.i103, %do.body32.i.i.bnx2i_iscsi_map_sg_list.exit_crit_edge
  %bd_count.0.lcssa11.i1619.i = phi i32 [ 0, %if.then.i103 ], [ %call8.i.i102, %do.body32.i.i.bnx2i_iscsi_map_sg_list.exit_crit_edge ]
  %conv.i104 = trunc i32 %bd_count.0.lcssa11.i1619.i to i16
  %bd_valid.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 4, i32 2
  %141 = ptrtoint ptr %bd_valid.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv.i104, ptr %bd_valid.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scsi_lun.i) #13
  %142 = ptrtoint ptr %scsi_lun.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %scsi_lun.i, align 4, !annotation !208
  %143 = getelementptr inbounds [2 x i32], ptr %scsi_lun.i, i32 0, i32 1
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %143, align 4, !annotation !208
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %13, i32 0, i32 1
  %145 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %146, i32 0, i32 18
  %147 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %lun.i, align 8
  call void @int_to_scsilun(i64 noundef %148, ptr noundef nonnull %scsi_lun.i) #13
  %149 = ptrtoint ptr %scsi_lun.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %scsi_lun.i, align 4
  %lun1.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 6, i32 5
  %151 = ptrtoint ptr %lun1.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %lun1.i, align 4
  %152 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %143, align 4
  %arrayidx6.i = getelementptr %struct.bnx2i_cmd, ptr %15, i32 0, i32 6, i32 5, i32 1
  %154 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %arrayidx6.i, align 4
  %155 = ptrtoint ptr %scsi_cmd to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %scsi_cmd, align 4
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %156, i32 0, i32 14
  %157 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %cmd_len.i, align 4
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %13, i32 0, i32 16
  %159 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cmnd.i, align 4
  %cdb.i = getelementptr %struct.bnx2i_cmd, ptr %15, i32 0, i32 6, i32 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %158)
  %tobool.not27.i = icmp ult i16 %158, 4
  br i1 %tobool.not27.i, label %bnx2i_iscsi_map_sg_list.exit.while.end.i110_crit_edge, label %while.body.preheader.i

bnx2i_iscsi_map_sg_list.exit.while.end.i110_crit_edge: ; preds = %bnx2i_iscsi_map_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i110

while.body.preheader.i:                           ; preds = %bnx2i_iscsi_map_sg_list.exit
  %161 = lshr i16 %158, 2
  %div.i = zext i16 %161 to i32
  br label %while.body.i109

while.body.i109:                                  ; preds = %while.body.i109.while.body.i109_crit_edge, %while.body.preheader.i
  %dstp.030.i = phi ptr [ %incdec.ptr.i, %while.body.i109.while.body.i109_crit_edge ], [ %cdb.i, %while.body.preheader.i ]
  %srcp.029.i = phi ptr [ %add.ptr.i107, %while.body.i109.while.body.i109_crit_edge ], [ %160, %while.body.preheader.i ]
  %lpcnt.028.i = phi i32 [ %dec.i, %while.body.i109.while.body.i109_crit_edge ], [ %div.i, %while.body.preheader.i ]
  %dec.i = add nsw i32 %lpcnt.028.i, -1
  %162 = ptrtoint ptr %srcp.029.i to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %dword.0.copyload.i = load i32, ptr %srcp.029.i, align 1
  %163 = ptrtoint ptr %dstp.030.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %dword.0.copyload.i, ptr %dstp.030.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %srcp.029.i, i32 4
  %incdec.ptr.i = getelementptr i32, ptr %dstp.030.i, i32 1
  %tobool.not.i108 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i108, label %while.body.i109.while.end.i110_crit_edge, label %while.body.i109.while.body.i109_crit_edge

while.body.i109.while.body.i109_crit_edge:        ; preds = %while.body.i109
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i109

while.body.i109.while.end.i110_crit_edge:         ; preds = %while.body.i109
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i110

while.end.i110:                                   ; preds = %while.body.i109.while.end.i110_crit_edge, %bnx2i_iscsi_map_sg_list.exit.while.end.i110_crit_edge
  %srcp.0.lcssa.i = phi ptr [ %160, %bnx2i_iscsi_map_sg_list.exit.while.end.i110_crit_edge ], [ %add.ptr.i107, %while.body.i109.while.end.i110_crit_edge ]
  %dstp.0.lcssa.i = phi ptr [ %cdb.i, %bnx2i_iscsi_map_sg_list.exit.while.end.i110_crit_edge ], [ %incdec.ptr.i, %while.body.i109.while.end.i110_crit_edge ]
  %cmd_len9.i = getelementptr inbounds %struct.scsi_cmnd, ptr %13, i32 0, i32 14
  %164 = ptrtoint ptr %cmd_len9.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %cmd_len9.i, align 4
  %166 = and i16 %165, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %tobool11.not.i = icmp eq i16 %166, 0
  br i1 %tobool11.not.i, label %while.end.i110.bnx2i_cpy_scsi_cdb.exit_crit_edge, label %if.then.i111

while.end.i110.bnx2i_cpy_scsi_cdb.exit_crit_edge: ; preds = %while.end.i110
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_cpy_scsi_cdb.exit

if.then.i111:                                     ; preds = %while.end.i110
  call void @__sanitizer_cov_trace_pc() #15
  %167 = ptrtoint ptr %srcp.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %srcp.0.lcssa.i, align 1
  %conv13.i = zext i8 %168 to i32
  %arrayidx14.i = getelementptr i8, ptr %srcp.0.lcssa.i, i32 1
  %169 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %170 to i32
  %shl.i = shl nuw nsw i32 %conv15.i, 8
  %or.i = or i32 %shl.i, %conv13.i
  %171 = ptrtoint ptr %dstp.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %or.i, ptr %dstp.0.lcssa.i, align 4
  br label %bnx2i_cpy_scsi_cdb.exit

bnx2i_cpy_scsi_cdb.exit:                          ; preds = %if.then.i111, %while.end.i110.bnx2i_cpy_scsi_cdb.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scsi_lun.i) #13
  %op_attr = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 6, i32 1
  %172 = ptrtoint ptr %op_attr to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 1, ptr %op_attr, align 1
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %13, i32 0, i32 15
  %173 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp16 = icmp eq i32 %174, 1
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %bnx2i_cpy_scsi_cdb.exit
  %175 = ptrtoint ptr %op_attr to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 33, ptr %op_attr, align 1
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %176 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %itt, align 4
  %178 = trunc i32 %177 to i16
  %conv22 = or i16 %178, 16384
  %itt24 = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 6, i32 7
  %179 = ptrtoint ptr %itt24 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv22, ptr %itt24, align 2
  %180 = ptrtoint ptr %dd_data5 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dd_data5, align 4
  %total_data_transfer_length.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %181, i32 0, i32 6, i32 8
  %182 = ptrtoint ptr %total_data_transfer_length.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %total_data_transfer_length.i, align 4
  %data_length.i.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 8, i32 2
  %184 = ptrtoint ptr %data_length.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %data_length.i.i, align 4
  %sent.i.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 8, i32 6
  %186 = ptrtoint ptr %sent.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %sent.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %187)
  %cmp.i.not.i = icmp ugt i32 %185, %187
  %imm_count2110.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 7
  %188 = ptrtoint ptr %imm_count2110.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %imm_count2110.i, align 4
  br i1 %cmp.i.not.i, label %if.end.thread.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool1.not.i114 = icmp eq i32 %189, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %183)
  %cmp.i = icmp eq i32 %189, %183
  %or.cond = select i1 %tobool1.not.i114, i1 true, i1 %cmp.i
  br i1 %or.cond, label %land.lhs.true.i.if.end39_crit_edge, label %land.lhs.true.i.if.end13.i_crit_edge

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

land.lhs.true.i.if.end39_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.end.thread.i:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %183)
  %cmp111.i = icmp eq i32 %189, %183
  br i1 %cmp111.i, label %if.end.thread.i.if.end39_crit_edge, label %if.then8.i

if.end.thread.i.if.end39_crit_edge:               ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then8.i:                                       ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool.not.i.i116 = icmp eq i32 %189, 0
  br i1 %tobool.not.i.i116, label %if.then8.i.bnx2i_get_write_cmd_bd_idx.exit.i_crit_edge, label %while.cond.preheader.i.i

if.then8.i.bnx2i_get_write_cmd_bd_idx.exit.i_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_get_write_cmd_bd_idx.exit.i

while.cond.preheader.i.i:                         ; preds = %if.then8.i
  %io_tbl.i.i117 = getelementptr inbounds %struct.bnx2i_cmd, ptr %181, i32 0, i32 4
  %190 = ptrtoint ptr %io_tbl.i.i117 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %io_tbl.i.i117, align 4
  %buffer_length13.i.i = getelementptr inbounds %struct.iscsi_bd, ptr %191, i32 0, i32 3
  %192 = ptrtoint ptr %buffer_length13.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %buffer_length13.i.i, align 2
  %conv14.i.i118 = zext i16 %193 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %conv14.i.i118)
  %cmp.not15.i.i = icmp ult i32 %189, %conv14.i.i118
  br i1 %cmp.not15.i.i, label %while.cond.preheader.i.i.bnx2i_get_write_cmd_bd_idx.exit.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.bnx2i_get_write_cmd_bd_idx.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_get_write_cmd_bd_idx.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %add18.i.i = phi i32 [ %add.i.i120, %while.body.i.i.while.body.i.i_crit_edge ], [ %conv14.i.i118, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %cur_bd_idx.017.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %bd_tbl.016.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %191, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %inc.i.i = add i32 %cur_bd_idx.017.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.iscsi_bd, ptr %bd_tbl.016.i.i, i32 1
  %buffer_length.i.i119 = getelementptr %struct.iscsi_bd, ptr %bd_tbl.016.i.i, i32 1, i32 3
  %194 = ptrtoint ptr %buffer_length.i.i119 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %buffer_length.i.i119, align 2
  %conv.i84.i = zext i16 %195 to i32
  %add.i.i120 = add i32 %add18.i.i, %conv.i84.i
  %cmp.not.i.i = icmp ugt i32 %add.i.i120, %189
  br i1 %cmp.not.i.i, label %bnx2i_get_write_cmd_bd_idx.exit.loopexit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

bnx2i_get_write_cmd_bd_idx.exit.loopexit.i:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i = trunc i32 %inc.i.i to i8
  br label %bnx2i_get_write_cmd_bd_idx.exit.i

bnx2i_get_write_cmd_bd_idx.exit.i:                ; preds = %bnx2i_get_write_cmd_bd_idx.exit.loopexit.i, %while.cond.preheader.i.i.bnx2i_get_write_cmd_bd_idx.exit.i_crit_edge, %if.then8.i.bnx2i_get_write_cmd_bd_idx.exit.i_crit_edge
  %cur_offset.1.i.i = phi i32 [ 0, %if.then8.i.bnx2i_get_write_cmd_bd_idx.exit.i_crit_edge ], [ 0, %while.cond.preheader.i.i.bnx2i_get_write_cmd_bd_idx.exit.i_crit_edge ], [ %add18.i.i, %bnx2i_get_write_cmd_bd_idx.exit.loopexit.i ]
  %cur_bd_idx.1.i.i = phi i8 [ 0, %if.then8.i.bnx2i_get_write_cmd_bd_idx.exit.i_crit_edge ], [ 0, %while.cond.preheader.i.i.bnx2i_get_write_cmd_bd_idx.exit.i_crit_edge ], [ %phi.cast.i, %bnx2i_get_write_cmd_bd_idx.exit.loopexit.i ]
  %sub.i.i121 = sub i32 %189, %cur_offset.1.i.i
  %conv.i122 = trunc i32 %sub.i.i121 to i16
  %ud_buffer_offset.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %181, i32 0, i32 6, i32 3
  %196 = ptrtoint ptr %ud_buffer_offset.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %conv.i122, ptr %ud_buffer_offset.i, align 4
  %ud_start_bd_index.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %181, i32 0, i32 6, i32 17
  %197 = ptrtoint ptr %ud_start_bd_index.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %cur_bd_idx.1.i.i, ptr %ud_start_bd_index.i, align 2
  %198 = ptrtoint ptr %data_length.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %data_length.i.i, align 4
  %add12.i = add i32 %199, %189
  br label %if.end13.i

if.end13.i:                                       ; preds = %bnx2i_get_write_cmd_bd_idx.exit.i, %land.lhs.true.i.if.end13.i_crit_edge
  %buffer_offset.0.i = phi i32 [ %add12.i, %bnx2i_get_write_cmd_bd_idx.exit.i ], [ %189, %land.lhs.true.i.if.end13.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %buffer_offset.0.i, i32 %183)
  %cmp14.not.i = icmp eq i32 %buffer_offset.0.i, %183
  br i1 %cmp14.not.i, label %if.end13.i.if.end39_crit_edge, label %if.then16.i

if.end13.i.if.end39_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer_offset.0.i)
  %tobool.not.i85.i = icmp eq i32 %buffer_offset.0.i, 0
  br i1 %tobool.not.i85.i, label %if.then16.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge, label %while.cond.preheader.i90.i

if.then16.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_get_write_cmd_bd_idx.exit104.i

while.cond.preheader.i90.i:                       ; preds = %if.then16.i
  %io_tbl.i86.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %181, i32 0, i32 4
  %200 = ptrtoint ptr %io_tbl.i86.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %io_tbl.i86.i, align 4
  %buffer_length13.i87.i = getelementptr inbounds %struct.iscsi_bd, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %buffer_length13.i87.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %buffer_length13.i87.i, align 2
  %conv14.i88.i = zext i16 %203 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %buffer_offset.0.i, i32 %conv14.i88.i)
  %cmp.not15.i89.i = icmp ult i32 %buffer_offset.0.i, %conv14.i88.i
  br i1 %cmp.not15.i89.i, label %while.cond.preheader.i90.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge, label %while.cond.preheader.i90.i.while.body.i100.i_crit_edge

while.cond.preheader.i90.i.while.body.i100.i_crit_edge: ; preds = %while.cond.preheader.i90.i
  br label %while.body.i100.i

while.cond.preheader.i90.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge: ; preds = %while.cond.preheader.i90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_get_write_cmd_bd_idx.exit104.i

while.body.i100.i:                                ; preds = %while.body.i100.i.while.body.i100.i_crit_edge, %while.cond.preheader.i90.i.while.body.i100.i_crit_edge
  %add18.i91.i = phi i32 [ %add.i98.i, %while.body.i100.i.while.body.i100.i_crit_edge ], [ %conv14.i88.i, %while.cond.preheader.i90.i.while.body.i100.i_crit_edge ]
  %cur_bd_idx.017.i92.i = phi i32 [ %inc.i94.i, %while.body.i100.i.while.body.i100.i_crit_edge ], [ 0, %while.cond.preheader.i90.i.while.body.i100.i_crit_edge ]
  %bd_tbl.016.i93.i = phi ptr [ %incdec.ptr.i95.i, %while.body.i100.i.while.body.i100.i_crit_edge ], [ %201, %while.cond.preheader.i90.i.while.body.i100.i_crit_edge ]
  %inc.i94.i = add i32 %cur_bd_idx.017.i92.i, 1
  %incdec.ptr.i95.i = getelementptr %struct.iscsi_bd, ptr %bd_tbl.016.i93.i, i32 1
  %buffer_length.i96.i = getelementptr %struct.iscsi_bd, ptr %bd_tbl.016.i93.i, i32 1, i32 3
  %204 = ptrtoint ptr %buffer_length.i96.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %buffer_length.i96.i, align 2
  %conv.i97.i = zext i16 %205 to i32
  %add.i98.i = add i32 %add18.i91.i, %conv.i97.i
  %cmp.not.i99.i = icmp ugt i32 %add.i98.i, %buffer_offset.0.i
  br i1 %cmp.not.i99.i, label %while.body.i100.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge, label %while.body.i100.i.while.body.i100.i_crit_edge

while.body.i100.i.while.body.i100.i_crit_edge:    ; preds = %while.body.i100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i100.i

while.body.i100.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge: ; preds = %while.body.i100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_get_write_cmd_bd_idx.exit104.i

bnx2i_get_write_cmd_bd_idx.exit104.i:             ; preds = %while.body.i100.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge, %while.cond.preheader.i90.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge, %if.then16.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge
  %cur_offset.1.i101.i = phi i32 [ 0, %if.then16.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge ], [ 0, %while.cond.preheader.i90.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge ], [ %add18.i91.i, %while.body.i100.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge ]
  %cur_bd_idx.1.i102.i = phi i32 [ 0, %if.then16.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge ], [ 0, %while.cond.preheader.i90.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge ], [ %inc.i94.i, %while.body.i100.i.bnx2i_get_write_cmd_bd_idx.exit104.i_crit_edge ]
  %sub.i103.i = sub i32 %buffer_offset.0.i, %cur_offset.1.i101.i
  %206 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %conn1, align 4
  %session.i = getelementptr inbounds %struct.iscsi_conn, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %session.i, align 8
  %first_burst.i = getelementptr inbounds %struct.iscsi_session, ptr %209, i32 0, i32 17
  %210 = ptrtoint ptr %first_burst.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %first_burst.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i103.i, i32 %211)
  %cmp17.i = icmp ugt i32 %sub.i103.i, %211
  br i1 %cmp17.i, label %bnx2i_get_write_cmd_bd_idx.exit104.i.if.then22.i_crit_edge, label %lor.lhs.false.i

bnx2i_get_write_cmd_bd_idx.exit104.i.if.then22.i_crit_edge: ; preds = %bnx2i_get_write_cmd_bd_idx.exit104.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22.i

lor.lhs.false.i:                                  ; preds = %bnx2i_get_write_cmd_bd_idx.exit104.i
  %scsi_cmd.i123 = getelementptr inbounds %struct.bnx2i_cmd, ptr %181, i32 0, i32 2
  %212 = ptrtoint ptr %scsi_cmd.i123 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %scsi_cmd.i123, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %213, i32 0, i32 17, i32 0, i32 1
  %214 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_bd_idx.1.i102.i, i32 %215)
  %cmp20.i = icmp ugt i32 %cur_bd_idx.1.i102.i, %215
  br i1 %cmp20.i, label %lor.lhs.false.i.if.then22.i_crit_edge, label %lor.lhs.false.i.if.end40.i_crit_edge

lor.lhs.false.i.if.end40.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

lor.lhs.false.i.if.then22.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22.i

if.then22.i:                                      ; preds = %lor.lhs.false.i.if.then22.i_crit_edge, %bnx2i_get_write_cmd_bd_idx.exit104.i.if.then22.i_crit_edge
  %216 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %207, align 8
  %dev.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %217, i32 0, i32 8
  %io_tbl.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %181, i32 0, i32 4
  %bd_valid.i124 = getelementptr inbounds %struct.bnx2i_cmd, ptr %181, i32 0, i32 4, i32 2
  %218 = ptrtoint ptr %bd_valid.i124 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %bd_valid.i124, align 4
  %conv24.i = zext i16 %219 to i32
  %scsi_cmd25.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %181, i32 0, i32 2
  %220 = ptrtoint ptr %scsi_cmd25.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %scsi_cmd25.i, align 4
  %nents.i105.i = getelementptr inbounds %struct.scsi_cmnd, ptr %221, i32 0, i32 17, i32 0, i32 1
  %222 = ptrtoint ptr %nents.i105.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %nents.i105.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev.i, ptr noundef nonnull @.str.62, i32 noundef %buffer_offset.0.i, i32 noundef %conv24.i, i32 noundef %223) #16
  %224 = ptrtoint ptr %bd_valid.i124 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %bd_valid.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %225)
  %cmp30113.not.i = icmp eq i16 %225, 0
  br i1 %cmp30113.not.i, label %if.then22.i.if.end40.i_crit_edge, label %if.then22.i.do.end34.i_crit_edge

if.then22.i.do.end34.i_crit_edge:                 ; preds = %if.then22.i
  br label %do.end34.i

if.then22.i.if.end40.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

do.end34.i:                                       ; preds = %do.end34.i.do.end34.i_crit_edge, %if.then22.i.do.end34.i_crit_edge
  %i.0114.i = phi i32 [ %inc.i, %do.end34.i.do.end34.i_crit_edge ], [ 0, %if.then22.i.do.end34.i_crit_edge ]
  %226 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %conn1, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 8
  %dev37.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %229, i32 0, i32 8
  %230 = ptrtoint ptr %io_tbl.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %io_tbl.i, align 4
  %buffer_length.i125 = getelementptr %struct.iscsi_bd, ptr %231, i32 %i.0114.i, i32 3
  %232 = ptrtoint ptr %buffer_length.i125 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %buffer_length.i125, align 2
  %conv39.i = zext i16 %233 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.43, ptr noundef %dev37.i, ptr noundef nonnull @.str.65, i32 noundef %i.0114.i, i32 noundef %conv39.i) #16
  %inc.i = add nuw nsw i32 %i.0114.i, 1
  %234 = ptrtoint ptr %bd_valid.i124 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %bd_valid.i124, align 4
  %conv29.i = zext i16 %235 to i32
  %cmp30.i = icmp ult i32 %inc.i, %conv29.i
  br i1 %cmp30.i, label %do.end34.i.do.end34.i_crit_edge, label %do.end34.i.if.end40.i_crit_edge

do.end34.i.if.end40.i_crit_edge:                  ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

do.end34.i.do.end34.i_crit_edge:                  ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

if.end40.i:                                       ; preds = %do.end34.i.if.end40.i_crit_edge, %if.then22.i.if.end40.i_crit_edge, %lor.lhs.false.i.if.end40.i_crit_edge
  %conv41.i = trunc i32 %sub.i103.i to i16
  %sd_buffer_offset.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %181, i32 0, i32 6, i32 4
  %236 = ptrtoint ptr %sd_buffer_offset.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %conv41.i, ptr %sd_buffer_offset.i, align 2
  %conv43.i = trunc i32 %cur_bd_idx.1.i102.i to i8
  %sd_start_bd_index.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %181, i32 0, i32 6, i32 16
  %237 = ptrtoint ptr %sd_start_bd_index.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv43.i, ptr %sd_start_bd_index.i, align 1
  br label %if.end39

if.else:                                          ; preds = %bnx2i_cpy_scsi_cdb.exit
  %238 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool26.not = icmp eq i32 %239, 0
  br i1 %tobool26.not, label %if.else.if.end33_crit_edge, label %if.then27

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %240 = ptrtoint ptr %op_attr to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 65, ptr %op_attr, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.else.if.end33_crit_edge
  %itt34 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %241 = ptrtoint ptr %itt34 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %itt34, align 4
  %conv36 = trunc i32 %242 to i16
  %itt38 = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 6, i32 7
  %243 = ptrtoint ptr %itt38 to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %conv36, ptr %itt38, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.end33, %if.end40.i, %if.end13.i.if.end39_crit_edge, %if.end.thread.i.if.end39_crit_edge, %land.lhs.true.i.if.end39_crit_edge
  %244 = ptrtoint ptr %bd_valid.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %bd_valid.i, align 4
  %conv40 = trunc i16 %245 to i8
  %num_bds = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 6, i32 18
  %246 = ptrtoint ptr %num_bds to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %conv40, ptr %num_bds, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %245)
  %tobool44.not = icmp eq i16 %245, 0
  br i1 %tobool44.not, label %if.then45, label %if.end39.if.end53_crit_edge

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %mp_bd_dma = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 13, i32 13, i32 1, i32 4, i32 6
  %247 = ptrtoint ptr %mp_bd_dma to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %mp_bd_dma, align 8
  %249 = ptrtoint ptr %bd_list_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %bd_list_addr_lo.i, align 4
  %bd_list_addr_hi = getelementptr inbounds %struct.bnx2i_cmd, ptr %15, i32 0, i32 6, i32 14
  %250 = ptrtoint ptr %bd_list_addr_hi to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %bd_list_addr_hi, align 4
  %251 = ptrtoint ptr %num_bds to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 1, ptr %num_bds, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then45, %if.end39.if.end53_crit_edge
  %call54 = call i32 @bnx2i_send_iscsi_scsicmd(ptr noundef %11, ptr noundef %15) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end.i.i, %sw.bb9.i.i, %sw.bb7.i.i, %sw.bb5.i.i, %if.else.i.i, %if.then.i.i, %sw.bb.i.i, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -12, %dev_to_shost.exit.cleanup_crit_edge ], [ 0, %do.end.i.i ], [ %call10.i.i, %sw.bb9.i.i ], [ %call8.i.i, %sw.bb7.i.i ], [ %call6.i.i, %sw.bb5.i.i ], [ %call3.i.i, %if.then.i.i ], [ %call4.i.i, %if.else.i.i ], [ 0, %sw.bb.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2i_cleanup_task(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 12
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %hba2 = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hba2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hba2, align 4
  %sc = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 11
  %6 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 17
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %9, label %lor.lhs.false.if.end10_crit_edge [
    i32 2, label %lor.lhs.false.cleanup_crit_edge
    i32 4, label %if.then5
  ]

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then5:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %dd_data6 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %11 = ptrtoint ptr %dd_data6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dd_data6, align 4
  tail call void @bnx2i_send_cmd_cleanup_req(ptr noundef %5, ptr noundef %12) #13
  %session = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %session, align 8
  %back_lock = getelementptr inbounds %struct.iscsi_session, ptr %14, i32 0, i32 53
  tail call void @_raw_spin_unlock_bh(ptr noundef %back_lock) #13
  %cmd_cleanup_cmpl = getelementptr inbounds %struct.bnx2i_conn, ptr %3, i32 0, i32 2
  %call7 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_cleanup_cmpl, i32 noundef 10) #13
  %15 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %session, align 8
  %back_lock9 = getelementptr inbounds %struct.iscsi_session, ptr %16, i32 0, i32 53
  tail call void @_raw_spin_lock_bh(ptr noundef %back_lock9) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %lor.lhs.false.if.end10_crit_edge
  %dd_data11 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %17 = ptrtoint ptr %dd_data11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dd_data11, align 4
  %scsi_cmd.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %scsi_cmd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %scsi_cmd.i, align 4
  %bd_valid.i = getelementptr inbounds %struct.bnx2i_cmd, ptr %18, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %bd_valid.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bd_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i = icmp eq i16 %22, 0
  %tobool1.not.i = icmp eq ptr %20, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %if.end10.cleanup_crit_edge, label %if.then.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_dma_unmap(ptr noundef nonnull %20) #13
  %23 = ptrtoint ptr %bd_valid.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %bd_valid.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_recovery_timedout(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bnx2i_ep_connect(ptr noundef %shost, ptr noundef %dst_addr, i32 noundef %non_blocking) #0 align 64 {
entry:
  %saddr = alloca %struct.cnic_sockaddr, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %saddr) #13
  %0 = call ptr @memset(ptr %saddr, i32 255, i32 56)
  %tobool.not = icmp eq ptr %shost, null
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %call.i = tail call ptr @get_adapter_list_head() #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.do.end.i_crit_edge, label %land.lhs.true.i

if.else.do.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.else
  %cnic1.i = getelementptr inbounds %struct.bnx2i_hba, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %cnic1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cnic1.i, align 8
  %tobool2.not.i = icmp eq ptr %2, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %if.end.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end.i:                                         ; preds = %land.lhs.true.i
  %cm_select_dev.i = getelementptr inbounds %struct.cnic_dev, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %cm_select_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cm_select_dev.i, align 4
  %call4.i = tail call ptr %4(ptr noundef %dst_addr, i32 noundef 1) #13
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i.do.end.i_crit_edge, label %if.end8.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.else.do.end.i_crit_edge
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #16
  br label %nohba

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = tail call ptr @bnx2i_find_hba_for_cnic(ptr noundef nonnull %call4.i) #13
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end8.i.nohba_crit_edge, label %lor.lhs.false.i.i

if.end8.i.nohba_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nohba

lor.lhs.false.i.i:                                ; preds = %if.end8.i
  %adapter_state.i.i = getelementptr inbounds %struct.bnx2i_hba, ptr %call9.i, i32 0, i32 10
  %5 = ptrtoint ptr %adapter_state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %adapter_state.i.i, align 4
  %and1.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.do.end18.i_crit_edge, label %lor.lhs.false3.i.i

lor.lhs.false.i.i.do.end18.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %7 = ptrtoint ptr %adapter_state.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %adapter_state.i.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool6.not.i.i, label %lor.lhs.false7.i.i, label %lor.lhs.false3.i.i.do.end18.i_crit_edge

lor.lhs.false3.i.i.do.end18.i_crit_edge:          ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18.i

lor.lhs.false7.i.i:                               ; preds = %lor.lhs.false3.i.i
  %10 = ptrtoint ptr %adapter_state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %adapter_state.i.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool10.not.i.i, label %if.end21.i, label %lor.lhs.false7.i.i.do.end18.i_crit_edge

lor.lhs.false7.i.i.do.end18.i_crit_edge:          ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18.i

do.end18.i:                                       ; preds = %lor.lhs.false7.i.i.do.end18.i_crit_edge, %lor.lhs.false3.i.i.do.end18.i_crit_edge, %lor.lhs.false.i.i.do.end18.i_crit_edge
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #16
  br label %nohba

if.end21.i:                                       ; preds = %lor.lhs.false7.i.i
  %netdev.i = getelementptr inbounds %struct.bnx2i_hba, ptr %call9.i, i32 0, i32 3
  %13 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev.i, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mtu.i, align 4
  %mtu_supported.i = getelementptr inbounds %struct.bnx2i_hba, ptr %call9.i, i32 0, i32 11
  %17 = ptrtoint ptr %mtu_supported.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mtu_supported.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.i = icmp ugt i32 %16, %18
  br i1 %cmp.i, label %do.end25.i, label %if.end21.i.lor.lhs.false.i_crit_edge

if.end21.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i

do.end25.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %14, i32 noundef %16) #16
  %19 = ptrtoint ptr %mtu_supported.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mtu_supported.i, align 8
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %20) #16
  br label %nohba

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 1
  %tobool2.not = icmp eq ptr %add.ptr, null
  br i1 %tobool2.not, label %if.end.nohba_crit_edge, label %if.end.lor.lhs.false.i_crit_edge

if.end.lor.lhs.false.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i

if.end.nohba_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %nohba

lor.lhs.false.i:                                  ; preds = %if.end.lor.lhs.false.i_crit_edge, %if.end21.i.lor.lhs.false.i_crit_edge
  %hba.0289 = phi ptr [ %add.ptr, %if.end.lor.lhs.false.i_crit_edge ], [ %call9.i, %if.end21.i.lor.lhs.false.i_crit_edge ]
  %net_dev_lock = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %net_dev_lock, i32 noundef 0) #13
  %adapter_state.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 10
  %21 = ptrtoint ptr %adapter_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %adapter_state.i, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i262 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i262, label %lor.lhs.false.i.check_busy_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.check_busy_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_busy

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %23 = ptrtoint ptr %adapter_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %adapter_state.i, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool6.not.i = icmp eq i32 %25, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false3.i.check_busy_crit_edge

lor.lhs.false3.i.check_busy_crit_edge:            ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_busy

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false3.i
  %26 = ptrtoint ptr %adapter_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %adapter_state.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool10.not.i263 = icmp eq i32 %28, 0
  br i1 %tobool10.not.i263, label %lor.lhs.false, label %lor.lhs.false7.i.check_busy_crit_edge

lor.lhs.false7.i.check_busy_crit_edge:            ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_busy

lor.lhs.false:                                    ; preds = %lor.lhs.false7.i
  %cid_free_cnt = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 20, i32 5
  %29 = ptrtoint ptr %cid_free_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cid_free_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool7.not = icmp eq i32 %30, 0
  br i1 %tobool7.not, label %lor.lhs.false.check_busy_crit_edge, label %if.end9

lor.lhs.false.check_busy_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_busy

if.end9:                                          ; preds = %lor.lhs.false
  %cnic10 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 1
  %31 = ptrtoint ptr %cnic10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cnic10, align 8
  %call.i265 = tail call ptr @iscsi_create_endpoint(i32 noundef 312) #13
  %tobool.not.i266 = icmp eq ptr %call.i265, null
  br i1 %tobool.not.i266, label %bnx2i_alloc_ep.exit.thread, label %if.end.i268

bnx2i_alloc_ep.exit.thread:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #16
  br label %check_busy

if.end.i268:                                      ; preds = %if.end9
  %33 = ptrtoint ptr %call.i265 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i265, align 8
  %cls_ep.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cls_ep.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i265, ptr %cls_ep.i, align 4
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %34, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i.i, align 4
  %state.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %34, i32 0, i32 6
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %state.i, align 4
  %drv_iscsi_cid.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %34, i32 0, i32 11, i32 1
  %39 = ptrtoint ptr %drv_iscsi_cid.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 65535, ptr %drv_iscsi_cid.i, align 4
  %hba2.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %34, i32 0, i32 1
  %40 = ptrtoint ptr %hba2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %hba.0289, ptr %hba2.i, align 4
  %age.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 6
  %41 = ptrtoint ptr %age.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %age.i, align 4
  %hba_age.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %34, i32 0, i32 5
  %43 = ptrtoint ptr %hba_age.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %hba_age.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @event_coal_div to i32))
  %44 = load i32, ptr @event_coal_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %tobool3.not21.i = icmp ult i32 %44, 2
  br i1 %tobool3.not21.i, label %if.end.i268.if.end14_crit_edge, label %while.body.lr.ph.i

if.end.i268.if.end14_crit_edge:                   ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

while.body.lr.ph.i:                               ; preds = %if.end.i268
  %ec_shift.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %34, i32 0, i32 9
  %45 = ptrtoint ptr %ec_shift.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %ec_shift.promoted.i = load i32, ptr %ec_shift.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %add23.i = phi i32 [ %ec_shift.promoted.i, %while.body.lr.ph.i ], [ %add.i, %while.body.i.while.body.i_crit_edge ]
  %ec_div.022.i = phi i32 [ %44, %while.body.lr.ph.i ], [ %shr.i269, %while.body.i.while.body.i_crit_edge ]
  %shr.i269 = lshr i32 %ec_div.022.i, 1
  %add.i = add i32 %add23.i, 1
  %tobool3.not.i = icmp ult i32 %ec_div.022.i, 4
  br i1 %tobool3.not.i, label %while.cond.while.end_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %ec_shift.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add.i, ptr %ec_shift.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %while.cond.while.end_crit_edge.i, %if.end.i268.if.end14_crit_edge
  %ofld_conns_active.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 17
  %47 = ptrtoint ptr %ofld_conns_active.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ofld_conns_active.i, align 8
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %ofld_conns_active.i, align 8
  %ofld_wait.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %34, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %ofld_wait.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @bnx2i_alloc_ep.__key) #13
  %49 = ptrtoint ptr %call.i265 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i265, align 8
  %num_active_cmds = getelementptr inbounds %struct.bnx2i_endpoint, ptr %50, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_active_cmds, i32 noundef 4) #13
  %51 = ptrtoint ptr %num_active_cmds to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 0, ptr %num_active_cmds, align 4
  %52 = ptrtoint ptr %cid_free_cnt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cid_free_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i270 = icmp eq i32 %53, 0
  br i1 %tobool.not.i270, label %if.end14.do.end_crit_edge, label %bnx2i_alloc_iscsi_cid.exit

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

bnx2i_alloc_iscsi_cid.exit:                       ; preds = %if.end14
  %cid_q_cons_idx.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 20, i32 3
  %54 = ptrtoint ptr %cid_q_cons_idx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cid_q_cons_idx.i, align 4
  %inc.i271 = add i32 %55, 1
  %cid_q_max_idx.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 20, i32 4
  %56 = ptrtoint ptr %cid_q_max_idx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cid_q_max_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i271, i32 %57)
  %cmp.i272 = icmp eq i32 %inc.i271, %57
  %spec.store.select.i = select i1 %cmp.i272, i32 0, i32 %inc.i271
  %58 = ptrtoint ptr %cid_q_cons_idx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.store.select.i, ptr %cid_q_cons_idx.i, align 4
  %dec.i = add i32 %53, -1
  %59 = ptrtoint ptr %cid_free_cnt to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %dec.i, ptr %cid_free_cnt, align 4
  %cid_que14.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 20, i32 1
  %60 = ptrtoint ptr %cid_que14.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cid_que14.i, align 4
  %arrayidx.i = getelementptr i32, ptr %61, i32 %55
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp = icmp eq i32 %63, -1
  br i1 %cmp, label %bnx2i_alloc_iscsi_cid.exit.do.end_crit_edge, label %if.end18

bnx2i_alloc_iscsi_cid.exit.do.end_crit_edge:      ; preds = %bnx2i_alloc_iscsi_cid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %bnx2i_alloc_iscsi_cid.exit.do.end_crit_edge, %if.end14.do.end_crit_edge
  %netdev = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 3
  %64 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %netdev, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %65) #16
  tail call fastcc void @bnx2i_free_ep(ptr noundef nonnull %call.i265)
  br label %check_busy

if.end18:                                         ; preds = %bnx2i_alloc_iscsi_cid.exit
  %66 = ptrtoint ptr %age.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %age.i, align 4
  %hba_age = getelementptr inbounds %struct.bnx2i_endpoint, ptr %50, i32 0, i32 5
  %68 = ptrtoint ptr %hba_age to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %hba_age, align 4
  %call19 = tail call i32 @bnx2i_alloc_qp_resc(ptr noundef %hba.0289, ptr noundef %50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end30, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %netdev26 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 3
  %69 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev26, align 8
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %70) #16
  br label %qp_resc_err

if.end30:                                         ; preds = %if.end18
  %conv31 = and i32 %63, 65535
  %ids = getelementptr inbounds %struct.bnx2i_endpoint, ptr %50, i32 0, i32 11
  %drv_iscsi_cid = getelementptr inbounds %struct.bnx2i_endpoint, ptr %50, i32 0, i32 11, i32 1
  %71 = ptrtoint ptr %drv_iscsi_cid to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv31, ptr %drv_iscsi_cid, align 4
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %50, i32 0, i32 6
  %72 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 4, ptr %state, align 4
  %ep_rdwr_lock.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 21
  tail call void @_raw_write_lock_bh(ptr noundef %ep_rdwr_lock.i) #13
  %ep_ofld_list.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 22
  %prev.i.i275 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 22, i32 1
  %73 = ptrtoint ptr %prev.i.i275 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i275, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %50, ptr noundef %74, ptr noundef %ep_ofld_list.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end30.bnx2i_ep_ofld_list_add.exit_crit_edge

if.end30.bnx2i_ep_ofld_list_add.exit_crit_edge:   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_ep_ofld_list_add.exit

if.end.i.i.i:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %prev.i.i275 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %50, ptr %prev.i.i275, align 4
  %76 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %ep_ofld_list.i, ptr %50, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %50, ptr %74, align 4
  br label %bnx2i_ep_ofld_list_add.exit

bnx2i_ep_ofld_list_add.exit:                      ; preds = %if.end.i.i.i, %if.end30.bnx2i_ep_ofld_list_add.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %ep_rdwr_lock.i) #13
  %ofld_timer = getelementptr inbounds %struct.bnx2i_endpoint, ptr %50, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %ofld_timer, ptr noundef nonnull @bnx2i_ep_ofld_timer, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @bnx2i_ep_connect.__key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %79, 200
  %expires = getelementptr inbounds %struct.bnx2i_endpoint, ptr %50, i32 0, i32 12, i32 1
  %80 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %ofld_timer) #13
  %call38 = tail call i32 @bnx2i_send_conn_ofld_req(ptr noundef %hba.0289, ptr noundef %50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end66, label %if.then40

if.then40:                                        ; preds = %bnx2i_ep_ofld_list_add.exit
  %81 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %82)
  %cmp42 = icmp eq i32 %82, -2147483648
  br i1 %cmp42, label %do.end47, label %if.then40.do.end59_crit_edge

if.then40.do.end59_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59

do.end47:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  %netdev49 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 3
  %83 = ptrtoint ptr %netdev49 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %netdev49, align 8
  %85 = ptrtoint ptr %drv_iscsi_cid to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %drv_iscsi_cid, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %84, i32 noundef %86) #16
  br label %do.end59

do.end59:                                         ; preds = %do.end47, %if.then40.do.end59_crit_edge
  %rc.0 = phi i32 [ -16, %do.end47 ], [ -28, %if.then40.do.end59_crit_edge ]
  %netdev61 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 3
  %87 = ptrtoint ptr %netdev61 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %netdev61, align 8
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %88) #16
  tail call fastcc void @bnx2i_ep_ofld_list_del(ptr noundef %hba.0289, ptr noundef %50)
  br label %conn_failed

if.end66:                                         ; preds = %bnx2i_ep_ofld_list_add.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1860) #13
  %89 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %90)
  %cmp74.not = icmp eq i32 %90, 4
  br i1 %cmp74.not, label %if.then76, label %if.end66.if.end89_crit_edge

if.end66.if.end89_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then76:                                        ; preds = %if.end66
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %91 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %ofld_wait = getelementptr inbounds %struct.bnx2i_endpoint, ptr %50, i32 0, i32 13
  %call78302 = call i32 @prepare_to_wait_event(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %92 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %93)
  %cmp80.not303 = icmp eq i32 %93, 4
  br i1 %cmp80.not303, label %if.then76.if.end83_crit_edge, label %if.then76.for.end_crit_edge

if.then76.for.end_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then76.if.end83_crit_edge:                     ; preds = %if.then76
  br label %if.end83

if.end83:                                         ; preds = %cleanup.if.end83_crit_edge, %if.then76.if.end83_crit_edge
  %call78304 = phi i32 [ %call78, %cleanup.if.end83_crit_edge ], [ %call78302, %if.then76.if.end83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78304)
  %tobool84.not = icmp eq i32 %call78304, 0
  br i1 %tobool84.not, label %cleanup, label %if.end83.__out_crit_edge

if.end83.__out_crit_edge:                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out

cleanup:                                          ; preds = %if.end83
  call void @schedule() #13
  %call78 = call i32 @prepare_to_wait_event(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %94 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %state, align 4
  %cmp80.not = icmp eq i32 %95, 4
  br i1 %cmp80.not, label %cleanup.if.end83_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.if.end83_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then76.for.end_crit_edge
  call void @finish_wait(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry) #13
  br label %__out

__out:                                            ; preds = %for.end, %if.end83.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end89

if.end89:                                         ; preds = %__out, %if.end66.if.end89_crit_edge
  %96 = call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %stack.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %101, align 4
  %104 = and i32 %103, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i276 = icmp eq i32 %104, 0
  br i1 %tobool.not.i276, label %signal_pending.exit, label %if.end89.if.then94_crit_edge, !prof !201

if.end89.if.then94_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then94

signal_pending.exit:                              ; preds = %if.end89
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %101, align 4
  %and1.i.i.i.i.i = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool93.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool93.not, label %signal_pending.exit.if.end97_crit_edge, label %signal_pending.exit.if.then94_crit_edge

signal_pending.exit.if.then94_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then94

signal_pending.exit.if.end97_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then94:                                        ; preds = %signal_pending.exit.if.then94_crit_edge, %if.end89.if.then94_crit_edge
  call void @flush_signals(ptr noundef %99) #13
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %signal_pending.exit.if.end97_crit_edge
  %call99 = call i32 @del_timer_sync(ptr noundef %ofld_timer) #13
  call void @_raw_write_lock_bh(ptr noundef %ep_rdwr_lock.i) #13
  %call.i.i.i280 = call zeroext i1 @__list_del_entry_valid(ptr noundef %50) #13
  br i1 %call.i.i.i280, label %if.end.i.i.i281, label %if.end97.bnx2i_ep_ofld_list_del.exit_crit_edge

if.end97.bnx2i_ep_ofld_list_del.exit_crit_edge:   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_ep_ofld_list_del.exit

if.end.i.i.i281:                                  ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i.i.i, align 4
  %109 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %50, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev1.i.i.i.i, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %110, ptr %108, align 4
  br label %bnx2i_ep_ofld_list_del.exit

bnx2i_ep_ofld_list_del.exit:                      ; preds = %if.end.i.i.i281, %if.end97.bnx2i_ep_ofld_list_del.exit_crit_edge
  %113 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %50, ptr %50, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %114 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %50, ptr %prev.i3.i.i, align 4
  call void @_raw_write_unlock_bh(ptr noundef %ep_rdwr_lock.i) #13
  %115 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %state, align 4
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %116, label %bnx2i_ep_ofld_list_del.exit.conn_failed_crit_edge [
    i32 8, label %if.end121
    i32 -2147483648, label %do.end111
  ]

bnx2i_ep_ofld_list_del.exit.conn_failed_crit_edge: ; preds = %bnx2i_ep_ofld_list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %conn_failed

do.end111:                                        ; preds = %bnx2i_ep_ofld_list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %netdev113 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 3
  %118 = ptrtoint ptr %netdev113 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %netdev113, align 8
  %120 = ptrtoint ptr %drv_iscsi_cid to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %drv_iscsi_cid, align 4
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %119, i32 noundef %121) #16
  br label %conn_failed

if.end121:                                        ; preds = %bnx2i_ep_ofld_list_del.exit
  %cm_create = getelementptr inbounds %struct.cnic_dev, ptr %32, i32 0, i32 8
  %122 = ptrtoint ptr %cm_create to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cm_create, align 4
  %124 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ids, align 4
  %cm_sk = getelementptr inbounds %struct.bnx2i_endpoint, ptr %50, i32 0, i32 4
  %call123 = call i32 %123(ptr noundef %32, i32 noundef 1, i32 noundef %125, i32 noundef %63, ptr noundef %cm_sk, ptr noundef %50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end121.release_ep_crit_edge

if.end121.release_ep_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_ep

if.end126:                                        ; preds = %if.end121
  %126 = ptrtoint ptr %cm_sk to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cm_sk, align 4
  %rcv_buf = getelementptr inbounds %struct.cnic_sock, ptr %127, i32 0, i32 20
  %128 = ptrtoint ptr %rcv_buf to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 262144, ptr %rcv_buf, align 4
  %129 = load ptr, ptr %cm_sk, align 4
  %snd_buf = getelementptr inbounds %struct.cnic_sock, ptr %129, i32 0, i32 21
  %130 = ptrtoint ptr %snd_buf to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 262144, ptr %snd_buf, align 4
  %131 = load ptr, ptr %cm_sk, align 4
  %tcp_flags = getelementptr inbounds %struct.cnic_sock, ptr %131, i32 0, i32 23
  call void @_clear_bit(i32 noundef 8, ptr noundef %tcp_flags) #13
  %132 = call ptr @memset(ptr %saddr, i32 0, i32 56)
  %133 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %dst_addr, align 2
  %135 = zext i16 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.106)
  switch i16 %134, label %if.end126.if.end145_crit_edge [
    i16 2, label %if.then133
    i16 10, label %if.then140
  ]

if.end126.if.end145_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end145

if.then133:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  %remote = getelementptr inbounds %struct.cnic_sockaddr, ptr %saddr, i32 0, i32 1
  %136 = call ptr @memcpy(ptr %remote, ptr %dst_addr, i32 16)
  %137 = ptrtoint ptr %saddr to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 2, ptr %saddr, align 4
  br label %if.end145

if.then140:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  %remote141 = getelementptr inbounds %struct.cnic_sockaddr, ptr %saddr, i32 0, i32 1
  %138 = call ptr @memcpy(ptr %remote141, ptr %dst_addr, i32 28)
  %139 = ptrtoint ptr %saddr to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 10, ptr %saddr, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %if.then133, %if.end126.if.end145_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %140 = load volatile i32, ptr @jiffies, align 128
  %timestamp = getelementptr inbounds %struct.bnx2i_endpoint, ptr %50, i32 0, i32 7
  %141 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %timestamp, align 4
  %142 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 16, ptr %state, align 4
  %reg_with_cnic = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0289, i32 0, i32 9
  %143 = ptrtoint ptr %reg_with_cnic to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %reg_with_cnic, align 4
  %145 = and i32 %144, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool148.not = icmp eq i32 %145, 0
  br i1 %tobool148.not, label %if.end145.conn_failed_crit_edge, label %if.else150

if.end145.conn_failed_crit_edge:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #15
  br label %conn_failed

if.else150:                                       ; preds = %if.end145
  %cm_connect = getelementptr inbounds %struct.cnic_dev, ptr %32, i32 0, i32 10
  %146 = ptrtoint ptr %cm_connect to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cm_connect, align 4
  %148 = ptrtoint ptr %cm_sk to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cm_sk, align 4
  %call152 = call i32 %147(ptr noundef %149, ptr noundef nonnull %saddr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool154.not = icmp eq i32 %call152, 0
  br i1 %tobool154.not, label %if.end156, label %if.else150.release_ep_crit_edge

if.else150.release_ep_crit_edge:                  ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_ep

if.end156:                                        ; preds = %if.else150
  call fastcc void @bnx2i_ep_active_list_add(ptr noundef %hba.0289, ptr noundef %50)
  %call157 = call i32 @bnx2i_map_ep_dbell_regs(ptr noundef %50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %del_active_ep

if.end160:                                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef %net_dev_lock) #13
  br label %cleanup170

del_active_ep:                                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @bnx2i_ep_active_list_del(ptr noundef %hba.0289, ptr noundef %50)
  br label %release_ep

release_ep:                                       ; preds = %del_active_ep, %if.else150.release_ep_crit_edge, %if.end121.release_ep_crit_edge
  %rc.1 = phi i32 [ %call152, %if.else150.release_ep_crit_edge ], [ %call157, %del_active_ep ], [ -22, %if.end121.release_ep_crit_edge ]
  call fastcc void @bnx2i_tear_down_conn(ptr noundef %hba.0289, ptr noundef %50)
  br label %conn_failed

conn_failed:                                      ; preds = %release_ep, %if.end145.conn_failed_crit_edge, %do.end111, %bnx2i_ep_ofld_list_del.exit.conn_failed_crit_edge, %do.end59
  %rc.2 = phi i32 [ %rc.0, %do.end59 ], [ -16, %do.end111 ], [ %rc.1, %release_ep ], [ -28, %bnx2i_ep_ofld_list_del.exit.conn_failed_crit_edge ], [ -22, %if.end145.conn_failed_crit_edge ]
  call void @bnx2i_free_qp_resc(ptr noundef %hba.0289, ptr noundef %50) #13
  br label %qp_resc_err

qp_resc_err:                                      ; preds = %conn_failed, %do.end24
  %rc.3 = phi i32 [ -12, %do.end24 ], [ %rc.2, %conn_failed ]
  call fastcc void @bnx2i_free_ep(ptr noundef nonnull %call.i265)
  br label %check_busy

check_busy:                                       ; preds = %qp_resc_err, %do.end, %bnx2i_alloc_ep.exit.thread, %lor.lhs.false.check_busy_crit_edge, %lor.lhs.false7.i.check_busy_crit_edge, %lor.lhs.false3.i.check_busy_crit_edge, %lor.lhs.false.i.check_busy_crit_edge
  %rc.4 = phi i32 [ -12, %do.end ], [ %rc.3, %qp_resc_err ], [ -1, %lor.lhs.false.check_busy_crit_edge ], [ -1, %lor.lhs.false.i.check_busy_crit_edge ], [ -1, %lor.lhs.false3.i.check_busy_crit_edge ], [ -1, %lor.lhs.false7.i.check_busy_crit_edge ], [ -12, %bnx2i_alloc_ep.exit.thread ]
  call void @mutex_unlock(ptr noundef %net_dev_lock) #13
  br label %nohba

nohba:                                            ; preds = %check_busy, %if.end.nohba_crit_edge, %do.end25.i, %do.end18.i, %if.end8.i.nohba_crit_edge, %do.end.i
  %rc.5 = phi i32 [ %rc.4, %check_busy ], [ -22, %if.end.nohba_crit_edge ], [ -22, %if.end8.i.nohba_crit_edge ], [ -22, %do.end25.i ], [ -22, %do.end18.i ], [ -22, %do.end.i ]
  %150 = inttoptr i32 %rc.5 to ptr
  br label %cleanup170

cleanup170:                                       ; preds = %nohba, %if.end160
  %retval.0 = phi ptr [ %150, %nohba ], [ %call.i265, %if.end160 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %saddr) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2i_ep_poll(ptr nocapture noundef readonly %ep, i32 noundef %timeout_ms) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %3, label %if.else.i [
    i32 0, label %entry.cleanup76_crit_edge
    i32 268435456, label %entry.cleanup76_crit_edge158
    i32 134217728, label %entry.cleanup76_crit_edge159
    i32 32, label %if.then8
  ]

entry.cleanup76_crit_edge159:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup76

entry.cleanup76_crit_edge158:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup76

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup76

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup76

if.else.i:                                        ; preds = %entry
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1965) #13
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %6, label %8 [
    i32 134217728, label %if.else.i..thread_crit_edge
    i32 268435456, label %if.else.i..thread_crit_edge160
    i32 32, label %if.else.i..thread_crit_edge161
  ]

if.else.i..thread_crit_edge161:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread

if.else.i..thread_crit_edge160:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread

if.else.i..thread_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread

.thread:                                          ; preds = %if.else.i..thread_crit_edge, %if.else.i..thread_crit_edge160, %if.else.i..thread_crit_edge161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool20.not115 = icmp eq i32 %call2.i, 0
  %spec.store.select116 = select i1 %tobool20.not115, i32 1, i32 %call2.i
  br label %if.end65

8:                                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool25.not = icmp eq i32 %call2.i, 0
  br i1 %tobool25.not, label %.if.end65_crit_edge, label %if.then28

.if.end65_crit_edge:                              ; preds = %8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then28:                                        ; preds = %8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i111 = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #13
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %ofld_wait = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 13
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then28
  %__ret29.0 = phi i32 [ %call2.i111, %if.then28 ], [ %call62, %cleanup ]
  %call31 = call i32 @prepare_to_wait_event(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %11, label %13 [
    i32 134217728, label %for.cond..thread122_crit_edge
    i32 268435456, label %for.cond..thread122_crit_edge162
    i32 32, label %for.cond..thread122_crit_edge163
  ]

for.cond..thread122_crit_edge163:                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread122

for.cond..thread122_crit_edge162:                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread122

for.cond..thread122_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread122

.thread122:                                       ; preds = %for.cond..thread122_crit_edge, %for.cond..thread122_crit_edge162, %for.cond..thread122_crit_edge163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret29.0)
  %tobool46.not119 = icmp eq i32 %__ret29.0, 0
  %spec.store.select78120 = select i1 %tobool46.not119, i32 1, i32 %__ret29.0
  br label %for.end

13:                                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret29.0)
  %tobool52.not = icmp eq i32 %__ret29.0, 0
  br i1 %tobool52.not, label %.for.end_crit_edge, label %if.end58

.for.end_crit_edge:                               ; preds = %13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end58:                                         ; preds = %13
  %tobool59.not = icmp eq i32 %call31, 0
  br i1 %tobool59.not, label %cleanup, label %if.end58.__out_crit_edge

if.end58.__out_crit_edge:                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out

cleanup:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %call62 = call i32 @schedule_timeout(i32 noundef %__ret29.0) #13
  br label %for.cond

for.end:                                          ; preds = %.for.end_crit_edge, %.thread122
  %__ret29.2.ph = phi i32 [ %spec.store.select78120, %.thread122 ], [ 0, %.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %ofld_wait, ptr noundef nonnull %__wq_entry) #13
  br label %__out

__out:                                            ; preds = %for.end, %if.end58.__out_crit_edge
  %__ret29.2126 = phi i32 [ %__ret29.2.ph, %for.end ], [ %call31, %if.end58.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end65

if.end65:                                         ; preds = %__out, %.if.end65_crit_edge, %.thread
  %__ret.1 = phi i32 [ 0, %.if.end65_crit_edge ], [ %__ret29.2126, %__out ], [ %spec.store.select116, %.thread ]
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %15)
  %cmp68 = icmp eq i32 %15, 134217728
  %16 = call i32 @llvm.smin.i32(i32 %__ret.1, i32 1)
  %17 = select i1 %cmp68, i32 -1, i32 %16
  br label %cleanup76

cleanup76:                                        ; preds = %if.end65, %if.then8, %entry.cleanup76_crit_edge, %entry.cleanup76_crit_edge158, %entry.cleanup76_crit_edge159
  %retval.0 = phi i32 [ 1, %if.then8 ], [ -1, %entry.cleanup76_crit_edge ], [ -1, %entry.cleanup76_crit_edge158 ], [ -1, %entry.cleanup76_crit_edge159 ], [ %17, %if.end65 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2i_ep_disconnect(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %timestamp = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 7
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp48 = icmp eq i32 %3, 16
  br i1 %cmp48, label %entry.land.rhs_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %4 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timestamp, align 4
  %add = add i32 %5, 1200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp1 = icmp sgt i32 %sub, -1
  br i1 %cmp1, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %land.rhs
  tail call void @msleep(i32 noundef 250) #13
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %cmp = icmp eq i32 %8, 16
  br i1 %cmp, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %conn = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conn, align 4
  %tobool.not = icmp eq ptr %10, null
  %hba3 = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %hba3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hba3, align 4
  %net_dev_lock = getelementptr inbounds %struct.bnx2i_hba, ptr %12, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %net_dev_lock, i32 noundef 0) #13
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %14, label %if.end11 [
    i32 536870912, label %while.end.out_crit_edge
    i32 0, label %while.end.free_resc_crit_edge
  ]

while.end.free_resc_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_resc

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end11:                                         ; preds = %while.end
  %adapter_state = getelementptr inbounds %struct.bnx2i_hba, ptr %12, i32 0, i32 10
  %16 = ptrtoint ptr %adapter_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %adapter_state, align 4
  %and1.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool12.not = icmp eq i32 %and1.i, 0
  br i1 %tobool12.not, label %if.end11.if.then14_crit_edge, label %lor.lhs.false

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end11
  %hba_age = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %hba_age to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hba_age, align 4
  %age = getelementptr inbounds %struct.bnx2i_hba, ptr %12, i32 0, i32 6
  %20 = ptrtoint ptr %age to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %age, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp13.not = icmp eq i32 %19, %21
  br i1 %cmp13.not, label %if.end15, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end11.if.then14_crit_edge
  %ep_rdwr_lock.i = getelementptr inbounds %struct.bnx2i_hba, ptr %12, i32 0, i32 21
  tail call void @_raw_write_lock_bh(ptr noundef %ep_rdwr_lock.i) #13
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then14.bnx2i_ep_active_list_del.exit_crit_edge

if.then14.bnx2i_ep_active_list_del.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %bnx2i_ep_active_list_del.exit

if.end.i.i.i:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %bnx2i_ep_active_list_del.exit

bnx2i_ep_active_list_del.exit:                    ; preds = %if.end.i.i.i, %if.then14.bnx2i_ep_active_list_del.exit_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %1, ptr %prev.i3.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %ep_rdwr_lock.i) #13
  br label %free_resc

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = tail call i32 @bnx2i_hw_ep_disconnect(ptr noundef %1)
  br label %free_resc

free_resc:                                        ; preds = %if.end15, %bnx2i_ep_active_list_del.exit, %while.end.free_resc_crit_edge
  tail call void @bnx2i_free_qp_resc(ptr noundef %12, ptr noundef %1) #13
  br i1 %tobool.not, label %free_resc.if.end24_crit_edge, label %if.then22

free_resc.if.end24_crit_edge:                     ; preds = %free_resc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then22:                                        ; preds = %free_resc
  call void @__sanitizer_cov_trace_pc() #15
  %ep23 = getelementptr inbounds %struct.bnx2i_conn, ptr %10, i32 0, i32 6
  %30 = ptrtoint ptr %ep23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %ep23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %free_resc.if.end24_crit_edge
  tail call fastcc void @bnx2i_free_ep(ptr noundef %ep)
  br label %out

out:                                              ; preds = %if.end24, %while.end.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %net_dev_lock) #13
  %eh_wait = getelementptr inbounds %struct.bnx2i_hba, ptr %12, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %eh_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2i_nl_set_path(ptr nocapture noundef readonly %shost, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cnic = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 2
  %0 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cnic, align 8
  %iscsi_nl_msg_recv = getelementptr inbounds %struct.cnic_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %iscsi_nl_msg_recv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iscsi_nl_msg_recv, align 4
  %call2 = tail call i32 %3(ptr noundef %1, i32 noundef 30, ptr noundef %params, i16 noundef zeroext 64) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @bnx2i_attr_is_visible(i32 noundef %param_type, i32 noundef %param) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %param_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %param_type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %param)
  %1 = icmp ult i32 %param, 4
  br i1 %1, label %switch.lookup, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %param)
  %2 = icmp ult i32 %param, 42
  br i1 %2, label %switch.lookup6, label %sw.bb2.return_crit_edge

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.bnx2i_attr_is_visible, i32 0, i32 %param
  br label %return.sink.split

switch.lookup6:                                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep7 = getelementptr inbounds [42 x i16], ptr @switch.table.bnx2i_attr_is_visible.95, i32 0, i32 %param
  br label %return.sink.split

return.sink.split:                                ; preds = %switch.lookup6, %switch.lookup
  %switch.gep7.sink = phi ptr [ %switch.gep7, %switch.lookup6 ], [ %switch.gep, %switch.lookup ]
  %3 = ptrtoint ptr %switch.gep7.sink to i32
  call void @__asan_load2_noabort(i32 %3)
  %switch.load8 = load i16, ptr %switch.gep7.sink, align 2
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb2.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %sw.bb2.return_crit_edge ], [ %switch.load8, %return.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_send_conn_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_queuecommand(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_abort(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_device_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_recover_target(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_target_alloc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_cmd_timed_out(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_session_setup(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_conn_setup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_lookup_endpoint(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_put_rq_buf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_arm_cq_event_coalescing(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_put_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_update_iscsi_conn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_format_mac(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_host_get_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_send_iscsi_scsicmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_send_iscsi_login(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_send_iscsi_nopout(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_send_iscsi_logout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_send_iscsi_tmf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_send_iscsi_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_send_cmd_cleanup_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2i_free_ep(ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bnx2i_resc_lock) #13
  %state = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  %hba = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hba, align 4
  %ofld_conns_active = getelementptr inbounds %struct.bnx2i_hba, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %ofld_conns_active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ofld_conns_active, align 8
  %dec = add i32 %6, -1
  store i32 %dec, ptr %ofld_conns_active, align 8
  %drv_iscsi_cid = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %drv_iscsi_cid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %drv_iscsi_cid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %8)
  %cmp5.not = icmp eq i32 %8, 65535
  %conv10 = trunc i32 %8 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv10)
  %cmp.i = icmp eq i16 %conv10, -1
  %or.cond = or i1 %cmp5.not, %cmp.i
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hba, align 4
  %conv.i = and i32 %8, 65535
  %cid_free_cnt.i = getelementptr inbounds %struct.bnx2i_hba, ptr %10, i32 0, i32 20, i32 5
  %11 = ptrtoint ptr %cid_free_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cid_free_cnt.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %cid_free_cnt.i, align 4
  %cid_q_prod_idx.i = getelementptr inbounds %struct.bnx2i_hba, ptr %10, i32 0, i32 20, i32 2
  %13 = ptrtoint ptr %cid_q_prod_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cid_q_prod_idx.i, align 4
  %cid_que5.i = getelementptr inbounds %struct.bnx2i_hba, ptr %10, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %cid_que5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cid_que5.i, align 4
  %arrayidx.i = getelementptr i32, ptr %16, i32 %14
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv.i, ptr %arrayidx.i, align 4
  %conn_cid_tbl.i = getelementptr inbounds %struct.bnx2i_hba, ptr %10, i32 0, i32 20, i32 6
  %18 = ptrtoint ptr %conn_cid_tbl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conn_cid_tbl.i, align 4
  %arrayidx7.i = getelementptr ptr, ptr %19, i32 %conv.i
  %20 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx7.i, align 4
  %21 = load i32, ptr %cid_q_prod_idx.i, align 4
  %inc10.i = add i32 %21, 1
  %cid_q_max_idx.i = getelementptr inbounds %struct.bnx2i_hba, ptr %10, i32 0, i32 20, i32 4
  %22 = ptrtoint ptr %cid_q_max_idx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cid_q_max_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc10.i, i32 %23)
  %cmp14.i = icmp eq i32 %inc10.i, %23
  %spec.store.select.i = select i1 %cmp14.i, i32 0, i32 %inc10.i
  %24 = ptrtoint ptr %cid_q_prod_idx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.store.select.i, ptr %cid_q_prod_idx.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %entry.if.end_crit_edge
  %conn = getelementptr inbounds %struct.bnx2i_endpoint, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %conn, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ep13 = getelementptr inbounds %struct.bnx2i_conn, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %ep13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %ep13, align 8
  %28 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %conn, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %29 = ptrtoint ptr %hba to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %hba, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bnx2i_resc_lock, i32 noundef %call2) #13
  tail call void @iscsi_destroy_endpoint(ptr noundef %ep) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_alloc_qp_resc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_send_conn_ofld_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2i_ep_ofld_list_del(ptr noundef %hba, ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_rdwr_lock = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 21
  tail call void @_raw_write_lock_bh(ptr noundef %ep_rdwr_lock) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ep) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ep, ptr %ep, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %ep, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ep, ptr %prev.i3.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %ep_rdwr_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2i_ep_active_list_add(ptr noundef %hba, ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_rdwr_lock = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 21
  tail call void @_raw_write_lock_bh(ptr noundef %ep_rdwr_lock) #13
  %ep_active_list = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 23, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep, ptr noundef %1, ptr noundef %ep_active_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ep, ptr %prev.i, align 4
  %3 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ep_active_list, ptr %ep, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ep, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ep, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %ep_rdwr_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_map_ep_dbell_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_free_qp_resc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_adapter_list_head() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bnx2i_find_hba_for_cnic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_create_endpoint(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_destroy_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !85, !86, !88, !89, !90, !91, !92, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !119, !121, !123, !125, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !190}
!llvm.named.register.sp = !{!191}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 262, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bnx2i_get_conn_from_id._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bnx2i_get_conn_from_id._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 266, i32 3}
!8 = !{ptr @bnx2i_get_conn_from_id._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @bnx2i_get_conn_from_id._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 689, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @bnx2i_find_ep_in_ofld_list._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @bnx2i_find_ep_in_ofld_list._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 717, i32 3}
!17 = !{ptr @bnx2i_find_ep_in_destroy_list._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @bnx2i_find_ep_in_destroy_list._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @bnx2i_alloc_hba.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 832, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bnx2i_alloc_hba.__key.10, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 865, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @bnx2i_alloc_hba.__key.12, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 866, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bnx2i_alloc_hba.__key.14, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 867, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @bnx2i_hw_ep_disconnect.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 2058, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 2071, i32 6}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bnx2i_hw_ep_disconnect._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @bnx2i_hw_ep_disconnect._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 2093, i32 3}
!41 = !{ptr @bnx2i_hw_ep_disconnect._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bnx2i_hw_ep_disconnect._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 2275, i32 12}
!45 = !{ptr @bnx2i_iscsi_transport, !46, !"bnx2i_iscsi_transport", i1 false, i1 false}
!46 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 2273, i32 24}
!47 = !{ptr @bnx2i_scsi_xport_template, !48, !"bnx2i_scsi_xport_template", i1 false, i1 false}
!48 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 23, i32 33}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 532, i32 3}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @bnx2i_setup_mp_bdt._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @bnx2i_setup_mp_bdt._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 541, i32 3}
!56 = !{ptr @bnx2i_setup_mp_bdt._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @bnx2i_setup_mp_bdt._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1730, i32 3}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @bnx2i_tear_down_conn._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @bnx2i_tear_down_conn._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @bnx2i_tear_down_conn.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1737, i32 2}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1758, i32 3}
!68 = !{ptr @bnx2i_tear_down_conn._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @bnx2i_tear_down_conn._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 2255, i32 12}
!72 = !{ptr @bnx2i_host_template, !73, !"bnx2i_host_template", i1 false, i1 false}
!73 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 2253, i32 34}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1294, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @bnx2i_session_create._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @bnx2i_session_create._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 454, i32 3}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @bnx2i_alloc_bdt._entry, !80, !"_entry", i1 false, i1 false}
!85 = !{ptr @bnx2i_alloc_bdt._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1380, i32 3}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @bnx2i_conn_create._entry, !87, !"_entry", i1 false, i1 false}
!91 = !{ptr @bnx2i_conn_create._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @init_completion.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../include/linux/completion.h", i32 87, i32 2}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1033, i32 2}
!97 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @bnx2i_conn_alloc_login_resources._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @bnx2i_conn_alloc_login_resources._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1444, i32 3}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @bnx2i_conn_bind._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @bnx2i_conn_bind._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1447, i32 3}
!107 = !{ptr @bnx2i_conn_bind._entry.49, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @bnx2i_conn_bind._entry_ptr.51, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 243, i32 3}
!111 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @bnx2i_bind_conn_to_iscsi_cid._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @bnx2i_bind_conn_to_iscsi_cid._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @bnx2i_conn_start.__key, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1620, i32 2}
!116 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1541, i32 23}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1547, i32 23}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1574, i32 22}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1589, i32 24}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1657, i32 32}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1112, i32 3}
!129 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @bnx2i_iscsi_send_generic_request._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @bnx2i_iscsi_send_generic_request._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 118, i32 4}
!134 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @bnx2i_setup_write_cmd_bd_info._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @bnx2i_setup_write_cmd_bd_info._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 124, i32 5}
!139 = !{ptr @bnx2i_setup_write_cmd_bd_info._entry.64, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @bnx2i_setup_write_cmd_bd_info._entry_ptr.66, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1821, i32 3}
!143 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @bnx2i_ep_connect._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @bnx2i_ep_connect._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1831, i32 3}
!148 = !{ptr @bnx2i_ep_connect._entry.69, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @bnx2i_ep_connect._entry_ptr.71, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @bnx2i_ep_connect.__key, !151, !"__key", i1 false, i1 false}
!151 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1841, i32 2}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1847, i32 4}
!154 = !{ptr @bnx2i_ep_connect._entry.72, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @bnx2i_ep_connect._entry_ptr.74, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1852, i32 3}
!158 = !{ptr @bnx2i_ep_connect._entry.75, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @bnx2i_ep_connect._entry_ptr.77, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @bnx2i_ep_connect._entry.78, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1870, i32 4}
!162 = !{ptr @bnx2i_ep_connect._entry_ptr.79, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1679, i32 3}
!165 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @bnx2i_check_route._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @bnx2i_check_route._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1688, i32 3}
!170 = !{ptr @bnx2i_check_route._entry.82, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @bnx2i_check_route._entry_ptr.84, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1692, i32 3}
!174 = !{ptr @bnx2i_check_route._entry.85, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @bnx2i_check_route._entry_ptr.87, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 1694, i32 3}
!178 = !{ptr @bnx2i_check_route._entry.88, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @bnx2i_check_route._entry_ptr.90, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 389, i32 3}
!182 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @bnx2i_alloc_ep._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @bnx2i_alloc_ep._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @bnx2i_alloc_ep.__key, !186, !"__key", i1 false, i1 false}
!186 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 406, i32 2}
!187 = !{ptr @.str.93, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/bnx2i/bnx2i_iscsi.c", i32 30, i32 8}
!190 = !{ptr @bnx2i_resc_lock, !189, !"bnx2i_resc_lock", i1 false, i1 false}
!191 = !{!"sp"}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{!"branch_weights", i32 2000, i32 1}
!202 = !{i64 2148730056}
!203 = !{i64 2148644765, i64 2148644797, i64 2148644826, i64 2148644860, i64 2148644891, i64 2148644914}
!204 = !{i64 2148730285}
!205 = !{!"branch_weights", i32 1, i32 2000}
!206 = !{i64 2156927320, i64 2156927817, i64 2156927357, i64 2156927413, i64 2156927447, i64 2156927471, i64 2156927512, i64 2156927533, i64 2156927561, i64 2156927595}
!207 = !{i64 2156929208, i64 2156929705, i64 2156929245, i64 2156929301, i64 2156929335, i64 2156929359, i64 2156929400, i64 2156929421, i64 2156929449, i64 2156929483}
!208 = !{!"auto-init"}
