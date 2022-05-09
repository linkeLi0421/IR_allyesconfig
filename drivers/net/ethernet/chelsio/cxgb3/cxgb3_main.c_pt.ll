; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.99 }
%union.anon.99 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.adapter = type { %struct.t3cdev, %struct.list_head, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, i32, [3 x i32], i32, [9 x %struct.anon.124], [40 x i8], %struct.sge, %struct.mc7, %struct.mc7, %struct.mc7, %struct.mc5, [2 x ptr], i32, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, %struct.mutex, %struct.spinlock, %struct.spinlock, ptr, [56 x i8] }
%struct.t3cdev = type { [16 x i8], i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.vpd_params, %struct.pci_params, ptr, [16 x i16], [32 x i16], [32 x i16], i32, i32, i32, i32, i32, i32 }
%struct.sge_params = type { i32, [8 x %struct.qset_params] }
%struct.qset_params = type { i32, i32, i32, i32, i32, [3 x i32], i32, i32 }
%struct.mc5_params = type { i32, i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vpd_params = type { i32, i32, i32, i32, i32, [17 x i8], [6 x i8], [2 x i8], [2 x i16] }
%struct.pci_params = type { i32, i16, i8, i8 }
%struct.anon.124 = type { i16, [22 x i8] }
%struct.sge = type { [8 x %struct.sge_qset], %struct.spinlock, [84 x i8] }
%struct.sge_qset = type { ptr, %struct.napi_struct, %struct.sge_rspq, [2 x %struct.sge_fl], [3 x %struct.sge_txq], i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.timer_list, [5 x i32], [40 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sge_rspq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, %struct.fl_pg_chunk, i32, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.fl_pg_chunk = type { ptr, ptr, i32, ptr, i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, i32, i32, %struct.sk_buff_head, %struct.work_struct, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mc7 = type { ptr, i32, i32, i32, ptr, %struct.mc7_stats }
%struct.mc7_stats = type { i32, i32, i32, i32 }
%struct.mc5 = type { ptr, i32, i8, i8, i8, %struct.mc5_stats }
%struct.mc5_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.122, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.122 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.adapter_info = type { i8, i8, i8, i32, [2 x i8], i32, ptr, ptr }
%struct.cphy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cphy = type { i8, i16, i32, ptr, ptr, i32, ptr, %struct.mdio_if_info, [1628 x i16] }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.123, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.123 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.msix_entry = type { i32, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.t3c_data = type { %struct.list_head, ptr, i32, i32, i32, ptr, [100 x i8], %struct.tid_info, ptr, %struct.spinlock, %struct.work_struct, ptr, i32, [28 x i8] }
%struct.tid_info = type { ptr, i32, %struct.atomic_t, ptr, i32, i32, ptr, i32, i32, [92 x i8], %struct.spinlock, ptr, i32, [76 x i8], %struct.spinlock, ptr, i32, [76 x i8] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.cpl_smt_write_req = type { %struct.work_request_hdr, %union.opcode_tid, i8, i8, i16, i16, [6 x i8], i16, [6 x i8] }
%struct.work_request_hdr = type { i32, i32 }
%union.opcode_tid = type { i32 }
%struct.cpl_l2t_write_req = type { %struct.work_request_hdr, %union.opcode_tid, i32, [2 x i8], [6 x i8] }
%struct.cpl_rte_write_req = type { %struct.work_request_hdr, %union.opcode_tid, i8, [3 x i8], i32, i16, i16, i32, i32 }
%struct.cpl_set_tcb_field = type { %struct.work_request_hdr, %union.opcode_tid, i8, i8, i16, i64, i64 }
%struct.mngt_pktsched_wr = type { i32, i32, i8, [7 x i8], i8, i8, i8, i8, i8, [3 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.106, %union.anon.107 }
%union.anon.106 = type { [16 x i8] }
%union.anon.107 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ch_qset_params = type { i32, i32, [3 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32 }
%struct.ch_reg = type { i32, i32, i32 }
%struct.ch_mem_range = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ch_mtus = type { i32, i32, [16 x i16] }
%struct.ch_pm = type { i32, i32, i32, i32, i32, i32 }
%struct.ch_trace = type { i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i8, i8, i8 }
%struct.mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.121, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.121 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_description368 = internal constant [44 x i8] c"cxgb3.description=Chelsio T3 Network Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author369 = internal constant [36 x i8] c"cxgb3.author=Chelsio Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_file370 = internal constant [52 x i8] c"cxgb3.file=drivers/net/ethernet/chelsio/cxgb3/cxgb3\00", section ".modinfo", align 1
@__UNIQUE_ID_license371 = internal constant [27 x i8] c"cxgb3.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__param_str_dflt_msg_enable = internal constant [22 x i8] c"cxgb3.dflt_msg_enable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dflt_msg_enable = internal global { i32, [28 x i8] } { i32 255, [28 x i8] zeroinitializer }, align 32
@__param_dflt_msg_enable = internal constant %struct.kernel_param { ptr @__param_str_dflt_msg_enable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.99 { ptr @dflt_msg_enable } }, section "__param", align 4
@__UNIQUE_ID_dflt_msg_enabletype372 = internal constant [35 x i8] c"cxgb3.parmtype=dflt_msg_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dflt_msg_enable373 = internal constant [68 x i8] c"cxgb3.parm=dflt_msg_enable:Chelsio T3 default message enable bitmap\00", section ".modinfo", align 1
@__param_str_msi = internal constant [10 x i8] c"cxgb3.msi\00", align 1
@msi = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.99 { ptr @msi } }, section "__param", align 4
@__UNIQUE_ID_msitype374 = internal constant [23 x i8] c"cxgb3.parmtype=msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msi375 = internal constant [43 x i8] c"cxgb3.parm=msi:whether to use MSI or MSI-X\00", section ".modinfo", align 1
@__param_str_ofld_disable = internal constant [19 x i8] c"cxgb3.ofld_disable\00", align 1
@ofld_disable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ofld_disable = internal constant %struct.kernel_param { ptr @__param_str_ofld_disable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.99 { ptr @ofld_disable } }, section "__param", align 4
@__UNIQUE_ID_ofld_disabletype376 = internal constant [32 x i8] c"cxgb3.parmtype=ofld_disable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ofld_disable377 = internal constant [70 x i8] c"cxgb3.parm=ofld_disable:whether to enable offload at init time or not\00", section ".modinfo", align 1
@t3_os_phymod_changed.mod_str = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr null, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.3, ptr @.str.4], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SR\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LR\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LRM\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TWINAX\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PHY module unplugged\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s PHY module inserted\0A\00", [40 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware378 = internal constant [37 x i8] c"cxgb3.firmware=cxgb3/t3fw-7.12.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware379 = internal constant [41 x i8] c"cxgb3.firmware=cxgb3/t3b_psram-1.1.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware380 = internal constant [41 x i8] c"cxgb3.firmware=cxgb3/t3c_psram-1.1.0.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware381 = internal constant [41 x i8] c"cxgb3.firmware=cxgb3/ael2005_opt_edc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware382 = internal constant [41 x i8] c"cxgb3.firmware=cxgb3/ael2005_twx_edc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware383 = internal constant [41 x i8] c"cxgb3.firmware=cxgb3/ael2020_twx_edc.bin\00", section ".modinfo", align 1
@t3_get_edc_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1042, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"could not upgrade firmware: unable to load %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"t3_get_edc_fw\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@t3_get_edc_fw._entry_ptr = internal global ptr @t3_get_edc_fw._entry, section ".printk_index", align 4
@t3_get_edc_fw._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 1049, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"firmware image too large %u, expected %d\0A\00", [54 x i8] zeroinitializer }, align 32
@t3_get_edc_fw._entry_ptr.14 = internal global ptr @t3_get_edc_fw._entry.12, section ".printk_index", align 4
@t3_get_edc_fw._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.9, i32 1060, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"corrupted firmware image, checksum %u\0A\00", [57 x i8] zeroinitializer }, align 32
@t3_get_edc_fw._entry_ptr.17 = internal global ptr @t3_get_edc_fw._entry.15, section ".printk_index", align 4
@cxgb3_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@t3_fatal_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.9, i32 3009, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"encountered fatal error, operation suspended\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"t3_fatal_err\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@t3_fatal_err._entry_ptr = internal global ptr @t3_fatal_err._entry, section ".printk_index", align 4
@t3_fatal_err._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.9, i32 3013, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"FW status: 0x%x, 0x%x, 0x%x, 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@t3_fatal_err._entry_ptr.23 = internal global ptr @t3_fatal_err._entry.21, section ".printk_index", align 4
@driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.35, ptr @cxgb3_pci_tbl, ptr @init_one, ptr @remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @t3_err_handler, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_cxgb3__390_3470_cxgb3_init_module6 = internal global ptr @cxgb3_init_module, section ".initcall6.init", align 4
@__exitcall_cxgb3_cleanup_module = internal global ptr @cxgb3_cleanup_module, section ".exitcall.exit", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10Mbps\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10Gbps\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1000Mbps\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"100Mbps\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"link up, %s, %s-duplex\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxgb3/ael2005_opt_edc.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxgb3/ael2005_twx_edc.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxgb3/ael2020_twx_edc.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cxgb3\00", [26 x i8] zeroinitializer }, align 32
@cxgb3_pci_tbl = internal constant { [14 x %struct.pci_device_id], [96 x i8] } { [14 x %struct.pci_device_id] [%struct.pci_device_id { i32 5157, i32 32, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5157, i32 33, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5157, i32 34, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5157, i32 35, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5157, i32 36, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5157, i32 37, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5157, i32 38, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5157, i32 48, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5157, i32 49, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5157, i32 50, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5157, i32 53, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 5157, i32 54, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5157, i32 55, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@t3_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @t3_io_error_detected, ptr null, ptr @t3_io_slot_reset, ptr null, ptr null, ptr @t3_io_resume }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.9, i32 3216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cxgb3: cannot initialize work queue\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_one\00", [23 x i8] zeroinitializer }, align 32
@init_one._entry_ptr = internal global ptr @init_one._entry, section ".printk_index", align 4
@init_one._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.9, i32 3223, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.41 = internal global ptr @init_one._entry.39, section ".printk_index", align 4
@init_one._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.9, i32 3230, ptr @.str.44, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot obtain PCI resources\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.45 = internal global ptr @init_one._entry.42, section ".printk_index", align 4
@init_one._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.38, ptr @.str.9, i32 3236, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no usable DMA configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.48 = internal global ptr @init_one._entry.46, section ".printk_index", align 4
@init_one._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.38, ptr @.str.9, i32 3256, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot allocate nofail buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.51 = internal global ptr @init_one._entry.49, section ".printk_index", align 4
@init_one._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.38, ptr @.str.9, i32 3263, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot map device registers\0A\00", [35 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.54 = internal global ptr @init_one._entry.52, section ".printk_index", align 4
@init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&adapter->mdio_lock\00", [44 x i8] zeroinitializer }, align 32
@init_one.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&adapter->work_lock\00", [44 x i8] zeroinitializer }, align 32
@init_one.__key.58 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&adapter->stats_lock\00", [43 x i8] zeroinitializer }, align 32
@init_one.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&adapter->ext_intr_handler_task)\00", [45 x i8] zeroinitializer }, align 32
@init_one.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&adapter->fatal_error_handler_task)\00", [42 x i8] zeroinitializer }, align 32
@init_one.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&adapter->db_full_task)\00", [54 x i8] zeroinitializer }, align 32
@init_one.__key.66 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&adapter->db_empty_task)\00", [53 x i8] zeroinitializer }, align 32
@init_one.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&adapter->db_drop_task)\00", [54 x i8] zeroinitializer }, align 32
@init_one.__key.70 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&adapter->adap_check_task)->work)\00", [42 x i8] zeroinitializer }, align 32
@init_one.__key.72 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&adapter->adap_check_task)->timer\00", [60 x i8] zeroinitializer }, align 32
@cxgb_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @cxgb_open, ptr @cxgb_close, ptr @t3_eth_xmit, ptr null, ptr null, ptr null, ptr @cxgb_set_rxmode, ptr @cxgb_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @cxgb_ioctl, ptr null, ptr null, ptr @cxgb_siocdevprivate, ptr null, ptr @cxgb_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxgb_get_stats, ptr null, ptr null, ptr @cxgb_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxgb_fix_features, ptr @cxgb_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@cxgb_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1, i32 0, ptr @get_drvinfo, ptr @get_regs_len, ptr @get_regs, ptr @get_wol, ptr null, ptr @get_msglevel, ptr @set_msglevel, ptr @restart_autoneg, ptr @ethtool_op_get_link, ptr null, ptr @get_eeprom_len, ptr @get_eeprom, ptr @set_eeprom, ptr @get_coalesce, ptr @set_coalesce, ptr @get_sge_param, ptr @set_sge_param, ptr null, ptr @get_pauseparam, ptr @set_pauseparam, ptr null, ptr @get_strings, ptr @set_phys_id, ptr @get_stats, ptr null, ptr null, ptr null, ptr null, ptr @get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_link_ksettings, ptr @set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@init_one._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.38, ptr @.str.9, i32 3338, ptr @.str.76, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cannot register net device %s, skipping\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.77 = internal global ptr @init_one._entry.74, section ".printk_index", align 4
@init_one._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.38, ptr @.str.9, i32 3351, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not register any net devices\0A\00", [60 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.80 = internal global ptr @init_one._entry.78, section ".printk_index", align 4
@cxgb3_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cxgb3_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@init_one._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.38, ptr @.str.9, i32 3377, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot create sysfs group\0A\00", [37 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.83 = internal global ptr @init_one._entry.81, section ".printk_index", align 4
@fatal_error_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.9, i32 2989, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adapter reset %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fatal_error_task\00", [47 x i8] zeroinitializer }, align 32
@fatal_error_task._entry_ptr = internal global ptr @fatal_error_task._entry, section ".printk_index", align 4
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"succeeded\00", [22 x i8] zeroinitializer }, align 32
@offload_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @offload_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@offload_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_sched0, ptr @dev_attr_sched1, ptr @dev_attr_sched2, ptr @dev_attr_sched3, ptr @dev_attr_sched4, ptr @dev_attr_sched5, ptr @dev_attr_sched6, ptr @dev_attr_sched7, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_sched0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sched0, ptr @store_sched0 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sched1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sched1, ptr @store_sched1 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sched2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sched2, ptr @store_sched2 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sched3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sched3, ptr @store_sched3 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sched4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sched4, ptr @store_sched4 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sched5 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sched5, ptr @store_sched5 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sched6 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sched6, ptr @store_sched6 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sched7 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sched7, ptr @store_sched7 }, [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sched0\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabled\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u Kbps\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sched1\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sched2\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sched3\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sched4\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sched5\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sched6\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sched7\00", [25 x i8] zeroinitializer }, align 32
@t3_reenable_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.9, i32 2932, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot re-enable PCI device after reset.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"t3_reenable_adapter\00", [44 x i8] zeroinitializer }, align 32
@t3_reenable_adapter._entry_ptr = internal global ptr @t3_reenable_adapter._entry, section ".printk_index", align 4
@t3_resume_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.9, i32 2962, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't bring device back up after reset\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"t3_resume_ports\00", [16 x i8] zeroinitializer }, align 32
@t3_resume_ports._entry_ptr = internal global ptr @t3_resume_ports._entry, section ".printk_index", align 4
@cxgb_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.9, i32 1432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014cxgb3: Could not initialize offload capabilities\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cxgb_open\00", [22 x i8] zeroinitializer }, align 32
@cxgb_open._entry_ptr = internal global ptr @cxgb_open._entry, section ".printk_index", align 4
@cxgb_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.9, i32 1221, ptr @.str.76, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FW upgrade to %d.%d.%d %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cxgb_up\00", [24 x i8] zeroinitializer }, align 32
@cxgb_up._entry_ptr = internal global ptr @cxgb_up._entry, section ".printk_index", align 4
@cxgb_up._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.9, i32 1229, ptr @.str.76, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TP upgrade to %d.%d.%d %s\0A\00", [37 x i8] zeroinitializer }, align 32
@cxgb_up._entry_ptr.108 = internal global ptr @cxgb_up._entry.106, section ".printk_index", align 4
@cxgb_up._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.9, i32 1303, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to bind qsets, err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cxgb_up._entry_ptr.111 = internal global ptr @cxgb_up._entry.109, section ".printk_index", align 4
@cxgb_up._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.105, ptr @.str.9, i32 1315, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"request_irq failed, err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cxgb_up._entry_ptr.114 = internal global ptr @cxgb_up._entry.112, section ".printk_index", align 4
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgb3/t3fw-7.12.0.bin\00", [42 x i8] zeroinitializer }, align 32
@upgrade_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.116, ptr @.str.9, i32 1083, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"upgrade_fw\00", [21 x i8] zeroinitializer }, align 32
@upgrade_fw._entry_ptr = internal global ptr @upgrade_fw._entry, section ".printk_index", align 4
@upgrade_fw._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.9, i32 1091, ptr @.str.44, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"successful upgrade to firmware %d.%d.%d\0A\00", [55 x i8] zeroinitializer }, align 32
@upgrade_fw._entry_ptr.119 = internal global ptr @upgrade_fw._entry.117, section ".printk_index", align 4
@upgrade_fw._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.9, i32 1094, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to upgrade to firmware %d.%d.%d\0A\00", [56 x i8] zeroinitializer }, align 32
@upgrade_fw._entry_ptr.122 = internal global ptr @upgrade_fw._entry.120, section ".printk_index", align 4
@.str.123 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cxgb3/t3%c_psram-1.1.0.bin\00", [37 x i8] zeroinitializer }, align 32
@update_tpsram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.9, i32 1132, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not load TP SRAM: unable to load %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"update_tpsram\00", [18 x i8] zeroinitializer }, align 32
@update_tpsram._entry_ptr = internal global ptr @update_tpsram._entry, section ".printk_index", align 4
@update_tpsram._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.9, i32 1145, ptr @.str.44, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"successful update of protocol engine to %d.%d.%d\0A\00", [46 x i8] zeroinitializer }, align 32
@update_tpsram._entry_ptr.128 = internal global ptr @update_tpsram._entry.126, section ".printk_index", align 4
@update_tpsram._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.125, ptr @.str.9, i32 1148, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to update of protocol engine %d.%d.%d\0A\00", [50 x i8] zeroinitializer }, align 32
@update_tpsram._entry_ptr.131 = internal global ptr @update_tpsram._entry.129, section ".printk_index", align 4
@update_tpsram._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.125, ptr @.str.9, i32 1150, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"loading protocol SRAM failed\0A\00", [34 x i8] zeroinitializer }, align 32
@update_tpsram._entry_ptr.134 = internal global ptr @update_tpsram._entry.132, section ".printk_index", align 4
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@offload_open.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.136, ptr @.str.9, ptr @.str.82, i8 1, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"offload_open\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s %u.%u.%u TP %u.%u.%u\00", [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"T\00", [30 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"N\00", [30 x i8] zeroinitializer }, align 32
@stats_strings = internal constant { [45 x [32 x i8]], [352 x i8] } { [45 x [32 x i8]] [[32 x i8] c"TxOctetsOK         \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxFramesOK         \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxMulticastFramesOK\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxBroadcastFramesOK\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxPauseFrames      \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxUnderrun         \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxExtUnderrun      \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxFrames64         \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxFrames65To127    \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxFrames128To255   \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxFrames256To511   \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxFrames512To1023  \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxFrames1024To1518 \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxFrames1519ToMax  \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxOctetsOK         \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxFramesOK         \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxMulticastFramesOK\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxBroadcastFramesOK\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxPauseFrames      \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxFCSErrors        \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxSymbolErrors     \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxShortErrors      \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxJabberErrors     \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxLengthErrors     \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxFIFOoverflow     \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxFrames64         \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxFrames65To127    \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxFrames128To255   \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxFrames256To511   \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxFrames512To1023  \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxFrames1024To1518 \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxFrames1519ToMax  \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"PhyFIFOErrors      \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TSO                \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"VLANextractions    \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"VLANinsertions     \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxCsumOffload      \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxCsumGood         \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"LroAggregated      \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"LroFlushed         \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"LroNoDesc          \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxDrops            \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CheckTXEnToggled   \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CheckResets        \00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"LinkFaults         \00\00\00\00\00\00\00\00\00\00\00\00\00"], [352 x i8] zeroinitializer }, align 32
@set_nqsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.9, i32 3112, ptr @.str.44, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Port %d using %d queue sets.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"set_nqsets\00", [21 x i8] zeroinitializer }, align 32
@set_nqsets._entry_ptr = internal global ptr @set_nqsets._entry, section ".printk_index", align 4
@cxgb3_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_cam_size, ptr @dev_attr_nfilters, ptr @dev_attr_nservers, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_cam_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_cam_size, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nfilters = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_nfilters, ptr @store_nfilters }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nservers = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_nservers, ptr @store_nservers }, [36 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cam_size\00", [23 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nfilters\00", [23 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nservers\00", [23 x i8] zeroinitializer }, align 32
@print_port_info.pci_variant = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153], [44 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCI-X\00", [26 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCI-X ECC\00", [22 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCI-X 266\00", [22 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PCI Express\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s x%d\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %dMHz/%d-bit\00", [16 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s %s %sNIC (rev %d) %s%s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" MSI-X\00", [25 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" MSI\00", [27 x i8] zeroinitializer }, align 32
@print_port_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.9, i32 3172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016cxgb3: %s: %uMB CM, %uMB PMTX, %uMB PMRX, S/N: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"print_port_info\00", [16 x i8] zeroinitializer }, align 32
@print_port_info._entry_ptr = internal global ptr @print_port_info._entry, section ".printk_index", align 4
@t3_io_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.9, i32 3066, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"adapter recovering, PEX ERR 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"t3_io_resume\00", [19 x i8] zeroinitializer }, align 32
@t3_io_resume._entry_ptr = internal global ptr @t3_io_resume._entry, section ".printk_index", align 4
@switch.table.t3_get_edc_fw = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34], [20 x i8] zeroinitializer }, align 32
@switch.table.cxgb_up = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 98, i32 98, i32 99], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 100, i64 1000, i64 10000]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 16, i64 100, i64 1000, i64 10000]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.167 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.168 = internal global [12 x i64] [i64 10, i64 32, i64 1030, i64 1032, i64 1033, i64 1038, i64 1041, i64 1044, i64 1045, i64 1046, i64 1047, i64 1048]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.170 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.171 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.172 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 100, i64 1000, i64 10000]
@__sancov_gen_cov_switch_values.173 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 100, i64 1000, i64 10000]
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"dflt_msg_enable\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 110, i32 12 }
@___asan_gen_.177 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 124, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant [13 x i8] c"ofld_disable\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 134, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant [8 x i8] c"mod_str\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 316, i32 21 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 317, i32 9 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 317, i32 15 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 317, i32 21 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 317, i32 28 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 317, i32 48 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 324, i32 20 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 326, i32 20 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1040, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1048, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1059, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [9 x i8] c"cxgb3_wq\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 147, i32 26 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3009, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3011, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3445, i32 26 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 158, i32 20 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 160, i32 19 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 165, i32 8 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 168, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 171, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 175, i32 20 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 177, i32 10 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 177, i32 19 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1014, i32 13 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1017, i32 13 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1020, i32 13 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3446, i32 10 }
@___asan_gen_.297 = private unnamed_addr constant [14 x i8] c"cxgb3_pci_tbl\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 88, i32 35 }
@___asan_gen_.300 = private unnamed_addr constant [15 x i8] c"t3_err_handler\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3073, i32 40 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3214, i32 14 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3216, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3223, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3230, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3236, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3256, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3263, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3273, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3274, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3275, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3278, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3279, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3281, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3282, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3283, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3285, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [16 x i8] c"cxgb_netdev_ops\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3176, i32 36 }
@___asan_gen_.411 = private unnamed_addr constant [17 x i8] c"cxgb_ethtool_ops\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2102, i32 33 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3336, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3351, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant [17 x i8] c"cxgb3_attr_group\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 795, i32 37 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3377, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2989, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [19 x i8] c"offload_attr_group\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 884, i32 37 }
@___asan_gen_.456 = private unnamed_addr constant [14 x i8] c"offload_attrs\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 872, i32 26 }
@___asan_gen_.459 = private unnamed_addr constant [16 x i8] c"dev_attr_sched0\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [16 x i8] c"dev_attr_sched1\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [16 x i8] c"dev_attr_sched2\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [16 x i8] c"dev_attr_sched3\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [16 x i8] c"dev_attr_sched4\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [16 x i8] c"dev_attr_sched5\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [16 x i8] c"dev_attr_sched6\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [16 x i8] c"dev_attr_sched7\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 863, i32 1 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 816, i32 22 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 819, i32 22 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 864, i32 1 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 865, i32 1 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 866, i32 1 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 867, i32 1 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 868, i32 1 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 869, i32 1 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 870, i32 1 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2931, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 2960, i32 5 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1432, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1219, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1227, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1303, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1315, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1080, i32 30 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1082, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1090, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1093, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1127, i32 29 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1131, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1142, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1147, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1150, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 394, i32 6 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1375, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 156, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1635, i32 5 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1636, i32 34 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1636, i32 40 }
@___asan_gen_.636 = private unnamed_addr constant [14 x i8] c"stats_strings\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 1542, i32 19 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3111, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant [12 x i8] c"cxgb3_attrs\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 788, i32 26 }
@___asan_gen_.651 = private unnamed_addr constant [18 x i8] c"dev_attr_cam_size\00", align 1
@___asan_gen_.654 = private unnamed_addr constant [18 x i8] c"dev_attr_nfilters\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [18 x i8] c"dev_attr_nservers\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 784, i32 1 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 785, i32 1 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 786, i32 1 }
@___asan_gen_.672 = private unnamed_addr constant [12 x i8] c"pci_variant\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3140, i32 21 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3141, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3141, i32 10 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3141, i32 19 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3141, i32 32 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3141, i32 45 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3148, i32 30 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3152, i32 30 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3162, i32 20 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3164, i32 27 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3164, i32 33 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3165, i32 37 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3166, i32 36 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3168, i32 4 }
@___asan_gen_.720 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.726 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.727 = private constant [51 x i8] c"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.727, i32 3065, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant [27 x i8] c"switch.table.t3_get_edc_fw\00", align 1
@___asan_gen_.730 = private unnamed_addr constant [21 x i8] c"switch.table.cxgb_up\00", align 1
@llvm.compiler.used = appending global [241 x ptr] [ptr @__UNIQUE_ID_author369, ptr @__UNIQUE_ID_description368, ptr @__UNIQUE_ID_dflt_msg_enable373, ptr @__UNIQUE_ID_dflt_msg_enabletype372, ptr @__UNIQUE_ID_file370, ptr @__UNIQUE_ID_firmware378, ptr @__UNIQUE_ID_firmware379, ptr @__UNIQUE_ID_firmware380, ptr @__UNIQUE_ID_firmware381, ptr @__UNIQUE_ID_firmware382, ptr @__UNIQUE_ID_firmware383, ptr @__UNIQUE_ID_license371, ptr @__UNIQUE_ID_msi375, ptr @__UNIQUE_ID_msitype374, ptr @__UNIQUE_ID_ofld_disable377, ptr @__UNIQUE_ID_ofld_disabletype376, ptr @__exitcall_cxgb3_cleanup_module, ptr @__initcall__kmod_cxgb3__390_3470_cxgb3_init_module6, ptr @__param_dflt_msg_enable, ptr @__param_msi, ptr @__param_ofld_disable, ptr @cxgb3_cleanup_module, ptr @cxgb_open._entry, ptr @cxgb_open._entry_ptr, ptr @cxgb_up._entry, ptr @cxgb_up._entry.106, ptr @cxgb_up._entry.109, ptr @cxgb_up._entry.112, ptr @cxgb_up._entry_ptr, ptr @cxgb_up._entry_ptr.108, ptr @cxgb_up._entry_ptr.111, ptr @cxgb_up._entry_ptr.114, ptr @fatal_error_task._entry, ptr @fatal_error_task._entry_ptr, ptr @init_one._entry, ptr @init_one._entry.39, ptr @init_one._entry.42, ptr @init_one._entry.46, ptr @init_one._entry.49, ptr @init_one._entry.52, ptr @init_one._entry.74, ptr @init_one._entry.78, ptr @init_one._entry.81, ptr @init_one._entry_ptr, ptr @init_one._entry_ptr.41, ptr @init_one._entry_ptr.45, ptr @init_one._entry_ptr.48, ptr @init_one._entry_ptr.51, ptr @init_one._entry_ptr.54, ptr @init_one._entry_ptr.77, ptr @init_one._entry_ptr.80, ptr @init_one._entry_ptr.83, ptr @print_port_info._entry, ptr @print_port_info._entry_ptr, ptr @set_nqsets._entry, ptr @set_nqsets._entry_ptr, ptr @t3_fatal_err._entry, ptr @t3_fatal_err._entry.21, ptr @t3_fatal_err._entry_ptr, ptr @t3_fatal_err._entry_ptr.23, ptr @t3_get_edc_fw._entry, ptr @t3_get_edc_fw._entry.12, ptr @t3_get_edc_fw._entry.15, ptr @t3_get_edc_fw._entry_ptr, ptr @t3_get_edc_fw._entry_ptr.14, ptr @t3_get_edc_fw._entry_ptr.17, ptr @t3_io_resume._entry, ptr @t3_io_resume._entry_ptr, ptr @t3_reenable_adapter._entry, ptr @t3_reenable_adapter._entry_ptr, ptr @t3_resume_ports._entry, ptr @t3_resume_ports._entry_ptr, ptr @update_tpsram._entry, ptr @update_tpsram._entry.126, ptr @update_tpsram._entry.129, ptr @update_tpsram._entry.132, ptr @update_tpsram._entry_ptr, ptr @update_tpsram._entry_ptr.128, ptr @update_tpsram._entry_ptr.131, ptr @update_tpsram._entry_ptr.134, ptr @upgrade_fw._entry, ptr @upgrade_fw._entry.117, ptr @upgrade_fw._entry.120, ptr @upgrade_fw._entry_ptr, ptr @upgrade_fw._entry_ptr.119, ptr @upgrade_fw._entry_ptr.122, ptr @dflt_msg_enable, ptr @msi, ptr @ofld_disable, ptr @t3_os_phymod_changed.mod_str, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @cxgb3_wq, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @driver, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @cxgb3_pci_tbl, ptr @t3_err_handler, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @init_one.__key, ptr @.str.55, ptr @init_one.__key.56, ptr @.str.57, ptr @init_one.__key.58, ptr @.str.59, ptr @init_one.__key.60, ptr @.str.61, ptr @init_one.__key.62, ptr @.str.63, ptr @init_one.__key.64, ptr @.str.65, ptr @init_one.__key.66, ptr @.str.67, ptr @init_one.__key.68, ptr @.str.69, ptr @init_one.__key.70, ptr @.str.71, ptr @init_one.__key.72, ptr @.str.73, ptr @cxgb_netdev_ops, ptr @cxgb_ethtool_ops, ptr @.str.75, ptr @.str.76, ptr @.str.79, ptr @cxgb3_attr_group, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @offload_attr_group, ptr @offload_attrs, ptr @dev_attr_sched0, ptr @dev_attr_sched1, ptr @dev_attr_sched2, ptr @dev_attr_sched3, ptr @dev_attr_sched4, ptr @dev_attr_sched5, ptr @dev_attr_sched6, ptr @dev_attr_sched7, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @stats_strings, ptr @.str.143, ptr @.str.144, ptr @cxgb3_attrs, ptr @dev_attr_cam_size, ptr @dev_attr_nfilters, ptr @dev_attr_nservers, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @print_port_info.pci_variant, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @switch.table.t3_get_edc_fw, ptr @switch.table.cxgb_up], section "llvm.metadata"
@0 = internal global [187 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dflt_msg_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofld_disable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_os_phymod_changed.mod_str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_get_edc_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_get_edc_fw._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_get_edc_fw._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_fatal_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_fatal_err._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3_pci_tbl to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fatal_error_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offload_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offload_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sched0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sched1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sched2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sched3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sched4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sched5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sched6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sched7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_reenable_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_resume_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb_up._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb_up._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb_up._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upgrade_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upgrade_fw._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upgrade_fw._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_tpsram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_tpsram._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_tpsram._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_tpsram._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_strings to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_nqsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb3_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cam_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nfilters to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nservers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_port_info.pci_variant to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_port_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_io_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.t3_get_edc_fw to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cxgb_up to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_os_link_fault(ptr noundef %adap, i32 noundef %port_id, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.adapter, ptr %adap, i32 0, i32 21, i32 %port_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = lshr i32 %3, 2
  %.lobit = and i32 %4, 1
  %5 = xor i32 %.lobit, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %state)
  %cmp = icmp eq i32 %5, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %mac4 = getelementptr i8, ptr %1, i32 5624
  tail call void @netif_carrier_on(ptr noundef %1) #18
  %offset.i = getelementptr i8, ptr %1, i32 5628
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %7, 2184
  tail call void @t3_set_reg_field(ptr noundef %adap, i32 noundef %add.i, i32 noundef 2097152, i32 noundef 0) #18
  %port_id5 = getelementptr i8, ptr %1, i32 2312
  %8 = ptrtoint ptr %port_id5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_id5, align 8
  %conv6 = zext i8 %9 to i32
  tail call void @t3_xgm_intr_disable(ptr noundef %adap, i32 noundef %conv6) #18
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %add = add i32 %11, 2156
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #18, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i, align 4
  %add11 = add i32 %16, 2264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %18, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 16777216) #18, !srcloc !389
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %add14 = add i32 %20, 2260
  tail call void @t3_set_reg_field(ptr noundef %adap, i32 noundef %add14, i32 noundef 1, i32 noundef 1) #18
  %21 = ptrtoint ptr %port_id5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port_id5, align 8
  %conv16 = zext i8 %22 to i32
  tail call void @t3_xgm_intr_enable(ptr noundef %adap, i32 noundef %conv16) #18
  %call17 = tail call i32 @t3_mac_enable(ptr noundef %mac4, i32 noundef 2) #18
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @netif_carrier_off(ptr noundef %1) #18
  %offset.i42 = getelementptr i8, ptr %1, i32 5628
  %23 = ptrtoint ptr %offset.i42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset.i42, align 4
  %add.i43 = add i32 %24, 2184
  tail call void @t3_set_reg_field(ptr noundef %adap, i32 noundef %add.i43, i32 noundef 0, i32 noundef 2097152) #18
  %25 = ptrtoint ptr %offset.i42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset.i42, align 4
  %add3.i = add i32 %26, 2060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #18, !srcloc !389
  %29 = ptrtoint ptr %offset.i42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.i42, align 4
  %add6.i = add i32 %30, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %31 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %32, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 16777216) #18, !srcloc !389
  %33 = ptrtoint ptr %offset.i42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset.i42, align 4
  %add9.i = add i32 %34, 2060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %35 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %36, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 16777216) #18, !srcloc !389
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then3
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %state.i, align 4
  %39 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.24) #21
  br label %cleanup

if.else.i:                                        ; preds = %if.end18
  %speed.i = getelementptr i8, ptr %1, i32 6106
  %40 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %speed.i, align 2
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i16 %41, label %if.else.i.sw.epilog.i_crit_edge [
    i16 10000, label %sw.bb.i
    i16 1000, label %sw.bb2.i
    i16 100, label %sw.bb3.i
  ]

if.else.i.sw.epilog.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %if.else.i.sw.epilog.i_crit_edge
  %s.0.i = phi ptr [ @.str.25, %if.else.i.sw.epilog.i_crit_edge ], [ @.str.28, %sw.bb3.i ], [ @.str.27, %sw.bb2.i ], [ @.str.26, %sw.bb.i ]
  %duplex.i = getelementptr i8, ptr %1, i32 6109
  %43 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %duplex.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp.i = icmp eq i8 %44, 1
  %cond.i = select i1 %cmp.i, ptr @.str.30, ptr @.str.31
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull %s.0.i, ptr noundef nonnull %cond.i) #21
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %if.then.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_xgm_intr_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_set_reg_field(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_xgm_intr_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mac_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_os_link_changed(ptr noundef %adapter, i32 noundef %port_id, i32 noundef %link_stat, i32 noundef %speed, i32 noundef %duplex, i32 noundef %pause) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %port_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %mac1 = getelementptr i8, ptr %1, i32 5624
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = lshr i32 %5, 2
  %.lobit = and i32 %6, 1
  %7 = xor i32 %.lobit, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %link_stat)
  %cmp.not = icmp eq i32 %7, %link_stat
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_stat)
  %tobool.not = icmp eq i32 %link_stat, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  %offset.i = getelementptr i8, ptr %1, i32 5628
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %9, 2184
  tail call void @t3_set_reg_field(ptr noundef %adapter, i32 noundef %add.i, i32 noundef 2097152, i32 noundef 0) #18
  %call7 = tail call i32 @t3_mac_enable(ptr noundef %mac1, i32 noundef 1) #18
  %port_id8 = getelementptr i8, ptr %1, i32 2312
  %10 = ptrtoint ptr %port_id8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_id8, align 8
  %conv9 = zext i8 %11 to i32
  tail call void @t3_xgm_intr_disable(ptr noundef %adapter, i32 noundef %conv9) #18
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 4
  %add = add i32 %13, 2156
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %15, i32 %add
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #18, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i, align 4
  %add14 = add i32 %18, 2264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %20, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 16777216) #18, !srcloc !389
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %add17 = add i32 %22, 2260
  tail call void @t3_set_reg_field(ptr noundef %adapter, i32 noundef %add17, i32 noundef 1, i32 noundef 1) #18
  %23 = ptrtoint ptr %port_id8 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %port_id8, align 8
  %conv19 = zext i8 %24 to i32
  tail call void @t3_xgm_intr_enable(ptr noundef %adapter, i32 noundef %conv19) #18
  tail call void @netif_carrier_on(ptr noundef %1) #18
  br label %if.end42

if.else:                                          ; preds = %if.then5
  tail call void @netif_carrier_off(ptr noundef %1) #18
  %port_id20 = getelementptr i8, ptr %1, i32 2312
  %25 = ptrtoint ptr %port_id20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port_id20, align 8
  %conv21 = zext i8 %26 to i32
  tail call void @t3_xgm_intr_disable(ptr noundef %adapter, i32 noundef %conv21) #18
  %offset23 = getelementptr i8, ptr %1, i32 5628
  %27 = ptrtoint ptr %offset23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset23, align 4
  %add24 = add i32 %28, 2156
  %regs.i85 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %29 = ptrtoint ptr %regs.i85 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i85, align 4
  %add.ptr.i86 = getelementptr i8, ptr %30, i32 %add24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #18, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %32 = ptrtoint ptr %offset23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset23, align 4
  %add28 = add i32 %33, 2260
  tail call void @t3_set_reg_field(ptr noundef %adapter, i32 noundef %add28, i32 noundef 1, i32 noundef 0) #18
  %info.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 5
  %34 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info.i, align 4
  %caps.i = getelementptr inbounds %struct.adapter_info, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %37, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not = icmp eq i32 %and.i, 0
  br i1 %tobool30.not, label %if.else.if.end34_crit_edge, label %if.then31

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %phy = getelementptr i8, ptr %1, i32 2316
  %ops = getelementptr i8, ptr %1, i32 2336
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %power_down = getelementptr inbounds %struct.cphy_ops, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %power_down to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %power_down, align 4
  %call33 = tail call i32 %41(ptr noundef %phy, i32 noundef 1) #18
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.else.if.end34_crit_edge
  %42 = ptrtoint ptr %offset23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset23, align 4
  %add37 = add i32 %43, 2156
  %44 = ptrtoint ptr %regs.i85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i85, align 4
  %add.ptr.i88 = getelementptr i8, ptr %45, i32 %add37
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #18, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %call39 = tail call i32 @t3_mac_disable(ptr noundef %mac1, i32 noundef 1) #18
  %phy40 = getelementptr i8, ptr %1, i32 2316
  %link_config = getelementptr i8, ptr %1, i32 6096
  %call41 = tail call i32 @t3_link_start(ptr noundef %phy40, ptr noundef %mac1, ptr noundef %link_config) #18
  %47 = ptrtoint ptr %offset23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset23, align 4
  %add.i90 = add i32 %48, 2184
  tail call void @t3_set_reg_field(ptr noundef %adapter, i32 noundef %add.i90, i32 noundef 0, i32 noundef 2097152) #18
  %49 = ptrtoint ptr %offset23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset23, align 4
  %add3.i = add i32 %50, 2060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %51 = ptrtoint ptr %regs.i85 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i85, align 4
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #18, !srcloc !389
  %53 = ptrtoint ptr %offset23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset23, align 4
  %add6.i = add i32 %54, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %55 = ptrtoint ptr %regs.i85 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i85, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %56, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 16777216) #18, !srcloc !389
  %57 = ptrtoint ptr %offset23 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %offset23, align 4
  %add9.i = add i32 %58, 2060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %59 = ptrtoint ptr %regs.i85 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i85, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %60, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 16777216) #18, !srcloc !389
  br label %if.end42

if.end42:                                         ; preds = %if.end34, %if.then6
  %61 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %state.i, align 4
  %63 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.24) #21
  br label %cleanup

if.else.i:                                        ; preds = %if.end42
  %speed.i = getelementptr i8, ptr %1, i32 6106
  %64 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %speed.i, align 2
  %66 = zext i16 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.165)
  switch i16 %65, label %if.else.i.sw.epilog.i_crit_edge [
    i16 10000, label %sw.bb.i
    i16 1000, label %sw.bb2.i
    i16 100, label %sw.bb3.i
  ]

if.else.i.sw.epilog.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %if.else.i.sw.epilog.i_crit_edge
  %s.0.i = phi ptr [ @.str.25, %if.else.i.sw.epilog.i_crit_edge ], [ @.str.28, %sw.bb3.i ], [ @.str.27, %sw.bb2.i ], [ @.str.26, %sw.bb.i ]
  %duplex.i = getelementptr i8, ptr %1, i32 6109
  %67 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %duplex.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp.i = icmp eq i8 %68, 1
  %cond.i = select i1 %cmp.i, ptr @.str.30, ptr @.str.31
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull %s.0.i, ptr noundef nonnull %cond.i) #21
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mac_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_link_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_os_phymod_changed(ptr nocapture noundef readonly %adap, i32 noundef %port_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.adapter, ptr %adap, i32 0, i32 21, i32 %port_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %phy = getelementptr i8, ptr %1, i32 2316
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.5) #21
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i8 %3 to i32
  %arrayidx4 = getelementptr [7 x ptr], ptr @t3_os_phymod_changed.mod_str, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %5) #21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_get_edc_fw(ptr nocapture noundef %phy, i32 noundef %edc_idx, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #18
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !390
  %phy_cache = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %edc_idx)
  %3 = icmp ult i32 %edc_idx, 3
  br i1 %3, label %switch.lookup, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.t3_get_edc_fw, i32 0, i32 %edc_idx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %pdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call2 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %switch.load, ptr noundef %dev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %switch.lookup.do.end_crit_edge, label %if.end6

switch.lookup.do.end_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

do.end:                                           ; preds = %switch.lookup.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.078 = phi i32 [ %call2, %switch.lookup.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ]
  %fw_name.0.i7377 = phi ptr [ %switch.load, %switch.lookup.do.end_crit_edge ], [ null, %entry.do.end_crit_edge ]
  %pdev4 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev4, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.7, ptr noundef %fw_name.0.i7377) #21
  br label %cleanup

if.end6:                                          ; preds = %switch.lookup
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add = add i32 %size, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add)
  %cmp8 = icmp ugt i32 %12, %add
  br i1 %cmp8, label %do.end12, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.13, i32 noundef %12, i32 noundef %add) #21
  br label %if.end17

if.end17:                                         ; preds = %do.end12, %if.end6.if.end17_crit_edge
  %ret.1 = phi i32 [ -22, %do.end12 ], [ %call2, %if.end6.if.end17_crit_edge ]
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp1979.not = icmp ult i32 %20, 4
  br i1 %cmp1979.not, label %if.end17.do.end25_crit_edge, label %for.body.preheader

if.end17.do.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end25

for.body.preheader:                               ; preds = %if.end17
  %div69 = lshr i32 %20, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.081 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %csum.080 = phi i32 [ %add20, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %18, i32 %i.081
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add20 = add i32 %22, %csum.080
  %inc = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, %div69
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add20)
  %cmp21.not = icmp eq i32 %add20, -1
  br i1 %cmp21.not, label %for.end.if.end28_crit_edge, label %for.end.do.end25_crit_edge

for.end.do.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end25

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

do.end25:                                         ; preds = %for.end.do.end25_crit_edge, %if.end17.do.end25_crit_edge
  %csum.0.lcssa88 = phi i32 [ %add20, %for.end.do.end25_crit_edge ], [ 0, %if.end17.do.end25_crit_edge ]
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.16, i32 noundef %csum.0.lcssa88) #21
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %for.end.if.end28_crit_edge
  %ret.2 = phi i32 [ -22, %do.end25 ], [ %ret.1, %for.end.if.end28_crit_edge ]
  %div30 = sdiv i32 %size, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp3182 = icmp sgt i32 %size, 3
  br i1 %cmp3182, label %if.end28.for.body32_crit_edge, label %if.end28.for.end40_crit_edge

if.end28.for.end40_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end40

if.end28.for.body32_crit_edge:                    ; preds = %if.end28
  br label %for.body32

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %if.end28.for.body32_crit_edge
  %i.184 = phi i32 [ %inc39, %for.body32.for.body32_crit_edge ], [ 0, %if.end28.for.body32_crit_edge ]
  %cache.083 = phi ptr [ %incdec.ptr37, %for.body32.for.body32_crit_edge ], [ %phy_cache, %if.end28.for.body32_crit_edge ]
  %arrayidx33 = getelementptr i32, ptr %18, i32 %i.184
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx33, align 4
  %shr = lshr i32 %26, 16
  %conv = trunc i32 %shr to i16
  %incdec.ptr = getelementptr i16, ptr %cache.083, i32 1
  %27 = ptrtoint ptr %cache.083 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv, ptr %cache.083, align 2
  %28 = load i32, ptr %arrayidx33, align 4
  %conv36 = trunc i32 %28 to i16
  %incdec.ptr37 = getelementptr i16, ptr %cache.083, i32 2
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv36, ptr %incdec.ptr, align 2
  %inc39 = add nuw nsw i32 %i.184, 1
  %exitcond85.not = icmp eq i32 %inc39, %div30
  br i1 %exitcond85.not, label %for.body32.for.end40_crit_edge, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body32

for.body32.for.end40_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end40

for.end40:                                        ; preds = %for.body32.for.end40_crit_edge, %if.end28.for.end40_crit_edge
  %30 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %31) #18
  br label %cleanup

cleanup:                                          ; preds = %for.end40, %do.end
  %retval.0 = phi i32 [ %ret.078, %do.end ], [ %ret.2, %for.end40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_os_ext_intr_handler(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %work_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #18
  %slow_intr_mask = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 11
  %0 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slow_intr_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %and = and i32 %1, -8388609
  %2 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %slow_intr_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %3 = tail call i32 @llvm.bswap.i32(i32 %and) #18
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #18, !srcloc !389
  %6 = load ptr, ptr @cxgb3_wq, align 4
  %ext_intr_handler_task = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 24
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %ext_intr_handler_task) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_os_link_fault_handler(ptr noundef %adapter, i32 noundef %port_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %port_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %work_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #18
  %link_fault = getelementptr i8, ptr %1, i32 6148
  %2 = ptrtoint ptr %link_fault to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %link_fault, align 4
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_fatal_err(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %fw_status = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fw_status) #18
  %0 = getelementptr inbounds [4 x i32], ptr %fw_status, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %fw_status, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %fw_status, i32 0, i32 3
  %flags = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %3 = call ptr @memset(ptr %fw_status, i32 255, i32 16)
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @t3_sge_stop_dma(ptr noundef %adapter) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #18, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %9, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 0) #18, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %11, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 0) #18, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %13, i32 2572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 0) #18, !srcloc !389
  %work_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #18
  tail call void @t3_intr_disable(ptr noundef %adapter) #18
  %14 = load ptr, ptr @cxgb3_wq, align 4
  %fatal_error_handler_task = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 25
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %fatal_error_handler_task) #18
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.18) #21
  %call2 = call i32 @t3_cim_ctl_blk_read(ptr noundef %adapter, i32 noundef 160, i32 noundef 4, ptr noundef nonnull %fw_status) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end7, label %do.end.if.end13_crit_edge

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %fw_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_status, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %0, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev9, ptr noundef nonnull @.str.22, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #21
  br label %if.end13

if.end13:                                         ; preds = %do.end7, %do.end.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fw_status) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_sge_stop_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_intr_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_cim_ctl_blk_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cxgb3_cleanup_module() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @pci_unregister_driver(ptr noundef nonnull @driver) #18
  %0 = load ptr, ptr @cxgb3_wq, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @destroy_workqueue(ptr noundef nonnull %0) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb3_init_module() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cxgb3_offload_init() #18
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @driver, ptr noundef null, ptr noundef nonnull @.str.35) #18
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #0 align 64 {
entry:
  %buf.i = alloca [80 x i8], align 1
  %entries.i = alloca [9 x %struct.msix_entry], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cxgb3_wq, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.36, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.35) #18
  store ptr %call, ptr @cxgb3_wq, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.end, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #21
  br label %cleanup293

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call i32 @pci_enable_device(ptr noundef %pdev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #21
  br label %cleanup293

if.end11:                                         ; preds = %if.end4
  %call12 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.35) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.43) #21
  br label %out_disable_device

if.end19:                                         ; preds = %if.end11
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev20, i64 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.47) #21
  br label %out_release_regions

if.end28:                                         ; preds = %if.end19
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev20, i64 noundef -1) #18
  tail call void @pci_set_master(ptr noundef %pdev) #18
  %call29 = tail call i32 @pci_save_state(ptr noundef %pdev) #18
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %1 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %sub = sub i32 1, %2
  %add = add i32 %sub, %4
  %cond = select i1 %cmp, i32 0, i32 %add
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %call38 = tail call ptr @t3_get_adapter_info(i32 noundef %6) #18
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 13184, i32 noundef 3520, i32 noundef 2) #22
  %tobool40.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool40.not, label %if.end28.out_release_regions_crit_edge, label %if.end42

if.end28.out_release_regions_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_release_regions

if.end42:                                         ; preds = %if.end28
  %call.i449 = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %nofail_skb = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 34
  %7 = ptrtoint ptr %nofail_skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i449, ptr %nofail_skb, align 4
  %tobool45.not = icmp eq ptr %call.i449, null
  br i1 %tobool45.not, label %do.end49, label %if.end51

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.50) #21
  br label %out_free_adapter

if.end51:                                         ; preds = %if.end42
  %call52 = tail call ptr @ioremap(i32 noundef %2, i32 noundef %cond) #18
  %regs = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call52, ptr %regs, align 4
  %tobool54.not = icmp eq ptr %call52, null
  br i1 %tobool54.not, label %do.end58, label %if.end60

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.53) #21
  br label %out_free_adapter_nofail

if.end60:                                         ; preds = %if.end51
  %pdev61 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pdev61 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdev, ptr %pdev61, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end60.pci_name.exit_crit_edge

if.end60.pci_name.exit_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev20, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end60.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.end60.pci_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i.i, ptr %name, align 8
  %15 = load i32, ptr @dflt_msg_enable, align 4
  %msg_enable = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %msg_enable, align 4
  %mmio_len63 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 9
  %17 = ptrtoint ptr %mmio_len63 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %mmio_len63, align 16
  %mdio_lock = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 31
  tail call void @__mutex_init(ptr noundef %mdio_lock, ptr noundef nonnull @.str.55, ptr noundef nonnull @init_one.__key) #18
  %work_lock = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 33
  tail call void @__raw_spin_lock_init(ptr noundef %work_lock, ptr noundef nonnull @.str.57, ptr noundef nonnull @init_one.__key.56, i16 noundef signext 3) #18
  %stats_lock = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 32
  tail call void @__raw_spin_lock_init(ptr noundef %stats_lock, ptr noundef nonnull @.str.59, ptr noundef nonnull @init_one.__key.58, i16 noundef signext 3) #18
  %adapter_list = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %adapter_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %adapter_list, ptr %adapter_list, align 4
  %prev.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %adapter_list, ptr %prev.i, align 16
  %ext_intr_handler_task = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 24
  tail call void @__init_work(ptr noundef %ext_intr_handler_task, i32 noundef 0) #18
  %20 = ptrtoint ptr %ext_intr_handler_task to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %ext_intr_handler_task, align 4
  %lockdep_map = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 24, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.61, ptr noundef nonnull @init_one.__key.60, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry79 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 24, i32 1
  %21 = ptrtoint ptr %entry79 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry79, ptr %entry79, align 8
  %prev.i450 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 24, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i450 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry79, ptr %prev.i450, align 4
  %func = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 24, i32 2
  %23 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ext_intr_task, ptr %func, align 16
  %fatal_error_handler_task = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 25
  tail call void @__init_work(ptr noundef %fatal_error_handler_task, i32 noundef 0) #18
  %24 = ptrtoint ptr %fatal_error_handler_task to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %fatal_error_handler_task, align 16
  %lockdep_map89 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 25, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map89, ptr noundef nonnull @.str.63, ptr noundef nonnull @init_one.__key.62, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry91 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 25, i32 1
  %25 = ptrtoint ptr %entry91 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry91, ptr %entry91, align 4
  %prev.i451 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 25, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i451 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry91, ptr %prev.i451, align 8
  %func93 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 25, i32 2
  %27 = ptrtoint ptr %func93 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @fatal_error_task, ptr %func93, align 4
  %db_full_task = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 27
  tail call void @__init_work(ptr noundef %db_full_task, i32 noundef 0) #18
  %28 = ptrtoint ptr %db_full_task to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %db_full_task, align 8
  %lockdep_map102 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 27, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map102, ptr noundef nonnull @.str.65, ptr noundef nonnull @init_one.__key.64, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry104 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 27, i32 1
  %29 = ptrtoint ptr %entry104 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry104, ptr %entry104, align 4
  %prev.i452 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 27, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i452 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry104, ptr %prev.i452, align 16
  %func106 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 27, i32 2
  %31 = ptrtoint ptr %func106 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @db_full_task, ptr %func106, align 4
  %db_empty_task = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 28
  tail call void @__init_work(ptr noundef %db_empty_task, i32 noundef 0) #18
  %32 = ptrtoint ptr %db_empty_task to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %db_empty_task, align 4
  %lockdep_map115 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 28, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map115, ptr noundef nonnull @.str.67, ptr noundef nonnull @init_one.__key.66, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry117 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 28, i32 1
  %33 = ptrtoint ptr %entry117 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry117, ptr %entry117, align 8
  %prev.i453 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 28, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i453 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry117, ptr %prev.i453, align 4
  %func119 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 28, i32 2
  %35 = ptrtoint ptr %func119 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @db_empty_task, ptr %func119, align 64
  %db_drop_task = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 29
  tail call void @__init_work(ptr noundef %db_drop_task, i32 noundef 0) #18
  %36 = ptrtoint ptr %db_drop_task to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %db_drop_task, align 32
  %lockdep_map128 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 29, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map128, ptr noundef nonnull @.str.69, ptr noundef nonnull @init_one.__key.68, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry130 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 29, i32 1
  %37 = ptrtoint ptr %entry130 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry130, ptr %entry130, align 4
  %prev.i454 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 29, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i454 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry130, ptr %prev.i454, align 8
  %func132 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 29, i32 2
  %39 = ptrtoint ptr %func132 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @db_drop_task, ptr %func132, align 4
  %adap_check_task = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 23
  tail call void @__init_work(ptr noundef %adap_check_task, i32 noundef 0) #18
  %40 = ptrtoint ptr %adap_check_task to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %adap_check_task, align 32
  %lockdep_map144 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 23, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map144, ptr noundef nonnull @.str.71, ptr noundef nonnull @init_one.__key.70, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry147 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 23, i32 0, i32 1
  %41 = ptrtoint ptr %entry147 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry147, ptr %entry147, align 4
  %prev.i455 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 23, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i455 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry147, ptr %prev.i455, align 8
  %func150 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 23, i32 0, i32 2
  %43 = ptrtoint ptr %func150 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @t3_adap_check_task, ptr %func150, align 4
  %timer = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 23, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.73, ptr noundef nonnull @init_one.__key.72) #18
  %nports1 = getelementptr inbounds %struct.adapter_info, ptr %call38, i32 0, i32 1
  %44 = ptrtoint ptr %call38 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %call38, align 4
  %conv487 = zext i8 %45 to i32
  %46 = ptrtoint ptr %nports1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %nports1, align 1
  %conv159488 = zext i8 %47 to i32
  %add160489 = sub nsw i32 0, %conv487
  call void @__sanitizer_cov_trace_cmp4(i32 %conv159488, i32 %add160489)
  %cmp161490.not = icmp eq i32 %conv159488, %add160489
  br i1 %cmp161490.not, label %pci_name.exit.for.end_crit_edge, label %for.body.lr.ph

pci_name.exit.for.end_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %pci_name.exit
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %add174 = add i32 %2, -1
  %sub175 = add i32 %add174, %cond
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0491 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call163 = tail call ptr @alloc_etherdev_mqs(i32 noundef 3848, i32 noundef 8, i32 noundef 8) #18
  %tobool164.not = icmp eq ptr %call163, null
  br i1 %tobool164.not, label %for.body.out_free_dev_crit_edge, label %for.inc

for.body.out_free_dev_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free_dev

for.inc:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.net_device, ptr %call163, i32 0, i32 133, i32 1
  %48 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev20, ptr %parent, align 8
  %arrayidx169 = getelementptr %struct.adapter, ptr %call1.i.i.i, i32 0, i32 21, i32 %i.0491
  %49 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call163, ptr %arrayidx169, align 4
  %add.ptr.i456 = getelementptr i8, ptr %call163, i32 2304
  %50 = ptrtoint ptr %add.ptr.i456 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call1.i.i.i, ptr %add.ptr.i456, align 8
  %conv172 = trunc i32 %i.0491 to i8
  %port_id = getelementptr i8, ptr %call163, i32 2312
  %51 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv172, ptr %port_id, align 8
  tail call void @netif_carrier_off(ptr noundef nonnull %call163) #18
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  %irq173 = getelementptr inbounds %struct.net_device, ptr %call163, i32 0, i32 64
  %54 = ptrtoint ptr %irq173 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %irq173, align 4
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call163, i32 0, i32 4
  %55 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %2, ptr %mem_start, align 4
  %mem_end = getelementptr inbounds %struct.net_device, ptr %call163, i32 0, i32 3
  %56 = ptrtoint ptr %mem_end to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub175, ptr %mem_end, align 8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call163, i32 0, i32 24
  %57 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1099511693571, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call163, i32 0, i32 23
  %58 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %features, align 16
  %or177 = and i64 %59, 1310768
  %and = or i64 %or177, 65539
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call163, i32 0, i32 26
  %60 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %vlan_features, align 8
  %or179 = or i64 %61, %and
  store i64 %or179, ptr %vlan_features, align 8
  %or181 = or i64 %59, 1099511693731
  store i64 %or181, ptr %features, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call163, i32 0, i32 16
  %62 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @cxgb_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call163, i32 0, i32 44
  %63 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @cxgb_ethtool_ops, ptr %ethtool_ops, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call163, i32 0, i32 30
  %64 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 81, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call163, i32 0, i32 31
  %65 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 65535, ptr %max_mtu, align 4
  %66 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %port_id, align 8
  %conv183 = zext i8 %67 to i16
  %dev_port = getelementptr inbounds %struct.net_device, ptr %call163, i32 0, i32 61
  %68 = ptrtoint ptr %dev_port to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv183, ptr %dev_port, align 4
  %inc = add nuw nsw i32 %i.0491, 1
  %69 = ptrtoint ptr %call38 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %call38, align 4
  %conv = zext i8 %70 to i32
  %71 = ptrtoint ptr %nports1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %nports1, align 1
  %conv159 = zext i8 %72 to i32
  %add160 = add nuw nsw i32 %conv159, %conv
  %cmp161 = icmp ult i32 %inc, %add160
  br i1 %cmp161, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %pci_name.exit.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %73 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  %call184 = tail call i32 @t3_prep_adapter(ptr noundef nonnull %call1.i.i.i, ptr noundef %call38, i32 noundef 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %cmp185 = icmp slt i32 %call184, 0
  br i1 %cmp185, label %for.end.out_free_dev_crit_edge, label %for.cond189.preheader

for.end.out_free_dev_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free_dev

for.cond189.preheader:                            ; preds = %for.end
  %nports = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 10, i32 9
  %74 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp190492.not = icmp eq i32 %75, 0
  br i1 %cmp190492.not, label %for.cond189.preheader.for.end217_crit_edge, label %for.body192.lr.ph

for.cond189.preheader.for.end217_crit_edge:       ; preds = %for.cond189.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end217

for.body192.lr.ph:                                ; preds = %for.cond189.preheader
  %registered_device_map = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 4
  br label %for.body192

for.body192:                                      ; preds = %for.inc215.for.body192_crit_edge, %for.body192.lr.ph
  %i.1493 = phi i32 [ 0, %for.body192.lr.ph ], [ %inc216, %for.inc215.for.body192_crit_edge ]
  %arrayidx194 = getelementptr %struct.adapter, ptr %call1.i.i.i, i32 0, i32 21, i32 %i.1493
  %76 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx194, align 4
  %call195 = tail call i32 @register_netdev(ptr noundef %77) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.else, label %do.end200

do.end200:                                        ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #20
  %78 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx194, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev20, ptr noundef nonnull @.str.75, ptr noundef %79) #21
  br label %for.inc215

if.else:                                          ; preds = %for.body192
  %80 = ptrtoint ptr %registered_device_map to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %registered_device_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool205.not = icmp eq i32 %81, 0
  br i1 %tobool205.not, label %if.then206, label %if.else.if.end212_crit_edge

if.else.if.end212_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end212

if.then206:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %82 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx194, align 4
  %84 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %name, align 8
  br label %if.end212

if.end212:                                        ; preds = %if.then206, %if.else.if.end212_crit_edge
  %rem.i = and i32 %i.1493, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %i.1493, 5
  %add.ptr.i = getelementptr i32, ptr %registered_device_map, i32 %div2.i
  %85 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %86, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %for.inc215

for.inc215:                                       ; preds = %if.end212, %do.end200
  %inc216 = add nuw i32 %i.1493, 1
  %87 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nports, align 4
  %cmp190 = icmp ult i32 %inc216, %88
  br i1 %cmp190, label %for.inc215.for.body192_crit_edge, label %for.inc215.for.end217_crit_edge

for.inc215.for.end217_crit_edge:                  ; preds = %for.inc215
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end217

for.inc215.for.body192_crit_edge:                 ; preds = %for.inc215
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body192

for.end217:                                       ; preds = %for.inc215.for.end217_crit_edge, %for.cond189.preheader.for.end217_crit_edge
  %err.2.lcssa = phi i32 [ 0, %for.cond189.preheader.for.end217_crit_edge ], [ %call195, %for.inc215.for.end217_crit_edge ]
  %registered_device_map218 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 4
  %89 = ptrtoint ptr %registered_device_map218 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %registered_device_map218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool219.not = icmp eq i32 %90, 0
  br i1 %tobool219.not, label %do.end223, label %for.cond226.preheader

for.cond226.preheader:                            ; preds = %for.end217
  %91 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp229495.not = icmp eq i32 %92, 0
  br i1 %cmp229495.not, label %for.cond226.preheader.for.end236_crit_edge, label %for.cond226.preheader.for.body231_crit_edge

for.cond226.preheader.for.body231_crit_edge:      ; preds = %for.cond226.preheader
  br label %for.body231

for.cond226.preheader.for.end236_crit_edge:       ; preds = %for.cond226.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end236

do.end223:                                        ; preds = %for.end217
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.79) #21
  br label %out_free_dev

for.body231:                                      ; preds = %for.body231.for.body231_crit_edge, %for.cond226.preheader.for.body231_crit_edge
  %i.2496 = phi i32 [ %inc235, %for.body231.for.body231_crit_edge ], [ 0, %for.cond226.preheader.for.body231_crit_edge ]
  %arrayidx233 = getelementptr %struct.adapter, ptr %call1.i.i.i, i32 0, i32 21, i32 %i.2496
  %93 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx233, align 4
  %iscsic.i = getelementptr i8, ptr %94, i32 6128
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %94, i32 0, i32 86
  %95 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev_addr.i, align 64
  %97 = call ptr @memcpy(ptr %iscsic.i, ptr %96, i32 6)
  %arrayidx.i = getelementptr i8, ptr %94, i32 6131
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i, align 1
  %100 = or i8 %99, -128
  store i8 %100, ptr %arrayidx.i, align 1
  %inc235 = add nuw i32 %i.2496, 1
  %101 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nports, align 4
  %cmp229 = icmp ult i32 %inc235, %102
  br i1 %cmp229, label %for.body231.for.body231_crit_edge, label %for.body231.for.end236_crit_edge

for.body231.for.end236_crit_edge:                 ; preds = %for.body231
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end236

for.body231.for.body231_crit_edge:                ; preds = %for.body231
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body231

for.end236:                                       ; preds = %for.body231.for.end236_crit_edge, %for.cond226.preheader.for.end236_crit_edge
  tail call void @t3_led_ready(ptr noundef %call1.i.i.i) #18
  %offload.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 10, i32 14
  %103 = ptrtoint ptr %offload.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %offload.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool238.not = icmp eq i32 %104, 0
  br i1 %tobool238.not, label %for.end236.if.end241_crit_edge, label %if.then239

for.end236.if.end241_crit_edge:                   ; preds = %for.end236
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end241

if.then239:                                       ; preds = %for.end236
  call void @__sanitizer_cov_trace_pc() #20
  %105 = ptrtoint ptr %registered_device_map218 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %registered_device_map218, align 4
  %or.i448 = or i32 %106, 32768
  store i32 %or.i448, ptr %registered_device_map218, align 4
  tail call void @cxgb3_adapter_ofld(ptr noundef %call1.i.i.i) #18
  br label %if.end241

if.end241:                                        ; preds = %if.then239, %for.end236.if.end241_crit_edge
  %107 = load i32, ptr @msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp242 = icmp sgt i32 %107, 1
  br i1 %cmp242, label %land.lhs.true, label %if.end241.if.else249_crit_edge

if.end241.if.else249_crit_edge:                   ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else249

land.lhs.true:                                    ; preds = %if.end241
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %entries.i) #18
  %108 = call ptr @memset(ptr %entries.i, i32 255, i32 72)
  %entry1.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 0, i32 1
  %109 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %entry1.i, align 4
  %entry1.1.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 1, i32 1
  %110 = ptrtoint ptr %entry1.1.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 1, ptr %entry1.1.i, align 4
  %entry1.2.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 2, i32 1
  %111 = ptrtoint ptr %entry1.2.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 2, ptr %entry1.2.i, align 4
  %entry1.3.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 3, i32 1
  %112 = ptrtoint ptr %entry1.3.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 3, ptr %entry1.3.i, align 4
  %entry1.4.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 4, i32 1
  %113 = ptrtoint ptr %entry1.4.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 4, ptr %entry1.4.i, align 4
  %entry1.5.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 5, i32 1
  %114 = ptrtoint ptr %entry1.5.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 5, ptr %entry1.5.i, align 4
  %entry1.6.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 6, i32 1
  %115 = ptrtoint ptr %entry1.6.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 6, ptr %entry1.6.i, align 4
  %entry1.7.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 7, i32 1
  %116 = ptrtoint ptr %entry1.7.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 7, ptr %entry1.7.i, align 4
  %entry1.8.i = getelementptr inbounds [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 8, i32 1
  %117 = ptrtoint ptr %entry1.8.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 8, ptr %entry1.8.i, align 4
  %118 = ptrtoint ptr %pdev61 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pdev61, align 8
  %120 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %nports, align 4
  %add.i = add i32 %121, 1
  %call.i457 = call i32 @pci_enable_msix_range(ptr noundef %119, ptr noundef nonnull %entries.i, i32 noundef %add.i, i32 noundef 9) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i457)
  %cmp2.i = icmp slt i32 %call.i457, 0
  br i1 %cmp2.i, label %cxgb_enable_msix.exit, label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i457)
  %cmp532.not.i = icmp eq i32 %call.i457, 0
  br i1 %cmp532.not.i, label %for.cond4.preheader.i.if.then247_crit_edge, label %for.cond4.preheader.i.for.body7.i_crit_edge

for.cond4.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body7.i

for.cond4.preheader.i.if.then247_crit_edge:       ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then247

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.cond4.preheader.i.for.body7.i_crit_edge
  %i.133.i = phi i32 [ %inc12.i, %for.body7.i.for.body7.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body7.i_crit_edge ]
  %arrayidx8.i = getelementptr [9 x %struct.msix_entry], ptr %entries.i, i32 0, i32 %i.133.i
  %122 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx8.i, align 4
  %conv9.i = trunc i32 %123 to i16
  %arrayidx10.i = getelementptr %struct.adapter, ptr %call1.i.i.i, i32 0, i32 14, i32 %i.133.i
  %124 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv9.i, ptr %arrayidx10.i, align 8
  %inc12.i = add nuw nsw i32 %i.133.i, 1
  %exitcond.not.i = icmp eq i32 %inc12.i, %call.i457
  br i1 %exitcond.not.i, label %for.body7.i.if.then247_crit_edge, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body7.i

for.body7.i.if.then247_crit_edge:                 ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then247

cxgb_enable_msix.exit:                            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %entries.i) #18
  %.pr = load i32, ptr @msi, align 4
  br label %if.else249

if.then247:                                       ; preds = %for.body7.i.if.then247_crit_edge, %for.cond4.preheader.i.if.then247_crit_edge
  %msix_nvectors.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 13
  %125 = ptrtoint ptr %msix_nvectors.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %call.i457, ptr %msix_nvectors.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %entries.i) #18
  br label %if.end260.sink.split

if.else249:                                       ; preds = %cxgb_enable_msix.exit, %if.end241.if.else249_crit_edge
  %126 = phi i32 [ %.pr, %cxgb_enable_msix.exit ], [ %107, %if.end241.if.else249_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp250 = icmp sgt i32 %126, 0
  br i1 %cmp250, label %land.lhs.true252, label %if.else249.if.end260_crit_edge

if.else249.if.end260_crit_edge:                   ; preds = %if.else249
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end260

land.lhs.true252:                                 ; preds = %if.else249
  %call253 = call i32 @pci_enable_msi(ptr noundef %pdev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %cmp254 = icmp eq i32 %call253, 0
  br i1 %cmp254, label %land.lhs.true252.if.end260.sink.split_crit_edge, label %land.lhs.true252.if.end260_crit_edge

land.lhs.true252.if.end260_crit_edge:             ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end260

land.lhs.true252.if.end260.sink.split_crit_edge:  ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end260.sink.split

if.end260.sink.split:                             ; preds = %land.lhs.true252.if.end260.sink.split_crit_edge, %if.then247
  %.sink500 = phi i32 [ 4, %if.then247 ], [ 2, %land.lhs.true252.if.end260.sink.split_crit_edge ]
  %flags = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 6
  %127 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags, align 4
  %or258 = or i32 %128, %.sink500
  store i32 %or258, ptr %flags, align 4
  br label %if.end260

if.end260:                                        ; preds = %if.end260.sink.split, %land.lhs.true252.if.end260_crit_edge, %if.else249.if.end260_crit_edge
  %call.i458 = call i32 @netif_get_num_default_rss_queues() #18
  %129 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nports, align 4
  %msix_nvectors.i460 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 13
  %131 = ptrtoint ptr %msix_nvectors.i460 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %msix_nvectors.i460, align 4
  %sub.i = add i32 %132, -1
  %rev.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 10, i32 13
  %133 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp.not.i = icmp eq i32 %134, 0
  br i1 %cmp.not.i, label %if.end260.if.end16.i_crit_edge, label %land.lhs.true.i

if.end260.if.end16.i_crit_edge:                   ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end260
  %flags.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 6
  %135 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %136, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end16.i_crit_edge, label %if.then.i462

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i

if.then.i462:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %130)
  %cmp2.i461 = icmp eq i32 %130, 2
  br i1 %cmp2.i461, label %land.lhs.true3.i, label %if.then.i462.if.end.i_crit_edge

if.then.i462.if.end.i_crit_edge:                  ; preds = %if.then.i462
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.lhs.true3.i:                                 ; preds = %if.then.i462
  call void @__sanitizer_cov_trace_pc() #20
  %mul.i = shl i32 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %mul.i)
  %cmp4.i = icmp slt i32 %mul.i, 9
  %div.i = sdiv i32 %sub.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i458, i32 %div.i)
  %cmp5.not.i = icmp slt i32 %call.i458, %div.i
  %or.cond.i = select i1 %cmp4.i, i1 %cmp5.not.i, i1 false
  %spec.select50.i = select i1 %or.cond.i, i32 %sub.i, i32 %div.i
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true3.i, %if.then.i462.if.end.i_crit_edge
  %nqsets.0.i = phi i32 [ %sub.i, %if.then.i462.if.end.i_crit_edge ], [ %spec.select50.i, %land.lhs.true3.i ]
  %137 = call i32 @llvm.smin.i32(i32 %nqsets.0.i, i32 %call.i458) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp11.i = icmp slt i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %130)
  %cmp13.i = icmp eq i32 %130, 4
  %or.cond49.i = select i1 %cmp11.i, i1 true, i1 %cmp13.i
  %spec.select51.i = select i1 %or.cond49.i, i32 1, i32 %137
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i, %land.lhs.true.i.if.end16.i_crit_edge, %if.end260.if.end16.i_crit_edge
  %nqsets.2.i = phi i32 [ 1, %land.lhs.true.i.if.end16.i_crit_edge ], [ 1, %if.end260.if.end16.i_crit_edge ], [ %spec.select51.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp1952.not.i = icmp eq i32 %130, 0
  br i1 %cmp1952.not.i, label %if.end16.i.set_nqsets.exit_crit_edge, label %for.body.lr.ph.i

if.end16.i.set_nqsets.exit_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_nqsets.exit

for.body.lr.ph.i:                                 ; preds = %if.end16.i
  %conv21.i = trunc i32 %nqsets.2.i to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.054.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %j.053.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i464, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %call1.i.i.i, i32 0, i32 21, i32 %i.054.i
  %138 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i.i, align 4
  %conv.i = trunc i32 %j.053.i to i8
  %first_qset.i = getelementptr i8, ptr %139, i32 2314
  %140 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv.i, ptr %first_qset.i, align 2
  %nqsets22.i = getelementptr i8, ptr %139, i32 2313
  %141 = ptrtoint ptr %nqsets22.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv21.i, ptr %nqsets22.i, align 1
  %conv24.i = and i32 %j.053.i, 255
  %add.i464 = add i32 %conv24.i, %nqsets.2.i
  %142 = ptrtoint ptr %pdev61 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev61, align 8
  %dev.i465 = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i465, ptr noundef nonnull @.str.143, i32 noundef %i.054.i, i32 noundef %nqsets.2.i) #21
  %inc.i = add nuw i32 %i.054.i, 1
  %144 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %nports, align 4
  %cmp19.i = icmp ult i32 %inc.i, %145
  br i1 %cmp19.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.set_nqsets.exit_crit_edge

for.body.i.set_nqsets.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_nqsets.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

set_nqsets.exit:                                  ; preds = %for.body.i.set_nqsets.exit_crit_edge, %if.end16.i.set_nqsets.exit_crit_edge
  %port261 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 21
  %146 = ptrtoint ptr %port261 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %port261, align 4
  %dev263 = getelementptr inbounds %struct.net_device, ptr %147, i32 0, i32 133
  %call264 = call i32 @sysfs_create_group(ptr noundef %dev263, ptr noundef nonnull @cxgb3_attr_group) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %if.end271, label %do.end269

do.end269:                                        ; preds = %set_nqsets.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.82) #21
  call void @t3_set_reg_field(ptr noundef %call1.i.i.i, i32 noundef 208, i32 noundef 1, i32 noundef 0) #18
  br label %out_free_dev

if.end271:                                        ; preds = %set_nqsets.exit
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf.i) #18
  %148 = call ptr @memset(ptr %buf.i, i32 255, i32 80)
  %variant.i.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 10, i32 4, i32 3
  %149 = ptrtoint ptr %variant.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %variant.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %150)
  %cmp.i.not.i = icmp eq i8 %150, 4
  br i1 %cmp.i.not.i, label %if.then.i467, label %if.else.i

if.then.i467:                                     ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #20
  %width.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 10, i32 4, i32 2
  %151 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %width.i, align 2
  %conv.i466 = zext i8 %152 to i32
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 80, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.153, i32 noundef %conv.i466) #18
  br label %if.end.i469

if.else.i:                                        ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #20
  %idxprom8.i = zext i8 %150 to i32
  %arrayidx9.i = getelementptr [5 x ptr], ptr @print_port_info.pci_variant, i32 0, i32 %idxprom8.i
  %153 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx9.i, align 4
  %speed.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 10, i32 4, i32 1
  %155 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %speed.i, align 4
  %conv12.i = zext i16 %156 to i32
  %width15.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 10, i32 4, i32 2
  %157 = ptrtoint ptr %width15.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %width15.i, align 2
  %conv16.i = zext i8 %158 to i32
  %call17.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 80, ptr noundef nonnull @.str.155, ptr noundef %154, i32 noundef %conv12.i, i32 noundef %conv16.i) #18
  br label %if.end.i469

if.end.i469:                                      ; preds = %if.else.i, %if.then.i467
  %159 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp82.not.i = icmp eq i32 %160, 0
  br i1 %cmp82.not.i, label %if.end.i469.print_port_info.exit_crit_edge, label %for.body.lr.ph.i472

if.end.i469.print_port_info.exit_crit_edge:       ; preds = %if.end.i469
  call void @__sanitizer_cov_trace_pc() #20
  br label %print_port_info.exit

for.body.lr.ph.i472:                              ; preds = %if.end.i469
  %desc.i = getelementptr inbounds %struct.adapter_info, ptr %call38, i32 0, i32 7
  %flags.i471 = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 6
  %mclk.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 10, i32 3, i32 1
  %size.i.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 19, i32 1
  %size.i80.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 18, i32 1
  %size.i81.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 17, i32 1
  %sn.i = getelementptr inbounds %struct.adapter, ptr %call1.i.i.i, i32 0, i32 10, i32 3, i32 5
  br label %for.body.i474

for.body.i474:                                    ; preds = %cleanup.i.for.body.i474_crit_edge, %for.body.lr.ph.i472
  %i.083.i = phi i32 [ 0, %for.body.lr.ph.i472 ], [ %inc.i477, %cleanup.i.for.body.i474_crit_edge ]
  %arrayidx20.i = getelementptr %struct.adapter, ptr %call1.i.i.i, i32 0, i32 21, i32 %i.083.i
  %161 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx20.i, align 4
  %div3.i.i = lshr i32 %i.083.i, 5
  %arrayidx.i.i473 = getelementptr i32, ptr %registered_device_map218, i32 %div3.i.i
  %163 = ptrtoint ptr %arrayidx.i.i473 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %arrayidx.i.i473, align 4
  %and.i.i = and i32 %i.083.i, 31
  %165 = shl nuw i32 1, %and.i.i
  %166 = and i32 %164, %165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool23.not.i = icmp eq i32 %166, 0
  br i1 %tobool23.not.i, label %for.body.i474.cleanup.i_crit_edge, label %if.end25.i

for.body.i474.cleanup.i_crit_edge:                ; preds = %for.body.i474
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.end25.i:                                       ; preds = %for.body.i474
  %167 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %desc.i, align 4
  %desc26.i = getelementptr i8, ptr %162, i32 2328
  %169 = ptrtoint ptr %desc26.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %desc26.i, align 4
  %171 = ptrtoint ptr %offload.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %offload.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool28.not.i = icmp eq i32 %172, 0
  %cond.i = select i1 %tobool28.not.i, ptr @.str.158, ptr @.str.157
  %173 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rev.i, align 4
  %175 = ptrtoint ptr %flags.i471 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flags.i471, align 4
  %and.i475 = and i32 %176, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i475)
  %tobool31.not.i = icmp eq i32 %and.i475, 0
  %and33.i = and i32 %176, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  %cond35.i = select i1 %tobool34.not.i, ptr @.str.158, ptr @.str.160
  %cond36.i = select i1 %tobool31.not.i, ptr %cond35.i, ptr @.str.159
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %162, ptr noundef nonnull @.str.156, ptr noundef %168, ptr noundef %170, ptr noundef nonnull %cond.i, i32 noundef %174, ptr noundef nonnull %buf.i, ptr noundef nonnull %cond36.i) #21
  %177 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %name, align 8
  %cmp39.i = icmp eq ptr %178, %162
  br i1 %cmp39.i, label %land.lhs.true.i476, label %if.end25.i.cleanup.i_crit_edge

if.end25.i.cleanup.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

land.lhs.true.i476:                               ; preds = %if.end25.i
  %179 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %mclk.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool42.not.i = icmp eq i32 %180, 0
  br i1 %tobool42.not.i, label %land.lhs.true.i476.cleanup.i_crit_edge, label %do.end.i

land.lhs.true.i476.cleanup.i_crit_edge:           ; preds = %land.lhs.true.i476
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

do.end.i:                                         ; preds = %land.lhs.true.i476
  call void @__sanitizer_cov_trace_pc() #20
  %181 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %size.i.i, align 4
  %shr.i = lshr i32 %182, 20
  %183 = ptrtoint ptr %size.i80.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %size.i80.i, align 8
  %shr47.i = lshr i32 %184, 20
  %185 = ptrtoint ptr %size.i81.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %size.i81.i, align 4
  %shr49.i = lshr i32 %186, 20
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %162, i32 noundef %shr.i, i32 noundef %shr47.i, i32 noundef %shr49.i, ptr noundef %sn.i) #21
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i, %land.lhs.true.i476.cleanup.i_crit_edge, %if.end25.i.cleanup.i_crit_edge, %for.body.i474.cleanup.i_crit_edge
  %inc.i477 = add nuw i32 %i.083.i, 1
  %187 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %nports, align 4
  %cmp.i478 = icmp ult i32 %inc.i477, %188
  br i1 %cmp.i478, label %cleanup.i.for.body.i474_crit_edge, label %cleanup.i.print_port_info.exit_crit_edge

cleanup.i.print_port_info.exit_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %print_port_info.exit

cleanup.i.for.body.i474_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i474

print_port_info.exit:                             ; preds = %cleanup.i.print_port_info.exit_crit_edge, %if.end.i469.print_port_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf.i) #18
  br label %cleanup293

out_free_dev:                                     ; preds = %do.end269, %do.end223, %for.end.out_free_dev_crit_edge, %for.body.out_free_dev_crit_edge
  %err.3 = phi i32 [ %call264, %do.end269 ], [ %err.2.lcssa, %do.end223 ], [ -19, %for.end.out_free_dev_crit_edge ], [ -12, %for.body.out_free_dev_crit_edge ]
  %189 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regs, align 4
  call void @iounmap(ptr noundef %190) #18
  %191 = ptrtoint ptr %call38 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %call38, align 4
  %conv274 = zext i8 %192 to i32
  %193 = ptrtoint ptr %nports1 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %nports1, align 1
  %conv276 = zext i8 %194 to i32
  %add277 = add nuw nsw i32 %conv276, %conv274
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add277)
  %cmp280498.not = icmp eq i32 %add277, 0
  br i1 %cmp280498.not, label %out_free_dev.out_free_adapter_nofail_crit_edge, label %for.body282.preheader

out_free_dev.out_free_adapter_nofail_crit_edge:   ; preds = %out_free_dev
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free_adapter_nofail

for.body282.preheader:                            ; preds = %out_free_dev
  %i.3497 = add nsw i32 %add277, -1
  br label %for.body282

for.body282:                                      ; preds = %for.inc290.for.body282_crit_edge, %for.body282.preheader
  %i.3499 = phi i32 [ %i.3, %for.inc290.for.body282_crit_edge ], [ %i.3497, %for.body282.preheader ]
  %arrayidx284 = getelementptr %struct.adapter, ptr %call1.i.i.i, i32 0, i32 21, i32 %i.3499
  %195 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx284, align 4
  %tobool285.not = icmp eq ptr %196, null
  br i1 %tobool285.not, label %for.body282.for.inc290_crit_edge, label %if.then286

for.body282.for.inc290_crit_edge:                 ; preds = %for.body282
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc290

if.then286:                                       ; preds = %for.body282
  call void @__sanitizer_cov_trace_pc() #20
  call void @free_netdev(ptr noundef nonnull %196) #18
  br label %for.inc290

for.inc290:                                       ; preds = %if.then286, %for.body282.for.inc290_crit_edge
  %i.3 = add i32 %i.3499, -1
  %cmp280 = icmp sgt i32 %i.3, -1
  br i1 %cmp280, label %for.inc290.for.body282_crit_edge, label %for.inc290.out_free_adapter_nofail_crit_edge

for.inc290.out_free_adapter_nofail_crit_edge:     ; preds = %for.inc290
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free_adapter_nofail

for.inc290.for.body282_crit_edge:                 ; preds = %for.inc290
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body282

out_free_adapter_nofail:                          ; preds = %for.inc290.out_free_adapter_nofail_crit_edge, %out_free_dev.out_free_adapter_nofail_crit_edge, %do.end58
  %err.4 = phi i32 [ -12, %do.end58 ], [ %err.3, %out_free_dev.out_free_adapter_nofail_crit_edge ], [ %err.3, %for.inc290.out_free_adapter_nofail_crit_edge ]
  %197 = ptrtoint ptr %nofail_skb to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %nofail_skb, align 4
  call void @kfree_skb_reason(ptr noundef %198, i32 noundef 0) #18
  br label %out_free_adapter

out_free_adapter:                                 ; preds = %out_free_adapter_nofail, %do.end49
  %err.5 = phi i32 [ %err.4, %out_free_adapter_nofail ], [ -12, %do.end49 ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #18
  br label %out_release_regions

out_release_regions:                              ; preds = %out_free_adapter, %if.end28.out_release_regions_crit_edge, %do.end26
  %err.6 = phi i32 [ %call.i, %do.end26 ], [ %err.5, %out_free_adapter ], [ -12, %if.end28.out_release_regions_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #18
  br label %out_disable_device

out_disable_device:                               ; preds = %out_release_regions, %do.end17
  %err.7 = phi i32 [ %call12, %do.end17 ], [ %err.6, %out_release_regions ]
  call void @pci_disable_device(ptr noundef %pdev) #18
  br label %cleanup293

cleanup293:                                       ; preds = %out_disable_device, %print_port_info.exit, %do.end10, %do.end
  %retval.0 = phi i32 [ 0, %print_port_info.exit ], [ -12, %do.end ], [ %call5, %do.end10 ], [ %err.7, %out_disable_device ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @remove_one(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.then:                                          ; preds = %entry
  tail call void @t3_sge_stop(ptr noundef nonnull %1) #18
  %port = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @cxgb3_attr_group) #18
  %offload.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 14
  %4 = ptrtoint ptr %offload.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then.if.end8_crit_edge, label %if.then3

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then3:                                         ; preds = %if.then
  tail call void @cxgb3_adapter_unofld(ptr noundef nonnull %1) #18
  %open_device_map = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %open_device_map, align 4
  %8 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then6

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @offload_close(ptr noundef nonnull %1)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %nports = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 9
  %9 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp61.not = icmp eq i32 %10, 0
  br i1 %cmp61.not, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %registered_device_map = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.062, 5
  %arrayidx.i = getelementptr i32, ptr %registered_device_map, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.062, 31
  %13 = shl nuw i32 1, %and.i
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx13 = getelementptr %struct.adapter, ptr %1, i32 0, i32 21, i32 %i.062
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx13, align 4
  tail call void @unregister_netdev(ptr noundef %16) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.062, 1
  %17 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  tail call void @t3_stop_sge_timers(ptr noundef nonnull %1) #18
  tail call void @t3_free_sge_resources(ptr noundef nonnull %1) #18
  %flags.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i60 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i = icmp eq i32 %and.i60, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_msix(ptr noundef %22) #18
  br label %if.end10.sink.split.i

if.else.i:                                        ; preds = %for.end
  %and4.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i.cxgb_disable_msi.exit_crit_edge, label %if.then6.i

if.else.i.cxgb_disable_msi.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cxgb_disable_msi.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %pdev7.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %pdev7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev7.i, align 8
  tail call void @pci_disable_msi(ptr noundef %24) #18
  br label %if.end10.sink.split.i

if.end10.sink.split.i:                            ; preds = %if.then6.i, %if.then.i
  %.sink16.i = phi i32 [ -3, %if.then6.i ], [ -5, %if.then.i ]
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and9.i = and i32 %26, %.sink16.i
  store i32 %and9.i, ptr %flags.i, align 4
  br label %cxgb_disable_msi.exit

cxgb_disable_msi.exit:                            ; preds = %if.end10.sink.split.i, %if.else.i.cxgb_disable_msi.exit_crit_edge
  %27 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1864.not = icmp eq i32 %28, 0
  br i1 %cmp1864.not, label %cxgb_disable_msi.exit.for.end29_crit_edge, label %cxgb_disable_msi.exit.for.body19_crit_edge

cxgb_disable_msi.exit.for.body19_crit_edge:       ; preds = %cxgb_disable_msi.exit
  br label %for.body19

cxgb_disable_msi.exit.for.end29_crit_edge:        ; preds = %cxgb_disable_msi.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end29

for.body19:                                       ; preds = %for.inc27.for.body19_crit_edge, %cxgb_disable_msi.exit.for.body19_crit_edge
  %i.165 = phi i32 [ %inc28, %for.inc27.for.body19_crit_edge ], [ 0, %cxgb_disable_msi.exit.for.body19_crit_edge ]
  %arrayidx21 = getelementptr %struct.adapter, ptr %1, i32 0, i32 21, i32 %i.165
  %29 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %30, null
  br i1 %tobool22.not, label %for.body19.for.inc27_crit_edge, label %if.then23

for.body19.for.inc27_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc27

if.then23:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @free_netdev(ptr noundef nonnull %30) #18
  br label %for.inc27

for.inc27:                                        ; preds = %if.then23, %for.body19.for.inc27_crit_edge
  %inc28 = add nuw i32 %i.165, 1
  %31 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nports, align 4
  %cmp18 = icmp ult i32 %inc28, %32
  br i1 %cmp18, label %for.inc27.for.body19_crit_edge, label %for.inc27.for.end29_crit_edge

for.inc27.for.end29_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end29

for.inc27.for.body19_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body19

for.end29:                                        ; preds = %for.inc27.for.end29_crit_edge, %cxgb_disable_msi.exit.for.end29_crit_edge
  %regs = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %34) #18
  %nofail_skb = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 34
  %35 = ptrtoint ptr %nofail_skb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nofail_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %36, i32 noundef 0) #18
  tail call void @kfree(ptr noundef nonnull %1) #18
  tail call void @pci_release_regions(ptr noundef %pdev) #18
  tail call void @pci_disable_device(ptr noundef %pdev) #18
  br label %if.end30

if.end30:                                         ; preds = %for.end29, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t3_get_adapter_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ext_intr_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12676
  %nports = getelementptr i8, ptr %work, i32 -11952
  %0 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp38.not = icmp eq i32 %1, 0
  br i1 %cmp38.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %port = getelementptr i8, ptr %work, i32 -112
  %regs.i = getelementptr i8, ptr %work, i32 -12592
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr %port, i32 0, i32 %i.039
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @t3_xgm_intr_disable(ptr noundef %add.ptr, i32 noundef %i.039) #18
  %offset = getelementptr i8, ptr %3, i32 5628
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %5, 2156
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #18, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %inc = add nuw i32 %i.039, 1
  %9 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call2 = tail call i32 @t3_phy_intr_handler(ptr noundef %add.ptr) #18
  %11 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp640.not = icmp eq i32 %12, 0
  br i1 %cmp640.not, label %for.end.for.end10_crit_edge, label %for.end.for.body7_crit_edge

for.end.for.body7_crit_edge:                      ; preds = %for.end
  br label %for.body7

for.end.for.end10_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end10

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.end.for.body7_crit_edge
  %i.141 = phi i32 [ %inc9, %for.body7.for.body7_crit_edge ], [ 0, %for.end.for.body7_crit_edge ]
  tail call void @t3_xgm_intr_enable(ptr noundef %add.ptr, i32 noundef %i.141) #18
  %inc9 = add nuw i32 %i.141, 1
  %13 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nports, align 4
  %cmp6 = icmp ult i32 %inc9, %14
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.end10_crit_edge

for.body7.for.end10_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end10

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body7

for.end10:                                        ; preds = %for.body7.for.end10_crit_edge, %for.end.for.end10_crit_edge
  %work_lock = getelementptr i8, ptr %work, i32 404
  tail call void @_raw_spin_lock_irq(ptr noundef %work_lock) #18
  %slow_intr_mask = getelementptr i8, ptr %work, i32 -11928
  %15 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slow_intr_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %for.end10.if.end_crit_edge, label %if.then

for.end10.if.end_crit_edge:                       ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #20
  %or = or i32 %16, 8388608
  %17 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %slow_intr_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %regs.i34 = getelementptr i8, ptr %work, i32 -12592
  %18 = ptrtoint ptr %regs.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i34, align 4
  %add.ptr.i35 = getelementptr i8, ptr %19, i32 1764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 32768) #18, !srcloc !389
  %20 = ptrtoint ptr %slow_intr_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slow_intr_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #18
  %23 = ptrtoint ptr %regs.i34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i34, align 4
  %add.ptr.i37 = getelementptr i8, ptr %24, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %22) #18, !srcloc !389
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end10.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %work_lock) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fatal_error_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12720
  tail call void @rtnl_lock() #18
  %call = tail call fastcc i32 @t3_adapter_error(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @t3_reenable_adapter(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then3:                                         ; preds = %if.end
  %nports.i = getelementptr i8, ptr %work, i32 -11996
  %0 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.not.i = icmp eq i32 %1, 0
  br i1 %cmp16.not.i, label %if.then3.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then3.for.end.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then3
  %pdev.i = getelementptr i8, ptr %work, i32 -12632
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %add.ptr, i32 0, i32 21, i32 %i.017.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.then.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.then.i:                                        ; preds = %for.body.i
  %call1.i = tail call i32 @cxgb_open(ptr noundef %3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup.i_crit_edge, label %do.end.i

if.then.i.cleanup.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.100) #21
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i, %if.then.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.017.i, 1
  %8 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then3.for.end.i_crit_edge
  %offload.i.i = getelementptr i8, ptr %work, i32 -11976
  %10 = ptrtoint ptr %offload.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offload.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not.i = icmp eq i32 %11, 0
  br i1 %tobool5.not.i, label %for.end.i.do.end_crit_edge, label %land.lhs.true.i

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true.i:                                  ; preds = %for.end.i
  %12 = load i32, ptr @ofld_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not.i = icmp eq i32 %12, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %land.lhs.true.i.do.end_crit_edge

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @cxgb3_event_notify(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0) #18
  br label %do.end

do.end:                                           ; preds = %if.then7.i, %land.lhs.true.i.do.end_crit_edge, %for.end.i.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %cond = phi ptr [ @.str.86, %if.end.do.end_crit_edge ], [ @.str.87, %for.end.i.do.end_crit_edge ], [ @.str.87, %land.lhs.true.i.do.end_crit_edge ], [ @.str.87, %if.then7.i ], [ @.str.86, %entry.do.end_crit_edge ]
  %pdev = getelementptr i8, ptr %work, i32 -12632
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.84, ptr noundef nonnull %cond) #21
  tail call void @rtnl_unlock() #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @db_full_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12808
  tail call void @cxgb3_event_notify(ptr noundef %add.ptr, i32 noundef 4, i32 noundef 0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @db_empty_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12852
  tail call void @cxgb3_event_notify(ptr noundef %add.ptr, i32 noundef 5, i32 noundef 0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @db_drop_task(ptr noundef %work) #0 align 64 {
entry:
  %r = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12896
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %r) #18
  %0 = ptrtoint ptr %r to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %r, align 2, !annotation !390
  tail call void @cxgb3_event_notify(ptr noundef %add.ptr, i32 noundef 6, i32 noundef 0) #18
  call void @get_random_bytes(ptr noundef nonnull %r, i32 noundef 2) #18
  br label %__here

__here:                                           ; preds = %entry
  %1 = ptrtoint ptr %r to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %r, align 2
  %3 = call i32 @llvm.read_register.i32(metadata !376) #18
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 212
  %7 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 ptrtoint (ptr blockaddress(@db_drop_task, %__here) to i32), ptr %task_state_change, align 4
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 2, ptr %8, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !391
  %10 = and i16 %2, 1023
  %narrow = add nuw nsw i16 %10, 1000
  %add = zext i16 %narrow to i32
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %add) #18
  %call63 = call i32 @schedule_timeout(i32 noundef %call3.i) #18
  %sge.i = getelementptr i8, ptr %work, i32 -11872
  %regs.i.i = getelementptr i8, ptr %work, i32 -12812
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %__here
  %i.017.i = phi i32 [ 0, %__here ], [ %inc8.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.sge_qset], ptr %sge.i, i32 0, i32 %i.017.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 128
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body5.preheader.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.body5.preheader.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %cntxt_id.i = getelementptr [8 x %struct.sge_qset], ptr %sge.i, i32 0, i32 %i.017.i, i32 4, i32 0, i32 17
  %13 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cntxt_id.i, align 4
  %or.i = or i32 %14, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  call void @arm_heavy_mb() #18
  %15 = call i32 @llvm.bswap.i32(i32 %or.i) #18
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #18, !srcloc !389
  %cntxt_id.1.i = getelementptr [8 x %struct.sge_qset], ptr %sge.i, i32 0, i32 %i.017.i, i32 4, i32 1, i32 17
  %18 = ptrtoint ptr %cntxt_id.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cntxt_id.1.i, align 4
  %or.1.i = or i32 %19, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  call void @arm_heavy_mb() #18
  %20 = call i32 @llvm.bswap.i32(i32 %or.1.i) #18
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %22, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 %20) #18, !srcloc !389
  %cntxt_id.2.i = getelementptr [8 x %struct.sge_qset], ptr %sge.i, i32 0, i32 %i.017.i, i32 4, i32 2, i32 17
  %23 = ptrtoint ptr %cntxt_id.2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cntxt_id.2.i, align 4
  %or.2.i = or i32 %24, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  call void @arm_heavy_mb() #18
  %25 = call i32 @llvm.bswap.i32(i32 %or.2.i) #18
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %27, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 %25) #18, !srcloc !389
  br label %if.end.i

if.end.i:                                         ; preds = %for.body5.preheader.i, %for.body.i.if.end.i_crit_edge
  %inc8.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, 8
  br i1 %exitcond.not.i, label %ring_dbs.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

ring_dbs.exit:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %r) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t3_adap_check_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12576
  %check_task_cnt = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %check_task_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %check_task_cnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %check_task_cnt, align 4
  %nports.i = getelementptr i8, ptr %work, i32 -11852
  %2 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28.not.i = icmp eq i32 %3, 0
  br i1 %cmp28.not.i, label %entry.check_link_status.exit_crit_edge, label %for.body.lr.ph.i

entry.check_link_status.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_link_status.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %work_lock.i = getelementptr i8, ptr %work, i32 504
  %regs.i.i = getelementptr i8, ptr %work, i32 -12492
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %add.ptr, i32 0, i32 21, i32 %i.029.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %work_lock.i) #18
  %link_fault1.i = getelementptr i8, ptr %5, i32 6148
  %6 = ptrtoint ptr %link_fault1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_fault1.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %work_lock.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @t3_link_fault(ptr noundef %add.ptr, i32 noundef %i.029.i) #18
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %caps.i = getelementptr i8, ptr %5, i32 2320
  %8 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %if.then5.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @t3_xgm_intr_disable(ptr noundef %add.ptr, i32 noundef %i.029.i) #18
  %offset.i = getelementptr i8, ptr %5, i32 5628
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %13, 2156
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %15, i32 %add.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #18, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  tail call void @t3_link_changed(ptr noundef %add.ptr, i32 noundef %i.029.i) #18
  tail call void @t3_xgm_intr_enable(ptr noundef %add.ptr, i32 noundef %i.029.i) #18
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then5.i, %land.lhs.true.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge, %if.then.i
  %inc.i = add nuw i32 %i.029.i, 1
  %17 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %18
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.check_link_status.exit_crit_edge

cleanup.i.check_link_status.exit_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_link_status.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

check_link_status.exit:                           ; preds = %cleanup.i.check_link_status.exit_crit_edge, %entry.check_link_status.exit_crit_edge
  %linkpoll_period = getelementptr i8, ptr %work, i32 -11840
  %19 = ptrtoint ptr %linkpoll_period to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %linkpoll_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %check_link_status.exit.if.then_crit_edge, label %lor.lhs.false

check_link_status.exit.if.then_crit_edge:         ; preds = %check_link_status.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false:                                    ; preds = %check_link_status.exit
  %21 = ptrtoint ptr %check_task_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %check_task_cnt, align 4
  %mul = mul i32 %22, %20
  %div = udiv i32 %mul, 10
  %stats_update_period = getelementptr i8, ptr %work, i32 -11844
  %23 = ptrtoint ptr %stats_update_period to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stats_update_period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %24)
  %cmp.not = icmp ult i32 %div, %24
  br i1 %cmp.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %check_link_status.exit.if.then_crit_edge
  %25 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp10.not.i = icmp eq i32 %26, 0
  br i1 %cmp10.not.i, label %if.then.mac_stats_update.exit_crit_edge, label %for.body.lr.ph.i74

if.then.mac_stats_update.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %mac_stats_update.exit

for.body.lr.ph.i74:                               ; preds = %if.then
  %stats_lock.i = getelementptr i8, ptr %work, i32 460
  br label %for.body.i79

for.body.i79:                                     ; preds = %if.end.i83.for.body.i79_crit_edge, %for.body.lr.ph.i74
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i74 ], [ %inc.i81, %if.end.i83.for.body.i79_crit_edge ]
  %arrayidx.i75 = getelementptr %struct.adapter, ptr %add.ptr, i32 0, i32 21, i32 %i.011.i
  %27 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i75, align 4
  %state.i.i76 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %state.i.i76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i.i76, align 4
  %and1.i.i.i77 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i77)
  %tobool.i.not.i78 = icmp eq i32 %and1.i.i.i77, 0
  br i1 %tobool.i.not.i78, label %for.body.i79.if.end.i83_crit_edge, label %if.then.i80

for.body.i79.if.end.i83_crit_edge:                ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i83

if.then.i80:                                      ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_lock(ptr noundef %stats_lock.i) #18
  %mac.i = getelementptr i8, ptr %28, i32 5624
  %call2.i = tail call ptr @t3_mac_update_stats(ptr noundef %mac.i) #18
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock.i) #18
  br label %if.end.i83

if.end.i83:                                       ; preds = %if.then.i80, %for.body.i79.if.end.i83_crit_edge
  %inc.i81 = add nuw i32 %i.011.i, 1
  %31 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nports.i, align 4
  %cmp.i82 = icmp ult i32 %inc.i81, %32
  br i1 %cmp.i82, label %if.end.i83.for.body.i79_crit_edge, label %if.end.i83.mac_stats_update.exit_crit_edge

if.end.i83.mac_stats_update.exit_crit_edge:       ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #20
  br label %mac_stats_update.exit

if.end.i83.for.body.i79_crit_edge:                ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i79

mac_stats_update.exit:                            ; preds = %if.end.i83.mac_stats_update.exit_crit_edge, %if.then.mac_stats_update.exit_crit_edge
  %33 = ptrtoint ptr %check_task_cnt to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %check_task_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %mac_stats_update.exit, %lor.lhs.false.if.end_crit_edge
  %rev = getelementptr i8, ptr %work, i32 -11836
  %34 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp4 = icmp eq i32 %35, 3
  br i1 %cmp4, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %call.i = tail call i32 @rtnl_trylock() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i84 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i84, label %if.then5.if.end6_crit_edge, label %for.cond.preheader.i

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

for.cond.preheader.i:                             ; preds = %if.then5
  %36 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp57.not.i = icmp eq i32 %37, 0
  br i1 %cmp57.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i90_crit_edge

for.cond.preheader.i.for.body.i90_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i90

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body.i90:                                     ; preds = %cleanup.i95.for.body.i90_crit_edge, %for.cond.preheader.i.for.body.i90_crit_edge
  %i.058.i = phi i32 [ %inc28.i, %cleanup.i95.for.body.i90_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i90_crit_edge ]
  %arrayidx.i86 = getelementptr %struct.adapter, ptr %add.ptr, i32 0, i32 21, i32 %i.058.i
  %38 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i86, align 4
  %state.i.i87 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %state.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %state.i.i87, align 4
  %and1.i.i.i88 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i88)
  %tobool.i.not.i89 = icmp eq i32 %and1.i.i.i88, 0
  br i1 %tobool.i.not.i89, label %for.body.i90.cleanup.i95_crit_edge, label %if.end4.i

for.body.i90.cleanup.i95_crit_edge:               ; preds = %for.body.i90
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i95

if.end4.i:                                        ; preds = %for.body.i90
  %42 = ptrtoint ptr %state.i.i87 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i.i87, align 4
  %and1.i.i53.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i53.i)
  %tobool.i54.not.i = icmp eq i32 %and1.i.i53.i, 0
  br i1 %tobool.i54.not.i, label %if.end4.i.cleanup.i95_crit_edge, label %land.lhs.true.i91

if.end4.i.cleanup.i95_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i95

land.lhs.true.i91:                                ; preds = %if.end4.i
  %44 = ptrtoint ptr %state.i.i87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i.i87, align 4
  %46 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i, label %if.end9.i, label %land.lhs.true.i91.cleanup.i95_crit_edge

land.lhs.true.i91.cleanup.i95_crit_edge:          ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i95

if.end9.i:                                        ; preds = %land.lhs.true.i91
  %mac.i92 = getelementptr i8, ptr %39, i32 5624
  %call8.i = tail call i32 @t3b2_mac_watchdog_task(ptr noundef %mac.i92) #18
  %47 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %call8.i, label %if.end9.i.cleanup.i95_crit_edge [
    i32 1, label %if.then11.i
    i32 2, label %if.then14.i
  ]

if.end9.i.cleanup.i95_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i95

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  %num_toggled.i = getelementptr i8, ptr %39, i32 6084
  %48 = ptrtoint ptr %num_toggled.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_toggled.i, align 4
  %inc.i93 = add i32 %49, 1
  store i32 %inc.i93, ptr %num_toggled.i, align 4
  br label %cleanup.i95

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 20
  %50 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mtu.i, align 4
  %call17.i = tail call i32 @t3_mac_set_mtu(ptr noundef %mac.i92, i32 noundef %51) #18
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 86
  %52 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_addr.i, align 64
  %call18.i = tail call i32 @t3_mac_set_address(ptr noundef %mac.i92, i32 noundef 0, ptr noundef %53) #18
  %call1.i.i = tail call i32 @t3_mac_set_rx_mode(ptr noundef %mac.i92, ptr noundef %39) #18
  %phy.i = getelementptr i8, ptr %39, i32 2316
  %link_config.i = getelementptr i8, ptr %39, i32 6096
  %call19.i = tail call i32 @t3_link_start(ptr noundef %phy.i, ptr noundef %mac.i92, ptr noundef %link_config.i) #18
  %call20.i = tail call i32 @t3_mac_enable(ptr noundef %mac.i92, i32 noundef 3) #18
  %port_id.i = getelementptr i8, ptr %39, i32 2312
  %54 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %port_id.i, align 8
  %conv.i = zext i8 %55 to i32
  tail call void @t3_port_intr_enable(ptr noundef %add.ptr, i32 noundef %conv.i) #18
  %num_resets.i = getelementptr i8, ptr %39, i32 6088
  %56 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_resets.i, align 8
  %inc23.i = add i32 %57, 1
  store i32 %inc23.i, ptr %num_resets.i, align 8
  br label %cleanup.i95

cleanup.i95:                                      ; preds = %if.then14.i, %if.then11.i, %if.end9.i.cleanup.i95_crit_edge, %land.lhs.true.i91.cleanup.i95_crit_edge, %if.end4.i.cleanup.i95_crit_edge, %for.body.i90.cleanup.i95_crit_edge
  %inc28.i = add nuw i32 %i.058.i, 1
  %58 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nports.i, align 4
  %cmp.i94 = icmp ult i32 %inc28.i, %59
  br i1 %cmp.i94, label %cleanup.i95.for.body.i90_crit_edge, label %cleanup.i95.for.end.i_crit_edge

cleanup.i95.for.end.i_crit_edge:                  ; preds = %cleanup.i95
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

cleanup.i95.for.body.i90_crit_edge:               ; preds = %cleanup.i95
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i90

for.end.i:                                        ; preds = %cleanup.i95.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @rtnl_unlock() #18
  br label %if.end6

if.end6:                                          ; preds = %for.end.i, %if.then5.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %60 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp8108.not = icmp eq i32 %61, 0
  br i1 %cmp8108.not, label %if.end6.for.end_crit_edge, label %for.body.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %regs.i = getelementptr i8, ptr %work, i32 -12492
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %port.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc17, %if.end14.for.body_crit_edge ]
  %arrayidx.i96 = getelementptr %struct.adapter, ptr %add.ptr, i32 0, i32 21, i32 %port.0109
  %62 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i96, align 4
  %offset = getelementptr i8, ptr %63, i32 5628
  %64 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset, align 4
  %add = add i32 %65, 2264
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %67, i32 %add
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #18, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %69 = and i32 %68, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool11.not = icmp eq i32 %69, 0
  br i1 %tobool11.not, label %for.body.if.end14_crit_edge, label %if.then12

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %rx_fifo_ovfl = getelementptr i8, ptr %63, i32 6068
  %70 = ptrtoint ptr %rx_fifo_ovfl to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_fifo_ovfl, align 4
  %inc13 = add i32 %71, 1
  store i32 %inc13, ptr %rx_fifo_ovfl, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.body.if.end14_crit_edge
  %reset.0 = phi i32 [ 1048576, %if.then12 ], [ 0, %for.body.if.end14_crit_edge ]
  %72 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset, align 4
  %add16 = add i32 %73, 2264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %75, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %reset.0) #18, !srcloc !389
  %inc17 = add nuw i32 %port.0109, 1
  %76 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nports.i, align 4
  %cmp8 = icmp ult i32 %inc17, %77
  br i1 %cmp8, label %if.end14.for.body_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %if.end6.for.end_crit_edge
  %regs.i99 = getelementptr i8, ptr %work, i32 -12492
  %78 = ptrtoint ptr %regs.i99 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i99, align 4
  %add.ptr.i100 = getelementptr i8, ptr %79, i32 92
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #18, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %81 = and i32 %80, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool20.not = icmp eq i32 %81, 0
  br i1 %tobool20.not, label %for.end.if.end34_crit_edge, label %if.then21

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.then21:                                        ; preds = %for.end
  %82 = ptrtoint ptr %regs.i99 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i99, align 4
  %add.ptr.i102 = getelementptr i8, ptr %83, i32 76
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #18, !srcloc !386
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %85)
  %tobool26.not110 = icmp ult i32 %85, 65536
  br i1 %tobool26.not110, label %if.then21.if.end34_crit_edge, label %while.body.preheader

if.then21.if.end34_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

while.body.preheader:                             ; preds = %if.then21
  %shr = lshr i32 %85, 16
  %sge = getelementptr i8, ptr %work, i32 -11552
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %i.0113 = phi i32 [ %xor, %while.body.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %qs.0112 = phi ptr [ %spec.select, %while.body.while.body_crit_edge ], [ %sge, %while.body.preheader ]
  %v.0111 = phi i32 [ %shr33, %while.body.while.body_crit_edge ], [ %shr, %while.body.preheader ]
  %and27 = and i32 %v.0111, 1
  %empty = getelementptr %struct.sge_qset, ptr %qs.0112, i32 0, i32 3, i32 %i.0113, i32 15
  %86 = ptrtoint ptr %empty to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %empty, align 4
  %add29 = add i32 %87, %and27
  store i32 %add29, ptr %empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0113)
  %tobool30.not = icmp ne i32 %i.0113, 0
  %spec.select.idx = zext i1 %tobool30.not to i32
  %spec.select = getelementptr %struct.sge_qset, ptr %qs.0112, i32 %spec.select.idx
  %xor = xor i32 %i.0113, 1
  %shr33 = lshr i32 %v.0111, 1
  %tobool26.not = icmp ult i32 %v.0111, 2
  br i1 %tobool26.not, label %while.body.if.end34_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body.if.end34_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.end34:                                         ; preds = %while.body.if.end34_crit_edge, %if.then21.if.end34_crit_edge, %for.end.if.end34_crit_edge
  %reset.1 = phi i32 [ 0, %for.end.if.end34_crit_edge ], [ 33554432, %if.then21.if.end34_crit_edge ], [ 33554432, %while.body.if.end34_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %88 = ptrtoint ptr %regs.i99 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i99, align 4
  %add.ptr.i104 = getelementptr i8, ptr %89, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %reset.1) #18, !srcloc !389
  %work_lock = getelementptr i8, ptr %work, i32 504
  tail call void @_raw_spin_lock_irq(ptr noundef %work_lock) #18
  %open_device_map = getelementptr i8, ptr %work, i32 -12480
  %90 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %open_device_map, align 32
  %and35 = and i32 %91, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end38_crit_edge, label %if.then37

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  %92 = ptrtoint ptr %linkpoll_period to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %linkpoll_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i105 = icmp eq i32 %93, 0
  br i1 %tobool.not.i105, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #20
  %mul.i = mul i32 %93, 100
  %div.i = udiv i32 %mul.i, 10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #20
  %stats_update_period.i = getelementptr i8, ptr %work, i32 -11844
  %94 = ptrtoint ptr %stats_update_period.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %stats_update_period.i, align 4
  %mul4.i = mul i32 %95, 100
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ %mul4.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool5.not.i = icmp eq i32 %cond.i, 0
  br i1 %tobool5.not.i, label %cond.end.i.if.end38_crit_edge, label %if.then.i106

cond.end.i.if.end38_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then.i106:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %96 = load ptr, ptr @cxgb3_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %96, ptr noundef %work, i32 noundef %cond.i) #18
  br label %if.end38

if.end38:                                         ; preds = %if.then.i106, %cond.end.i.if.end38_crit_edge, %if.end34.if.end38_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %work_lock) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_prep_adapter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_led_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb3_adapter_ofld(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_phy_intr_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t3_adapter_error(ptr noundef %adapter, i32 noundef %reset, i32 noundef %on_wq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %offload.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 14
  %0 = ptrtoint ptr %offload.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %open_device_map = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 5
  %2 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %open_device_map, align 4
  %4 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @cxgb3_event_notify(ptr noundef %adapter, i32 noundef 1, i32 noundef 0) #18
  tail call fastcc void @offload_close(ptr noundef %adapter)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 9
  %5 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp25.not = icmp eq i32 %6, 0
  br i1 %cmp25.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %i.026
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.if.end8_crit_edge, label %if.then6

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @__cxgb_close(ptr noundef %8, i32 noundef %on_wq)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.body.if.end8_crit_edge
  %inc = add nuw i32 %i.026, 1
  %11 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @t3_stop_sge_timers(ptr noundef %adapter) #18
  %flags = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, -2
  store i32 %and, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset)
  %tobool9.not = icmp eq i32 %reset, 0
  br i1 %tobool9.not, label %for.end.if.end12_crit_edge, label %if.then10

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = tail call i32 @t3_reset_adapter(ptr noundef %adapter) #18
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.end.if.end12_crit_edge
  %ret.0 = phi i32 [ %call11, %if.then10 ], [ 0, %for.end.if.end12_crit_edge ]
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  tail call void @pci_disable_device(ptr noundef %16) #18
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t3_reenable_adapter(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_enable_device(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.98) #21
  br label %err

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %3) #18
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  tail call void @pci_restore_state(ptr noundef %5) #18
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %call5 = tail call i32 @pci_save_state(ptr noundef %7) #18
  tail call void @t3_free_sge_resources(ptr noundef %adapter) #18
  %call6 = tail call i32 @t3_replay_prep_adapter(ptr noundef %adapter) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.return_crit_edge, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

err:                                              ; preds = %if.end.err_crit_edge, %do.end
  br label %return

return:                                           ; preds = %err, %if.end.return_crit_edge
  %retval.0 = phi i32 [ -1, %err ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb3_event_notify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @offload_close(ptr noundef %tdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %l4opt = getelementptr inbounds %struct.t3cdev, ptr %tdev, i32 0, i32 12
  %0 = ptrtoint ptr %l4opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l4opt, align 4
  %open_device_map = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 5
  %2 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %open_device_map, align 4
  %4 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @cxgb3_remove_clients(ptr noundef %tdev) #18
  %lldev = getelementptr inbounds %struct.t3cdev, ptr %tdev, i32 0, i32 3
  %5 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lldev, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 133
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @offload_attr_group) #18
  %tid_release_task = getelementptr inbounds %struct.t3c_data, ptr %1, i32 0, i32 10
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %tid_release_task) #18
  %7 = ptrtoint ptr %lldev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %lldev, align 4
  tail call void @cxgb3_set_dummy_ops(ptr noundef %tdev) #18
  tail call void @t3_tp_set_offload_mode(ptr noundef %tdev, i32 noundef 0) #18
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %open_device_map) #18
  %8 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %open_device_map, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @cxgb_down(ptr noundef %tdev, i32 noundef 0)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  tail call void @cxgb3_offload_deactivate(ptr noundef %tdev) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cxgb_close(ptr noundef %dev, i32 noundef %on_wq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %open_device_map = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_device_map, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_id = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_id, align 8
  %conv = zext i8 %5 to i32
  tail call void @t3_xgm_intr_disable(ptr noundef %1, i32 noundef %conv) #18
  %mac = getelementptr i8, ptr %dev, i32 5624
  %offset = getelementptr i8, ptr %dev, i32 5628
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add = add i32 %7, 2156
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i1 = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #18, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %11 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port_id, align 8
  %conv4 = zext i8 %12 to i32
  tail call void @t3_port_intr_disable(ptr noundef %1, i32 noundef %conv4) #18
  tail call void @netif_tx_stop_all_queues(ptr noundef %dev) #18
  %phy = getelementptr i8, ptr %dev, i32 2316
  %ops = getelementptr i8, ptr %dev, i32 2336
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %power_down = getelementptr inbounds %struct.cphy_ops, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %power_down to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %power_down, align 4
  %call6 = tail call i32 %16(ptr noundef %phy, i32 noundef 1) #18
  tail call void @netif_carrier_off(ptr noundef %dev) #18
  %call8 = tail call i32 @t3_mac_disable(ptr noundef %mac, i32 noundef 3) #18
  %work_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 33
  tail call void @_raw_spin_lock_irq(ptr noundef %work_lock) #18
  %17 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port_id, align 8
  %conv10 = zext i8 %18 to i32
  tail call void @_clear_bit(i32 noundef %conv10, ptr noundef %open_device_map) #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %work_lock) #18
  %19 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %open_device_map, align 32
  %and = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end17, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.end17:                                         ; preds = %if.end
  %adap_check_task = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 23
  %call16 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %adap_check_task) #18
  %21 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %open_device_map, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool19.not = icmp eq i32 %.pr, 0
  br i1 %tobool19.not, label %if.then20, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @cxgb_down(ptr noundef %1, i32 noundef %on_wq)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %22 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_id, align 8
  %conv23 = zext i8 %23 to i32
  tail call void @cxgb3_event_notify(ptr noundef %1, i32 noundef 2, i32 noundef %conv23) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_stop_sge_timers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_reset_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb3_remove_clients(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb3_set_dummy_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_tp_set_offload_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb_down(ptr noundef %adapter, i32 noundef %on_wq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @t3_sge_stop(ptr noundef %adapter) #18
  %work_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 33
  tail call void @_raw_spin_lock_irq(ptr noundef %work_lock) #18
  tail call void @t3_intr_disable(ptr noundef %adapter) #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %work_lock) #18
  %flags.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %msix_info.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14
  %2 = ptrtoint ptr %msix_info.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msix_info.i, align 128
  %conv.i = zext i16 %3 to i32
  %call.i = tail call ptr @free_irq(i32 noundef %conv.i, ptr noundef %adapter) #18
  %nports.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 9
  %4 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp34.not.i = icmp eq i32 %5, 0
  br i1 %cmp34.not.i, label %if.then.i.free_irq_resources.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.free_irq_resources.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_irq_resources.exit

for.cond4.preheader.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp537.i = icmp sgt i32 %add.i, 0
  br i1 %cmp537.i, label %for.body7.lr.ph.i, label %for.cond4.preheader.i.free_irq_resources.exit_crit_edge

for.cond4.preheader.i.free_irq_resources.exit_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_irq_resources.exit

for.body7.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %sge.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  br label %for.body7.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %n.036.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %i.035.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %i.035.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %nqsets.i = getelementptr i8, ptr %7, i32 2313
  %8 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nqsets.i, align 1
  %conv3.i = zext i8 %9 to i32
  %add.i = add i32 %n.036.i, %conv3.i
  %inc.i = add nuw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond4.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.body7.lr.ph.i
  %i.138.i = phi i32 [ 0, %for.body7.lr.ph.i ], [ %add9.i, %for.body7.i.for.body7.i_crit_edge ]
  %add9.i = add nuw nsw i32 %i.138.i, 1
  %arrayidx10.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 14, i32 %add9.i
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx10.i, align 8
  %conv12.i = zext i16 %11 to i32
  %arrayidx13.i = getelementptr [8 x %struct.sge_qset], ptr %sge.i, i32 0, i32 %i.138.i
  %call14.i = tail call ptr @free_irq(i32 noundef %conv12.i, ptr noundef %arrayidx13.i) #18
  %exitcond39.not.i = icmp eq i32 %add9.i, %add.i
  br i1 %exitcond39.not.i, label %for.body7.i.free_irq_resources.exit_crit_edge, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body7.i

for.body7.i.free_irq_resources.exit_crit_edge:    ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_irq_resources.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  %call18.i = tail call ptr @free_irq(i32 noundef %15, ptr noundef %adapter) #18
  br label %free_irq_resources.exit

free_irq_resources.exit:                          ; preds = %if.else.i, %for.body7.i.free_irq_resources.exit_crit_edge, %for.cond4.preheader.i.free_irq_resources.exit_crit_edge, %if.then.i.free_irq_resources.exit_crit_edge
  %sge.i8 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  %16 = ptrtoint ptr %sge.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sge.i8, align 128
  %tobool.not.i9 = icmp eq ptr %17, null
  br i1 %tobool.not.i9, label %free_irq_resources.exit.for.inc.i_crit_edge, label %if.then.i10

free_irq_resources.exit.for.inc.i_crit_edge:      ; preds = %free_irq_resources.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then.i10:                                      ; preds = %free_irq_resources.exit
  call void @__sanitizer_cov_trace_pc() #20
  %napi.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 0, i32 1
  tail call void @napi_disable(ptr noundef %napi.i) #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i10, %free_irq_resources.exit.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.1.i, align 128
  %tobool.not.1.i = icmp eq ptr %19, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.1.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 1, i32 1
  tail call void @napi_disable(ptr noundef %napi.1.i) #18
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2.i, align 128
  %tobool.not.2.i = icmp eq ptr %21, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.2.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 2, i32 1
  tail call void @napi_disable(ptr noundef %napi.2.i) #18
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.3.i, align 128
  %tobool.not.3.i = icmp eq ptr %23, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.3.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 3, i32 1
  tail call void @napi_disable(ptr noundef %napi.3.i) #18
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.4.i, align 128
  %tobool.not.4.i = icmp eq ptr %25, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.4.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 4, i32 1
  tail call void @napi_disable(ptr noundef %napi.4.i) #18
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 5
  %26 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.5.i, align 128
  %tobool.not.5.i = icmp eq ptr %27, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.5.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 5, i32 1
  tail call void @napi_disable(ptr noundef %napi.5.i) #18
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %arrayidx.6.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 6
  %28 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.6.i, align 128
  %tobool.not.6.i = icmp eq ptr %29, null
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.6.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 6, i32 1
  tail call void @napi_disable(ptr noundef %napi.6.i) #18
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %arrayidx.7.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 7
  %30 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.7.i, align 128
  %tobool.not.7.i = icmp eq ptr %31, null
  br i1 %tobool.not.7.i, label %for.inc.6.i.quiesce_rx.exit_crit_edge, label %if.then.7.i

for.inc.6.i.quiesce_rx.exit_crit_edge:            ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %quiesce_rx.exit

if.then.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.7.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 16, i32 0, i32 7, i32 1
  tail call void @napi_disable(ptr noundef %napi.7.i) #18
  br label %quiesce_rx.exit

quiesce_rx.exit:                                  ; preds = %if.then.7.i, %for.inc.6.i.quiesce_rx.exit_crit_edge
  tail call void @t3_sge_stop(ptr noundef %adapter) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on_wq)
  %tobool.not = icmp eq i32 %on_wq, 0
  br i1 %tobool.not, label %if.then, label %quiesce_rx.exit.if.end_crit_edge

quiesce_rx.exit.if.end_crit_edge:                 ; preds = %quiesce_rx.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %quiesce_rx.exit
  call void @__sanitizer_cov_trace_pc() #20
  %32 = load ptr, ptr @cxgb3_wq, align 4
  tail call void @flush_workqueue(ptr noundef %32) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %quiesce_rx.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb3_offload_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sched0(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void @rtnl_lock() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %3, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 134217728) #18, !srcloc !389
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %5, i32 1052
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #18, !srcloc !386
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %and4.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.89, i32 10)
  br label %tm_attr_show.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %shr2.i = lshr i32 %7, 8
  %and3.i = and i32 %shr2.i, 255
  %vpd.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vpd.i, align 4
  %mul.i = mul i32 %10, 1000
  %div8.i = udiv i32 %mul.i, %and4.i
  %mul9.i = mul i32 %div8.i, %and3.i
  %div10.i = udiv i32 %mul9.i, 125
  %call11.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.90, i32 noundef %div10.i) #18
  br label %tm_attr_show.exit

tm_attr_show.exit:                                ; preds = %if.else.i, %if.then6.i
  %len.0.i = phi i32 [ %call11.i, %if.else.i ], [ 9, %if.then6.i ]
  tail call void @rtnl_unlock() #18
  ret i32 %len.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sched0(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #18
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !390
  %call1.i = tail call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call1.i, label %if.end.i, label %entry.tm_attr_store.exit_crit_edge

entry.tm_attr_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end.i:                                         ; preds = %entry
  %call2.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.tm_attr_store.exit_crit_edge

if.end.i.tm_attr_store.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %4)
  %cmp.i = icmp ugt i32 %4, 10000000
  br i1 %cmp.i, label %if.end4.i.tm_attr_store.exit_crit_edge, label %if.end6.i

if.end4.i.tm_attr_store.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @rtnl_lock() #18
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %call7.i = call i32 @t3_config_sched(ptr noundef %1, i32 noundef %6, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 %len, i32 %call7.i
  call void @rtnl_unlock() #18
  br label %tm_attr_store.exit

tm_attr_store.exit:                               ; preds = %if.end6.i, %if.end4.i.tm_attr_store.exit_crit_edge, %if.end.i.tm_attr_store.exit_crit_edge, %entry.tm_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end6.i ], [ -1, %entry.tm_attr_store.exit_crit_edge ], [ %call2.i, %if.end.i.tm_attr_store.exit_crit_edge ], [ -22, %if.end4.i.tm_attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #18
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_config_sched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sched1(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void @rtnl_lock() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %3, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 134217728) #18, !srcloc !389
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %5, i32 1052
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #18, !srcloc !386
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %shr.i = lshr i32 %7, 16
  %and4.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.89, i32 10)
  br label %tm_attr_show.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %shr2.i = lshr i32 %7, 24
  %vpd.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vpd.i, align 4
  %mul.i = mul i32 %10, 1000
  %div8.i = udiv i32 %mul.i, %and4.i
  %mul9.i = mul i32 %div8.i, %shr2.i
  %div10.i = udiv i32 %mul9.i, 125
  %call11.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.90, i32 noundef %div10.i) #18
  br label %tm_attr_show.exit

tm_attr_show.exit:                                ; preds = %if.else.i, %if.then6.i
  %len.0.i = phi i32 [ %call11.i, %if.else.i ], [ 9, %if.then6.i ]
  tail call void @rtnl_unlock() #18
  ret i32 %len.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sched1(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #18
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !390
  %call1.i = tail call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call1.i, label %if.end.i, label %entry.tm_attr_store.exit_crit_edge

entry.tm_attr_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end.i:                                         ; preds = %entry
  %call2.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.tm_attr_store.exit_crit_edge

if.end.i.tm_attr_store.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %4)
  %cmp.i = icmp ugt i32 %4, 10000000
  br i1 %cmp.i, label %if.end4.i.tm_attr_store.exit_crit_edge, label %if.end6.i

if.end4.i.tm_attr_store.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @rtnl_lock() #18
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %call7.i = call i32 @t3_config_sched(ptr noundef %1, i32 noundef %6, i32 noundef 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 %len, i32 %call7.i
  call void @rtnl_unlock() #18
  br label %tm_attr_store.exit

tm_attr_store.exit:                               ; preds = %if.end6.i, %if.end4.i.tm_attr_store.exit_crit_edge, %if.end.i.tm_attr_store.exit_crit_edge, %entry.tm_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end6.i ], [ -1, %entry.tm_attr_store.exit_crit_edge ], [ %call2.i, %if.end.i.tm_attr_store.exit_crit_edge ], [ -22, %if.end4.i.tm_attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #18
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sched2(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void @rtnl_lock() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %3, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 117440512) #18, !srcloc !389
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %5, i32 1052
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #18, !srcloc !386
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %and4.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.89, i32 10)
  br label %tm_attr_show.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %shr2.i = lshr i32 %7, 8
  %and3.i = and i32 %shr2.i, 255
  %vpd.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vpd.i, align 4
  %mul.i = mul i32 %10, 1000
  %div8.i = udiv i32 %mul.i, %and4.i
  %mul9.i = mul i32 %div8.i, %and3.i
  %div10.i = udiv i32 %mul9.i, 125
  %call11.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.90, i32 noundef %div10.i) #18
  br label %tm_attr_show.exit

tm_attr_show.exit:                                ; preds = %if.else.i, %if.then6.i
  %len.0.i = phi i32 [ %call11.i, %if.else.i ], [ 9, %if.then6.i ]
  tail call void @rtnl_unlock() #18
  ret i32 %len.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sched2(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #18
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !390
  %call1.i = tail call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call1.i, label %if.end.i, label %entry.tm_attr_store.exit_crit_edge

entry.tm_attr_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end.i:                                         ; preds = %entry
  %call2.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.tm_attr_store.exit_crit_edge

if.end.i.tm_attr_store.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %4)
  %cmp.i = icmp ugt i32 %4, 10000000
  br i1 %cmp.i, label %if.end4.i.tm_attr_store.exit_crit_edge, label %if.end6.i

if.end4.i.tm_attr_store.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @rtnl_lock() #18
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %call7.i = call i32 @t3_config_sched(ptr noundef %1, i32 noundef %6, i32 noundef 2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 %len, i32 %call7.i
  call void @rtnl_unlock() #18
  br label %tm_attr_store.exit

tm_attr_store.exit:                               ; preds = %if.end6.i, %if.end4.i.tm_attr_store.exit_crit_edge, %if.end.i.tm_attr_store.exit_crit_edge, %entry.tm_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end6.i ], [ -1, %entry.tm_attr_store.exit_crit_edge ], [ %call2.i, %if.end.i.tm_attr_store.exit_crit_edge ], [ -22, %if.end4.i.tm_attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #18
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sched3(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void @rtnl_lock() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %3, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 117440512) #18, !srcloc !389
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %5, i32 1052
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #18, !srcloc !386
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %shr.i = lshr i32 %7, 16
  %and4.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.89, i32 10)
  br label %tm_attr_show.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %shr2.i = lshr i32 %7, 24
  %vpd.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vpd.i, align 4
  %mul.i = mul i32 %10, 1000
  %div8.i = udiv i32 %mul.i, %and4.i
  %mul9.i = mul i32 %div8.i, %shr2.i
  %div10.i = udiv i32 %mul9.i, 125
  %call11.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.90, i32 noundef %div10.i) #18
  br label %tm_attr_show.exit

tm_attr_show.exit:                                ; preds = %if.else.i, %if.then6.i
  %len.0.i = phi i32 [ %call11.i, %if.else.i ], [ 9, %if.then6.i ]
  tail call void @rtnl_unlock() #18
  ret i32 %len.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sched3(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #18
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !390
  %call1.i = tail call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call1.i, label %if.end.i, label %entry.tm_attr_store.exit_crit_edge

entry.tm_attr_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end.i:                                         ; preds = %entry
  %call2.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.tm_attr_store.exit_crit_edge

if.end.i.tm_attr_store.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %4)
  %cmp.i = icmp ugt i32 %4, 10000000
  br i1 %cmp.i, label %if.end4.i.tm_attr_store.exit_crit_edge, label %if.end6.i

if.end4.i.tm_attr_store.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @rtnl_lock() #18
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %call7.i = call i32 @t3_config_sched(ptr noundef %1, i32 noundef %6, i32 noundef 3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 %len, i32 %call7.i
  call void @rtnl_unlock() #18
  br label %tm_attr_store.exit

tm_attr_store.exit:                               ; preds = %if.end6.i, %if.end4.i.tm_attr_store.exit_crit_edge, %if.end.i.tm_attr_store.exit_crit_edge, %entry.tm_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end6.i ], [ -1, %entry.tm_attr_store.exit_crit_edge ], [ %call2.i, %if.end.i.tm_attr_store.exit_crit_edge ], [ -22, %if.end4.i.tm_attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #18
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sched4(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void @rtnl_lock() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %3, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 100663296) #18, !srcloc !389
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %5, i32 1052
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #18, !srcloc !386
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %and4.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.89, i32 10)
  br label %tm_attr_show.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %shr2.i = lshr i32 %7, 8
  %and3.i = and i32 %shr2.i, 255
  %vpd.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vpd.i, align 4
  %mul.i = mul i32 %10, 1000
  %div8.i = udiv i32 %mul.i, %and4.i
  %mul9.i = mul i32 %div8.i, %and3.i
  %div10.i = udiv i32 %mul9.i, 125
  %call11.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.90, i32 noundef %div10.i) #18
  br label %tm_attr_show.exit

tm_attr_show.exit:                                ; preds = %if.else.i, %if.then6.i
  %len.0.i = phi i32 [ %call11.i, %if.else.i ], [ 9, %if.then6.i ]
  tail call void @rtnl_unlock() #18
  ret i32 %len.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sched4(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #18
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !390
  %call1.i = tail call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call1.i, label %if.end.i, label %entry.tm_attr_store.exit_crit_edge

entry.tm_attr_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end.i:                                         ; preds = %entry
  %call2.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.tm_attr_store.exit_crit_edge

if.end.i.tm_attr_store.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %4)
  %cmp.i = icmp ugt i32 %4, 10000000
  br i1 %cmp.i, label %if.end4.i.tm_attr_store.exit_crit_edge, label %if.end6.i

if.end4.i.tm_attr_store.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @rtnl_lock() #18
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %call7.i = call i32 @t3_config_sched(ptr noundef %1, i32 noundef %6, i32 noundef 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 %len, i32 %call7.i
  call void @rtnl_unlock() #18
  br label %tm_attr_store.exit

tm_attr_store.exit:                               ; preds = %if.end6.i, %if.end4.i.tm_attr_store.exit_crit_edge, %if.end.i.tm_attr_store.exit_crit_edge, %entry.tm_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end6.i ], [ -1, %entry.tm_attr_store.exit_crit_edge ], [ %call2.i, %if.end.i.tm_attr_store.exit_crit_edge ], [ -22, %if.end4.i.tm_attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #18
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sched5(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void @rtnl_lock() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %3, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 100663296) #18, !srcloc !389
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %5, i32 1052
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #18, !srcloc !386
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %shr.i = lshr i32 %7, 16
  %and4.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.89, i32 10)
  br label %tm_attr_show.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %shr2.i = lshr i32 %7, 24
  %vpd.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vpd.i, align 4
  %mul.i = mul i32 %10, 1000
  %div8.i = udiv i32 %mul.i, %and4.i
  %mul9.i = mul i32 %div8.i, %shr2.i
  %div10.i = udiv i32 %mul9.i, 125
  %call11.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.90, i32 noundef %div10.i) #18
  br label %tm_attr_show.exit

tm_attr_show.exit:                                ; preds = %if.else.i, %if.then6.i
  %len.0.i = phi i32 [ %call11.i, %if.else.i ], [ 9, %if.then6.i ]
  tail call void @rtnl_unlock() #18
  ret i32 %len.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sched5(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #18
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !390
  %call1.i = tail call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call1.i, label %if.end.i, label %entry.tm_attr_store.exit_crit_edge

entry.tm_attr_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end.i:                                         ; preds = %entry
  %call2.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.tm_attr_store.exit_crit_edge

if.end.i.tm_attr_store.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %4)
  %cmp.i = icmp ugt i32 %4, 10000000
  br i1 %cmp.i, label %if.end4.i.tm_attr_store.exit_crit_edge, label %if.end6.i

if.end4.i.tm_attr_store.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @rtnl_lock() #18
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %call7.i = call i32 @t3_config_sched(ptr noundef %1, i32 noundef %6, i32 noundef 5) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 %len, i32 %call7.i
  call void @rtnl_unlock() #18
  br label %tm_attr_store.exit

tm_attr_store.exit:                               ; preds = %if.end6.i, %if.end4.i.tm_attr_store.exit_crit_edge, %if.end.i.tm_attr_store.exit_crit_edge, %entry.tm_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end6.i ], [ -1, %entry.tm_attr_store.exit_crit_edge ], [ %call2.i, %if.end.i.tm_attr_store.exit_crit_edge ], [ -22, %if.end4.i.tm_attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #18
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sched6(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void @rtnl_lock() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %3, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 83886080) #18, !srcloc !389
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %5, i32 1052
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #18, !srcloc !386
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %and4.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.89, i32 10)
  br label %tm_attr_show.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %shr2.i = lshr i32 %7, 8
  %and3.i = and i32 %shr2.i, 255
  %vpd.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vpd.i, align 4
  %mul.i = mul i32 %10, 1000
  %div8.i = udiv i32 %mul.i, %and4.i
  %mul9.i = mul i32 %div8.i, %and3.i
  %div10.i = udiv i32 %mul9.i, 125
  %call11.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.90, i32 noundef %div10.i) #18
  br label %tm_attr_show.exit

tm_attr_show.exit:                                ; preds = %if.else.i, %if.then6.i
  %len.0.i = phi i32 [ %call11.i, %if.else.i ], [ 9, %if.then6.i ]
  tail call void @rtnl_unlock() #18
  ret i32 %len.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sched6(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #18
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !390
  %call1.i = tail call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call1.i, label %if.end.i, label %entry.tm_attr_store.exit_crit_edge

entry.tm_attr_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end.i:                                         ; preds = %entry
  %call2.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.tm_attr_store.exit_crit_edge

if.end.i.tm_attr_store.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %4)
  %cmp.i = icmp ugt i32 %4, 10000000
  br i1 %cmp.i, label %if.end4.i.tm_attr_store.exit_crit_edge, label %if.end6.i

if.end4.i.tm_attr_store.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @rtnl_lock() #18
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %call7.i = call i32 @t3_config_sched(ptr noundef %1, i32 noundef %6, i32 noundef 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 %len, i32 %call7.i
  call void @rtnl_unlock() #18
  br label %tm_attr_store.exit

tm_attr_store.exit:                               ; preds = %if.end6.i, %if.end4.i.tm_attr_store.exit_crit_edge, %if.end.i.tm_attr_store.exit_crit_edge, %entry.tm_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end6.i ], [ -1, %entry.tm_attr_store.exit_crit_edge ], [ %call2.i, %if.end.i.tm_attr_store.exit_crit_edge ], [ -22, %if.end4.i.tm_attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #18
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sched7(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void @rtnl_lock() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %3, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 83886080) #18, !srcloc !389
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %5, i32 1052
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #18, !srcloc !386
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %shr.i = lshr i32 %7, 16
  %and4.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.89, i32 10)
  br label %tm_attr_show.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %shr2.i = lshr i32 %7, 24
  %vpd.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vpd.i, align 4
  %mul.i = mul i32 %10, 1000
  %div8.i = udiv i32 %mul.i, %and4.i
  %mul9.i = mul i32 %div8.i, %shr2.i
  %div10.i = udiv i32 %mul9.i, 125
  %call11.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.90, i32 noundef %div10.i) #18
  br label %tm_attr_show.exit

tm_attr_show.exit:                                ; preds = %if.else.i, %if.then6.i
  %len.0.i = phi i32 [ %call11.i, %if.else.i ], [ 9, %if.then6.i ]
  tail call void @rtnl_unlock() #18
  ret i32 %len.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sched7(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #18
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !390
  %call1.i = tail call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call1.i, label %if.end.i, label %entry.tm_attr_store.exit_crit_edge

entry.tm_attr_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end.i:                                         ; preds = %entry
  %call2.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.tm_attr_store.exit_crit_edge

if.end.i.tm_attr_store.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %4)
  %cmp.i = icmp ugt i32 %4, 10000000
  br i1 %cmp.i, label %if.end4.i.tm_attr_store.exit_crit_edge, label %if.end6.i

if.end4.i.tm_attr_store.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %tm_attr_store.exit

if.end6.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @rtnl_lock() #18
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %call7.i = call i32 @t3_config_sched(ptr noundef %1, i32 noundef %6, i32 noundef 7) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 %len, i32 %call7.i
  call void @rtnl_unlock() #18
  br label %tm_attr_store.exit

tm_attr_store.exit:                               ; preds = %if.end6.i, %if.end4.i.tm_attr_store.exit_crit_edge, %if.end.i.tm_attr_store.exit_crit_edge, %entry.tm_attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end6.i ], [ -1, %entry.tm_attr_store.exit_crit_edge ], [ %call2.i, %if.end.i.tm_attr_store.exit_crit_edge ], [ -22, %if.end4.i.tm_attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #18
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_sge_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_irq_resources(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %msix_info = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 14
  %2 = ptrtoint ptr %msix_info to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msix_info, align 128
  %conv = zext i16 %3 to i32
  %call = tail call ptr @free_irq(i32 noundef %conv, ptr noundef %adapter) #18
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 10, i32 9
  %4 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp34.not = icmp eq i32 %5, 0
  br i1 %cmp34.not, label %if.then.if.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.cond4.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp537 = icmp sgt i32 %add, 0
  br i1 %cmp537, label %for.body7.lr.ph, label %for.cond4.preheader.if.end_crit_edge

for.cond4.preheader.if.end_crit_edge:             ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body7.lr.ph:                                  ; preds = %for.cond4.preheader
  %sge = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  br label %for.body7

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %n.036 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %i.035
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %nqsets = getelementptr i8, ptr %7, i32 2313
  %8 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nqsets, align 1
  %conv3 = zext i8 %9 to i32
  %add = add i32 %n.036, %conv3
  %inc = add nuw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond4.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.lr.ph
  %i.138 = phi i32 [ 0, %for.body7.lr.ph ], [ %add9, %for.body7.for.body7_crit_edge ]
  %add9 = add nuw nsw i32 %i.138, 1
  %arrayidx10 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 14, i32 %add9
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx10, align 8
  %conv12 = zext i16 %11 to i32
  %arrayidx13 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %i.138
  %call14 = tail call ptr @free_irq(i32 noundef %conv12, ptr noundef %arrayidx13) #18
  %exitcond39.not = icmp eq i32 %add9, %add
  br i1 %exitcond39.not, label %for.body7.if.end_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body7

for.body7.if.end_crit_edge:                       ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call18 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %adapter) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body7.if.end_crit_edge, %for.cond4.preheader.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_port_intr_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_free_sge_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_replay_prep_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %open_device_map = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_device_map, align 32
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call fastcc i32 @cxgb_up(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %port_id = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_id, align 8
  %conv = zext i8 %5 to i32
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %open_device_map) #18
  %offload.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 14
  %6 = ptrtoint ptr %offload.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.end.if.end15_crit_edge, label %land.lhs.true7

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

land.lhs.true7:                                   ; preds = %if.end
  %8 = load i32, ptr @ofld_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true7.if.end15_crit_edge

land.lhs.true7.if.end15_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then9:                                         ; preds = %land.lhs.true7
  %call10 = tail call fastcc i32 @offload_open(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end15_crit_edge, label %do.end

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #21
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then9.if.end15_crit_edge, %land.lhs.true7.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %nqsets = getelementptr i8, ptr %dev, i32 2313
  %9 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nqsets, align 1
  %conv16 = zext i8 %10 to i32
  %call17 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %dev, i32 noundef %conv16) #18
  %11 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nqsets, align 1
  %conv19 = zext i8 %12 to i32
  %call20 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %dev, i32 noundef %conv19) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %mac1.i = getelementptr i8, ptr %dev, i32 5624
  %call2.i = tail call i32 @t3_mac_reset(ptr noundef %mac1.i) #18
  %call3.i = tail call i32 @t3_mac_set_num_ucast(ptr noundef %mac1.i, i32 noundef 2) #18
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %13 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mtu.i, align 4
  %call4.i = tail call i32 @t3_mac_set_mtu(ptr noundef %mac1.i, i32 noundef %14) #18
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %15 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr.i, align 64
  %call5.i = tail call i32 @t3_mac_set_address(ptr noundef %mac1.i, i32 noundef 0, ptr noundef %16) #18
  %iscsic.i = getelementptr i8, ptr %dev, i32 6128
  %call6.i = tail call i32 @t3_mac_set_address(ptr noundef %mac1.i, i32 noundef 1, ptr noundef %iscsic.i) #18
  %call7.i = tail call i32 @t3_mac_set_rx_mode(ptr noundef %mac1.i, ptr noundef %dev) #18
  %phy.i = getelementptr i8, ptr %dev, i32 2316
  %link_config.i = getelementptr i8, ptr %dev, i32 6096
  %call8.i = tail call i32 @t3_link_start(ptr noundef %phy.i, ptr noundef %mac1.i, ptr noundef %link_config.i) #18
  %call9.i = tail call i32 @t3_mac_enable(ptr noundef %mac1.i, i32 noundef 3) #18
  %17 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port_id, align 8
  %conv25 = zext i8 %18 to i32
  tail call void @t3_port_intr_enable(ptr noundef %1, i32 noundef %conv25) #18
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %19 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp4.not.i = icmp eq i32 %20, 0
  br i1 %cmp4.not.i, label %if.end23.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i

if.end23.netif_tx_start_all_queues.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.end23
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %22, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  %inc.i = add nuw i32 %i.05.i, 1
  %23 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_start_all_queues.exit_crit_edge

for.body.i.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_tx_start_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i.netif_tx_start_all_queues.exit_crit_edge, %if.end23.netif_tx_start_all_queues.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.then27, label %netif_tx_start_all_queues.exit.if.end28_crit_edge

netif_tx_start_all_queues.exit.if.end28_crit_edge: ; preds = %netif_tx_start_all_queues.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then27:                                        ; preds = %netif_tx_start_all_queues.exit
  %linkpoll_period.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 12
  %25 = ptrtoint ptr %linkpoll_period.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %linkpoll_period.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #20
  %mul.i = mul i32 %26, 100
  %div.i = udiv i32 %mul.i, 10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #20
  %stats_update_period.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 11
  %27 = ptrtoint ptr %stats_update_period.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stats_update_period.i, align 4
  %mul4.i = mul i32 %28, 100
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ %mul4.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool5.not.i = icmp eq i32 %cond.i, 0
  br i1 %tobool5.not.i, label %cond.end.i.if.end28_crit_edge, label %if.then.i

cond.end.i.if.end28_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %29 = load ptr, ptr @cxgb3_wq, align 4
  %adap_check_task.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %adap_check_task.i, i32 noundef %cond.i) #18
  br label %if.end28

if.end28:                                         ; preds = %if.then.i, %cond.end.i.if.end28_crit_edge, %netif_tx_start_all_queues.exit.if.end28_crit_edge
  %30 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_id, align 8
  %conv30 = zext i8 %31 to i32
  tail call void @cxgb3_event_notify(ptr noundef %1, i32 noundef 3, i32 noundef %conv30) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ %call3, %land.lhs.true.cleanup_crit_edge ], [ %call20, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb_up(ptr noundef %adap) unnamed_addr #0 align 64 {
entry:
  %cpus.i = alloca [9 x i8], align 1
  %rspq_map.i = alloca [65 x i16], align 2
  %tpsram.i = alloca ptr, align 4
  %buf.i = alloca [64 x i8], align 1
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end33

if.then:                                          ; preds = %entry
  %call = tail call i32 @t3_check_fw_version(ptr noundef %adap) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp = icmp eq i32 %call, -22
  br i1 %cmp, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #18
  %2 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !390
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 3
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.115, ptr noundef %dev1.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.115) #21
  br label %upgrade_fw.exit.thread

if.end.i:                                         ; preds = %if.then1
  %5 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %call2.i = call i32 @t3_load_fw(ptr noundef %adap, ptr noundef %8, i32 noundef %10) #18
  %11 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %12) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %13, label %do.end10.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.121, i32 noundef 7, i32 noundef 12, i32 noundef 0) #21
  br label %upgrade_fw.exit.thread

upgrade_fw.exit.thread:                           ; preds = %do.end10.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #18
  br label %14

13:                                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.118, i32 noundef 7, i32 noundef 12, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #18
  br label %14

14:                                               ; preds = %13, %upgrade_fw.exit.thread
  %15 = phi ptr [ @.str.87, %13 ], [ @.str.86, %upgrade_fw.exit.thread ]
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %pdev.i, align 8
  %dev287 = getelementptr inbounds %struct.pci_dev, ptr %.pn, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev287, ptr noundef nonnull @.str.104, i32 noundef 7, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %15) #21
  br label %if.end

if.end:                                           ; preds = %14, %if.then.if.end_crit_edge
  %call4 = call i32 @t3_check_tpsram_version(ptr noundef %adap) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call4)
  %cmp5 = icmp eq i32 %call4, -22
  br i1 %cmp5, label %if.then6, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tpsram.i) #18
  %17 = ptrtoint ptr %tpsram.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %tpsram.i, align 4, !annotation !390
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i) #18
  %18 = call ptr @memset(ptr %buf.i, i32 255, i32 64)
  %pdev.i179 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 3
  %19 = ptrtoint ptr %pdev.i179 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i179, align 8
  %dev1.i180 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %rev1.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 10, i32 13
  %21 = ptrtoint ptr %rev1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rev1.i.i, align 4
  %switch.tableidx = add i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %23 = icmp ult i32 %switch.tableidx, 3
  br i1 %23, label %switch.lookup, label %update_tpsram.exit.thread

update_tpsram.exit.thread:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tpsram.i) #18
  %24 = ptrtoint ptr %pdev.i179 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i179, align 8
  %dev12289 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  br label %43

switch.lookup:                                    ; preds = %if.then6
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.cxgb_up, i32 0, i32 %switch.tableidx
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call2.i181 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 64, ptr noundef nonnull @.str.123, i32 noundef %switch.load) #18
  %call4.i = call i32 @request_firmware(ptr noundef nonnull %tpsram.i, ptr noundef nonnull %buf.i, ptr noundef %dev1.i180) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i182 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i182, label %update_tpsram.exit.thread293, label %if.end8.i

update_tpsram.exit.thread293:                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i180, ptr noundef nonnull @.str.124, ptr noundef nonnull %buf.i) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tpsram.i) #18
  %27 = ptrtoint ptr %pdev.i179 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i179, align 8
  %dev12295 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  br label %44

if.end8.i:                                        ; preds = %switch.lookup
  %29 = ptrtoint ptr %tpsram.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tpsram.i, align 4
  %data.i185 = getelementptr inbounds %struct.firmware, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %data.i185 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i185, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  %call9.i = call i32 @t3_check_tpsram(ptr noundef %adap, ptr noundef %32, i32 noundef %34) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.update_tpsram.exit_crit_edge

if.end8.i.update_tpsram.exit_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %update_tpsram.exit

if.end12.i:                                       ; preds = %if.end8.i
  %35 = ptrtoint ptr %tpsram.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tpsram.i, align 4
  %data13.i = getelementptr inbounds %struct.firmware, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %data13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data13.i, align 4
  %call14.i = call i32 @t3_set_proto_sram(ptr noundef %adap, ptr noundef %38) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end24.thread.i, label %do.end29.i

if.end24.thread.i:                                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i180, ptr noundef nonnull @.str.127, i32 noundef 1, i32 noundef 1, i32 noundef 0) #21
  br label %update_tpsram.exit

do.end29.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i180, ptr noundef nonnull @.str.130, i32 noundef 1, i32 noundef 1, i32 noundef 0) #21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i180, ptr noundef nonnull @.str.133) #21
  br label %update_tpsram.exit

update_tpsram.exit:                               ; preds = %do.end29.i, %if.end24.thread.i, %if.end8.i.update_tpsram.exit_crit_edge
  %ret.0.i = phi i32 [ %call9.i, %if.end8.i.update_tpsram.exit_crit_edge ], [ 1, %do.end29.i ], [ 0, %if.end24.thread.i ]
  %39 = ptrtoint ptr %tpsram.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tpsram.i, align 4
  call void @release_firmware(ptr noundef %40) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tpsram.i) #18
  %41 = ptrtoint ptr %pdev.i179 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev.i179, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool13.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool13.not, label %update_tpsram.exit._crit_edge, label %update_tpsram.exit._crit_edge359

update_tpsram.exit._crit_edge359:                 ; preds = %update_tpsram.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %44

update_tpsram.exit._crit_edge:                    ; preds = %update_tpsram.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %43

43:                                               ; preds = %update_tpsram.exit._crit_edge, %update_tpsram.exit.thread
  %dev12292 = phi ptr [ %dev12289, %update_tpsram.exit.thread ], [ %dev12, %update_tpsram.exit._crit_edge ]
  br label %44

44:                                               ; preds = %43, %update_tpsram.exit._crit_edge359, %update_tpsram.exit.thread293
  %dev12291 = phi ptr [ %dev12292, %43 ], [ %dev12, %update_tpsram.exit._crit_edge359 ], [ %dev12295, %update_tpsram.exit.thread293 ]
  %45 = phi ptr [ @.str.87, %43 ], [ @.str.86, %update_tpsram.exit._crit_edge359 ], [ @.str.86, %update_tpsram.exit.thread293 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev12291, ptr noundef nonnull @.str.107, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %45) #21
  br label %if.end15

if.end15:                                         ; preds = %44, %if.end.if.end15_crit_edge
  call void @t3_intr_clear(ptr noundef %adap) #18
  %call16 = call i32 @t3_init_hw(ptr noundef %adap, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup110_crit_edge

if.end15.cleanup110_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup110

if.end19:                                         ; preds = %if.end15
  call void @t3_set_reg_field(ptr noundef %adap, i32 noundef 884, i32 noundef 0, i32 noundef 8) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  call void @arm_heavy_mb() #18
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 1320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #18, !srcloc !389
  %rev.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 10, i32 13
  %48 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.not.i = icmp eq i32 %49, 0
  br i1 %cmp.not.i, label %if.end19.if.end.i187_crit_edge, label %land.lhs.true.i

if.end19.if.end.i187_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i187

land.lhs.true.i:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %and.i = lshr i32 %51, 1
  %52 = and i32 %and.i, 1
  %sext.i = add nsw i32 %52, -1
  br label %if.end.i187

if.end.i187:                                      ; preds = %land.lhs.true.i, %if.end19.if.end.i187_crit_edge
  %irq_idx.0.i = phi i32 [ 0, %if.end19.if.end.i187_crit_edge ], [ %sext.i, %land.lhs.true.i ]
  %nports.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 10, i32 9
  %53 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp258.not.i = icmp eq i32 %54, 0
  br i1 %cmp258.not.i, label %if.end.i187.for.end_crit_edge, label %for.body.lr.ph.i

if.end.i187.for.end_crit_edge:                    ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph.i:                                 ; preds = %if.end.i187
  %sge.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc22.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %qset_idx.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %qset_idx.1.lcssa.i, %for.inc22.i.for.body.i_crit_edge ]
  %i.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc23.i, %for.inc22.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 21, i32 %i.059.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %first_qset.i = getelementptr i8, ptr %56, i32 2314
  %57 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %first_qset.i, align 2
  %idxprom.i = zext i8 %58 to i32
  %arrayidx3.i = getelementptr [8 x %struct.sge_qset], ptr %sge.i, i32 0, i32 %idxprom.i
  %qs4.i = getelementptr i8, ptr %56, i32 2308
  %59 = ptrtoint ptr %qs4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx3.i, ptr %qs4.i, align 4
  %nqsets.i = getelementptr i8, ptr %56, i32 2313
  %60 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %nqsets.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp655.not.i = icmp eq i8 %61, 0
  br i1 %cmp655.not.i, label %for.body.i.for.inc22.i_crit_edge, label %for.body8.lr.ph.i

for.body.i.for.inc22.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc22.i

for.body8.lr.ph.i:                                ; preds = %for.body.i
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 103
  br label %for.body8.i

for.cond5.i:                                      ; preds = %for.body8.i
  %inc.i = add nuw nsw i32 %j.056.i, 1
  %62 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %nqsets.i, align 1
  %conv.i = zext i8 %63 to i32
  %cmp6.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp6.i, label %for.cond5.i.for.body8.i_crit_edge, label %for.cond5.i.for.inc22.i_crit_edge

for.cond5.i.for.inc22.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc22.i

for.cond5.i.for.body8.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.cond5.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %qset_idx.157.i = phi i32 [ %qset_idx.060.i, %for.body8.lr.ph.i ], [ %add.i, %for.cond5.i.for.body8.i_crit_edge ]
  %j.056.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc.i, %for.cond5.i.for.body8.i_crit_edge ]
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %and10.i = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %add.i = add i32 %qset_idx.157.i, 1
  %cond.i = select i1 %tobool11.not.i, i32 %irq_idx.0.i, i32 %add.i
  %arrayidx14.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 10, i32 0, i32 1, i32 %qset_idx.157.i
  %66 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %67, i32 %j.056.i
  %call16.i = call i32 @t3_sge_alloc_qset(ptr noundef %adap, i32 noundef %qset_idx.157.i, i32 noundef 1, i32 noundef %cond.i, ptr noundef %arrayidx14.i, i32 noundef 3, ptr noundef %56, ptr noundef %arrayidx.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.cond5.i, label %setup_sge_qsets.exit.thread

setup_sge_qsets.exit.thread:                      ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @t3_free_sge_resources(ptr noundef %adap) #18
  br label %cleanup110

for.inc22.i:                                      ; preds = %for.cond5.i.for.inc22.i_crit_edge, %for.body.i.for.inc22.i_crit_edge
  %qset_idx.1.lcssa.i = phi i32 [ %qset_idx.060.i, %for.body.i.for.inc22.i_crit_edge ], [ %add.i, %for.cond5.i.for.inc22.i_crit_edge ]
  %inc23.i = add nuw i32 %i.059.i, 1
  %68 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nports.i, align 4
  %cmp2.i = icmp ult i32 %inc23.i, %69
  br i1 %cmp2.i, label %for.inc22.i.for.body.i_crit_edge, label %setup_sge_qsets.exit

for.inc22.i.for.body.i_crit_edge:                 ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

setup_sge_qsets.exit:                             ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp24313.not = icmp eq i32 %69, 0
  br i1 %cmp24313.not, label %setup_sge_qsets.exit.for.end_crit_edge, label %setup_sge_qsets.exit.for.body_crit_edge

setup_sge_qsets.exit.for.body_crit_edge:          ; preds = %setup_sge_qsets.exit
  br label %for.body

setup_sge_qsets.exit.for.end_crit_edge:           ; preds = %setup_sge_qsets.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %setup_sge_qsets.exit.for.body_crit_edge
  %i.0314 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %setup_sge_qsets.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %adap, i32 0, i32 21, i32 %i.0314
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 23
  %72 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %features, align 16
  call fastcc void @cxgb_vlan_mode(ptr noundef %71, i64 noundef %73)
  %inc = add nuw i32 %i.0314, 1
  %74 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nports.i, align 4
  %cmp24 = icmp ult i32 %inc, %75
  br i1 %cmp24, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %setup_sge_qsets.exit.for.end_crit_edge, %if.end.i187.for.end_crit_edge
  %arrayidx.i.i188 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 21, i32 0
  %76 = ptrtoint ptr %arrayidx.i.i188 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i188, align 4
  %nqsets.i189 = getelementptr i8, ptr %77, i32 2313
  %78 = ptrtoint ptr %nqsets.i189 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %nqsets.i189, align 1
  %conv.i190 = zext i8 %79 to i32
  %arrayidx.i191 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 21, i32 1
  %80 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i191, align 4
  %tobool.not.i = icmp eq ptr %81, null
  br i1 %tobool.not.i, label %for.end.cond.end.i_crit_edge, label %cond.true.i

for.end.cond.end.i_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %nqsets2.i = getelementptr i8, ptr %81, i32 2313
  %82 = ptrtoint ptr %nqsets2.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %nqsets2.i, align 1
  %conv3.i = zext i8 %83 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.end.cond.end.i_crit_edge
  %cond.i192 = phi i32 [ %conv3.i, %cond.true.i ], [ 1, %for.end.cond.end.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %cpus.i) #18
  %84 = getelementptr inbounds [9 x i8], ptr %cpus.i, i32 0, i32 1
  %85 = getelementptr inbounds [9 x i8], ptr %cpus.i, i32 0, i32 2
  %86 = getelementptr inbounds [9 x i8], ptr %cpus.i, i32 0, i32 3
  %87 = getelementptr inbounds [9 x i8], ptr %cpus.i, i32 0, i32 4
  %88 = getelementptr inbounds [9 x i8], ptr %cpus.i, i32 0, i32 5
  %89 = getelementptr inbounds [9 x i8], ptr %cpus.i, i32 0, i32 6
  %90 = getelementptr inbounds [9 x i8], ptr %cpus.i, i32 0, i32 7
  %91 = getelementptr inbounds [9 x i8], ptr %cpus.i, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %rspq_map.i) #18
  %92 = call ptr @memset(ptr %rspq_map.i, i32 255, i32 128)
  %93 = ptrtoint ptr %cpus.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %cpus.i, align 1
  %94 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %84, align 1
  %95 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 2, ptr %85, align 1
  %96 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 3, ptr %86, align 1
  %97 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 4, ptr %87, align 1
  %98 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 5, ptr %88, align 1
  %99 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 6, ptr %89, align 1
  %100 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 7, ptr %90, align 1
  %101 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -1, ptr %91, align 1
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %cond.end.i
  %i.139.i = phi i32 [ 0, %cond.end.i ], [ %inc19.i, %for.body11.i.for.body11.i_crit_edge ]
  %rem.i = urem i32 %i.139.i, %conv.i190
  %conv12.i = trunc i32 %rem.i to i16
  %arrayidx13.i = getelementptr [65 x i16], ptr %rspq_map.i, i32 0, i32 %i.139.i
  %102 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv12.i, ptr %arrayidx13.i, align 2
  %rem14.i = urem i32 %i.139.i, %cond.i192
  %add.i193 = add nuw nsw i32 %rem14.i, %conv.i190
  %conv15.i = trunc i32 %add.i193 to i16
  %add16.i = add nuw nsw i32 %i.139.i, 32
  %arrayidx17.i = getelementptr [65 x i16], ptr %rspq_map.i, i32 0, i32 %add16.i
  %103 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv15.i, ptr %arrayidx17.i, align 2
  %inc19.i = add nuw nsw i32 %i.139.i, 1
  %exitcond.not.i = icmp eq i32 %inc19.i, 32
  br i1 %exitcond.not.i, label %setup_rss.exit, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body11.i

setup_rss.exit:                                   ; preds = %for.body11.i
  %arrayidx21.i = getelementptr inbounds [65 x i16], ptr %rspq_map.i, i32 0, i32 64
  %104 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -1, ptr %arrayidx21.i, align 2
  call void @t3_config_rss(ptr noundef %adap, i32 noundef 922746988, ptr noundef nonnull %cpus.i, ptr noundef nonnull %rspq_map.i) #18
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %rspq_map.i) #18
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %cpus.i) #18
  %105 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags, align 4
  %and28 = and i32 %106, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then30, label %setup_rss.exit.if.end31_crit_edge

setup_rss.exit.if.end31_crit_edge:                ; preds = %setup_rss.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then30:                                        ; preds = %setup_rss.exit
  %sge.i194 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16
  %107 = ptrtoint ptr %sge.i194 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sge.i194, align 128
  %tobool.not.i195 = icmp eq ptr %108, null
  br i1 %tobool.not.i195, label %if.then30.if.end.i196_crit_edge, label %if.then.i

if.then30.if.end.i196_crit_edge:                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i196

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 7
  %109 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %netdev.i, align 8
  %napi.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 1
  %poll.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 1, i32 5
  %111 = ptrtoint ptr %poll.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %poll.i, align 8
  call void @netif_napi_add(ptr noundef %110, ptr noundef %napi.i, ptr noundef %112, i32 noundef 64) #18
  br label %if.end.i196

if.end.i196:                                      ; preds = %if.then.i, %if.then30.if.end.i196_crit_edge
  %arrayidx.1.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 1
  %113 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.1.i, align 128
  %tobool.not.1.i = icmp eq ptr %114, null
  br i1 %tobool.not.1.i, label %if.end.i196.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i196.if.end.1.i_crit_edge:                 ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.1.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 1, i32 7
  %115 = ptrtoint ptr %netdev.1.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %netdev.1.i, align 8
  %napi.1.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 1, i32 1
  %poll.1.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 1, i32 1, i32 5
  %117 = ptrtoint ptr %poll.1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %poll.1.i, align 8
  call void @netif_napi_add(ptr noundef %116, ptr noundef %napi.1.i, ptr noundef %118, i32 noundef 64) #18
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i196.if.end.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 2
  %119 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.2.i, align 128
  %tobool.not.2.i = icmp eq ptr %120, null
  br i1 %tobool.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %if.then.2.i

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.2.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 2, i32 7
  %121 = ptrtoint ptr %netdev.2.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %netdev.2.i, align 8
  %napi.2.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 2, i32 1
  %poll.2.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 2, i32 1, i32 5
  %123 = ptrtoint ptr %poll.2.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %poll.2.i, align 8
  call void @netif_napi_add(ptr noundef %122, ptr noundef %napi.2.i, ptr noundef %124, i32 noundef 64) #18
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 3
  %125 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.3.i, align 128
  %tobool.not.3.i = icmp eq ptr %126, null
  br i1 %tobool.not.3.i, label %if.end.2.i.if.end.3.i_crit_edge, label %if.then.3.i

if.end.2.i.if.end.3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.3.i

if.then.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.3.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 3, i32 7
  %127 = ptrtoint ptr %netdev.3.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %netdev.3.i, align 8
  %napi.3.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 3, i32 1
  %poll.3.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 3, i32 1, i32 5
  %129 = ptrtoint ptr %poll.3.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %poll.3.i, align 8
  call void @netif_napi_add(ptr noundef %128, ptr noundef %napi.3.i, ptr noundef %130, i32 noundef 64) #18
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %if.end.2.i.if.end.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 4
  %131 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.4.i, align 128
  %tobool.not.4.i = icmp eq ptr %132, null
  br i1 %tobool.not.4.i, label %if.end.3.i.if.end.4.i_crit_edge, label %if.then.4.i

if.end.3.i.if.end.4.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.4.i

if.then.4.i:                                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.4.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 4, i32 7
  %133 = ptrtoint ptr %netdev.4.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %netdev.4.i, align 8
  %napi.4.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 4, i32 1
  %poll.4.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 4, i32 1, i32 5
  %135 = ptrtoint ptr %poll.4.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %poll.4.i, align 8
  call void @netif_napi_add(ptr noundef %134, ptr noundef %napi.4.i, ptr noundef %136, i32 noundef 64) #18
  br label %if.end.4.i

if.end.4.i:                                       ; preds = %if.then.4.i, %if.end.3.i.if.end.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 5
  %137 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.5.i, align 128
  %tobool.not.5.i = icmp eq ptr %138, null
  br i1 %tobool.not.5.i, label %if.end.4.i.if.end.5.i_crit_edge, label %if.then.5.i

if.end.4.i.if.end.5.i_crit_edge:                  ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.5.i

if.then.5.i:                                      ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.5.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 5, i32 7
  %139 = ptrtoint ptr %netdev.5.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %netdev.5.i, align 8
  %napi.5.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 5, i32 1
  %poll.5.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 5, i32 1, i32 5
  %141 = ptrtoint ptr %poll.5.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %poll.5.i, align 8
  call void @netif_napi_add(ptr noundef %140, ptr noundef %napi.5.i, ptr noundef %142, i32 noundef 64) #18
  br label %if.end.5.i

if.end.5.i:                                       ; preds = %if.then.5.i, %if.end.4.i.if.end.5.i_crit_edge
  %arrayidx.6.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 6
  %143 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.6.i, align 128
  %tobool.not.6.i = icmp eq ptr %144, null
  br i1 %tobool.not.6.i, label %if.end.5.i.if.end.6.i_crit_edge, label %if.then.6.i

if.end.5.i.if.end.6.i_crit_edge:                  ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.6.i

if.then.6.i:                                      ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.6.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 6, i32 7
  %145 = ptrtoint ptr %netdev.6.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %netdev.6.i, align 8
  %napi.6.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 6, i32 1
  %poll.6.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 6, i32 1, i32 5
  %147 = ptrtoint ptr %poll.6.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %poll.6.i, align 8
  call void @netif_napi_add(ptr noundef %146, ptr noundef %napi.6.i, ptr noundef %148, i32 noundef 64) #18
  br label %if.end.6.i

if.end.6.i:                                       ; preds = %if.then.6.i, %if.end.5.i.if.end.6.i_crit_edge
  %arrayidx.7.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 7
  %149 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.7.i, align 128
  %tobool.not.7.i = icmp eq ptr %150, null
  br i1 %tobool.not.7.i, label %if.end.6.i.init_napi.exit_crit_edge, label %if.then.7.i

if.end.6.i.init_napi.exit_crit_edge:              ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_napi.exit

if.then.7.i:                                      ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.7.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 7, i32 7
  %151 = ptrtoint ptr %netdev.7.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %netdev.7.i, align 8
  %napi.7.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 7, i32 1
  %poll.7.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 7, i32 1, i32 5
  %153 = ptrtoint ptr %poll.7.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %poll.7.i, align 8
  call void @netif_napi_add(ptr noundef %152, ptr noundef %napi.7.i, ptr noundef %154, i32 noundef 64) #18
  br label %init_napi.exit

init_napi.exit:                                   ; preds = %if.then.7.i, %if.end.6.i.init_napi.exit_crit_edge
  %155 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags, align 4
  %or.i = or i32 %156, 32
  store i32 %or.i, ptr %flags, align 4
  br label %if.end31

if.end31:                                         ; preds = %init_napi.exit, %setup_rss.exit.if.end31_crit_edge
  call void @t3_start_sge_timers(ptr noundef %adap) #18
  %157 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %flags, align 4
  %or = or i32 %158, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %entry.if.end33_crit_edge
  call void @t3_intr_clear(ptr noundef %adap) #18
  %159 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %flags, align 4
  %and35 = and i32 %160, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end33
  %desc.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 14, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %161 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %name.i, align 8
  %call.i198 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %desc.i, i32 noundef 21, ptr noundef nonnull @.str.36, ptr noundef %162) #18
  %arrayidx4.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 14, i32 0, i32 1, i32 21
  %163 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %arrayidx4.i, align 1
  %nports.i199 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 10, i32 9
  %164 = ptrtoint ptr %nports.i199 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %nports.i199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp48.not.i = icmp eq i32 %165, 0
  br i1 %cmp48.not.i, label %if.then37.name_msix_vecs.exit_crit_edge, label %if.then37.for.body.i201_crit_edge

if.then37.for.body.i201_crit_edge:                ; preds = %if.then37
  br label %for.body.i201

if.then37.name_msix_vecs.exit_crit_edge:          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #20
  br label %name_msix_vecs.exit

for.body.i201:                                    ; preds = %for.end.i.for.body.i201_crit_edge, %if.then37.for.body.i201_crit_edge
  %msi_idx.050.i = phi i32 [ %msi_idx.1.lcssa.i, %for.end.i.for.body.i201_crit_edge ], [ 1, %if.then37.for.body.i201_crit_edge ]
  %j.049.i = phi i32 [ %inc25.i, %for.end.i.for.body.i201_crit_edge ], [ 0, %if.then37.for.body.i201_crit_edge ]
  %arrayidx5.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 21, i32 %j.049.i
  %166 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx5.i, align 4
  %nqsets.i200 = getelementptr i8, ptr %167, i32 2313
  %168 = ptrtoint ptr %nqsets.i200 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %nqsets.i200, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %cmp845.not.i = icmp eq i8 %169, 0
  br i1 %cmp845.not.i, label %for.body.i201.for.end.i_crit_edge, label %for.body10.lr.ph.i

for.body.i201.for.end.i_crit_edge:                ; preds = %for.body.i201
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body10.lr.ph.i:                               ; preds = %for.body.i201
  %first_qset.i202 = getelementptr i8, ptr %167, i32 2314
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %msi_idx.147.i = phi i32 [ %msi_idx.050.i, %for.body10.lr.ph.i ], [ %inc23.i205, %for.body10.i.for.body10.i_crit_edge ]
  %i.046.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc.i204, %for.body10.i.for.body10.i_crit_edge ]
  %desc13.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 14, i32 %msi_idx.147.i, i32 1
  %170 = ptrtoint ptr %first_qset.i202 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %first_qset.i202, align 2
  %conv17.i = zext i8 %171 to i32
  %add.i203 = add nuw nsw i32 %i.046.i, %conv17.i
  %call18.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %desc13.i, i32 noundef 21, ptr noundef nonnull @.str.135, ptr noundef %167, i32 noundef %add.i203) #18
  %arrayidx22.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 14, i32 %msi_idx.147.i, i32 1, i32 21
  %172 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %arrayidx22.i, align 1
  %inc.i204 = add nuw nsw i32 %i.046.i, 1
  %inc23.i205 = add i32 %msi_idx.147.i, 1
  %173 = ptrtoint ptr %nqsets.i200 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %nqsets.i200, align 1
  %conv.i206 = zext i8 %174 to i32
  %cmp8.i = icmp ult i32 %inc.i204, %conv.i206
  br i1 %cmp8.i, label %for.body10.i.for.body10.i_crit_edge, label %for.body10.i.for.end.i_crit_edge

for.body10.i.for.end.i_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body10.i

for.end.i:                                        ; preds = %for.body10.i.for.end.i_crit_edge, %for.body.i201.for.end.i_crit_edge
  %msi_idx.1.lcssa.i = phi i32 [ %msi_idx.050.i, %for.body.i201.for.end.i_crit_edge ], [ %inc23.i205, %for.body10.i.for.end.i_crit_edge ]
  %inc25.i = add nuw i32 %j.049.i, 1
  %175 = ptrtoint ptr %nports.i199 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %nports.i199, align 4
  %cmp.i207 = icmp ult i32 %inc25.i, %176
  br i1 %cmp.i207, label %for.end.i.for.body.i201_crit_edge, label %for.end.i.name_msix_vecs.exit_crit_edge

for.end.i.name_msix_vecs.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %name_msix_vecs.exit

for.end.i.for.body.i201_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i201

name_msix_vecs.exit:                              ; preds = %for.end.i.name_msix_vecs.exit_crit_edge, %if.then37.name_msix_vecs.exit_crit_edge
  %msix_info = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 14
  %177 = ptrtoint ptr %msix_info to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %msix_info, align 128
  %conv = zext i16 %178 to i32
  %call.i208 = call i32 @request_threaded_irq(i32 noundef %conv, ptr noundef nonnull @t3_async_intr_handler, ptr noundef null, i32 noundef 0, ptr noundef %desc.i, ptr noundef %adap) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %tobool42.not = icmp eq i32 %call.i208, 0
  br i1 %tobool42.not, label %if.end44, label %name_msix_vecs.exit.do.end107_crit_edge

name_msix_vecs.exit.do.end107_crit_edge:          ; preds = %name_msix_vecs.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end107

if.end44:                                         ; preds = %name_msix_vecs.exit
  %179 = ptrtoint ptr %nports.i199 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %nports.i199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp69.not.i = icmp eq i32 %180, 0
  br i1 %cmp69.not.i, label %if.end44.if.end65_crit_edge, label %for.body.lr.ph.i211

if.end44.if.end65_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end65

for.body.lr.ph.i211:                              ; preds = %if.end44
  %sge.i210 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16
  br label %for.body.i214

for.body.i214:                                    ; preds = %for.inc28.i.for.body.i214_crit_edge, %for.body.lr.ph.i211
  %qidx.071.i = phi i32 [ 0, %for.body.lr.ph.i211 ], [ %qidx.357.i, %for.inc28.i.for.body.i214_crit_edge ]
  %i.070.i = phi i32 [ 0, %for.body.lr.ph.i211 ], [ %inc29.i, %for.inc28.i.for.body.i214_crit_edge ]
  %arrayidx.i.i212 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 21, i32 %i.070.i
  %181 = ptrtoint ptr %arrayidx.i.i212 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx.i.i212, align 4
  %nqsets1.i = getelementptr i8, ptr %182, i32 2313
  %183 = ptrtoint ptr %nqsets1.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %nqsets1.i, align 1
  %conv.i213 = zext i8 %184 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %cmp360.not.i = icmp eq i8 %184, 0
  br i1 %cmp360.not.i, label %for.body.i214.for.inc28.i_crit_edge, label %for.body.i214.for.body5.i_crit_edge

for.body.i214.for.body5.i_crit_edge:              ; preds = %for.body.i214
  br label %for.body5.i

for.body.i214.for.inc28.i_crit_edge:              ; preds = %for.body.i214
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc28.i

for.cond2.i:                                      ; preds = %for.body5.i
  %inc27.i = add nuw nsw i32 %j.061.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc27.i, i32 %conv.i213)
  %cmp3.i215 = icmp ult i32 %inc27.i, %conv.i213
  %exitcond.not.i216 = icmp eq i32 %inc27.i, %conv.i213
  br i1 %exitcond.not.i216, label %for.cond2.i.for.inc28.i_crit_edge, label %for.cond2.i.for.body5.i_crit_edge

for.cond2.i.for.body5.i_crit_edge:                ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body5.i

for.cond2.i.for.inc28.i_crit_edge:                ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc28.i

for.body5.i:                                      ; preds = %for.cond2.i.for.body5.i_crit_edge, %for.body.i214.for.body5.i_crit_edge
  %cmp363.i = phi i1 [ %cmp3.i215, %for.cond2.i.for.body5.i_crit_edge ], [ true, %for.body.i214.for.body5.i_crit_edge ]
  %qidx.162.i = phi i32 [ %add.i217, %for.cond2.i.for.body5.i_crit_edge ], [ %qidx.071.i, %for.body.i214.for.body5.i_crit_edge ]
  %j.061.i = phi i32 [ %inc27.i, %for.cond2.i.for.body5.i_crit_edge ], [ 0, %for.body.i214.for.body5.i_crit_edge ]
  %add.i217 = add i32 %qidx.162.i, 1
  %arrayidx.i218 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 14, i32 %add.i217
  %185 = ptrtoint ptr %arrayidx.i218 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %arrayidx.i218, align 8
  %conv6.i = zext i16 %186 to i32
  %arrayidx7.i = getelementptr [8 x %struct.sge_qset], ptr %sge.i210, i32 0, i32 %qidx.162.i
  %polling.i = getelementptr [8 x %struct.sge_qset], ptr %sge.i210, i32 0, i32 %qidx.162.i, i32 2, i32 4
  %187 = ptrtoint ptr %polling.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %polling.i, align 8
  %call8.i = call ptr @t3_intr_handler(ptr noundef %adap, i32 noundef %188) #18
  %desc.i219 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 14, i32 %add.i217, i32 1
  %call.i.i = call i32 @request_threaded_irq(i32 noundef %conv6.i, ptr noundef %call8.i, ptr noundef null, i32 noundef 0, ptr noundef %desc.i219, ptr noundef %arrayidx7.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i220 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i220, label %for.cond2.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.body5.i
  %dec64.i = add i32 %qidx.162.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec64.i)
  %cmp1665.i = icmp sgt i32 %dec64.i, -1
  br i1 %cmp1665.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.cleanup.i_crit_edge

while.cond.preheader.i.cleanup.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec67.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %dec64.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %qidx.266.i = phi i32 [ %dec67.i, %while.body.i.while.body.i_crit_edge ], [ %qidx.162.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %arrayidx20.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 14, i32 %qidx.266.i
  %189 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %arrayidx20.i, align 8
  %conv22.i = zext i16 %190 to i32
  %arrayidx25.i = getelementptr [8 x %struct.sge_qset], ptr %sge.i210, i32 0, i32 %dec67.i
  %call26.i = call ptr @free_irq(i32 noundef %conv22.i, ptr noundef %arrayidx25.i) #18
  %dec.i = add nsw i32 %dec67.i, -1
  %cmp16.i.not = icmp eq i32 %dec67.i, 0
  br i1 %cmp16.i.not, label %while.body.i.cleanup.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i.cleanup.i_crit_edge, %while.cond.preheader.i.cleanup.i_crit_edge
  %dec.lcssa.i = phi i32 [ %dec64.i, %while.cond.preheader.i.cleanup.i_crit_edge ], [ -1, %while.body.i.cleanup.i_crit_edge ]
  br i1 %cmp363.i, label %if.then47, label %cleanup.i.for.inc28.i_crit_edge

cleanup.i.for.inc28.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc28.i

for.inc28.i:                                      ; preds = %cleanup.i.for.inc28.i_crit_edge, %for.cond2.i.for.inc28.i_crit_edge, %for.body.i214.for.inc28.i_crit_edge
  %qidx.357.i = phi i32 [ %dec.lcssa.i, %cleanup.i.for.inc28.i_crit_edge ], [ %qidx.071.i, %for.body.i214.for.inc28.i_crit_edge ], [ %add.i217, %for.cond2.i.for.inc28.i_crit_edge ]
  %inc29.i = add nuw i32 %i.070.i, 1
  %191 = ptrtoint ptr %nports.i199 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %nports.i199, align 4
  %cmp.i221 = icmp ult i32 %inc29.i, %192
  br i1 %cmp.i221, label %for.inc28.i.for.body.i214_crit_edge, label %for.inc28.i.if.end65_crit_edge

for.inc28.i.if.end65_crit_edge:                   ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end65

for.inc28.i.for.body.i214_crit_edge:              ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i214

if.then47:                                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  %193 = ptrtoint ptr %msix_info to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %msix_info, align 128
  %conv51 = zext i16 %194 to i32
  %call52 = call ptr @free_irq(i32 noundef %conv51, ptr noundef %adap) #18
  br label %do.end107

if.else:                                          ; preds = %if.end33
  %pdev54 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 3
  %195 = ptrtoint ptr %pdev54 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %pdev54, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %196, i32 0, i32 46
  %197 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %irq, align 4
  %polling = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 2, i32 4
  %199 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %polling, align 8
  %call56 = call ptr @t3_intr_handler(ptr noundef %adap, i32 noundef %200) #18
  %201 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %flags, align 4
  %and58 = shl i32 %202, 6
  %203 = and i32 %and58, 128
  %204 = xor i32 %203, 128
  %name = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %205 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %name, align 8
  %call.i223 = call i32 @request_threaded_irq(i32 noundef %198, ptr noundef %call56, ptr noundef null, i32 noundef %204, ptr noundef %206, ptr noundef %adap) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool62.not = icmp eq i32 %call.i223, 0
  br i1 %tobool62.not, label %if.else.if.end65_crit_edge, label %if.else.do.end107_crit_edge

if.else.do.end107_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end107

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end65

if.end65:                                         ; preds = %if.else.if.end65_crit_edge, %for.inc28.i.if.end65_crit_edge, %if.end44.if.end65_crit_edge
  %sge.i224 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16
  %207 = ptrtoint ptr %sge.i224 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %sge.i224, align 128
  %tobool.not.i225 = icmp eq ptr %208, null
  br i1 %tobool.not.i225, label %if.end65.for.inc.i_crit_edge, label %if.then.i227

if.end65.for.inc.i_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then.i227:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #20
  %napi.i226 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 1
  call void @napi_enable(ptr noundef %napi.i226) #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i227, %if.end65.for.inc.i_crit_edge
  %arrayidx.1.i228 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 1
  %209 = ptrtoint ptr %arrayidx.1.i228 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx.1.i228, align 128
  %tobool.not.1.i229 = icmp eq ptr %210, null
  br i1 %tobool.not.1.i229, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i231

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1.i

if.then.1.i231:                                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.1.i230 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 1, i32 1
  call void @napi_enable(ptr noundef %napi.1.i230) #18
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i231, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i232 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 2
  %211 = ptrtoint ptr %arrayidx.2.i232 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx.2.i232, align 128
  %tobool.not.2.i233 = icmp eq ptr %212, null
  br i1 %tobool.not.2.i233, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i235

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2.i

if.then.2.i235:                                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.2.i234 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 2, i32 1
  call void @napi_enable(ptr noundef %napi.2.i234) #18
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i235, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i236 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 3
  %213 = ptrtoint ptr %arrayidx.3.i236 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx.3.i236, align 128
  %tobool.not.3.i237 = icmp eq ptr %214, null
  br i1 %tobool.not.3.i237, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i239

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.3.i

if.then.3.i239:                                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.3.i238 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 3, i32 1
  call void @napi_enable(ptr noundef %napi.3.i238) #18
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i239, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i240 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 4
  %215 = ptrtoint ptr %arrayidx.4.i240 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx.4.i240, align 128
  %tobool.not.4.i241 = icmp eq ptr %216, null
  br i1 %tobool.not.4.i241, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i243

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.4.i

if.then.4.i243:                                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.4.i242 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 4, i32 1
  call void @napi_enable(ptr noundef %napi.4.i242) #18
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i243, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx.5.i244 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 5
  %217 = ptrtoint ptr %arrayidx.5.i244 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx.5.i244, align 128
  %tobool.not.5.i245 = icmp eq ptr %218, null
  br i1 %tobool.not.5.i245, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then.5.i247

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.5.i

if.then.5.i247:                                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.5.i246 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 5, i32 1
  call void @napi_enable(ptr noundef %napi.5.i246) #18
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i247, %for.inc.4.i.for.inc.5.i_crit_edge
  %arrayidx.6.i248 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 6
  %219 = ptrtoint ptr %arrayidx.6.i248 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx.6.i248, align 128
  %tobool.not.6.i249 = icmp eq ptr %220, null
  br i1 %tobool.not.6.i249, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then.6.i251

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.6.i

if.then.6.i251:                                   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.6.i250 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 6, i32 1
  call void @napi_enable(ptr noundef %napi.6.i250) #18
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then.6.i251, %for.inc.5.i.for.inc.6.i_crit_edge
  %arrayidx.7.i252 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 7
  %221 = ptrtoint ptr %arrayidx.7.i252 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arrayidx.7.i252, align 128
  %tobool.not.7.i253 = icmp eq ptr %222, null
  br i1 %tobool.not.7.i253, label %for.inc.6.i.enable_all_napi.exit_crit_edge, label %if.then.7.i255

for.inc.6.i.enable_all_napi.exit_crit_edge:       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %enable_all_napi.exit

if.then.7.i255:                                   ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #20
  %napi.7.i254 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 7, i32 1
  call void @napi_enable(ptr noundef %napi.7.i254) #18
  br label %enable_all_napi.exit

enable_all_napi.exit:                             ; preds = %if.then.7.i255, %for.inc.6.i.enable_all_napi.exit_crit_edge
  call void @t3_sge_start(ptr noundef %adap) #18
  call void @t3_intr_enable(ptr noundef %adap) #18
  %rev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 10, i32 13
  %223 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %224)
  %cmp67 = icmp ugt i32 %224, 3
  br i1 %cmp67, label %land.lhs.true, label %enable_all_napi.exit.if.end82_crit_edge

enable_all_napi.exit.if.end82_crit_edge:          ; preds = %enable_all_napi.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end82

land.lhs.true:                                    ; preds = %enable_all_napi.exit
  %225 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %flags, align 4
  %and70 = and i32 %226, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %land.lhs.true72, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end82

land.lhs.true72:                                  ; preds = %land.lhs.true
  %offload.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 10, i32 14
  %227 = ptrtoint ptr %offload.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool74.not = icmp eq i32 %228, 0
  br i1 %tobool74.not, label %land.lhs.true72.if.end82_crit_edge, label %land.lhs.true75

land.lhs.true72.if.end82_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end82

land.lhs.true75:                                  ; preds = %land.lhs.true72
  %offload_pkts.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 2, i32 14
  %229 = ptrtoint ptr %offload_pkts.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %offload_pkts.i, align 4
  call void @t3_tp_set_offload_mode(ptr noundef %adap, i32 noundef 1) #18
  %nofail_skb.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 34
  br label %for.body.i258

for.body.i258:                                    ; preds = %for.inc.i266.for.body.i258_crit_edge, %land.lhs.true75
  %i.0251.i = phi i32 [ 0, %land.lhs.true75 ], [ %add.i263, %for.inc.i266.for.body.i258_crit_edge ]
  %call.i.i256 = call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %tobool.not.i257 = icmp eq ptr %call.i.i256, null
  br i1 %tobool.not.i257, label %if.end.i259, label %for.body.i258.if.end3.i_crit_edge

for.body.i258.if.end3.i_crit_edge:                ; preds = %for.body.i258
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i

if.end.i259:                                      ; preds = %for.body.i258
  %231 = ptrtoint ptr %nofail_skb.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %nofail_skb.i, align 4
  %tobool1.not.i = icmp eq ptr %232, null
  br i1 %tobool1.not.i, label %if.end.i259.init_tp_parity.exit.thread_crit_edge, label %if.end.i259.if.end3.i_crit_edge

if.end.i259.if.end3.i_crit_edge:                  ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i

if.end.i259.init_tp_parity.exit.thread_crit_edge: ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_tp_parity.exit.thread

if.end3.i:                                        ; preds = %if.end.i259.if.end3.i_crit_edge, %for.body.i258.if.end3.i_crit_edge
  %skb.0236.i = phi ptr [ %232, %if.end.i259.if.end3.i_crit_edge ], [ %call.i.i256, %for.body.i258.if.end3.i_crit_edge ]
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0236.i, i32 0, i32 7
  %233 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool.i.not.i.i.i = icmp eq i32 %234, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put_zero.exit.i, label %do.body3.i.i.i, !prof !392

do.body3.i.i.i:                                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #18, !srcloc !393
  unreachable

__skb_put_zero.exit.i:                            ; preds = %if.end3.i
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0236.i, i32 0, i32 16
  %235 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %236, i32 32
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0236.i, i32 0, i32 6
  %237 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %238, 32
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %239 = getelementptr inbounds i8, ptr %236, i32 4
  %240 = call ptr @memset(ptr %239, i32 0, i32 28)
  %241 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 16777216, ptr %236, align 4
  %or.i260 = or i32 %i.0251.i, 335544320
  %ot.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %236, i32 0, i32 1
  %242 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %or.i260, ptr %ot.i, align 4
  %mtu_idx.i = getelementptr inbounds %struct.cpl_smt_write_req, ptr %236, i32 0, i32 3
  %conv.i261 = trunc i32 %i.0251.i to i8
  %bf.shl.i = shl i8 %conv.i261, 4
  %bf.set7.i = or i8 %bf.shl.i, 15
  %243 = ptrtoint ptr %mtu_idx.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %bf.set7.i, ptr %mtu_idx.i, align 1
  %call8.i262 = call i32 @t3_mgmt_tx(ptr noundef %adap, ptr noundef nonnull %skb.0236.i) #18
  %244 = ptrtoint ptr %nofail_skb.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %nofail_skb.i, align 4
  %cmp10.i = icmp eq ptr %skb.0236.i, %245
  %add.i263 = add nuw nsw i32 %i.0251.i, 1
  br i1 %cmp10.i, label %if.then12.i, label %__skb_put_zero.exit.i.for.inc.i266_crit_edge

__skb_put_zero.exit.i.for.inc.i266_crit_edge:     ; preds = %__skb_put_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i266

if.then12.i:                                      ; preds = %__skb_put_zero.exit.i
  %call13.i = call fastcc i32 @await_mgmt_replies(ptr noundef %adap, i32 noundef %230, i32 noundef %add.i263) #18
  %call.i203.i = call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %246 = ptrtoint ptr %nofail_skb.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %call.i203.i, ptr %nofail_skb.i, align 4
  %tobool17.not.i264 = icmp eq ptr %call.i203.i, null
  br i1 %tobool17.not.i264, label %if.then12.i.init_tp_parity.exit.thread_crit_edge, label %if.then12.i.for.inc.i266_crit_edge

if.then12.i.for.inc.i266_crit_edge:               ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i266

if.then12.i.init_tp_parity.exit.thread_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_tp_parity.exit.thread

for.inc.i266:                                     ; preds = %if.then12.i.for.inc.i266_crit_edge, %__skb_put_zero.exit.i.for.inc.i266_crit_edge
  %exitcond.not.i265 = icmp eq i32 %add.i263, 16
  br i1 %exitcond.not.i265, label %for.inc.i266.for.body24.i_crit_edge, label %for.inc.i266.for.body.i258_crit_edge

for.inc.i266.for.body.i258_crit_edge:             ; preds = %for.inc.i266
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i258

for.inc.i266.for.body24.i_crit_edge:              ; preds = %for.inc.i266
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.inc57.i.for.body24.i_crit_edge, %for.inc.i266.for.body24.i_crit_edge
  %i.1253.i = phi i32 [ %inc58.i, %for.inc57.i.for.body24.i_crit_edge ], [ 0, %for.inc.i266.for.body24.i_crit_edge ]
  %call.i204.i = call ptr @__alloc_skb(i32 noundef 24, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %tobool27.not.i = icmp eq ptr %call.i204.i, null
  br i1 %tobool27.not.i, label %if.end30.i, label %for.body24.i.if.end33.i_crit_edge

for.body24.i.if.end33.i_crit_edge:                ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end33.i

if.end30.i:                                       ; preds = %for.body24.i
  %247 = ptrtoint ptr %nofail_skb.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %nofail_skb.i, align 4
  %tobool31.not.i = icmp eq ptr %248, null
  br i1 %tobool31.not.i, label %if.end30.i.init_tp_parity.exit.thread_crit_edge, label %if.end30.i.if.end33.i_crit_edge

if.end30.i.if.end33.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end33.i

if.end30.i.init_tp_parity.exit.thread_crit_edge:  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_tp_parity.exit.thread

if.end33.i:                                       ; preds = %if.end30.i.if.end33.i_crit_edge, %for.body24.i.if.end33.i_crit_edge
  %skb.1240.i = phi ptr [ %248, %if.end30.i.if.end33.i_crit_edge ], [ %call.i204.i, %for.body24.i.if.end33.i_crit_edge ]
  %data_len.i.i.i205.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1240.i, i32 0, i32 7
  %249 = ptrtoint ptr %data_len.i.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %data_len.i.i.i205.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool.i.not.i.i206.i = icmp eq i32 %250, 0
  br i1 %tobool.i.not.i.i206.i, label %__skb_put_zero.exit212.i, label %do.body3.i.i207.i, !prof !392

do.body3.i.i207.i:                                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #18, !srcloc !393
  unreachable

__skb_put_zero.exit212.i:                         ; preds = %if.end33.i
  %tail.i.i.i208.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1240.i, i32 0, i32 16
  %251 = ptrtoint ptr %tail.i.i.i208.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %tail.i.i.i208.i, align 8
  %add.ptr.i.i209.i = getelementptr i8, ptr %252, i32 24
  store ptr %add.ptr.i.i209.i, ptr %tail.i.i.i208.i, align 8
  %len9.i.i210.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1240.i, i32 0, i32 6
  %253 = ptrtoint ptr %len9.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %len9.i.i210.i, align 4
  %add.i.i211.i = add i32 %254, 24
  store i32 %add.i.i211.i, ptr %len9.i.i210.i, align 4
  %255 = getelementptr inbounds i8, ptr %252, i32 4
  %256 = call ptr @memset(ptr %255, i32 0, i32 20)
  %257 = ptrtoint ptr %252 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 16777216, ptr %252, align 4
  %or37.i = or i32 %i.1253.i, 301989888
  %ot38.i = getelementptr inbounds %struct.cpl_l2t_write_req, ptr %252, i32 0, i32 1
  %258 = ptrtoint ptr %ot38.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %or37.i, ptr %ot38.i, align 4
  %params.i = getelementptr inbounds %struct.cpl_l2t_write_req, ptr %252, i32 0, i32 2
  %259 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %i.1253.i, ptr %params.i, align 4
  %call39.i = call i32 @t3_mgmt_tx(ptr noundef %adap, ptr noundef nonnull %skb.1240.i) #18
  %260 = ptrtoint ptr %nofail_skb.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %nofail_skb.i, align 4
  %cmp41.i = icmp eq ptr %skb.1240.i, %261
  br i1 %cmp41.i, label %if.then43.i, label %__skb_put_zero.exit212.i.for.inc57.i_crit_edge

__skb_put_zero.exit212.i.for.inc57.i_crit_edge:   ; preds = %__skb_put_zero.exit212.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc57.i

if.then43.i:                                      ; preds = %__skb_put_zero.exit212.i
  %add45.i = add nuw nsw i32 %i.1253.i, 17
  %call46.i = call fastcc i32 @await_mgmt_replies(ptr noundef %adap, i32 noundef %230, i32 noundef %add45.i) #18
  %call.i213.i = call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %262 = ptrtoint ptr %nofail_skb.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %call.i213.i, ptr %nofail_skb.i, align 4
  %tobool50.not.i = icmp eq ptr %call.i213.i, null
  br i1 %tobool50.not.i, label %if.then43.i.init_tp_parity.exit.thread_crit_edge, label %if.then43.i.for.inc57.i_crit_edge

if.then43.i.for.inc57.i_crit_edge:                ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc57.i

if.then43.i.init_tp_parity.exit.thread_crit_edge: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_tp_parity.exit.thread

for.inc57.i:                                      ; preds = %if.then43.i.for.inc57.i_crit_edge, %__skb_put_zero.exit212.i.for.inc57.i_crit_edge
  %inc58.i = add nuw nsw i32 %i.1253.i, 1
  %exitcond259.not.i = icmp eq i32 %inc58.i, 2048
  br i1 %exitcond259.not.i, label %for.inc57.i.for.body63.i_crit_edge, label %for.inc57.i.for.body24.i_crit_edge

for.inc57.i.for.body24.i_crit_edge:               ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body24.i

for.inc57.i.for.body63.i_crit_edge:               ; preds = %for.inc57.i
  br label %for.body63.i

for.body63.i:                                     ; preds = %for.inc98.i.for.body63.i_crit_edge, %for.inc57.i.for.body63.i_crit_edge
  %i.2255.i = phi i32 [ %inc99.i, %for.inc98.i.for.body63.i_crit_edge ], [ 0, %for.inc57.i.for.body63.i_crit_edge ]
  %call.i214.i = call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %tobool66.not.i = icmp eq ptr %call.i214.i, null
  br i1 %tobool66.not.i, label %if.end69.i, label %for.body63.i.if.end72.i_crit_edge

for.body63.i.if.end72.i_crit_edge:                ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end72.i

if.end69.i:                                       ; preds = %for.body63.i
  %263 = ptrtoint ptr %nofail_skb.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %nofail_skb.i, align 4
  %tobool70.not.i = icmp eq ptr %264, null
  br i1 %tobool70.not.i, label %if.end69.i.init_tp_parity.exit.thread_crit_edge, label %if.end69.i.if.end72.i_crit_edge

if.end69.i.if.end72.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end72.i

if.end69.i.init_tp_parity.exit.thread_crit_edge:  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_tp_parity.exit.thread

if.end72.i:                                       ; preds = %if.end69.i.if.end72.i_crit_edge, %for.body63.i.if.end72.i_crit_edge
  %skb.2244.i = phi ptr [ %264, %if.end69.i.if.end72.i_crit_edge ], [ %call.i214.i, %for.body63.i.if.end72.i_crit_edge ]
  %data_len.i.i.i215.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2244.i, i32 0, i32 7
  %265 = ptrtoint ptr %data_len.i.i.i215.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %data_len.i.i.i215.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool.i.not.i.i216.i = icmp eq i32 %266, 0
  br i1 %tobool.i.not.i.i216.i, label %__skb_put_zero.exit222.i, label %do.body3.i.i217.i, !prof !392

do.body3.i.i217.i:                                ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #18, !srcloc !393
  unreachable

__skb_put_zero.exit222.i:                         ; preds = %if.end72.i
  %tail.i.i.i218.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2244.i, i32 0, i32 16
  %267 = ptrtoint ptr %tail.i.i.i218.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %tail.i.i.i218.i, align 8
  %add.ptr.i.i219.i = getelementptr i8, ptr %268, i32 32
  store ptr %add.ptr.i.i219.i, ptr %tail.i.i.i218.i, align 8
  %len9.i.i220.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2244.i, i32 0, i32 6
  %269 = ptrtoint ptr %len9.i.i220.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %len9.i.i220.i, align 4
  %add.i.i221.i = add i32 %270, 32
  store i32 %add.i.i221.i, ptr %len9.i.i220.i, align 4
  %271 = getelementptr inbounds i8, ptr %268, i32 4
  %272 = call ptr @memset(ptr %271, i32 0, i32 28)
  %273 = ptrtoint ptr %268 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 16777216, ptr %268, align 4
  %or76.i = or i32 %i.2255.i, 268435456
  %ot77.i = getelementptr inbounds %struct.cpl_rte_write_req, ptr %268, i32 0, i32 1
  %274 = ptrtoint ptr %ot77.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %or76.i, ptr %ot77.i, align 4
  %conv79.i = trunc i32 %i.2255.i to i16
  %l2t_idx.i = getelementptr inbounds %struct.cpl_rte_write_req, ptr %268, i32 0, i32 6
  %275 = ptrtoint ptr %l2t_idx.i to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %conv79.i, ptr %l2t_idx.i, align 2
  %call80.i = call i32 @t3_mgmt_tx(ptr noundef %adap, ptr noundef nonnull %skb.2244.i) #18
  %276 = ptrtoint ptr %nofail_skb.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %nofail_skb.i, align 4
  %cmp82.i = icmp eq ptr %skb.2244.i, %277
  br i1 %cmp82.i, label %if.then84.i, label %__skb_put_zero.exit222.i.for.inc98.i_crit_edge

__skb_put_zero.exit222.i.for.inc98.i_crit_edge:   ; preds = %__skb_put_zero.exit222.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc98.i

if.then84.i:                                      ; preds = %__skb_put_zero.exit222.i
  %add86.i = add nuw nsw i32 %i.2255.i, 2065
  %call87.i = call fastcc i32 @await_mgmt_replies(ptr noundef %adap, i32 noundef %230, i32 noundef %add86.i) #18
  %call.i223.i = call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %278 = ptrtoint ptr %nofail_skb.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %call.i223.i, ptr %nofail_skb.i, align 4
  %tobool91.not.i = icmp eq ptr %call.i223.i, null
  br i1 %tobool91.not.i, label %if.then84.i.init_tp_parity.exit.thread_crit_edge, label %if.then84.i.for.inc98.i_crit_edge

if.then84.i.for.inc98.i_crit_edge:                ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc98.i

if.then84.i.init_tp_parity.exit.thread_crit_edge: ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_tp_parity.exit.thread

for.inc98.i:                                      ; preds = %if.then84.i.for.inc98.i_crit_edge, %__skb_put_zero.exit222.i.for.inc98.i_crit_edge
  %inc99.i = add nuw nsw i32 %i.2255.i, 1
  %exitcond260.not.i = icmp eq i32 %inc99.i, 2048
  br i1 %exitcond260.not.i, label %for.end100.i, label %for.inc98.i.for.body63.i_crit_edge

for.inc98.i.for.body63.i_crit_edge:               ; preds = %for.inc98.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body63.i

for.end100.i:                                     ; preds = %for.inc98.i
  %call.i224.i = call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %tobool102.not.i = icmp eq ptr %call.i224.i, null
  br i1 %tobool102.not.i, label %if.end105.i, label %for.end100.i.if.end108.i_crit_edge

for.end100.i.if.end108.i_crit_edge:               ; preds = %for.end100.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end108.i

if.end105.i:                                      ; preds = %for.end100.i
  %279 = ptrtoint ptr %nofail_skb.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %nofail_skb.i, align 4
  %tobool106.not.i = icmp eq ptr %280, null
  br i1 %tobool106.not.i, label %if.end105.i.init_tp_parity.exit.thread_crit_edge, label %if.end105.i.if.end108.i_crit_edge

if.end105.i.if.end108.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end108.i

if.end105.i.init_tp_parity.exit.thread_crit_edge: ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_tp_parity.exit.thread

if.end108.i:                                      ; preds = %if.end105.i.if.end108.i_crit_edge, %for.end100.i.if.end108.i_crit_edge
  %skb.3248.i = phi ptr [ %280, %if.end105.i.if.end108.i_crit_edge ], [ %call.i224.i, %for.end100.i.if.end108.i_crit_edge ]
  %data_len.i.i.i225.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3248.i, i32 0, i32 7
  %281 = ptrtoint ptr %data_len.i.i.i225.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %data_len.i.i.i225.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %tobool.i.not.i.i226.i = icmp eq i32 %282, 0
  br i1 %tobool.i.not.i.i226.i, label %__skb_put_zero.exit232.i, label %do.body3.i.i227.i, !prof !392

do.body3.i.i227.i:                                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #18, !srcloc !393
  unreachable

__skb_put_zero.exit232.i:                         ; preds = %if.end108.i
  %tail.i.i.i228.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3248.i, i32 0, i32 16
  %283 = ptrtoint ptr %tail.i.i.i228.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %tail.i.i.i228.i, align 8
  %add.ptr.i.i229.i = getelementptr i8, ptr %284, i32 32
  store ptr %add.ptr.i.i229.i, ptr %tail.i.i.i228.i, align 8
  %len9.i.i230.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3248.i, i32 0, i32 6
  %285 = ptrtoint ptr %len9.i.i230.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %len9.i.i230.i, align 4
  %add.i.i231.i = add i32 %286, 32
  store i32 %add.i.i231.i, ptr %len9.i.i230.i, align 4
  %287 = getelementptr inbounds i8, ptr %284, i32 4
  %288 = call ptr @memset(ptr %287, i32 0, i32 28)
  %289 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 16777216, ptr %284, align 8
  %ot112.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %284, i32 0, i32 1
  %290 = ptrtoint ptr %ot112.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 83886080, ptr %ot112.i, align 8
  %mask.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %284, i32 0, i32 5
  %291 = ptrtoint ptr %mask.i to i32
  call void @__asan_store8_noabort(i32 %291)
  store i64 1, ptr %mask.i, align 8
  %call113.i = call i32 @t3_mgmt_tx(ptr noundef %adap, ptr noundef nonnull %skb.3248.i) #18
  %call114.i = call fastcc i32 @await_mgmt_replies(ptr noundef %adap, i32 noundef %230, i32 noundef 4113) #18
  %292 = ptrtoint ptr %nofail_skb.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %nofail_skb.i, align 4
  %cmp116.i = icmp eq ptr %skb.3248.i, %293
  br i1 %cmp116.i, label %if.then118.i, label %__skb_put_zero.exit232.i.init_tp_parity.exit_crit_edge

__skb_put_zero.exit232.i.init_tp_parity.exit_crit_edge: ; preds = %__skb_put_zero.exit232.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_tp_parity.exit

if.then118.i:                                     ; preds = %__skb_put_zero.exit232.i
  call void @__sanitizer_cov_trace_pc() #20
  %call119.i = call fastcc i32 @await_mgmt_replies(ptr noundef %adap, i32 noundef %230, i32 noundef 4113) #18
  %call.i233.i = call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %294 = ptrtoint ptr %nofail_skb.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %call.i233.i, ptr %nofail_skb.i, align 4
  br label %init_tp_parity.exit

init_tp_parity.exit.thread:                       ; preds = %if.end105.i.init_tp_parity.exit.thread_crit_edge, %if.then84.i.init_tp_parity.exit.thread_crit_edge, %if.end69.i.init_tp_parity.exit.thread_crit_edge, %if.then43.i.init_tp_parity.exit.thread_crit_edge, %if.end30.i.init_tp_parity.exit.thread_crit_edge, %if.then12.i.init_tp_parity.exit.thread_crit_edge, %if.end.i259.init_tp_parity.exit.thread_crit_edge
  call void @t3_tp_set_offload_mode(ptr noundef %adap, i32 noundef 0) #18
  br label %if.end82

init_tp_parity.exit:                              ; preds = %if.then118.i, %__skb_put_zero.exit232.i.init_tp_parity.exit_crit_edge
  %retval.0.i267 = phi i32 [ %call119.i, %if.then118.i ], [ %call114.i, %__skb_put_zero.exit232.i.init_tp_parity.exit_crit_edge ]
  call void @t3_tp_set_offload_mode(ptr noundef %adap, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i267)
  %cmp77 = icmp eq i32 %retval.0.i267, 0
  br i1 %cmp77, label %if.then79, label %init_tp_parity.exit.if.end82_crit_edge

init_tp_parity.exit.if.end82_crit_edge:           ; preds = %init_tp_parity.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end82

if.then79:                                        ; preds = %init_tp_parity.exit
  call void @__sanitizer_cov_trace_pc() #20
  %295 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %flags, align 4
  %or81 = or i32 %296, 16
  store i32 %or81, ptr %flags, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %init_tp_parity.exit.if.end82_crit_edge, %init_tp_parity.exit.thread, %land.lhs.true72.if.end82_crit_edge, %land.lhs.true.if.end82_crit_edge, %enable_all_napi.exit.if.end82_crit_edge
  %297 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %flags, align 4
  %and84 = and i32 %298, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end82.if.end87_crit_edge, label %if.then86

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end87

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  call void @arm_heavy_mb() #18
  %regs.i268 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %299 = ptrtoint ptr %regs.i268 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %regs.i268, align 4
  %add.ptr.i269 = getelementptr i8, ptr %300, i32 1140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269, i32 5) #18, !srcloc !389
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  call void @arm_heavy_mb() #18
  %301 = ptrtoint ptr %regs.i268 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %regs.i268, align 4
  %add.ptr.i271 = getelementptr i8, ptr %302, i32 1136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i271, i32 -16513) #18, !srcloc !389
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end82.if.end87_crit_edge
  %303 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %flags, align 4
  %and89 = and i32 %304, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.then91, label %if.end87.cleanup110_crit_edge

if.end87.cleanup110_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup110

if.then91:                                        ; preds = %if.end87
  %nports.i272 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 10, i32 9
  %305 = ptrtoint ptr %nports.i272 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %nports.i272, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %cmp26.not.i = icmp eq i32 %306, 0
  br i1 %cmp26.not.i, label %if.then91.if.end101_crit_edge, label %for.body.lr.ph.i273

if.then91.if.end101_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end101

for.body.lr.ph.i273:                              ; preds = %if.then91
  %nofail_skb.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 34
  br label %for.body.i276

for.body.i276:                                    ; preds = %for.end.i283.for.body.i276_crit_edge, %for.body.lr.ph.i273
  %err.029.i = phi i32 [ 0, %for.body.lr.ph.i273 ], [ %err.1.lcssa.i, %for.end.i283.for.body.i276_crit_edge ]
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i273 ], [ %inc8.i, %for.end.i283.for.body.i276_crit_edge ]
  %arrayidx.i.i274 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 21, i32 %i.027.i
  %307 = ptrtoint ptr %arrayidx.i.i274 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %arrayidx.i.i274, align 4
  %nqsets.i275 = getelementptr i8, ptr %308, i32 2313
  %309 = ptrtoint ptr %nqsets.i275 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %nqsets.i275, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %cmp222.not.i = icmp eq i8 %310, 0
  br i1 %cmp222.not.i, label %for.body.i276.for.end.i283_crit_edge, label %for.body4.lr.ph.i

for.body.i276.for.end.i283_crit_edge:             ; preds = %for.body.i276
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i283

for.body4.lr.ph.i:                                ; preds = %for.body.i276
  %first_qset.i277 = getelementptr i8, ptr %308, i32 2314
  %conv9.i.i = trunc i32 %i.027.i to i8
  br label %for.body4.i

for.body4.i:                                      ; preds = %send_pktsched_cmd.exit.thread.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %err.125.i = phi i32 [ %err.029.i, %for.body4.lr.ph.i ], [ %326, %send_pktsched_cmd.exit.thread.i.for.body4.i_crit_edge ]
  %j.023.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i279, %send_pktsched_cmd.exit.thread.i.for.body4.i_crit_edge ]
  %311 = ptrtoint ptr %first_qset.i277 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %first_qset.i277, align 2
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 24, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body4.i.if.end3.i.i_crit_edge

for.body4.i.if.end3.i.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i.i

if.end.i.i:                                       ; preds = %for.body4.i
  %313 = ptrtoint ptr %nofail_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %nofail_skb.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %314, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.send_pktsched_cmd.exit.thread.i_crit_edge, label %if.end.i.i.if.end3.i.i_crit_edge

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i.i

if.end.i.i.send_pktsched_cmd.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %send_pktsched_cmd.exit.thread.i

if.end3.i.i:                                      ; preds = %if.end.i.i.if.end3.i.i_crit_edge, %for.body4.i.if.end3.i.i_crit_edge
  %skb.04.i.i = phi ptr [ %314, %if.end.i.i.if.end3.i.i_crit_edge ], [ %call.i.i.i, %for.body4.i.if.end3.i.i_crit_edge ]
  %call4.i.i = call ptr @skb_put(ptr noundef nonnull %skb.04.i.i, i32 noundef 24) #18
  %315 = ptrtoint ptr %call4.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 486539264, ptr %call4.i.i, align 4
  %mngt_opcode.i.i = getelementptr inbounds %struct.mngt_pktsched_wr, ptr %call4.i.i, i32 0, i32 2
  %316 = ptrtoint ptr %mngt_opcode.i.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %mngt_opcode.i.i, align 4
  %sched5.i.i = getelementptr inbounds %struct.mngt_pktsched_wr, ptr %call4.i.i, i32 0, i32 4
  %317 = ptrtoint ptr %sched5.i.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 1, ptr %sched5.i.i, align 4
  %318 = trunc i32 %j.023.i to i8
  %conv6.i.i = add i8 %312, %318
  %idx.i.i = getelementptr inbounds %struct.mngt_pktsched_wr, ptr %call4.i.i, i32 0, i32 5
  %319 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %conv6.i.i, ptr %idx.i.i, align 1
  %min.i.i = getelementptr inbounds %struct.mngt_pktsched_wr, ptr %call4.i.i, i32 0, i32 6
  %320 = ptrtoint ptr %min.i.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 -1, ptr %min.i.i, align 2
  %max.i.i = getelementptr inbounds %struct.mngt_pktsched_wr, ptr %call4.i.i, i32 0, i32 7
  %321 = ptrtoint ptr %max.i.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 -1, ptr %max.i.i, align 1
  %binding.i.i = getelementptr inbounds %struct.mngt_pktsched_wr, ptr %call4.i.i, i32 0, i32 8
  %322 = ptrtoint ptr %binding.i.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %conv9.i.i, ptr %binding.i.i, align 4
  %call10.i.i = call i32 @t3_mgmt_tx(ptr noundef %adap, ptr noundef nonnull %skb.04.i.i) #18
  %323 = ptrtoint ptr %nofail_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %nofail_skb.i.i, align 4
  %cmp.i.i = icmp eq ptr %skb.04.i.i, %324
  br i1 %cmp.i.i, label %if.then13.i.i, label %if.end3.i.i.send_pktsched_cmd.exit.i_crit_edge

if.end3.i.i.send_pktsched_cmd.exit.i_crit_edge:   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %send_pktsched_cmd.exit.i

if.then13.i.i:                                    ; preds = %if.end3.i.i
  %call.i1.i.i = call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %325 = ptrtoint ptr %nofail_skb.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %call.i1.i.i, ptr %nofail_skb.i.i, align 4
  %tobool17.not.i.i = icmp eq ptr %call.i1.i.i, null
  br i1 %tobool17.not.i.i, label %if.then13.i.i.send_pktsched_cmd.exit.thread.i_crit_edge, label %if.then13.i.i.send_pktsched_cmd.exit.i_crit_edge

if.then13.i.i.send_pktsched_cmd.exit.i_crit_edge: ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %send_pktsched_cmd.exit.i

if.then13.i.i.send_pktsched_cmd.exit.thread.i_crit_edge: ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %send_pktsched_cmd.exit.thread.i

send_pktsched_cmd.exit.i:                         ; preds = %if.then13.i.i.send_pktsched_cmd.exit.i_crit_edge, %if.end3.i.i.send_pktsched_cmd.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not.i278 = icmp eq i32 %call10.i.i, 0
  %spec.select.i = select i1 %tobool.not.i278, i32 %err.125.i, i32 %call10.i.i
  br label %send_pktsched_cmd.exit.thread.i

send_pktsched_cmd.exit.thread.i:                  ; preds = %send_pktsched_cmd.exit.i, %if.then13.i.i.send_pktsched_cmd.exit.thread.i_crit_edge, %if.end.i.i.send_pktsched_cmd.exit.thread.i_crit_edge
  %326 = phi i32 [ -12, %if.end.i.i.send_pktsched_cmd.exit.thread.i_crit_edge ], [ -12, %if.then13.i.i.send_pktsched_cmd.exit.thread.i_crit_edge ], [ %spec.select.i, %send_pktsched_cmd.exit.i ]
  %inc.i279 = add nuw nsw i32 %j.023.i, 1
  %327 = ptrtoint ptr %nqsets.i275 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %nqsets.i275, align 1
  %conv.i280 = zext i8 %328 to i32
  %cmp2.i281 = icmp ult i32 %inc.i279, %conv.i280
  br i1 %cmp2.i281, label %send_pktsched_cmd.exit.thread.i.for.body4.i_crit_edge, label %send_pktsched_cmd.exit.thread.i.for.end.i283_crit_edge

send_pktsched_cmd.exit.thread.i.for.end.i283_crit_edge: ; preds = %send_pktsched_cmd.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i283

send_pktsched_cmd.exit.thread.i.for.body4.i_crit_edge: ; preds = %send_pktsched_cmd.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body4.i

for.end.i283:                                     ; preds = %send_pktsched_cmd.exit.thread.i.for.end.i283_crit_edge, %for.body.i276.for.end.i283_crit_edge
  %err.1.lcssa.i = phi i32 [ %err.029.i, %for.body.i276.for.end.i283_crit_edge ], [ %326, %send_pktsched_cmd.exit.thread.i.for.end.i283_crit_edge ]
  %inc8.i = add nuw i32 %i.027.i, 1
  %329 = ptrtoint ptr %nports.i272 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %nports.i272, align 4
  %cmp.i282 = icmp ult i32 %inc8.i, %330
  br i1 %cmp.i282, label %for.end.i283.for.body.i276_crit_edge, label %bind_qsets.exit

for.end.i283.for.body.i276_crit_edge:             ; preds = %for.end.i283
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i276

bind_qsets.exit:                                  ; preds = %for.end.i283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.lcssa.i)
  %cmp93 = icmp slt i32 %err.1.lcssa.i, 0
  br i1 %cmp93, label %do.end98, label %bind_qsets.exit.if.end101_crit_edge

bind_qsets.exit.if.end101_crit_edge:              ; preds = %bind_qsets.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end101

do.end98:                                         ; preds = %bind_qsets.exit
  call void @__sanitizer_cov_trace_pc() #20
  %pdev99 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 3
  %331 = ptrtoint ptr %pdev99 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %pdev99, align 8
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %332, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100, ptr noundef nonnull @.str.110, i32 noundef %err.1.lcssa.i) #21
  call void @t3_intr_disable(ptr noundef %adap) #18
  call fastcc void @free_irq_resources(ptr noundef %adap)
  br label %cleanup110

if.end101:                                        ; preds = %bind_qsets.exit.if.end101_crit_edge, %if.then91.if.end101_crit_edge
  %333 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %flags, align 4
  %or103 = or i32 %334, 8
  store i32 %or103, ptr %flags, align 4
  br label %cleanup110

do.end107:                                        ; preds = %if.else.do.end107_crit_edge, %if.then47, %name_msix_vecs.exit.do.end107_crit_edge
  %err.3 = phi i32 [ %call.i208, %name_msix_vecs.exit.do.end107_crit_edge ], [ %call.i.i, %if.then47 ], [ %call.i223, %if.else.do.end107_crit_edge ]
  %pdev108 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 3
  %335 = ptrtoint ptr %pdev108 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %pdev108, align 8
  %dev109 = getelementptr inbounds %struct.pci_dev, ptr %336, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev109, ptr noundef nonnull @.str.113, i32 noundef %err.3) #21
  br label %cleanup110

cleanup110:                                       ; preds = %do.end107, %if.end101, %do.end98, %if.end87.cleanup110_crit_edge, %setup_sge_qsets.exit.thread, %if.end15.cleanup110_crit_edge
  %retval.0 = phi i32 [ %err.3, %do.end107 ], [ 0, %if.end87.cleanup110_crit_edge ], [ %call16, %if.end15.cleanup110_crit_edge ], [ %err.1.lcssa.i, %do.end98 ], [ 0, %if.end101 ], [ %call16.i, %setup_sge_qsets.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @offload_open(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %call2 = tail call ptr @dev2t3cdev(ptr noundef %dev) #18
  %open_device_map = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_device_map, align 32
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %open_device_map) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %call6 = tail call fastcc i32 @cxgb_up(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %land.lhs.true.if.then36_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

land.lhs.true.if.then36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then36

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  tail call void @t3_tp_set_offload_mode(ptr noundef %1, i32 noundef 1) #18
  %port = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %lldev = getelementptr inbounds %struct.t3cdev, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %lldev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %lldev, align 4
  %call9 = tail call i32 @cxgb3_offload_activate(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.if.then36_crit_edge

if.end8.if.then36_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then36

if.end12:                                         ; preds = %if.end8
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtu.i, align 4
  %arrayidx2.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 21, i32 1
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end12.init_port_mtus.exit_crit_edge, label %if.then.i

if.end12.init_port_mtus.exit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_port_mtus.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %mtu5.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %mtu5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mtu5.i, align 4
  %shl.i = shl i32 %14, 16
  %or.i = or i32 %shl.i, %10
  br label %init_port_mtus.exit

init_port_mtus.exit:                              ; preds = %if.then.i, %if.end12.init_port_mtus.exit_crit_edge
  %mtus.0.i = phi i32 [ %or.i, %if.then.i ], [ %10, %if.end12.init_port_mtus.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %15 = tail call i32 @llvm.bswap.i32(i32 %mtus.0.i) #18
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #18, !srcloc !389
  %mtus = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 6
  %a_wnd = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 7
  %b_wnd = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 8
  %rev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 13
  %18 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp18 = icmp eq i32 %19, 0
  br i1 %cmp18, label %cond.true, label %init_port_mtus.exit.cond.end_crit_edge

init_port_mtus.exit.cond.end_crit_edge:           ; preds = %init_port_mtus.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %init_port_mtus.exit
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mtu, align 4
  %phi.cast = trunc i32 %23 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %init_port_mtus.exit.cond.end_crit_edge
  %cond = phi i16 [ %phi.cast, %cond.true ], [ -1, %init_port_mtus.exit.cond.end_crit_edge ]
  tail call void @t3_load_mtus(ptr noundef %1, ptr noundef %mtus, ptr noundef %a_wnd, ptr noundef %b_wnd, i16 noundef zeroext %cond) #18
  %nports.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 9
  %24 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1.not.i = icmp eq i32 %25, 0
  br i1 %cmp1.not.i, label %cond.end.init_smt.exit_crit_edge, label %cond.end.for.body.i_crit_edge

cond.end.for.body.i_crit_edge:                    ; preds = %cond.end
  br label %for.body.i

cond.end.init_smt.exit_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_smt.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.end.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %cond.end.for.body.i_crit_edge ]
  tail call fastcc void @write_smt_entry(ptr noundef %1, i32 noundef %i.02.i) #18
  %inc.i = add nuw i32 %i.02.i, 1
  %26 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %27
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.init_smt.exit_crit_edge

for.body.i.init_smt.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_smt.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

init_smt.exit:                                    ; preds = %for.body.i.init_smt.exit_crit_edge, %cond.end.init_smt.exit_crit_edge
  %28 = ptrtoint ptr %lldev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lldev, align 4
  %dev23 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 133
  %call24 = tail call i32 @sysfs_create_group(ptr noundef %dev23, ptr noundef nonnull @offload_attr_group) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %init_smt.exit.out_crit_edge, label %do.body

init_smt.exit.out_crit_edge:                      ; preds = %init_smt.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

do.body:                                          ; preds = %init_smt.exit
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @offload_open.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@offload_open, %if.then31)) #18
          to label %out [label %if.then31], !srcloc !394

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %dev32 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @offload_open.__UNIQUE_ID_ddebug384, ptr noundef %dev32, ptr noundef nonnull @.str.82) #18
  br label %out

out:                                              ; preds = %if.then31, %do.body, %init_smt.exit.out_crit_edge
  tail call void @cxgb3_add_clients(ptr noundef %call2) #18
  br label %cleanup

if.then36:                                        ; preds = %if.end8.if.then36_crit_edge, %land.lhs.true.if.then36_crit_edge
  %err.0.ph = phi i32 [ %call6, %land.lhs.true.if.then36_crit_edge ], [ %call9, %if.end8.if.then36_crit_edge ]
  tail call void @t3_tp_set_offload_mode(ptr noundef %1, i32 noundef 0) #18
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %open_device_map) #18
  tail call void @cxgb3_set_dummy_ops(ptr noundef %call2) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %err.0.ph, %if.then36 ], [ 0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_port_intr_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_check_fw_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_check_tpsram_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_intr_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_init_hw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb_vlan_mode(ptr nocapture noundef readonly %dev, i64 noundef %features) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %rev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 13
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %port_id = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_id, align 8
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  %6 = trunc i64 %features to i32
  %conv2 = and i32 %6, 256
  tail call void @t3_set_vlan_accel(ptr noundef %1, i32 noundef %shl, i32 noundef %conv2) #18
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = trunc i64 %features to i32
  %conv4 = and i32 %7, 256
  %nports = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 9
  %8 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp623.not = icmp eq i32 %9, 0
  br i1 %cmp623.not, label %if.else.for.end_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %have_vlans.025 = phi i32 [ %conv11, %for.body.for.body_crit_edge ], [ %conv4, %if.else.for.body_crit_edge ]
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 21, i32 %i.024
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %features8 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %features8 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %features8, align 16
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 256
  %conv11 = or i32 %15, %have_vlans.025
  %inc = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else.for.end_crit_edge
  %have_vlans.0.lcssa = phi i32 [ %conv4, %if.else.for.end_crit_edge ], [ %conv11, %for.body.for.end_crit_edge ]
  tail call void @t3_set_vlan_accel(ptr noundef %1, i32 noundef 1, i32 noundef %have_vlans.0.lcssa) #18
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %first_qset.i = getelementptr i8, ptr %dev, i32 2314
  %nqsets.i = getelementptr i8, ptr %dev, i32 2313
  %16 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nqsets.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp14.not.i = icmp eq i8 %17, 0
  br i1 %cmp14.not.i, label %if.end.t3_synchronize_rx.exit_crit_edge, label %for.body.lr.ph.i

if.end.t3_synchronize_rx.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %t3_synchronize_rx.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %18 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %first_qset.i, align 2
  %conv.i = zext i8 %19 to i32
  %sge.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %lock.i = getelementptr [8 x %struct.sge_qset], ptr %sge.i, i32 0, i32 %i.015.i, i32 2, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #18
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %20 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %first_qset.i, align 2
  %conv2.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nqsets.i, align 1
  %conv3.i = zext i8 %23 to i32
  %add.i = add nuw nsw i32 %conv3.i, %conv2.i
  %cmp.i = icmp ult i32 %inc.i, %add.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.t3_synchronize_rx.exit_crit_edge

for.body.i.t3_synchronize_rx.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %t3_synchronize_rx.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

t3_synchronize_rx.exit:                           ; preds = %for.body.i.t3_synchronize_rx.exit_crit_edge, %if.end.t3_synchronize_rx.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_start_sge_timers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t3_async_intr_handler(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @t3_slow_intr_handler(ptr noundef %cookie) #18
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t3_intr_handler(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_sge_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_intr_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_load_fw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_check_tpsram(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_set_proto_sram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_sge_alloc_qset(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_set_vlan_accel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_config_rss(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_slow_intr_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mgmt_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @await_mgmt_replies(ptr nocapture noundef readonly %adap, i32 noundef %init_cnt, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %offload_pkts = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 2, i32 14
  %add = add i32 %n, %init_cnt
  %0 = ptrtoint ptr %offload_pkts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offload_pkts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp1 = icmp ult i32 %1, %add
  br i1 %cmp1, label %while.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  tail call void @msleep(i32 noundef 10) #18
  %2 = ptrtoint ptr %offload_pkts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offload_pkts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp = icmp ult i32 %3, %add
  br i1 %cmp, label %while.body.1, label %while.body.preheader.cleanup_crit_edge

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.1:                                     ; preds = %while.body.preheader
  tail call void @msleep(i32 noundef 10) #18
  %4 = ptrtoint ptr %offload_pkts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offload_pkts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.1 = icmp ult i32 %5, %add
  br i1 %cmp.1, label %while.body.2, label %while.body.1.cleanup_crit_edge

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  tail call void @msleep(i32 noundef 10) #18
  %6 = ptrtoint ptr %offload_pkts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offload_pkts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp.2 = icmp ult i32 %7, %add
  br i1 %cmp.2, label %while.body.3, label %while.body.2.cleanup_crit_edge

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.3:                                     ; preds = %while.body.2
  tail call void @msleep(i32 noundef 10) #18
  %8 = ptrtoint ptr %offload_pkts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offload_pkts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp.3 = icmp ult i32 %9, %add
  br i1 %cmp.3, label %while.body.4, label %while.body.3.cleanup_crit_edge

while.body.3.cleanup_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.4:                                     ; preds = %while.body.3
  tail call void @msleep(i32 noundef 10) #18
  %10 = ptrtoint ptr %offload_pkts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offload_pkts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add)
  %cmp.4 = icmp ult i32 %11, %add
  br i1 %cmp.4, label %while.body.5, label %while.body.4.cleanup_crit_edge

while.body.4.cleanup_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.5:                                     ; preds = %while.body.4
  tail call void @msleep(i32 noundef 10) #18
  %12 = ptrtoint ptr %offload_pkts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offload_pkts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp.5 = icmp ult i32 %13, %add
  br i1 %cmp.5, label %while.body.6, label %while.body.5.cleanup_crit_edge

while.body.5.cleanup_crit_edge:                   ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.6:                                     ; preds = %while.body.5
  tail call void @msleep(i32 noundef 10) #18
  %14 = ptrtoint ptr %offload_pkts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offload_pkts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp.6 = icmp ult i32 %15, %add
  br i1 %cmp.6, label %while.body.7, label %while.body.6.cleanup_crit_edge

while.body.6.cleanup_crit_edge:                   ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.7:                                     ; preds = %while.body.6
  tail call void @msleep(i32 noundef 10) #18
  %16 = ptrtoint ptr %offload_pkts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offload_pkts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add)
  %cmp.7 = icmp ult i32 %17, %add
  br i1 %cmp.7, label %while.body.8, label %while.body.7.cleanup_crit_edge

while.body.7.cleanup_crit_edge:                   ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.8:                                     ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @msleep(i32 noundef 10) #18
  %18 = ptrtoint ptr %offload_pkts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offload_pkts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add)
  %cmp.8 = icmp ult i32 %19, %add
  %spec.select = select i1 %cmp.8, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %while.body.8, %while.body.7.cleanup_crit_edge, %while.body.6.cleanup_crit_edge, %while.body.5.cleanup_crit_edge, %while.body.4.cleanup_crit_edge, %while.body.3.cleanup_crit_edge, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %while.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.body.preheader.cleanup_crit_edge ], [ 0, %while.body.1.cleanup_crit_edge ], [ 0, %while.body.2.cleanup_crit_edge ], [ 0, %while.body.3.cleanup_crit_edge ], [ 0, %while.body.4.cleanup_crit_edge ], [ 0, %while.body.5.cleanup_crit_edge ], [ 0, %while.body.6.cleanup_crit_edge ], [ 0, %while.body.7.cleanup_crit_edge ], [ %spec.select, %while.body.8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev2t3cdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb3_offload_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_load_mtus(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb3_add_clients(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_smt_entry(ptr noundef %adapter, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 21, i32 %idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #18
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !392

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #18, !srcloc !393
  unreachable

__skb_put.exit:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i1 = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr.i1, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %7, 32
  store i32 %add.i, ptr %len9.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16777216, ptr %5, align 4
  %or = or i32 %idx, 335544320
  %ot = getelementptr inbounds %struct.cpl_smt_write_req, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %ot, align 4
  %mtu_idx = getelementptr inbounds %struct.cpl_smt_write_req, ptr %5, i32 0, i32 3
  %conv = trunc i32 %idx to i8
  %bf.shl = shl i8 %conv, 4
  %bf.set5 = or i8 %bf.shl, 15
  %10 = ptrtoint ptr %mtu_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set5, ptr %mtu_idx, align 1
  %src_mac0 = getelementptr inbounds %struct.cpl_smt_write_req, ptr %5, i32 0, i32 8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  %15 = call ptr @memcpy(ptr %src_mac0, ptr %14, i32 6)
  %src_mac1 = getelementptr inbounds %struct.cpl_smt_write_req, ptr %5, i32 0, i32 6
  %iscsic = getelementptr i8, ptr %1, i32 6128
  %16 = call ptr @memcpy(ptr %src_mac1, ptr %iscsic, i32 6)
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 6
  %17 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %priority, align 4
  tail call fastcc void @local_bh_disable() #18
  %call.i2 = tail call i32 @t3_offload_tx(ptr noundef %adapter, ptr noundef nonnull %call.i) #18
  tail call fastcc void @local_bh_enable() #18
  br label %cleanup

cleanup:                                          ; preds = %__skb_put.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_offload_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mac_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mac_set_num_ucast(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mac_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mac_set_address(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mac_set_rx_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_link_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_link_changed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t3_mac_update_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3b2_mac_watchdog_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb_set_rxmode(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr i8, ptr %dev, i32 5624
  %call1 = tail call i32 @t3_mac_set_rx_mode(ptr noundef %mac, ptr noundef %dev) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__cxgb_close(ptr noundef %dev, i32 noundef 0)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_eth_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb_set_mac_addr(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #18
  %mac = getelementptr i8, ptr %dev, i32 5624
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %call5 = tail call i32 @t3_mac_set_address(ptr noundef %mac, i32 noundef 0, ptr noundef %8) #18
  %open_device_map.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %open_device_map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %open_device_map.i, align 4
  %11 = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %port_id = getelementptr i8, ptr %dev, i32 2312
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_id, align 8
  %conv = zext i8 %13 to i32
  tail call fastcc void @write_smt_entry(ptr noundef %1, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb_ioctl(ptr noundef %dev, ptr noundef %req, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %req, i32 0, i32 1
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35144, label %entry.sw.bb_crit_edge
    i32 35145, label %entry.sw.bb_crit_edge33
    i32 35143, label %entry.sw.bb21_crit_edge
  ]

entry.sw.bb21_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb21

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge33
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %info.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 5
  %3 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info.i, align 4
  %caps.i = getelementptr inbounds %struct.adapter_info, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %sw.bb.sw.bb21_crit_edge, label %land.lhs.true

sw.bb.sw.bb21_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb21

land.lhs.true:                                    ; preds = %sw.bb
  %7 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ifr_ifru.i, align 2
  %conv = zext i16 %8 to i32
  %9 = and i32 %conv, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %9)
  %10 = icmp eq i32 %9, 32768
  br i1 %10, label %land.lhs.true.sw.bb21_crit_edge, label %land.lhs.true5

land.lhs.true.sw.bb21_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb21

land.lhs.true5:                                   ; preds = %land.lhs.true
  %and = and i32 %conv, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp ne i32 %and, 0
  %and12 = and i32 %conv, 57568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond = and i1 %tobool8.not, %tobool13.not
  br i1 %or.cond, label %if.then, label %land.lhs.true5.sw.bb21_crit_edge

land.lhs.true5.sw.bb21_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb21

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  %and18 = and i16 %8, 31
  %11 = lshr i16 %8, 3
  %shl.i = and i16 %11, 8160
  %or.i = or i16 %and18, %shl.i
  %conv.i = or i16 %or.i, -32768
  %12 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %ifr_ifru.i, align 2
  br label %sw.bb21

sw.bb21:                                          ; preds = %if.then, %land.lhs.true5.sw.bb21_crit_edge, %land.lhs.true.sw.bb21_crit_edge, %sw.bb.sw.bb21_crit_edge, %entry.sw.bb21_crit_edge
  %mdio = getelementptr i8, ptr %dev, i32 2340
  %call22 = tail call i32 @mdio_mii_ioctl(ptr noundef %mdio, ptr noundef %ifr_ifru.i, i32 noundef %cmd) #18
  br label %cleanup

cleanup:                                          ; preds = %sw.bb21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %sw.bb21 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb_siocdevprivate(ptr noundef %dev, ptr nocapture noundef readnone %ifreq, ptr noundef %useraddr, i32 noundef %cmd) #0 align 64 {
entry:
  %cmd.addr = alloca i32, align 4
  %t = alloca %struct.ch_qset_params, align 4
  %t241 = alloca %struct.ch_qset_params, align 4
  %edata = alloca %struct.ch_reg, align 4
  %edata437 = alloca %struct.ch_reg, align 4
  %t449 = alloca %struct.ch_mem_range, align 4
  %m = alloca %struct.ch_mtus, align 4
  %m534 = alloca %struct.ch_pm, align 4
  %m548 = alloca %struct.ch_pm, align 4
  %t638 = alloca %struct.ch_mem_range, align 4
  %buf = alloca [32 x i64], align 8
  %t723 = alloca %struct.ch_trace, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cmd, ptr %cmd.addr, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 35312, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 35312
  br i1 %cmp.not, label %if.end59.i.i, label %entry.cleanup768_crit_edge

entry.cleanup768_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup768

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 156) #18
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %useraddr, i32 4, i32 -1226833920) #23, !srcloc !395
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !392

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd.addr, i32 noundef 4) #18
  %4 = call i32 @llvm.read_register.i32(metadata !376) #18
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !396
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd.addr, ptr noundef %useraddr, i32 noundef 4) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !392

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i1283 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i1283
  %add.ptr.i.i = getelementptr i8, ptr %cmd.addr, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i1283)
  br label %cleanup768

if.end4:                                          ; preds = %if.end.i.i
  %8 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd.addr, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %9, label %if.end4.cleanup768_crit_edge [
    i32 1045, label %sw.bb
    i32 1046, label %sw.bb239
    i32 1047, label %sw.bb348
    i32 1048, label %sw.bb436
    i32 1041, label %sw.bb448
    i32 1030, label %sw.bb475
    i32 1033, label %sw.bb532
    i32 1032, label %sw.bb547
    i32 1038, label %sw.bb637
    i32 1044, label %sw.bb722
  ]

if.end4.cleanup768_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup768

sw.bb:                                            ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %t) #18
  %11 = call ptr @memset(ptr %t, i32 255, i32 56)
  %first_qset = getelementptr i8, ptr %dev, i32 2314
  %12 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %first_qset, align 2
  %conv = zext i8 %13 to i32
  %nqsets5 = getelementptr i8, ptr %dev, i32 2313
  %14 = ptrtoint ptr %nqsets5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nqsets5, align 1
  %conv6 = zext i8 %15 to i32
  %call7 = call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call7, label %if.end59.i.i966, label %sw.bb.cleanup.thread_crit_edge

sw.bb.cleanup.thread_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.end59.i.i966:                                  ; preds = %sw.bb
  call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 156) #18
  %call.i.i967 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i967, label %if.end59.i.i966.if.then11.i.i983_crit_edge, label %land.lhs.true.i.i970

if.end59.i.i966.if.then11.i.i983_crit_edge:       ; preds = %if.end59.i.i966
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i983

land.lhs.true.i.i970:                             ; preds = %if.end59.i.i966
  %16 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %useraddr, i32 56, i32 -1226833920) #23, !srcloc !395
  %asmresult.i.i968 = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i968)
  %cmp.i6.i969 = icmp eq i32 %asmresult.i.i968, 0
  br i1 %cmp.i6.i969, label %if.end.i.i980, label %land.lhs.true.i.i970.if.then11.i.i983_crit_edge, !prof !392

land.lhs.true.i.i970.if.then11.i.i983_crit_edge:  ; preds = %land.lhs.true.i.i970
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i983

if.end.i.i980:                                    ; preds = %land.lhs.true.i.i970
  %call.i.i.i971 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %t, i32 noundef 56) #18
  %17 = call i32 @llvm.read_register.i32(metadata !376) #18
  %and.i.i.i.i.i.i972 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i972 to ptr
  %cpu_domain.i.i.i.i.i973 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i973) #9, !srcloc !396
  %and.i.i.i.i974 = and i32 %19, -13
  %or.i.i.i.i975 = or i32 %and.i.i.i.i974, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i975) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  %call1.i.i.i976 = call i32 @arm_copy_from_user(ptr noundef nonnull %t, ptr noundef %useraddr, i32 noundef 56) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i976)
  %tobool4.not.i.i979 = icmp eq i32 %call1.i.i.i976, 0
  br i1 %tobool4.not.i.i979, label %if.end13, label %if.end.i.i980.if.then11.i.i983_crit_edge, !prof !392

if.end.i.i980.if.then11.i.i983_crit_edge:         ; preds = %if.end.i.i980
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i983

if.then11.i.i983:                                 ; preds = %if.end.i.i980.if.then11.i.i983_crit_edge, %land.lhs.true.i.i970.if.then11.i.i983_crit_edge, %if.end59.i.i966.if.then11.i.i983_crit_edge
  %res.0.i.i9781288 = phi i32 [ %call1.i.i.i976, %if.end.i.i980.if.then11.i.i983_crit_edge ], [ 56, %if.end59.i.i966.if.then11.i.i983_crit_edge ], [ 56, %land.lhs.true.i.i970.if.then11.i.i983_crit_edge ]
  %sub.i.i981 = sub i32 56, %res.0.i.i9781288
  %add.ptr.i.i982 = getelementptr i8, ptr %t, i32 %sub.i.i981
  %20 = call ptr @memset(ptr %add.ptr.i.i982, i32 0, i32 %res.0.i.i9781288)
  br label %cleanup.thread

if.end13:                                         ; preds = %if.end.i.i980
  %21 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1045, i32 %22)
  %cmp15.not = icmp eq i32 %22, 1045
  br i1 %cmp15.not, label %if.end18, label %if.end13.cleanup.thread_crit_edge

if.end13.cleanup.thread_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.end18:                                         ; preds = %if.end13
  %qset_idx = getelementptr inbounds %struct.ch_qset_params, ptr %t, i32 0, i32 1
  %23 = ptrtoint ptr %qset_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qset_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %24)
  %cmp19 = icmp ugt i32 %24, 7
  br i1 %cmp19, label %if.end18.cleanup.thread_crit_edge, label %if.end22

if.end18.cleanup.thread_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.end22:                                         ; preds = %if.end18
  %intr_lat = getelementptr inbounds %struct.ch_qset_params, ptr %t, i32 0, i32 5
  %25 = ptrtoint ptr %intr_lat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %intr_lat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %26)
  %27 = icmp sgt i32 %26, 8191
  br i1 %27, label %if.end22.cleanup.thread_crit_edge, label %lor.lhs.false

if.end22.cleanup.thread_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %if.end22
  %cong_thres = getelementptr inbounds %struct.ch_qset_params, ptr %t, i32 0, i32 8
  %28 = ptrtoint ptr %cong_thres to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cong_thres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %29)
  %30 = icmp sgt i32 %29, 255
  br i1 %30, label %lor.lhs.false.cleanup.thread_crit_edge, label %lor.lhs.false27

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %txq_size = getelementptr inbounds %struct.ch_qset_params, ptr %t, i32 0, i32 2
  %31 = ptrtoint ptr %txq_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %txq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i1220 = icmp sgt i32 %32, -1
  %33 = add nsw i32 %32, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16381, i32 %33)
  %34 = icmp ult i32 %33, -16381
  %or.cond1432 = select i1 %cmp.i1220, i1 %34, i1 false
  br i1 %or.cond1432, label %lor.lhs.false27.cleanup.thread_crit_edge, label %lor.lhs.false30

lor.lhs.false27.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %arrayidx32 = getelementptr inbounds %struct.ch_qset_params, ptr %t, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i1227 = icmp sgt i32 %36, -1
  %37 = add nsw i32 %36, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16381, i32 %37)
  %38 = icmp ult i32 %37, -16381
  %or.cond1434 = select i1 %cmp.i1227, i1 %38, i1 false
  br i1 %or.cond1434, label %lor.lhs.false30.cleanup.thread_crit_edge, label %lor.lhs.false35

lor.lhs.false30.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

lor.lhs.false35:                                  ; preds = %lor.lhs.false30
  %arrayidx37 = getelementptr inbounds %struct.ch_qset_params, ptr %t, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i1234 = icmp sgt i32 %40, -1
  %41 = add nsw i32 %40, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1021, i32 %41)
  %42 = icmp ult i32 %41, -1021
  %or.cond1436 = select i1 %cmp.i1234, i1 %42, i1 false
  br i1 %or.cond1436, label %lor.lhs.false35.cleanup.thread_crit_edge, label %lor.lhs.false40

lor.lhs.false35.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

lor.lhs.false40:                                  ; preds = %lor.lhs.false35
  %fl_size = getelementptr inbounds %struct.ch_qset_params, ptr %t, i32 0, i32 4
  %43 = ptrtoint ptr %fl_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp.i1241 = icmp sgt i32 %44, -1
  %45 = add nsw i32 %44, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16353, i32 %45)
  %46 = icmp ult i32 %45, -16353
  %or.cond1438 = select i1 %cmp.i1241, i1 %46, i1 false
  br i1 %or.cond1438, label %lor.lhs.false40.cleanup.thread_crit_edge, label %lor.lhs.false44

lor.lhs.false40.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  %arrayidx46 = getelementptr inbounds %struct.ch_qset_params, ptr %t, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp.i1248 = icmp sgt i32 %48, -1
  %49 = add nsw i32 %48, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16353, i32 %49)
  %50 = icmp ult i32 %49, -16353
  %or.cond1440 = select i1 %cmp.i1248, i1 %50, i1 false
  br i1 %or.cond1440, label %lor.lhs.false44.cleanup.thread_crit_edge, label %lor.lhs.false49

lor.lhs.false44.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

lor.lhs.false49:                                  ; preds = %lor.lhs.false44
  %rspq_size = getelementptr inbounds %struct.ch_qset_params, ptr %t, i32 0, i32 3
  %51 = ptrtoint ptr %rspq_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rspq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp.i1255 = icmp sgt i32 %52, -1
  %53 = add nsw i32 %52, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16353, i32 %53)
  %54 = icmp ult i32 %53, -16353
  %or.cond1442 = select i1 %cmp.i1255, i1 %54, i1 false
  br i1 %or.cond1442, label %lor.lhs.false49.cleanup.thread_crit_edge, label %if.end53

lor.lhs.false49.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.end53:                                         ; preds = %lor.lhs.false49
  %flags = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 6
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  %and = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %if.end53.if.end91_crit_edge, label %land.lhs.true

if.end53.if.end91_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end91

land.lhs.true:                                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp56 = icmp sgt i32 %52, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp61 = icmp sgt i32 %44, -1
  %or.cond1389 = select i1 %cmp56, i1 true, i1 %cmp61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp66 = icmp sgt i32 %48, -1
  %or.cond1390 = select i1 %or.cond1389, i1 true, i1 %cmp66
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp71 = icmp sgt i32 %32, -1
  %or.cond1391 = select i1 %or.cond1390, i1 true, i1 %cmp71
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp76 = icmp sgt i32 %36, -1
  %or.cond1392 = select i1 %or.cond1391, i1 true, i1 %cmp76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp81 = icmp sgt i32 %40, -1
  %or.cond1393 = select i1 %or.cond1392, i1 true, i1 %cmp81
  br i1 %or.cond1393, label %land.lhs.true.cleanup.thread_crit_edge, label %lor.lhs.false83

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

lor.lhs.false83:                                  ; preds = %land.lhs.true
  %polling = getelementptr inbounds %struct.ch_qset_params, ptr %t, i32 0, i32 6
  %57 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp84 = icmp sgt i32 %58, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp88 = icmp sgt i32 %29, -1
  %or.cond1394 = select i1 %cmp84, i1 true, i1 %cmp88
  br i1 %or.cond1394, label %lor.lhs.false83.cleanup.thread_crit_edge, label %lor.lhs.false83.if.end91_crit_edge

lor.lhs.false83.if.end91_crit_edge:               ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end91

lor.lhs.false83.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.end91:                                         ; preds = %lor.lhs.false83.if.end91_crit_edge, %if.end53.if.end91_crit_edge
  %open_device_map = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 5
  %59 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %open_device_map, align 4
  %61 = and i32 %60, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool93.not = icmp eq i32 %61, 0
  br i1 %tobool93.not, label %if.end103, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end91
  %nports = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 9
  %62 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp951418.not = icmp eq i32 %63, 0
  br i1 %cmp951418.not, label %for.cond.preheader.if.end108_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end108_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end108

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %nqsets.01420 = phi i32 [ %add102, %for.body.for.body_crit_edge ], [ %conv6, %for.cond.preheader.for.body_crit_edge ]
  %i.01419 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %2, i32 0, i32 21, i32 %i.01419
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i, align 4
  %first_qset98 = getelementptr i8, ptr %65, i32 2314
  %66 = ptrtoint ptr %first_qset98 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %first_qset98, align 2
  %conv99 = zext i8 %67 to i32
  %nqsets100 = getelementptr i8, ptr %65, i32 2313
  %68 = ptrtoint ptr %nqsets100 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nqsets100, align 1
  %conv101 = zext i8 %69 to i32
  %add = add i32 %nqsets.01420, %conv99
  %add102 = add i32 %add, %conv101
  %inc = add nuw i32 %i.01419, 1
  %exitcond1423.not = icmp eq i32 %inc, %63
  br i1 %exitcond1423.not, label %for.body.if.end108_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.if.end108_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end108

if.end103:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv)
  %cmp105 = icmp ult i32 %24, %conv
  br i1 %cmp105, label %if.end103.cleanup.thread_crit_edge, label %if.end103.if.end108_crit_edge

if.end103.if.end108_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end108

if.end103.cleanup.thread_crit_edge:               ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.end108:                                        ; preds = %if.end103.if.end108_crit_edge, %for.body.if.end108_crit_edge, %for.cond.preheader.if.end108_crit_edge
  %nqsets.11319 = phi i32 [ %conv6, %if.end103.if.end108_crit_edge ], [ %conv6, %for.cond.preheader.if.end108_crit_edge ], [ %add102, %for.body.if.end108_crit_edge ]
  %q1.01318 = phi i32 [ %conv, %if.end103.if.end108_crit_edge ], [ 0, %for.cond.preheader.if.end108_crit_edge ], [ 0, %for.body.if.end108_crit_edge ]
  %add110 = add i32 %nqsets.11319, -1
  %sub = add i32 %add110, %q1.01318
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %sub)
  %cmp111 = icmp ugt i32 %24, %sub
  br i1 %cmp111, label %if.end108.cleanup.thread_crit_edge, label %if.end114

if.end108.cleanup.thread_crit_edge:               ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.end114:                                        ; preds = %if.end108
  %arrayidx117 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp119 = icmp sgt i32 %52, -1
  br i1 %cmp119, label %if.then121, label %if.end114.if.end124_crit_edge

if.end114.if.end124_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end124

if.then121:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #20
  %rspq_size123 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %24, i32 2
  %70 = ptrtoint ptr %rspq_size123 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %52, ptr %rspq_size123, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %if.end114.if.end124_crit_edge
  %71 = ptrtoint ptr %fl_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp127 = icmp sgt i32 %72, -1
  br i1 %cmp127, label %if.then129, label %if.end124.if.end133_crit_edge

if.end124.if.end133_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end133

if.then129:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #20
  %fl_size132 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %24, i32 3
  %73 = ptrtoint ptr %fl_size132 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %fl_size132, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then129, %if.end124.if.end133_crit_edge
  %74 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp136 = icmp sgt i32 %75, -1
  br i1 %cmp136, label %if.then138, label %if.end133.if.end141_crit_edge

if.end133.if.end141_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end141

if.then138:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #20
  %jumbo_size = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %24, i32 4
  %76 = ptrtoint ptr %jumbo_size to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %jumbo_size, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.end133.if.end141_crit_edge
  %77 = ptrtoint ptr %txq_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %txq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp144 = icmp sgt i32 %78, -1
  br i1 %cmp144, label %if.then146, label %if.end141.if.end151_crit_edge

if.end141.if.end151_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end151

if.then146:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #20
  %txq_size149 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %24, i32 5
  %79 = ptrtoint ptr %txq_size149 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %txq_size149, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then146, %if.end141.if.end151_crit_edge
  %80 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %cmp154 = icmp sgt i32 %81, -1
  br i1 %cmp154, label %if.then156, label %if.end151.if.end161_crit_edge

if.end151.if.end161_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end161

if.then156:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx160 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %24, i32 5, i32 1
  %82 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx160, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then156, %if.end151.if.end161_crit_edge
  %83 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp164 = icmp sgt i32 %84, -1
  br i1 %cmp164, label %if.then166, label %if.end161.if.end171_crit_edge

if.end161.if.end171_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end171

if.then166:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx170 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %24, i32 5, i32 2
  %85 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx170, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then166, %if.end161.if.end171_crit_edge
  %86 = ptrtoint ptr %cong_thres to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cong_thres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %cmp173 = icmp sgt i32 %87, -1
  br i1 %cmp173, label %if.then175, label %if.end171.if.end178_crit_edge

if.end171.if.end178_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end178

if.then175:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #20
  %cong_thres177 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %24, i32 6
  %88 = ptrtoint ptr %cong_thres177 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %cong_thres177, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then175, %if.end171.if.end178_crit_edge
  %89 = ptrtoint ptr %intr_lat to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %intr_lat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp180 = icmp sgt i32 %90, -1
  br i1 %cmp180, label %if.then182, label %if.end178.if.end188_crit_edge

if.end178.if.end188_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end188

if.then182:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #20
  %sge183 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 16
  %91 = ptrtoint ptr %qset_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %qset_idx, align 4
  %arrayidx186 = getelementptr [8 x %struct.sge_qset], ptr %sge183, i32 0, i32 %92
  %coalesce_usecs = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %24, i32 1
  %93 = ptrtoint ptr %coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %coalesce_usecs, align 4
  call void @t3_update_qset_coalesce(ptr noundef %arrayidx186, ptr noundef %arrayidx117) #18
  br label %if.end188

if.end188:                                        ; preds = %if.then182, %if.end178.if.end188_crit_edge
  %polling189 = getelementptr inbounds %struct.ch_qset_params, ptr %t, i32 0, i32 6
  %94 = ptrtoint ptr %polling189 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %polling189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp190 = icmp sgt i32 %95, -1
  br i1 %cmp190, label %if.then192, label %if.end188.if.end223_crit_edge

if.end188.if.end223_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end223

if.then192:                                       ; preds = %if.end188
  %96 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags, align 4
  %and194 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.else, label %if.then196

if.then196:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #20
  %98 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %95, ptr %arrayidx117, align 4
  br label %if.end223

if.else:                                          ; preds = %if.then192
  %rev = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 13
  %99 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp200 = icmp eq i32 %100, 0
  %and204 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  %or.cond = select i1 %cmp200, i1 %tobool205.not, i1 false
  br i1 %or.cond, label %if.then206, label %if.else.if.end208_crit_edge

if.else.if.end208_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end208

if.then206:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %101 = ptrtoint ptr %polling189 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %polling189, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then206, %if.else.if.end208_crit_edge
  %arrayidx216 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 0
  %102 = ptrtoint ptr %polling189 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %polling189, align 4
  %104 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx216, align 4
  %arrayidx216.1 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 1
  %105 = load i32, ptr %polling189, align 4
  %106 = ptrtoint ptr %arrayidx216.1 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %arrayidx216.1, align 4
  %arrayidx216.2 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 2
  %107 = load i32, ptr %polling189, align 4
  %108 = ptrtoint ptr %arrayidx216.2 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx216.2, align 4
  %arrayidx216.3 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 3
  %109 = load i32, ptr %polling189, align 4
  %110 = ptrtoint ptr %arrayidx216.3 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %arrayidx216.3, align 4
  %arrayidx216.4 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 4
  %111 = load i32, ptr %polling189, align 4
  %112 = ptrtoint ptr %arrayidx216.4 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx216.4, align 4
  %arrayidx216.5 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 5
  %113 = load i32, ptr %polling189, align 4
  %114 = ptrtoint ptr %arrayidx216.5 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx216.5, align 4
  %arrayidx216.6 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 6
  %115 = load i32, ptr %polling189, align 4
  %116 = ptrtoint ptr %arrayidx216.6 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx216.6, align 4
  %arrayidx216.7 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 7
  %117 = load i32, ptr %polling189, align 4
  %118 = ptrtoint ptr %arrayidx216.7 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %arrayidx216.7, align 4
  br label %if.end223

if.end223:                                        ; preds = %if.end208, %if.then196, %if.end188.if.end223_crit_edge
  %lro = getelementptr inbounds %struct.ch_qset_params, ptr %t, i32 0, i32 7
  %119 = ptrtoint ptr %lro to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %lro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %120)
  %cmp224 = icmp sgt i32 %120, -1
  br i1 %cmp224, label %if.then226, label %if.end223.cleanup_crit_edge

if.end223.cleanup_crit_edge:                      ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then226:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool228.not = icmp eq i32 %120, 0
  %wanted_features231 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 25
  %121 = ptrtoint ptr %wanted_features231 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %wanted_features231, align 32
  %and232 = and i64 %122, -16385
  %masksel = select i1 %tobool228.not, i64 0, i64 16384
  %and232.sink = or i64 %and232, %masksel
  store i64 %and232.sink, ptr %wanted_features231, align 32
  call void @netdev_update_features(ptr noundef %dev) #18
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end108.cleanup.thread_crit_edge, %if.end103.cleanup.thread_crit_edge, %lor.lhs.false83.cleanup.thread_crit_edge, %land.lhs.true.cleanup.thread_crit_edge, %lor.lhs.false49.cleanup.thread_crit_edge, %lor.lhs.false44.cleanup.thread_crit_edge, %lor.lhs.false40.cleanup.thread_crit_edge, %lor.lhs.false35.cleanup.thread_crit_edge, %lor.lhs.false30.cleanup.thread_crit_edge, %lor.lhs.false27.cleanup.thread_crit_edge, %lor.lhs.false.cleanup.thread_crit_edge, %if.end22.cleanup.thread_crit_edge, %if.end18.cleanup.thread_crit_edge, %if.end13.cleanup.thread_crit_edge, %if.then11.i.i983, %sw.bb.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end108.cleanup.thread_crit_edge ], [ -22, %if.end103.cleanup.thread_crit_edge ], [ -16, %land.lhs.true.cleanup.thread_crit_edge ], [ -16, %lor.lhs.false83.cleanup.thread_crit_edge ], [ -22, %if.end18.cleanup.thread_crit_edge ], [ -22, %if.end13.cleanup.thread_crit_edge ], [ -1, %sw.bb.cleanup.thread_crit_edge ], [ -14, %if.then11.i.i983 ], [ -22, %if.end22.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false27.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false30.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false35.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false40.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false44.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false49.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %t) #18
  br label %cleanup768

cleanup:                                          ; preds = %if.then226, %if.end223.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %t) #18
  br label %sw.epilog

sw.bb239:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %t241) #18
  %123 = call ptr @memset(ptr %t241, i32 255, i32 56)
  %first_qset243 = getelementptr i8, ptr %dev, i32 2314
  %124 = ptrtoint ptr %first_qset243 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %first_qset243, align 2
  %conv244 = zext i8 %125 to i32
  %nqsets246 = getelementptr i8, ptr %dev, i32 2313
  %126 = ptrtoint ptr %nqsets246 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %nqsets246, align 1
  %conv247 = zext i8 %127 to i32
  call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 156) #18
  %call.i.i990 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i990, label %sw.bb239.if.then11.i.i1006_crit_edge, label %land.lhs.true.i.i993

sw.bb239.if.then11.i.i1006_crit_edge:             ; preds = %sw.bb239
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1006

land.lhs.true.i.i993:                             ; preds = %sw.bb239
  %128 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %useraddr, i32 56, i32 -1226833920) #23
  %asmresult.i.i991 = extractvalue { i32, i32 } %128, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i991)
  %cmp.i6.i992 = icmp eq i32 %asmresult.i.i991, 0
  br i1 %cmp.i6.i992, label %if.end.i.i1003, label %land.lhs.true.i.i993.if.then11.i.i1006_crit_edge, !prof !392

land.lhs.true.i.i993.if.then11.i.i1006_crit_edge: ; preds = %land.lhs.true.i.i993
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1006

if.end.i.i1003:                                   ; preds = %land.lhs.true.i.i993
  %call.i.i.i994 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %t241, i32 noundef 56) #18
  %129 = call i32 @llvm.read_register.i32(metadata !376) #18
  %and.i.i.i.i.i.i995 = and i32 %129, -16384
  %130 = inttoptr i32 %and.i.i.i.i.i.i995 to ptr
  %cpu_domain.i.i.i.i.i996 = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 4
  %131 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i996) #9, !srcloc !396
  %and.i.i.i.i997 = and i32 %131, -13
  %or.i.i.i.i998 = or i32 %and.i.i.i.i997, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i998) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  %call1.i.i.i999 = call i32 @arm_copy_from_user(ptr noundef nonnull %t241, ptr noundef %useraddr, i32 noundef 56) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %131) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i999)
  %tobool4.not.i.i1002 = icmp eq i32 %call1.i.i.i999, 0
  br i1 %tobool4.not.i.i1002, label %if.end252, label %if.end.i.i1003.if.then11.i.i1006_crit_edge, !prof !392

if.end.i.i1003.if.then11.i.i1006_crit_edge:       ; preds = %if.end.i.i1003
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1006

if.then11.i.i1006:                                ; preds = %if.end.i.i1003.if.then11.i.i1006_crit_edge, %land.lhs.true.i.i993.if.then11.i.i1006_crit_edge, %sw.bb239.if.then11.i.i1006_crit_edge
  %res.0.i.i10011324 = phi i32 [ %call1.i.i.i999, %if.end.i.i1003.if.then11.i.i1006_crit_edge ], [ 56, %sw.bb239.if.then11.i.i1006_crit_edge ], [ 56, %land.lhs.true.i.i993.if.then11.i.i1006_crit_edge ]
  %sub.i.i1004 = sub i32 56, %res.0.i.i10011324
  %add.ptr.i.i1005 = getelementptr i8, ptr %t241, i32 %sub.i.i1004
  %132 = call ptr @memset(ptr %add.ptr.i.i1005, i32 0, i32 %res.0.i.i10011324)
  br label %cleanup342.thread

if.end252:                                        ; preds = %if.end.i.i1003
  %133 = ptrtoint ptr %t241 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %t241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1046, i32 %134)
  %cmp254.not = icmp eq i32 %134, 1046
  br i1 %cmp254.not, label %if.end257, label %if.end252.cleanup342.thread_crit_edge

if.end252.cleanup342.thread_crit_edge:            ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup342.thread

if.end257:                                        ; preds = %if.end252
  %open_device_map258 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 5
  %135 = ptrtoint ptr %open_device_map258 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %open_device_map258, align 4
  %137 = and i32 %136, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool260.not = icmp eq i32 %137, 0
  br i1 %tobool260.not, label %if.end257.if.end277_crit_edge, label %for.cond262.preheader

if.end257.if.end277_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end277

for.cond262.preheader:                            ; preds = %if.end257
  %nports264 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 9
  %138 = ptrtoint ptr %nports264 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %nports264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp2651413.not = icmp eq i32 %139, 0
  br i1 %cmp2651413.not, label %for.cond262.preheader.if.end277_crit_edge, label %for.body267.preheader

for.cond262.preheader.if.end277_crit_edge:        ; preds = %for.cond262.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end277

for.body267.preheader:                            ; preds = %for.cond262.preheader
  call void @__sanitizer_cov_trace_pc() #20
  %140 = add i32 %139, -1
  %arrayidx.i1263.le = getelementptr %struct.adapter, ptr %2, i32 0, i32 21, i32 %140
  %141 = ptrtoint ptr %arrayidx.i1263.le to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i1263.le, align 4
  %first_qset269.le = getelementptr i8, ptr %142, i32 2314
  %143 = ptrtoint ptr %first_qset269.le to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %first_qset269.le, align 2
  %conv270.le = zext i8 %144 to i32
  %nqsets271.le = getelementptr i8, ptr %142, i32 2313
  %145 = ptrtoint ptr %nqsets271.le to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %nqsets271.le, align 1
  %conv272.le = zext i8 %146 to i32
  %add273.le = add nuw nsw i32 %conv272.le, %conv270.le
  br label %if.end277

if.end277:                                        ; preds = %for.body267.preheader, %for.cond262.preheader.if.end277_crit_edge, %if.end257.if.end277_crit_edge
  %q1242.0 = phi i32 [ %conv244, %if.end257.if.end277_crit_edge ], [ 0, %for.body267.preheader ], [ 0, %for.cond262.preheader.if.end277_crit_edge ]
  %nqsets245.1 = phi i32 [ %conv247, %if.end257.if.end277_crit_edge ], [ %add273.le, %for.body267.preheader ], [ %conv247, %for.cond262.preheader.if.end277_crit_edge ]
  %qset_idx278 = getelementptr inbounds %struct.ch_qset_params, ptr %t241, i32 0, i32 1
  %147 = ptrtoint ptr %qset_idx278 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %qset_idx278, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %nqsets245.1)
  %cmp279.not = icmp ult i32 %148, %nqsets245.1
  br i1 %cmp279.not, label %if.end282, label %if.end277.cleanup342.thread_crit_edge

if.end277.cleanup342.thread_crit_edge:            ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup342.thread

if.end282:                                        ; preds = %if.end277
  %149 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %148, i32 %nqsets245.1) #18, !srcloc !399
  %and288 = and i32 %149, %148
  %150 = ptrtoint ptr %qset_idx278 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %and288, ptr %qset_idx278, align 4
  %add294 = add i32 %and288, %q1242.0
  %arrayidx295 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %add294
  %rspq_size296 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %add294, i32 2
  %151 = ptrtoint ptr %rspq_size296 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %rspq_size296, align 4
  %rspq_size297 = getelementptr inbounds %struct.ch_qset_params, ptr %t241, i32 0, i32 3
  %153 = ptrtoint ptr %rspq_size297 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %rspq_size297, align 4
  %txq_size298 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %add294, i32 5
  %154 = ptrtoint ptr %txq_size298 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %txq_size298, align 4
  %txq_size300 = getelementptr inbounds %struct.ch_qset_params, ptr %t241, i32 0, i32 2
  %156 = ptrtoint ptr %txq_size300 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %txq_size300, align 4
  %arrayidx303 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %add294, i32 5, i32 1
  %157 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx303, align 4
  %arrayidx305 = getelementptr inbounds %struct.ch_qset_params, ptr %t241, i32 0, i32 2, i32 1
  %159 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %arrayidx305, align 4
  %arrayidx307 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %add294, i32 5, i32 2
  %160 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx307, align 4
  %arrayidx309 = getelementptr inbounds %struct.ch_qset_params, ptr %t241, i32 0, i32 2, i32 2
  %162 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %arrayidx309, align 4
  %fl_size310 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %add294, i32 3
  %163 = ptrtoint ptr %fl_size310 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %fl_size310, align 4
  %fl_size311 = getelementptr inbounds %struct.ch_qset_params, ptr %t241, i32 0, i32 4
  %165 = ptrtoint ptr %fl_size311 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %fl_size311, align 4
  %jumbo_size313 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %add294, i32 4
  %166 = ptrtoint ptr %jumbo_size313 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %jumbo_size313, align 4
  %arrayidx315 = getelementptr inbounds %struct.ch_qset_params, ptr %t241, i32 0, i32 4, i32 1
  %168 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %arrayidx315, align 4
  %169 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx295, align 4
  %polling317 = getelementptr inbounds %struct.ch_qset_params, ptr %t241, i32 0, i32 6
  %171 = ptrtoint ptr %polling317 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %polling317, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %172 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %features, align 16
  %174 = trunc i64 %173 to i32
  %175 = lshr i32 %174, 14
  %176 = and i32 %175, 1
  %lro321 = getelementptr inbounds %struct.ch_qset_params, ptr %t241, i32 0, i32 7
  %177 = ptrtoint ptr %lro321 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %lro321, align 4
  %coalesce_usecs322 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %add294, i32 1
  %178 = ptrtoint ptr %coalesce_usecs322 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %coalesce_usecs322, align 4
  %intr_lat323 = getelementptr inbounds %struct.ch_qset_params, ptr %t241, i32 0, i32 5
  %180 = ptrtoint ptr %intr_lat323 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %intr_lat323, align 4
  %cong_thres324 = getelementptr %struct.adapter, ptr %2, i32 0, i32 10, i32 0, i32 1, i32 %add294, i32 6
  %181 = ptrtoint ptr %cong_thres324 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %cong_thres324, align 4
  %cong_thres325 = getelementptr inbounds %struct.ch_qset_params, ptr %t241, i32 0, i32 8
  %183 = ptrtoint ptr %cong_thres325 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %cong_thres325, align 4
  %qnum = getelementptr inbounds %struct.ch_qset_params, ptr %t241, i32 0, i32 10
  %184 = ptrtoint ptr %qnum to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %q1242.0, ptr %qnum, align 4
  %flags326 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 6
  %185 = ptrtoint ptr %flags326 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %flags326, align 4
  %and327 = and i32 %186, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327)
  %tobool328.not = icmp eq i32 %and327, 0
  br i1 %tobool328.not, label %if.else335, label %if.then329

if.then329:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #20
  %add332 = add i32 %add294, 1
  %arrayidx333 = getelementptr %struct.adapter, ptr %2, i32 0, i32 14, i32 %add332
  %187 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %arrayidx333, align 8
  %conv334 = zext i16 %188 to i32
  br label %if.end59.i.i1014

if.else335:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #20
  %pdev = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 3
  %189 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %190, i32 0, i32 46
  %191 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %irq, align 4
  br label %if.end59.i.i1014

if.end59.i.i1014:                                 ; preds = %if.else335, %if.then329
  %conv334.sink = phi i32 [ %192, %if.else335 ], [ %conv334, %if.then329 ]
  %193 = getelementptr inbounds %struct.ch_qset_params, ptr %t241, i32 0, i32 9
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %conv334.sink, ptr %193, align 4
  call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 174) #18
  %call.i.i1015 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i1015, label %cleanup342.thread1330, label %cleanup342

cleanup342.thread:                                ; preds = %if.end277.cleanup342.thread_crit_edge, %if.end252.cleanup342.thread_crit_edge, %if.then11.i.i1006
  %retval.1.ph = phi i32 [ -22, %if.end277.cleanup342.thread_crit_edge ], [ -22, %if.end252.cleanup342.thread_crit_edge ], [ -14, %if.then11.i.i1006 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %t241) #18
  br label %cleanup768

cleanup342.thread1330:                            ; preds = %if.end59.i.i1014
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %t241) #18
  br label %cleanup768

cleanup342:                                       ; preds = %if.end59.i.i1014
  %call.i.i.i1019 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %t241, i32 noundef 56) #18
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %useraddr, ptr noundef nonnull %t241, i32 noundef 56) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool339.not = icmp eq i32 %call.i12.i.i, 0
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %t241) #18
  br i1 %tobool339.not, label %cleanup342.sw.epilog_crit_edge, label %cleanup342.cleanup768_crit_edge

cleanup342.cleanup768_crit_edge:                  ; preds = %cleanup342
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup768

cleanup342.sw.epilog_crit_edge:                   ; preds = %cleanup342
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb348:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %edata) #18
  %195 = ptrtoint ptr %edata to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 -1, ptr %edata, align 4, !annotation !390
  %196 = getelementptr inbounds %struct.ch_reg, ptr %edata, i32 0, i32 1
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 -1, ptr %196, align 4, !annotation !390
  %198 = getelementptr inbounds %struct.ch_reg, ptr %edata, i32 0, i32 2
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 -1, ptr %198, align 4, !annotation !390
  %call351 = call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call351, label %if.end353, label %sw.bb348.cleanup431.thread_crit_edge

sw.bb348.cleanup431.thread_crit_edge:             ; preds = %sw.bb348
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup431.thread

if.end353:                                        ; preds = %sw.bb348
  %flags354 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 6
  %200 = ptrtoint ptr %flags354 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %flags354, align 4
  %and355 = and i32 %201, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and355)
  %tobool356.not = icmp eq i32 %and355, 0
  br i1 %tobool356.not, label %if.end59.i.i1024, label %if.end353.cleanup431.thread_crit_edge

if.end353.cleanup431.thread_crit_edge:            ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup431.thread

if.end59.i.i1024:                                 ; preds = %if.end353
  call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 156) #18
  %call.i.i1025 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i1025, label %if.end59.i.i1024.if.then11.i.i1041_crit_edge, label %land.lhs.true.i.i1028

if.end59.i.i1024.if.then11.i.i1041_crit_edge:     ; preds = %if.end59.i.i1024
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1041

land.lhs.true.i.i1028:                            ; preds = %if.end59.i.i1024
  %202 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %useraddr, i32 12, i32 -1226833920) #23, !srcloc !395
  %asmresult.i.i1026 = extractvalue { i32, i32 } %202, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1026)
  %cmp.i6.i1027 = icmp eq i32 %asmresult.i.i1026, 0
  br i1 %cmp.i6.i1027, label %if.end.i.i1038, label %land.lhs.true.i.i1028.if.then11.i.i1041_crit_edge, !prof !392

land.lhs.true.i.i1028.if.then11.i.i1041_crit_edge: ; preds = %land.lhs.true.i.i1028
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1041

if.end.i.i1038:                                   ; preds = %land.lhs.true.i.i1028
  %call.i.i.i1029 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %edata, i32 noundef 12) #18
  %203 = call i32 @llvm.read_register.i32(metadata !376) #18
  %and.i.i.i.i.i.i1030 = and i32 %203, -16384
  %204 = inttoptr i32 %and.i.i.i.i.i.i1030 to ptr
  %cpu_domain.i.i.i.i.i1031 = getelementptr inbounds %struct.thread_info, ptr %204, i32 0, i32 4
  %205 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i1031) #9, !srcloc !396
  %and.i.i.i.i1032 = and i32 %205, -13
  %or.i.i.i.i1033 = or i32 %and.i.i.i.i1032, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i1033) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  %call1.i.i.i1034 = call i32 @arm_copy_from_user(ptr noundef nonnull %edata, ptr noundef %useraddr, i32 noundef 12) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %205) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i1034)
  %tobool4.not.i.i1037 = icmp eq i32 %call1.i.i.i1034, 0
  br i1 %tobool4.not.i.i1037, label %if.end362, label %if.end.i.i1038.if.then11.i.i1041_crit_edge, !prof !392

if.end.i.i1038.if.then11.i.i1041_crit_edge:       ; preds = %if.end.i.i1038
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1041

if.then11.i.i1041:                                ; preds = %if.end.i.i1038.if.then11.i.i1041_crit_edge, %land.lhs.true.i.i1028.if.then11.i.i1041_crit_edge, %if.end59.i.i1024.if.then11.i.i1041_crit_edge
  %res.0.i.i10361335 = phi i32 [ %call1.i.i.i1034, %if.end.i.i1038.if.then11.i.i1041_crit_edge ], [ 12, %if.end59.i.i1024.if.then11.i.i1041_crit_edge ], [ 12, %land.lhs.true.i.i1028.if.then11.i.i1041_crit_edge ]
  %sub.i.i1039 = sub i32 12, %res.0.i.i10361335
  %add.ptr.i.i1040 = getelementptr i8, ptr %edata, i32 %sub.i.i1039
  %206 = call ptr @memset(ptr %add.ptr.i.i1040, i32 0, i32 %res.0.i.i10361335)
  br label %cleanup431.thread

if.end362:                                        ; preds = %if.end.i.i1038
  %207 = ptrtoint ptr %edata to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %edata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1047, i32 %208)
  %cmp364.not = icmp eq i32 %208, 1047
  br i1 %cmp364.not, label %if.end367, label %if.end362.cleanup431.thread_crit_edge

if.end362.cleanup431.thread_crit_edge:            ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup431.thread

if.end367:                                        ; preds = %if.end362
  %209 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %198, align 4
  %211 = zext i32 %210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %210, label %land.lhs.true374 [
    i32 0, label %if.end367.cleanup431.thread_crit_edge
    i32 1, label %if.end367.if.end379_crit_edge
  ]

if.end367.if.end379_crit_edge:                    ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end379

if.end367.cleanup431.thread_crit_edge:            ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup431.thread

land.lhs.true374:                                 ; preds = %if.end367
  %212 = ptrtoint ptr %flags354 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %flags354, align 4
  %and376 = and i32 %213, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and376)
  %tobool377.not = icmp eq i32 %and376, 0
  br i1 %tobool377.not, label %land.lhs.true374.cleanup431.thread_crit_edge, label %land.lhs.true374.if.end379_crit_edge

land.lhs.true374.if.end379_crit_edge:             ; preds = %land.lhs.true374
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end379

land.lhs.true374.cleanup431.thread_crit_edge:     ; preds = %land.lhs.true374
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup431.thread

if.end379:                                        ; preds = %land.lhs.true374.if.end379_crit_edge, %if.end367.if.end379_crit_edge
  %nports382 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 9
  %214 = ptrtoint ptr %nports382 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %nports382, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp3831407.not = icmp eq i32 %215, 0
  br i1 %cmp3831407.not, label %if.end379.for.end401_crit_edge, label %if.end379.for.body385_crit_edge

if.end379.for.body385_crit_edge:                  ; preds = %if.end379
  br label %for.body385

if.end379.for.end401_crit_edge:                   ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end401

for.body385:                                      ; preds = %for.inc399.for.body385_crit_edge, %if.end379.for.body385_crit_edge
  %other_qsets.01409 = phi i32 [ %other_qsets.1, %for.inc399.for.body385_crit_edge ], [ 0, %if.end379.for.body385_crit_edge ]
  %i349.01408 = phi i32 [ %inc400, %for.inc399.for.body385_crit_edge ], [ 0, %if.end379.for.body385_crit_edge ]
  %arrayidx386 = getelementptr %struct.adapter, ptr %2, i32 0, i32 21, i32 %i349.01408
  %216 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx386, align 4
  %tobool387.not = icmp eq ptr %217, null
  %cmp391.not = icmp eq ptr %217, %dev
  %or.cond956 = or i1 %tobool387.not, %cmp391.not
  br i1 %or.cond956, label %for.body385.for.inc399_crit_edge, label %if.then393

for.body385.for.inc399_crit_edge:                 ; preds = %for.body385
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc399

if.then393:                                       ; preds = %for.body385
  call void @__sanitizer_cov_trace_pc() #20
  %nqsets395 = getelementptr i8, ptr %217, i32 2313
  %218 = ptrtoint ptr %nqsets395 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %nqsets395, align 1
  %conv396 = zext i8 %219 to i32
  %add397 = add i32 %other_qsets.01409, %conv396
  br label %for.inc399

for.inc399:                                       ; preds = %if.then393, %for.body385.for.inc399_crit_edge
  %other_qsets.1 = phi i32 [ %add397, %if.then393 ], [ %other_qsets.01409, %for.body385.for.inc399_crit_edge ]
  %inc400 = add nuw i32 %i349.01408, 1
  %exitcond.not = icmp eq i32 %inc400, %215
  br i1 %exitcond.not, label %for.inc399.for.end401_crit_edge, label %for.inc399.for.body385_crit_edge

for.inc399.for.body385_crit_edge:                 ; preds = %for.inc399
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body385

for.inc399.for.end401_crit_edge:                  ; preds = %for.inc399
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end401

for.end401:                                       ; preds = %for.inc399.for.end401_crit_edge, %if.end379.for.end401_crit_edge
  %other_qsets.0.lcssa = phi i32 [ 0, %if.end379.for.end401_crit_edge ], [ %other_qsets.1, %for.inc399.for.end401_crit_edge ]
  %add403 = add i32 %other_qsets.0.lcssa, %210
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add403)
  %cmp404 = icmp ugt i32 %add403, 8
  br i1 %cmp404, label %for.end401.cleanup431.thread_crit_edge, label %if.end407

for.end401.cleanup431.thread_crit_edge:           ; preds = %for.end401
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup431.thread

if.end407:                                        ; preds = %for.end401
  %conv409 = trunc i32 %210 to i8
  %nqsets410 = getelementptr i8, ptr %dev, i32 2313
  %220 = ptrtoint ptr %nqsets410 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %conv409, ptr %nqsets410, align 1
  %221 = ptrtoint ptr %nports382 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %nports382, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp4141410.not = icmp eq i32 %222, 0
  br i1 %cmp4141410.not, label %if.end407.cleanup431_crit_edge, label %if.end407.for.body416_crit_edge

if.end407.for.body416_crit_edge:                  ; preds = %if.end407
  br label %for.body416

if.end407.cleanup431_crit_edge:                   ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup431

for.body416:                                      ; preds = %for.inc428.for.body416_crit_edge, %if.end407.for.body416_crit_edge
  %first_qset350.01412 = phi i32 [ %first_qset350.1, %for.inc428.for.body416_crit_edge ], [ 0, %if.end407.for.body416_crit_edge ]
  %i349.11411 = phi i32 [ %inc429, %for.inc428.for.body416_crit_edge ], [ 0, %if.end407.for.body416_crit_edge ]
  %arrayidx418 = getelementptr %struct.adapter, ptr %2, i32 0, i32 21, i32 %i349.11411
  %223 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx418, align 4
  %tobool419.not = icmp eq ptr %224, null
  br i1 %tobool419.not, label %for.body416.for.inc428_crit_edge, label %if.then420

for.body416.for.inc428_crit_edge:                 ; preds = %for.body416
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc428

if.then420:                                       ; preds = %for.body416
  call void @__sanitizer_cov_trace_pc() #20
  %conv422 = trunc i32 %first_qset350.01412 to i8
  %first_qset423 = getelementptr i8, ptr %224, i32 2314
  %225 = ptrtoint ptr %first_qset423 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv422, ptr %first_qset423, align 2
  %nqsets424 = getelementptr i8, ptr %224, i32 2313
  %226 = ptrtoint ptr %nqsets424 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %nqsets424, align 1
  %conv425 = zext i8 %227 to i32
  %add426 = add i32 %first_qset350.01412, %conv425
  br label %for.inc428

for.inc428:                                       ; preds = %if.then420, %for.body416.for.inc428_crit_edge
  %first_qset350.1 = phi i32 [ %add426, %if.then420 ], [ %first_qset350.01412, %for.body416.for.inc428_crit_edge ]
  %inc429 = add nuw i32 %i349.11411, 1
  %228 = ptrtoint ptr %nports382 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %nports382, align 4
  %cmp414 = icmp ult i32 %inc429, %229
  br i1 %cmp414, label %for.inc428.for.body416_crit_edge, label %for.inc428.cleanup431_crit_edge

for.inc428.cleanup431_crit_edge:                  ; preds = %for.inc428
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup431

for.inc428.for.body416_crit_edge:                 ; preds = %for.inc428
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body416

cleanup431.thread:                                ; preds = %for.end401.cleanup431.thread_crit_edge, %land.lhs.true374.cleanup431.thread_crit_edge, %if.end367.cleanup431.thread_crit_edge, %if.end362.cleanup431.thread_crit_edge, %if.then11.i.i1041, %if.end353.cleanup431.thread_crit_edge, %sw.bb348.cleanup431.thread_crit_edge
  %retval.2.ph = phi i32 [ -22, %for.end401.cleanup431.thread_crit_edge ], [ -22, %land.lhs.true374.cleanup431.thread_crit_edge ], [ -22, %if.end367.cleanup431.thread_crit_edge ], [ -22, %if.end362.cleanup431.thread_crit_edge ], [ -16, %if.end353.cleanup431.thread_crit_edge ], [ -1, %sw.bb348.cleanup431.thread_crit_edge ], [ -14, %if.then11.i.i1041 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %edata) #18
  br label %cleanup768

cleanup431:                                       ; preds = %for.inc428.cleanup431_crit_edge, %if.end407.cleanup431_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %edata) #18
  br label %sw.epilog

sw.bb436:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %edata437) #18
  %230 = getelementptr inbounds %struct.ch_reg, ptr %edata437, i32 0, i32 2
  %231 = getelementptr inbounds i8, ptr %edata437, i32 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %231, align 4
  %233 = ptrtoint ptr %edata437 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 1048, ptr %edata437, align 4
  %nqsets439 = getelementptr i8, ptr %dev, i32 2313
  %234 = ptrtoint ptr %nqsets439 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %nqsets439, align 1
  %conv440 = zext i8 %235 to i32
  %236 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %conv440, ptr %230, align 4
  call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 174) #18
  %call.i.i1048 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i1048, label %sw.bb436.copy_to_user.exit1056.thread_crit_edge, label %if.end.i.i1051

sw.bb436.copy_to_user.exit1056.thread_crit_edge:  ; preds = %sw.bb436
  call void @__sanitizer_cov_trace_pc() #20
  br label %copy_to_user.exit1056.thread

if.end.i.i1051:                                   ; preds = %sw.bb436
  %237 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %useraddr, i32 12, i32 -1226833920) #23, !srcloc !400
  %asmresult.i.i1049 = extractvalue { i32, i32 } %237, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1049)
  %cmp.i6.i1050 = icmp eq i32 %asmresult.i.i1049, 0
  br i1 %cmp.i6.i1050, label %copy_to_user.exit1056, label %if.end.i.i1051.copy_to_user.exit1056.thread_crit_edge

if.end.i.i1051.copy_to_user.exit1056.thread_crit_edge: ; preds = %if.end.i.i1051
  call void @__sanitizer_cov_trace_pc() #20
  br label %copy_to_user.exit1056.thread

copy_to_user.exit1056.thread:                     ; preds = %if.end.i.i1051.copy_to_user.exit1056.thread_crit_edge, %sw.bb436.copy_to_user.exit1056.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %edata437) #18
  br label %cleanup768

copy_to_user.exit1056:                            ; preds = %if.end.i.i1051
  %call.i.i.i1052 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %edata437, i32 noundef 12) #18
  %call.i12.i.i1053 = call i32 @arm_copy_to_user(ptr noundef %useraddr, ptr noundef nonnull %edata437, i32 noundef 12) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1053)
  %tobool443.not = icmp eq i32 %call.i12.i.i1053, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %edata437) #18
  br i1 %tobool443.not, label %copy_to_user.exit1056.sw.epilog_crit_edge, label %copy_to_user.exit1056.cleanup768_crit_edge

copy_to_user.exit1056.cleanup768_crit_edge:       ; preds = %copy_to_user.exit1056
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup768

copy_to_user.exit1056.sw.epilog_crit_edge:        ; preds = %copy_to_user.exit1056
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb448:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %t449) #18
  %238 = getelementptr inbounds %struct.ch_mem_range, ptr %t449, i32 0, i32 3
  %239 = call ptr @memset(ptr %t449, i32 255, i32 20)
  %call450 = call zeroext i1 @capable(i32 noundef 17) #18
  br i1 %call450, label %if.end59.i.i1060, label %sw.bb448.cleanup472.thread_crit_edge

sw.bb448.cleanup472.thread_crit_edge:             ; preds = %sw.bb448
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup472.thread

if.end59.i.i1060:                                 ; preds = %sw.bb448
  call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 156) #18
  %call.i.i1061 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i1061, label %if.end59.i.i1060.if.then11.i.i1077_crit_edge, label %land.lhs.true.i.i1064

if.end59.i.i1060.if.then11.i.i1077_crit_edge:     ; preds = %if.end59.i.i1060
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1077

land.lhs.true.i.i1064:                            ; preds = %if.end59.i.i1060
  %240 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %useraddr, i32 20, i32 -1226833920) #23, !srcloc !395
  %asmresult.i.i1062 = extractvalue { i32, i32 } %240, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1062)
  %cmp.i6.i1063 = icmp eq i32 %asmresult.i.i1062, 0
  br i1 %cmp.i6.i1063, label %if.end.i.i1074, label %land.lhs.true.i.i1064.if.then11.i.i1077_crit_edge, !prof !392

land.lhs.true.i.i1064.if.then11.i.i1077_crit_edge: ; preds = %land.lhs.true.i.i1064
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1077

if.end.i.i1074:                                   ; preds = %land.lhs.true.i.i1064
  %call.i.i.i1065 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %t449, i32 noundef 20) #18
  %241 = call i32 @llvm.read_register.i32(metadata !376) #18
  %and.i.i.i.i.i.i1066 = and i32 %241, -16384
  %242 = inttoptr i32 %and.i.i.i.i.i.i1066 to ptr
  %cpu_domain.i.i.i.i.i1067 = getelementptr inbounds %struct.thread_info, ptr %242, i32 0, i32 4
  %243 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i1067) #9, !srcloc !396
  %and.i.i.i.i1068 = and i32 %243, -13
  %or.i.i.i.i1069 = or i32 %and.i.i.i.i1068, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i1069) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  %call1.i.i.i1070 = call i32 @arm_copy_from_user(ptr noundef nonnull %t449, ptr noundef %useraddr, i32 noundef 20) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %243) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i1070)
  %tobool4.not.i.i1073 = icmp eq i32 %call1.i.i.i1070, 0
  br i1 %tobool4.not.i.i1073, label %if.end456, label %if.end.i.i1074.if.then11.i.i1077_crit_edge, !prof !392

if.end.i.i1074.if.then11.i.i1077_crit_edge:       ; preds = %if.end.i.i1074
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1077

if.then11.i.i1077:                                ; preds = %if.end.i.i1074.if.then11.i.i1077_crit_edge, %land.lhs.true.i.i1064.if.then11.i.i1077_crit_edge, %if.end59.i.i1060.if.then11.i.i1077_crit_edge
  %res.0.i.i10721344 = phi i32 [ %call1.i.i.i1070, %if.end.i.i1074.if.then11.i.i1077_crit_edge ], [ 20, %if.end59.i.i1060.if.then11.i.i1077_crit_edge ], [ 20, %land.lhs.true.i.i1064.if.then11.i.i1077_crit_edge ]
  %sub.i.i1075 = sub i32 20, %res.0.i.i10721344
  %add.ptr.i.i1076 = getelementptr i8, ptr %t449, i32 %sub.i.i1075
  %244 = call ptr @memset(ptr %add.ptr.i.i1076, i32 0, i32 %res.0.i.i10721344)
  br label %cleanup472.thread

if.end456:                                        ; preds = %if.end.i.i1074
  %245 = ptrtoint ptr %t449 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %t449, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1041, i32 %246)
  %cmp458.not = icmp eq i32 %246, 1041
  br i1 %cmp458.not, label %if.end461, label %if.end456.cleanup472.thread_crit_edge

if.end456.cleanup472.thread_crit_edge:            ; preds = %if.end456
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup472.thread

if.end461:                                        ; preds = %if.end456
  %add.ptr = getelementptr i8, ptr %useraddr, i32 20
  %247 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %238, align 4
  %call462 = call ptr @memdup_user(ptr noundef %add.ptr, i32 noundef %248) #18
  %cmp.i1269 = icmp ugt ptr %call462, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1269, label %if.then464, label %cleanup472

if.then464:                                       ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #20
  %249 = ptrtoint ptr %call462 to i32
  br label %cleanup472.thread

cleanup472.thread:                                ; preds = %if.then464, %if.end456.cleanup472.thread_crit_edge, %if.then11.i.i1077, %sw.bb448.cleanup472.thread_crit_edge
  %retval.4.ph = phi i32 [ -22, %if.end456.cleanup472.thread_crit_edge ], [ -1, %sw.bb448.cleanup472.thread_crit_edge ], [ %249, %if.then464 ], [ -14, %if.then11.i.i1077 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %t449) #18
  br label %cleanup768

cleanup472:                                       ; preds = %if.end461
  %250 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %238, align 4
  %call468 = call i32 @t3_load_fw(ptr noundef %2, ptr noundef %call462, i32 noundef %251) #18
  call void @kfree(ptr noundef %call462) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call468)
  %tobool469.not = icmp eq i32 %call468, 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %t449) #18
  br i1 %tobool469.not, label %cleanup472.sw.epilog_crit_edge, label %cleanup472.cleanup768_crit_edge

cleanup472.cleanup768_crit_edge:                  ; preds = %cleanup472
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup768

cleanup472.sw.epilog_crit_edge:                   ; preds = %cleanup472
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb475:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %m) #18
  %252 = call ptr @memset(ptr %m, i32 255, i32 40)
  %offload.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 14
  %253 = ptrtoint ptr %offload.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool478.not = icmp eq i32 %254, 0
  br i1 %tobool478.not, label %sw.bb475.cleanup529.thread_crit_edge, label %if.end480

sw.bb475.cleanup529.thread_crit_edge:             ; preds = %sw.bb475
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

if.end480:                                        ; preds = %sw.bb475
  %call481 = call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call481, label %if.end483, label %if.end480.cleanup529.thread_crit_edge

if.end480.cleanup529.thread_crit_edge:            ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

if.end483:                                        ; preds = %if.end480
  %open_device_map.i = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 5
  %255 = ptrtoint ptr %open_device_map.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load volatile i32, ptr %open_device_map.i, align 4
  %257 = and i32 %256, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool485.not = icmp eq i32 %257, 0
  br i1 %tobool485.not, label %if.end59.i.i1083, label %if.end483.cleanup529.thread_crit_edge

if.end483.cleanup529.thread_crit_edge:            ; preds = %if.end483
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

if.end59.i.i1083:                                 ; preds = %if.end483
  call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 156) #18
  %call.i.i1084 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i1084, label %if.end59.i.i1083.if.then11.i.i1100_crit_edge, label %land.lhs.true.i.i1087

if.end59.i.i1083.if.then11.i.i1100_crit_edge:     ; preds = %if.end59.i.i1083
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1100

land.lhs.true.i.i1087:                            ; preds = %if.end59.i.i1083
  %258 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %useraddr, i32 40, i32 -1226833920) #23, !srcloc !395
  %asmresult.i.i1085 = extractvalue { i32, i32 } %258, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1085)
  %cmp.i6.i1086 = icmp eq i32 %asmresult.i.i1085, 0
  br i1 %cmp.i6.i1086, label %if.end.i.i1097, label %land.lhs.true.i.i1087.if.then11.i.i1100_crit_edge, !prof !392

land.lhs.true.i.i1087.if.then11.i.i1100_crit_edge: ; preds = %land.lhs.true.i.i1087
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1100

if.end.i.i1097:                                   ; preds = %land.lhs.true.i.i1087
  %call.i.i.i1088 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %m, i32 noundef 40) #18
  %259 = call i32 @llvm.read_register.i32(metadata !376) #18
  %and.i.i.i.i.i.i1089 = and i32 %259, -16384
  %260 = inttoptr i32 %and.i.i.i.i.i.i1089 to ptr
  %cpu_domain.i.i.i.i.i1090 = getelementptr inbounds %struct.thread_info, ptr %260, i32 0, i32 4
  %261 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i1090) #9, !srcloc !396
  %and.i.i.i.i1091 = and i32 %261, -13
  %or.i.i.i.i1092 = or i32 %and.i.i.i.i1091, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i1092) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  %call1.i.i.i1093 = call i32 @arm_copy_from_user(ptr noundef nonnull %m, ptr noundef %useraddr, i32 noundef 40) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %261) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i1093)
  %tobool4.not.i.i1096 = icmp eq i32 %call1.i.i.i1093, 0
  br i1 %tobool4.not.i.i1096, label %if.end491, label %if.end.i.i1097.if.then11.i.i1100_crit_edge, !prof !392

if.end.i.i1097.if.then11.i.i1100_crit_edge:       ; preds = %if.end.i.i1097
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1100

if.then11.i.i1100:                                ; preds = %if.end.i.i1097.if.then11.i.i1100_crit_edge, %land.lhs.true.i.i1087.if.then11.i.i1100_crit_edge, %if.end59.i.i1083.if.then11.i.i1100_crit_edge
  %res.0.i.i10951351 = phi i32 [ %call1.i.i.i1093, %if.end.i.i1097.if.then11.i.i1100_crit_edge ], [ 40, %if.end59.i.i1083.if.then11.i.i1100_crit_edge ], [ 40, %land.lhs.true.i.i1087.if.then11.i.i1100_crit_edge ]
  %sub.i.i1098 = sub i32 40, %res.0.i.i10951351
  %add.ptr.i.i1099 = getelementptr i8, ptr %m, i32 %sub.i.i1098
  %262 = call ptr @memset(ptr %add.ptr.i.i1099, i32 0, i32 %res.0.i.i10951351)
  br label %cleanup529.thread

if.end491:                                        ; preds = %if.end.i.i1097
  %263 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %m, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1030, i32 %264)
  %cmp493.not = icmp eq i32 %264, 1030
  br i1 %cmp493.not, label %if.end496, label %if.end491.cleanup529.thread_crit_edge

if.end491.cleanup529.thread_crit_edge:            ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

if.end496:                                        ; preds = %if.end491
  %nmtus = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 1
  %265 = ptrtoint ptr %nmtus to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %nmtus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %266)
  %cmp497.not = icmp eq i32 %266, 16
  br i1 %cmp497.not, label %if.end500, label %if.end496.cleanup529.thread_crit_edge

if.end496.cleanup529.thread_crit_edge:            ; preds = %if.end496
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

if.end500:                                        ; preds = %if.end496
  %mtus = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2
  %267 = ptrtoint ptr %mtus to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %mtus, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 81, i16 %268)
  %cmp503 = icmp ult i16 %268, 81
  br i1 %cmp503, label %if.end500.cleanup529.thread_crit_edge, label %for.body510.preheader

if.end500.cleanup529.thread_crit_edge:            ; preds = %if.end500
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.body510.preheader:                            ; preds = %if.end500
  %arrayidx512 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 1
  %269 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %arrayidx512, align 2
  %271 = ptrtoint ptr %mtus to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %mtus, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %270, i16 %272)
  %cmp518 = icmp ult i16 %270, %272
  br i1 %cmp518, label %for.body510.preheader.cleanup529.thread_crit_edge, label %for.cond507

for.body510.preheader.cleanup529.thread_crit_edge: ; preds = %for.body510.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507:                                      ; preds = %for.body510.preheader
  %arrayidx512.1 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 2
  %273 = ptrtoint ptr %arrayidx512.1 to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %arrayidx512.1, align 4
  %275 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %arrayidx512, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %274, i16 %276)
  %cmp518.1 = icmp ult i16 %274, %276
  br i1 %cmp518.1, label %for.cond507.cleanup529.thread_crit_edge, label %for.cond507.1

for.cond507.cleanup529.thread_crit_edge:          ; preds = %for.cond507
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.1:                                    ; preds = %for.cond507
  %arrayidx512.2 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 3
  %277 = ptrtoint ptr %arrayidx512.2 to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %arrayidx512.2, align 2
  %279 = ptrtoint ptr %arrayidx512.1 to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %arrayidx512.1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %278, i16 %280)
  %cmp518.2 = icmp ult i16 %278, %280
  br i1 %cmp518.2, label %for.cond507.1.cleanup529.thread_crit_edge, label %for.cond507.2

for.cond507.1.cleanup529.thread_crit_edge:        ; preds = %for.cond507.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.2:                                    ; preds = %for.cond507.1
  %arrayidx512.3 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 4
  %281 = ptrtoint ptr %arrayidx512.3 to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %arrayidx512.3, align 4
  %283 = ptrtoint ptr %arrayidx512.2 to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %arrayidx512.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %282, i16 %284)
  %cmp518.3 = icmp ult i16 %282, %284
  br i1 %cmp518.3, label %for.cond507.2.cleanup529.thread_crit_edge, label %for.cond507.3

for.cond507.2.cleanup529.thread_crit_edge:        ; preds = %for.cond507.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.3:                                    ; preds = %for.cond507.2
  %arrayidx512.4 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 5
  %285 = ptrtoint ptr %arrayidx512.4 to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %arrayidx512.4, align 2
  %287 = ptrtoint ptr %arrayidx512.3 to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %arrayidx512.3, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %286, i16 %288)
  %cmp518.4 = icmp ult i16 %286, %288
  br i1 %cmp518.4, label %for.cond507.3.cleanup529.thread_crit_edge, label %for.cond507.4

for.cond507.3.cleanup529.thread_crit_edge:        ; preds = %for.cond507.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.4:                                    ; preds = %for.cond507.3
  %arrayidx512.5 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 6
  %289 = ptrtoint ptr %arrayidx512.5 to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %arrayidx512.5, align 4
  %291 = ptrtoint ptr %arrayidx512.4 to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %arrayidx512.4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %290, i16 %292)
  %cmp518.5 = icmp ult i16 %290, %292
  br i1 %cmp518.5, label %for.cond507.4.cleanup529.thread_crit_edge, label %for.cond507.5

for.cond507.4.cleanup529.thread_crit_edge:        ; preds = %for.cond507.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.5:                                    ; preds = %for.cond507.4
  %arrayidx512.6 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 7
  %293 = ptrtoint ptr %arrayidx512.6 to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %arrayidx512.6, align 2
  %295 = ptrtoint ptr %arrayidx512.5 to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %arrayidx512.5, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %294, i16 %296)
  %cmp518.6 = icmp ult i16 %294, %296
  br i1 %cmp518.6, label %for.cond507.5.cleanup529.thread_crit_edge, label %for.cond507.6

for.cond507.5.cleanup529.thread_crit_edge:        ; preds = %for.cond507.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.6:                                    ; preds = %for.cond507.5
  %arrayidx512.7 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 8
  %297 = ptrtoint ptr %arrayidx512.7 to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %arrayidx512.7, align 4
  %299 = ptrtoint ptr %arrayidx512.6 to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %arrayidx512.6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %298, i16 %300)
  %cmp518.7 = icmp ult i16 %298, %300
  br i1 %cmp518.7, label %for.cond507.6.cleanup529.thread_crit_edge, label %for.cond507.7

for.cond507.6.cleanup529.thread_crit_edge:        ; preds = %for.cond507.6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.7:                                    ; preds = %for.cond507.6
  %arrayidx512.8 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 9
  %301 = ptrtoint ptr %arrayidx512.8 to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %arrayidx512.8, align 2
  %303 = ptrtoint ptr %arrayidx512.7 to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %arrayidx512.7, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %302, i16 %304)
  %cmp518.8 = icmp ult i16 %302, %304
  br i1 %cmp518.8, label %for.cond507.7.cleanup529.thread_crit_edge, label %for.cond507.8

for.cond507.7.cleanup529.thread_crit_edge:        ; preds = %for.cond507.7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.8:                                    ; preds = %for.cond507.7
  %arrayidx512.9 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 10
  %305 = ptrtoint ptr %arrayidx512.9 to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %arrayidx512.9, align 4
  %307 = ptrtoint ptr %arrayidx512.8 to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %arrayidx512.8, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %306, i16 %308)
  %cmp518.9 = icmp ult i16 %306, %308
  br i1 %cmp518.9, label %for.cond507.8.cleanup529.thread_crit_edge, label %for.cond507.9

for.cond507.8.cleanup529.thread_crit_edge:        ; preds = %for.cond507.8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.9:                                    ; preds = %for.cond507.8
  %arrayidx512.10 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 11
  %309 = ptrtoint ptr %arrayidx512.10 to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %arrayidx512.10, align 2
  %311 = ptrtoint ptr %arrayidx512.9 to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %arrayidx512.9, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %310, i16 %312)
  %cmp518.10 = icmp ult i16 %310, %312
  br i1 %cmp518.10, label %for.cond507.9.cleanup529.thread_crit_edge, label %for.cond507.10

for.cond507.9.cleanup529.thread_crit_edge:        ; preds = %for.cond507.9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.10:                                   ; preds = %for.cond507.9
  %arrayidx512.11 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 12
  %313 = ptrtoint ptr %arrayidx512.11 to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %arrayidx512.11, align 4
  %315 = ptrtoint ptr %arrayidx512.10 to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %arrayidx512.10, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %314, i16 %316)
  %cmp518.11 = icmp ult i16 %314, %316
  br i1 %cmp518.11, label %for.cond507.10.cleanup529.thread_crit_edge, label %for.cond507.11

for.cond507.10.cleanup529.thread_crit_edge:       ; preds = %for.cond507.10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.11:                                   ; preds = %for.cond507.10
  %arrayidx512.12 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 13
  %317 = ptrtoint ptr %arrayidx512.12 to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %arrayidx512.12, align 2
  %319 = ptrtoint ptr %arrayidx512.11 to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %arrayidx512.11, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %318, i16 %320)
  %cmp518.12 = icmp ult i16 %318, %320
  br i1 %cmp518.12, label %for.cond507.11.cleanup529.thread_crit_edge, label %for.cond507.12

for.cond507.11.cleanup529.thread_crit_edge:       ; preds = %for.cond507.11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.12:                                   ; preds = %for.cond507.11
  %arrayidx512.13 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 14
  %321 = ptrtoint ptr %arrayidx512.13 to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %arrayidx512.13, align 4
  %323 = ptrtoint ptr %arrayidx512.12 to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %arrayidx512.12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %322, i16 %324)
  %cmp518.13 = icmp ult i16 %322, %324
  br i1 %cmp518.13, label %for.cond507.12.cleanup529.thread_crit_edge, label %for.cond507.13

for.cond507.12.cleanup529.thread_crit_edge:       ; preds = %for.cond507.12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.13:                                   ; preds = %for.cond507.12
  %arrayidx512.14 = getelementptr inbounds %struct.ch_mtus, ptr %m, i32 0, i32 2, i32 15
  %325 = ptrtoint ptr %arrayidx512.14 to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %arrayidx512.14, align 2
  %327 = ptrtoint ptr %arrayidx512.13 to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %arrayidx512.13, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %326, i16 %328)
  %cmp518.14 = icmp ult i16 %326, %328
  br i1 %cmp518.14, label %for.cond507.13.cleanup529.thread_crit_edge, label %for.cond507.14

for.cond507.13.cleanup529.thread_crit_edge:       ; preds = %for.cond507.13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup529.thread

for.cond507.14:                                   ; preds = %for.cond507.13
  call void @__sanitizer_cov_trace_pc() #20
  %mtus526 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 6
  %329 = call ptr @memcpy(ptr %mtus526, ptr %mtus, i32 32)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %m) #18
  br label %sw.epilog

cleanup529.thread:                                ; preds = %for.cond507.13.cleanup529.thread_crit_edge, %for.cond507.12.cleanup529.thread_crit_edge, %for.cond507.11.cleanup529.thread_crit_edge, %for.cond507.10.cleanup529.thread_crit_edge, %for.cond507.9.cleanup529.thread_crit_edge, %for.cond507.8.cleanup529.thread_crit_edge, %for.cond507.7.cleanup529.thread_crit_edge, %for.cond507.6.cleanup529.thread_crit_edge, %for.cond507.5.cleanup529.thread_crit_edge, %for.cond507.4.cleanup529.thread_crit_edge, %for.cond507.3.cleanup529.thread_crit_edge, %for.cond507.2.cleanup529.thread_crit_edge, %for.cond507.1.cleanup529.thread_crit_edge, %for.cond507.cleanup529.thread_crit_edge, %for.body510.preheader.cleanup529.thread_crit_edge, %if.end500.cleanup529.thread_crit_edge, %if.end496.cleanup529.thread_crit_edge, %if.end491.cleanup529.thread_crit_edge, %if.then11.i.i1100, %if.end483.cleanup529.thread_crit_edge, %if.end480.cleanup529.thread_crit_edge, %sw.bb475.cleanup529.thread_crit_edge
  %retval.5.ph = phi i32 [ -22, %if.end500.cleanup529.thread_crit_edge ], [ -22, %if.end496.cleanup529.thread_crit_edge ], [ -22, %if.end491.cleanup529.thread_crit_edge ], [ -16, %if.end483.cleanup529.thread_crit_edge ], [ -1, %if.end480.cleanup529.thread_crit_edge ], [ -95, %sw.bb475.cleanup529.thread_crit_edge ], [ -14, %if.then11.i.i1100 ], [ -22, %for.cond507.13.cleanup529.thread_crit_edge ], [ -22, %for.cond507.12.cleanup529.thread_crit_edge ], [ -22, %for.cond507.11.cleanup529.thread_crit_edge ], [ -22, %for.cond507.10.cleanup529.thread_crit_edge ], [ -22, %for.cond507.9.cleanup529.thread_crit_edge ], [ -22, %for.cond507.8.cleanup529.thread_crit_edge ], [ -22, %for.cond507.7.cleanup529.thread_crit_edge ], [ -22, %for.cond507.6.cleanup529.thread_crit_edge ], [ -22, %for.cond507.5.cleanup529.thread_crit_edge ], [ -22, %for.cond507.4.cleanup529.thread_crit_edge ], [ -22, %for.cond507.3.cleanup529.thread_crit_edge ], [ -22, %for.cond507.2.cleanup529.thread_crit_edge ], [ -22, %for.cond507.1.cleanup529.thread_crit_edge ], [ -22, %for.cond507.cleanup529.thread_crit_edge ], [ -22, %for.body510.preheader.cleanup529.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %m) #18
  br label %cleanup768

sw.bb532:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %m534) #18
  %330 = ptrtoint ptr %m534 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 1033, ptr %m534, align 4
  %offload.i1270 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 14
  %331 = ptrtoint ptr %offload.i1270 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %offload.i1270, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %tobool536.not = icmp eq i32 %332, 0
  br i1 %tobool536.not, label %cleanup544.thread, label %if.end538

cleanup544.thread:                                ; preds = %sw.bb532
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %m534) #18
  br label %cleanup768

if.end538:                                        ; preds = %sw.bb532
  %tp = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2
  %tx_pg_size = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 7
  %333 = ptrtoint ptr %tx_pg_size to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %tx_pg_size, align 4
  %tx_pg_sz = getelementptr inbounds %struct.ch_pm, ptr %m534, i32 0, i32 1
  %335 = ptrtoint ptr %tx_pg_sz to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %334, ptr %tx_pg_sz, align 4
  %tx_num_pgs = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 9
  %336 = ptrtoint ptr %tx_num_pgs to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %tx_num_pgs, align 4
  %tx_num_pg = getelementptr inbounds %struct.ch_pm, ptr %m534, i32 0, i32 2
  %338 = ptrtoint ptr %tx_num_pg to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %337, ptr %tx_num_pg, align 4
  %rx_pg_size = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 6
  %339 = ptrtoint ptr %rx_pg_size to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %rx_pg_size, align 4
  %rx_pg_sz = getelementptr inbounds %struct.ch_pm, ptr %m534, i32 0, i32 3
  %341 = ptrtoint ptr %rx_pg_sz to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %340, ptr %rx_pg_sz, align 4
  %rx_num_pgs = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 8
  %342 = ptrtoint ptr %rx_num_pgs to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %rx_num_pgs, align 4
  %rx_num_pg = getelementptr inbounds %struct.ch_pm, ptr %m534, i32 0, i32 4
  %344 = ptrtoint ptr %rx_num_pg to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %343, ptr %rx_num_pg, align 4
  %pmtx_size = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 2
  %345 = ptrtoint ptr %pmtx_size to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %pmtx_size, align 4
  %chan_rx_size = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 4
  %347 = ptrtoint ptr %chan_rx_size to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %chan_rx_size, align 4
  %349 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %tp, align 4
  %mul = mul i32 %350, %348
  %add539 = add i32 %mul, %346
  %pm_total = getelementptr inbounds %struct.ch_pm, ptr %m534, i32 0, i32 5
  %351 = ptrtoint ptr %pm_total to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %add539, ptr %pm_total, align 4
  call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 174) #18
  %call.i.i1107 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i1107, label %if.end538.cleanup544.thread1358_crit_edge, label %if.end.i.i1110

if.end538.cleanup544.thread1358_crit_edge:        ; preds = %if.end538
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup544.thread1358

if.end.i.i1110:                                   ; preds = %if.end538
  %352 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %useraddr, i32 24, i32 -1226833920) #23, !srcloc !400
  %asmresult.i.i1108 = extractvalue { i32, i32 } %352, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1108)
  %cmp.i6.i1109 = icmp eq i32 %asmresult.i.i1108, 0
  br i1 %cmp.i6.i1109, label %cleanup544, label %if.end.i.i1110.cleanup544.thread1358_crit_edge

if.end.i.i1110.cleanup544.thread1358_crit_edge:   ; preds = %if.end.i.i1110
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup544.thread1358

cleanup544.thread1358:                            ; preds = %if.end.i.i1110.cleanup544.thread1358_crit_edge, %if.end538.cleanup544.thread1358_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %m534) #18
  br label %cleanup768

cleanup544:                                       ; preds = %if.end.i.i1110
  %call.i.i.i1111 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %m534, i32 noundef 24) #18
  %call.i12.i.i1112 = call i32 @arm_copy_to_user(ptr noundef %useraddr, ptr noundef nonnull %m534, i32 noundef 24) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1112)
  %tobool541.not = icmp eq i32 %call.i12.i.i1112, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %m534) #18
  br i1 %tobool541.not, label %cleanup544.sw.epilog_crit_edge, label %cleanup544.cleanup768_crit_edge

cleanup544.cleanup768_crit_edge:                  ; preds = %cleanup544
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup768

cleanup544.sw.epilog_crit_edge:                   ; preds = %cleanup544
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb547:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %m548) #18
  %353 = getelementptr inbounds %struct.ch_pm, ptr %m548, i32 0, i32 1
  %354 = getelementptr inbounds %struct.ch_pm, ptr %m548, i32 0, i32 2
  %355 = getelementptr inbounds %struct.ch_pm, ptr %m548, i32 0, i32 3
  %356 = getelementptr inbounds %struct.ch_pm, ptr %m548, i32 0, i32 4
  %offload.i1271 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 14
  %357 = call ptr @memset(ptr %m548, i32 255, i32 24)
  %358 = ptrtoint ptr %offload.i1271 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %offload.i1271, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %tobool553.not = icmp eq i32 %359, 0
  br i1 %tobool553.not, label %sw.bb547.cleanup634.thread_crit_edge, label %if.end555

sw.bb547.cleanup634.thread_crit_edge:             ; preds = %sw.bb547
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup634.thread

if.end555:                                        ; preds = %sw.bb547
  %call556 = call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call556, label %if.end558, label %if.end555.cleanup634.thread_crit_edge

if.end555.cleanup634.thread_crit_edge:            ; preds = %if.end555
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup634.thread

if.end558:                                        ; preds = %if.end555
  %flags559 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 6
  %360 = ptrtoint ptr %flags559 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %flags559, align 4
  %and560 = and i32 %361, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and560)
  %tobool561.not = icmp eq i32 %and560, 0
  br i1 %tobool561.not, label %if.end59.i.i1119, label %if.end558.cleanup634.thread_crit_edge

if.end558.cleanup634.thread_crit_edge:            ; preds = %if.end558
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup634.thread

if.end59.i.i1119:                                 ; preds = %if.end558
  call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 156) #18
  %call.i.i1120 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i1120, label %if.end59.i.i1119.if.then11.i.i1136_crit_edge, label %land.lhs.true.i.i1123

if.end59.i.i1119.if.then11.i.i1136_crit_edge:     ; preds = %if.end59.i.i1119
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1136

land.lhs.true.i.i1123:                            ; preds = %if.end59.i.i1119
  %362 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %useraddr, i32 24, i32 -1226833920) #23, !srcloc !395
  %asmresult.i.i1121 = extractvalue { i32, i32 } %362, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1121)
  %cmp.i6.i1122 = icmp eq i32 %asmresult.i.i1121, 0
  br i1 %cmp.i6.i1122, label %if.end.i.i1133, label %land.lhs.true.i.i1123.if.then11.i.i1136_crit_edge, !prof !392

land.lhs.true.i.i1123.if.then11.i.i1136_crit_edge: ; preds = %land.lhs.true.i.i1123
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1136

if.end.i.i1133:                                   ; preds = %land.lhs.true.i.i1123
  %call.i.i.i1124 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %m548, i32 noundef 24) #18
  %363 = call i32 @llvm.read_register.i32(metadata !376) #18
  %and.i.i.i.i.i.i1125 = and i32 %363, -16384
  %364 = inttoptr i32 %and.i.i.i.i.i.i1125 to ptr
  %cpu_domain.i.i.i.i.i1126 = getelementptr inbounds %struct.thread_info, ptr %364, i32 0, i32 4
  %365 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i1126) #9, !srcloc !396
  %and.i.i.i.i1127 = and i32 %365, -13
  %or.i.i.i.i1128 = or i32 %and.i.i.i.i1127, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i1128) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  %call1.i.i.i1129 = call i32 @arm_copy_from_user(ptr noundef nonnull %m548, ptr noundef %useraddr, i32 noundef 24) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %365) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i1129)
  %tobool4.not.i.i1132 = icmp eq i32 %call1.i.i.i1129, 0
  br i1 %tobool4.not.i.i1132, label %if.end567, label %if.end.i.i1133.if.then11.i.i1136_crit_edge, !prof !392

if.end.i.i1133.if.then11.i.i1136_crit_edge:       ; preds = %if.end.i.i1133
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1136

if.then11.i.i1136:                                ; preds = %if.end.i.i1133.if.then11.i.i1136_crit_edge, %land.lhs.true.i.i1123.if.then11.i.i1136_crit_edge, %if.end59.i.i1119.if.then11.i.i1136_crit_edge
  %res.0.i.i11311363 = phi i32 [ %call1.i.i.i1129, %if.end.i.i1133.if.then11.i.i1136_crit_edge ], [ 24, %if.end59.i.i1119.if.then11.i.i1136_crit_edge ], [ 24, %land.lhs.true.i.i1123.if.then11.i.i1136_crit_edge ]
  %sub.i.i1134 = sub i32 24, %res.0.i.i11311363
  %add.ptr.i.i1135 = getelementptr i8, ptr %m548, i32 %sub.i.i1134
  %366 = call ptr @memset(ptr %add.ptr.i.i1135, i32 0, i32 %res.0.i.i11311363)
  br label %cleanup634.thread

if.end567:                                        ; preds = %if.end.i.i1133
  %367 = ptrtoint ptr %m548 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %m548, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1032, i32 %368)
  %cmp569.not = icmp eq i32 %368, 1032
  br i1 %cmp569.not, label %if.end572, label %if.end567.cleanup634.thread_crit_edge

if.end567.cleanup634.thread_crit_edge:            ; preds = %if.end567
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup634.thread

if.end572:                                        ; preds = %if.end567
  %369 = ptrtoint ptr %355 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %355, align 4
  %371 = call i32 @llvm.ctpop.i32(i32 %370) #18, !range !401
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %371)
  %372 = icmp eq i32 %371, 1
  br i1 %372, label %lor.lhs.false575, label %if.end572.cleanup634.thread_crit_edge

if.end572.cleanup634.thread_crit_edge:            ; preds = %if.end572
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup634.thread

lor.lhs.false575:                                 ; preds = %if.end572
  %373 = ptrtoint ptr %353 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %353, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %cmp.not.i1273 = icmp eq i32 %374, 0
  br i1 %cmp.not.i1273, label %lor.lhs.false575.cleanup634.thread_crit_edge, label %is_power_of_2.exit1276

lor.lhs.false575.cleanup634.thread_crit_edge:     ; preds = %lor.lhs.false575
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup634.thread

is_power_of_2.exit1276:                           ; preds = %lor.lhs.false575
  %375 = call i32 @llvm.ctpop.i32(i32 %374) #18, !range !401
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %375)
  %cmp1.i1274 = icmp ugt i32 %375, 1
  %and581 = and i32 %370, 81920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and581)
  %tobool582.not = icmp eq i32 %and581, 0
  %or.cond961 = or i1 %tobool582.not, %cmp1.i1274
  %and586 = and i32 %374, 22364160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and586)
  %tobool587.not = icmp eq i32 %and586, 0
  %or.cond962 = or i1 %tobool587.not, %or.cond961
  br i1 %or.cond962, label %is_power_of_2.exit1276.cleanup634.thread_crit_edge, label %if.end589

is_power_of_2.exit1276.cleanup634.thread_crit_edge: ; preds = %is_power_of_2.exit1276
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup634.thread

if.end589:                                        ; preds = %is_power_of_2.exit1276
  %376 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %354, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %377)
  %cmp591 = icmp eq i32 %377, -1
  br i1 %cmp591, label %if.then593, label %if.end589.if.end596_crit_edge

if.end589.if.end596_crit_edge:                    ; preds = %if.end589
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end596

if.then593:                                       ; preds = %if.end589
  call void @__sanitizer_cov_trace_pc() #20
  %tx_num_pgs594 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 9
  %378 = ptrtoint ptr %tx_num_pgs594 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %tx_num_pgs594, align 4
  %380 = ptrtoint ptr %354 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %379, ptr %354, align 4
  br label %if.end596

if.end596:                                        ; preds = %if.then593, %if.end589.if.end596_crit_edge
  %381 = ptrtoint ptr %356 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %356, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %382)
  %cmp598 = icmp eq i32 %382, -1
  br i1 %cmp598, label %if.then600, label %if.end596.if.end603_crit_edge

if.end596.if.end603_crit_edge:                    ; preds = %if.end596
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end603

if.then600:                                       ; preds = %if.end596
  call void @__sanitizer_cov_trace_pc() #20
  %rx_num_pgs601 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 8
  %383 = ptrtoint ptr %rx_num_pgs601 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %rx_num_pgs601, align 4
  %385 = ptrtoint ptr %356 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %384, ptr %356, align 4
  br label %if.end603

if.end603:                                        ; preds = %if.then600, %if.end596.if.end603_crit_edge
  %386 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %354, align 4
  %rem = urem i32 %387, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool605.not = icmp eq i32 %rem, 0
  br i1 %tobool605.not, label %lor.lhs.false606, label %if.end603.cleanup634.thread_crit_edge

if.end603.cleanup634.thread_crit_edge:            ; preds = %if.end603
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup634.thread

lor.lhs.false606:                                 ; preds = %if.end603
  %388 = ptrtoint ptr %356 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %356, align 4
  %rem608 = urem i32 %389, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem608)
  %tobool609.not = icmp eq i32 %rem608, 0
  br i1 %tobool609.not, label %if.end611, label %lor.lhs.false606.cleanup634.thread_crit_edge

lor.lhs.false606.cleanup634.thread_crit_edge:     ; preds = %lor.lhs.false606
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup634.thread

if.end611:                                        ; preds = %lor.lhs.false606
  %mul614 = mul i32 %389, %370
  %chan_rx_size615 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 4
  %390 = ptrtoint ptr %chan_rx_size615 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %chan_rx_size615, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul614, i32 %391)
  %cmp616 = icmp ugt i32 %mul614, %391
  br i1 %cmp616, label %if.end611.cleanup634.thread_crit_edge, label %lor.lhs.false618

if.end611.cleanup634.thread_crit_edge:            ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup634.thread

lor.lhs.false618:                                 ; preds = %if.end611
  %mul621 = mul i32 %387, %374
  %chan_tx_size = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 5
  %392 = ptrtoint ptr %chan_tx_size to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %chan_tx_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul621, i32 %393)
  %cmp622 = icmp ugt i32 %mul621, %393
  br i1 %cmp622, label %lor.lhs.false618.cleanup634.thread_crit_edge, label %cleanup634

lor.lhs.false618.cleanup634.thread_crit_edge:     ; preds = %lor.lhs.false618
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup634.thread

cleanup634.thread:                                ; preds = %lor.lhs.false618.cleanup634.thread_crit_edge, %if.end611.cleanup634.thread_crit_edge, %lor.lhs.false606.cleanup634.thread_crit_edge, %if.end603.cleanup634.thread_crit_edge, %is_power_of_2.exit1276.cleanup634.thread_crit_edge, %lor.lhs.false575.cleanup634.thread_crit_edge, %if.end572.cleanup634.thread_crit_edge, %if.end567.cleanup634.thread_crit_edge, %if.then11.i.i1136, %if.end558.cleanup634.thread_crit_edge, %if.end555.cleanup634.thread_crit_edge, %sw.bb547.cleanup634.thread_crit_edge
  %retval.7.ph = phi i32 [ -22, %if.end611.cleanup634.thread_crit_edge ], [ -22, %lor.lhs.false618.cleanup634.thread_crit_edge ], [ -22, %if.end603.cleanup634.thread_crit_edge ], [ -22, %lor.lhs.false606.cleanup634.thread_crit_edge ], [ -22, %is_power_of_2.exit1276.cleanup634.thread_crit_edge ], [ -22, %if.end567.cleanup634.thread_crit_edge ], [ -16, %if.end558.cleanup634.thread_crit_edge ], [ -1, %if.end555.cleanup634.thread_crit_edge ], [ -95, %sw.bb547.cleanup634.thread_crit_edge ], [ -14, %if.then11.i.i1136 ], [ -22, %if.end572.cleanup634.thread_crit_edge ], [ -22, %lor.lhs.false575.cleanup634.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %m548) #18
  br label %cleanup768

cleanup634:                                       ; preds = %lor.lhs.false618
  call void @__sanitizer_cov_trace_pc() #20
  %rx_pg_size627 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 6
  %394 = ptrtoint ptr %rx_pg_size627 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %370, ptr %rx_pg_size627, align 4
  %tx_pg_size629 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 7
  %395 = ptrtoint ptr %tx_pg_size629 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %374, ptr %tx_pg_size629, align 4
  %rx_num_pgs631 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 8
  %396 = ptrtoint ptr %rx_num_pgs631 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %389, ptr %rx_num_pgs631, align 4
  %tx_num_pgs633 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 2, i32 9
  %397 = ptrtoint ptr %tx_num_pgs633 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %387, ptr %tx_num_pgs633, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %m548) #18
  br label %sw.epilog

sw.bb637:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %t638) #18
  %398 = getelementptr inbounds %struct.ch_mem_range, ptr %t638, i32 0, i32 1
  %399 = getelementptr inbounds %struct.ch_mem_range, ptr %t638, i32 0, i32 2
  %400 = getelementptr inbounds %struct.ch_mem_range, ptr %t638, i32 0, i32 3
  %401 = getelementptr inbounds %struct.ch_mem_range, ptr %t638, i32 0, i32 4
  %402 = call ptr @memset(ptr %t638, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #18
  %403 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %offload.i1277 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 14
  %404 = ptrtoint ptr %offload.i1277 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %offload.i1277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %405)
  %tobool640.not = icmp eq i32 %405, 0
  br i1 %tobool640.not, label %sw.bb637.cleanup718.thread_crit_edge, label %if.end642

sw.bb637.cleanup718.thread_crit_edge:             ; preds = %sw.bb637
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718.thread

if.end642:                                        ; preds = %sw.bb637
  %call643 = call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call643, label %if.end645, label %if.end642.cleanup718.thread_crit_edge

if.end642.cleanup718.thread_crit_edge:            ; preds = %if.end642
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718.thread

if.end645:                                        ; preds = %if.end642
  %flags646 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 6
  %406 = ptrtoint ptr %flags646 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %flags646, align 4
  %and647 = and i32 %407, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and647)
  %tobool648.not = icmp eq i32 %and647, 0
  br i1 %tobool648.not, label %if.end645.cleanup718.thread_crit_edge, label %if.end59.i.i1142

if.end645.cleanup718.thread_crit_edge:            ; preds = %if.end645
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718.thread

if.end59.i.i1142:                                 ; preds = %if.end645
  call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 156) #18
  %call.i.i1143 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i1143, label %if.end59.i.i1142.if.then11.i.i1159_crit_edge, label %land.lhs.true.i.i1146

if.end59.i.i1142.if.then11.i.i1159_crit_edge:     ; preds = %if.end59.i.i1142
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1159

land.lhs.true.i.i1146:                            ; preds = %if.end59.i.i1142
  %408 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %useraddr, i32 20, i32 -1226833920) #23
  %asmresult.i.i1144 = extractvalue { i32, i32 } %408, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1144)
  %cmp.i6.i1145 = icmp eq i32 %asmresult.i.i1144, 0
  br i1 %cmp.i6.i1145, label %if.end.i.i1156, label %land.lhs.true.i.i1146.if.then11.i.i1159_crit_edge, !prof !392

land.lhs.true.i.i1146.if.then11.i.i1159_crit_edge: ; preds = %land.lhs.true.i.i1146
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1159

if.end.i.i1156:                                   ; preds = %land.lhs.true.i.i1146
  %call.i.i.i1147 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %t638, i32 noundef 20) #18
  %409 = call i32 @llvm.read_register.i32(metadata !376) #18
  %and.i.i.i.i.i.i1148 = and i32 %409, -16384
  %410 = inttoptr i32 %and.i.i.i.i.i.i1148 to ptr
  %cpu_domain.i.i.i.i.i1149 = getelementptr inbounds %struct.thread_info, ptr %410, i32 0, i32 4
  %411 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i1149) #9, !srcloc !396
  %and.i.i.i.i1150 = and i32 %411, -13
  %or.i.i.i.i1151 = or i32 %and.i.i.i.i1150, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i1151) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  %call1.i.i.i1152 = call i32 @arm_copy_from_user(ptr noundef nonnull %t638, ptr noundef %useraddr, i32 noundef 20) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %411) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i1152)
  %tobool4.not.i.i1155 = icmp eq i32 %call1.i.i.i1152, 0
  br i1 %tobool4.not.i.i1155, label %if.end654, label %if.end.i.i1156.if.then11.i.i1159_crit_edge, !prof !392

if.end.i.i1156.if.then11.i.i1159_crit_edge:       ; preds = %if.end.i.i1156
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1159

if.then11.i.i1159:                                ; preds = %if.end.i.i1156.if.then11.i.i1159_crit_edge, %land.lhs.true.i.i1146.if.then11.i.i1159_crit_edge, %if.end59.i.i1142.if.then11.i.i1159_crit_edge
  %res.0.i.i11541370 = phi i32 [ %call1.i.i.i1152, %if.end.i.i1156.if.then11.i.i1159_crit_edge ], [ 20, %if.end59.i.i1142.if.then11.i.i1159_crit_edge ], [ 20, %land.lhs.true.i.i1146.if.then11.i.i1159_crit_edge ]
  %sub.i.i1157 = sub i32 20, %res.0.i.i11541370
  %add.ptr.i.i1158 = getelementptr i8, ptr %t638, i32 %sub.i.i1157
  %412 = call ptr @memset(ptr %add.ptr.i.i1158, i32 0, i32 %res.0.i.i11541370)
  br label %cleanup718.thread

if.end654:                                        ; preds = %if.end.i.i1156
  %413 = ptrtoint ptr %t638 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %t638, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1038, i32 %414)
  %cmp656.not = icmp eq i32 %414, 1038
  br i1 %cmp656.not, label %if.end659, label %if.end654.cleanup718.thread_crit_edge

if.end654.cleanup718.thread_crit_edge:            ; preds = %if.end654
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718.thread

if.end659:                                        ; preds = %if.end654
  %415 = ptrtoint ptr %399 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %399, align 4
  %and660 = and i32 %416, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and660)
  %tobool661.not = icmp eq i32 %and660, 0
  br i1 %tobool661.not, label %lor.lhs.false662, label %if.end659.cleanup718.thread_crit_edge

if.end659.cleanup718.thread_crit_edge:            ; preds = %if.end659
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718.thread

lor.lhs.false662:                                 ; preds = %if.end659
  %417 = ptrtoint ptr %400 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %400, align 4
  %and664 = and i32 %418, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and664)
  %tobool665.not = icmp eq i32 %and664, 0
  br i1 %tobool665.not, label %if.end667, label %lor.lhs.false662.cleanup718.thread_crit_edge

lor.lhs.false662.cleanup718.thread_crit_edge:     ; preds = %lor.lhs.false662
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718.thread

if.end667:                                        ; preds = %lor.lhs.false662
  %419 = ptrtoint ptr %398 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %398, align 4
  %421 = zext i32 %420 to i64
  call void @__sanitizer_cov_trace_switch(i64 %421, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %420, label %if.end667.cleanup718.thread_crit_edge [
    i32 0, label %if.then670
    i32 1, label %if.then675
    i32 2, label %if.then680
  ]

if.end667.cleanup718.thread_crit_edge:            ; preds = %if.end667
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718.thread

if.then670:                                       ; preds = %if.end667
  call void @__sanitizer_cov_trace_pc() #20
  %cm = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 19
  br label %if.end59.i.i1165

if.then675:                                       ; preds = %if.end667
  call void @__sanitizer_cov_trace_pc() #20
  %pmrx = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 17
  br label %if.end59.i.i1165

if.then680:                                       ; preds = %if.end667
  call void @__sanitizer_cov_trace_pc() #20
  %pmtx = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 18
  br label %if.end59.i.i1165

if.end59.i.i1165:                                 ; preds = %if.then680, %if.then675, %if.then670
  %mem.0 = phi ptr [ %cm, %if.then670 ], [ %pmrx, %if.then675 ], [ %pmtx, %if.then680 ]
  %rev686 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 10, i32 13
  %422 = ptrtoint ptr %rev686 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %rev686, align 4
  %shl = shl i32 %423, 10
  %or687 = or i32 %shl, 3
  %424 = ptrtoint ptr %401 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %or687, ptr %401, align 4
  call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 174) #18
  %call.i.i1166 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i1166, label %if.end59.i.i1165.cleanup718.thread_crit_edge, label %copy_to_user.exit1174

if.end59.i.i1165.cleanup718.thread_crit_edge:     ; preds = %if.end59.i.i1165
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718.thread

copy_to_user.exit1174:                            ; preds = %if.end59.i.i1165
  %call.i.i.i1170 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %t638, i32 noundef 20) #18
  %call.i12.i.i1171 = call i32 @arm_copy_to_user(ptr noundef %useraddr, ptr noundef nonnull %t638, i32 noundef 20) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1171)
  %tobool689.not = icmp eq i32 %call.i12.i.i1171, 0
  br i1 %tobool689.not, label %if.end691, label %copy_to_user.exit1174.cleanup718.thread_crit_edge

copy_to_user.exit1174.cleanup718.thread_crit_edge: ; preds = %copy_to_user.exit1174
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718.thread

if.end691:                                        ; preds = %copy_to_user.exit1174
  %425 = ptrtoint ptr %400 to i32
  call void @__asan_load4_noabort(i32 %425)
  %.pr = load i32, ptr %400, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool694.not1404 = icmp eq i32 %.pr, 0
  br i1 %tobool694.not1404, label %if.end691.cleanup718_crit_edge, label %while.body.preheader

if.end691.cleanup718_crit_edge:                   ; preds = %if.end691
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718

while.body.preheader:                             ; preds = %if.end691
  %add.ptr692 = getelementptr i8, ptr %useraddr, i32 20
  br label %while.body

while.body:                                       ; preds = %cleanup716.while.body_crit_edge, %while.body.preheader
  %useraddr.addr.01405 = phi ptr [ %add.ptr711, %cleanup716.while.body_crit_edge ], [ %add.ptr692, %while.body.preheader ]
  %426 = phi i32 [ %sub715, %cleanup716.while.body_crit_edge ], [ %.pr, %while.body.preheader ]
  %427 = call i32 @llvm.umin.i32(i32 %426, i32 256)
  %428 = ptrtoint ptr %399 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %399, align 4
  %div953 = lshr i32 %429, 3
  %div700954 = lshr i32 %427, 3
  %call702 = call i32 @t3_mc7_bd_read(ptr noundef %mem.0, i32 noundef %div953, i32 noundef %div700954, ptr noundef nonnull %buf) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call702)
  %tobool703.not = icmp eq i32 %call702, 0
  br i1 %tobool703.not, label %if.then.i.i.i, label %while.body.cleanup718.thread_crit_edge

while.body.cleanup718.thread_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718.thread

if.then.i.i.i:                                    ; preds = %while.body
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %427, i1 noundef zeroext true) #18
  call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 174) #18
  %call.i.i1179 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i1179, label %if.then.i.i.i.cleanup718.thread_crit_edge, label %if.end.i.i1182

if.then.i.i.i.cleanup718.thread_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718.thread

if.end.i.i1182:                                   ; preds = %if.then.i.i.i
  %430 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %useraddr.addr.01405, i32 %427, i32 -1226833920) #23, !srcloc !400
  %asmresult.i.i1180 = extractvalue { i32, i32 } %430, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1180)
  %cmp.i6.i1181 = icmp eq i32 %asmresult.i.i1180, 0
  br i1 %cmp.i6.i1181, label %copy_to_user.exit1187, label %if.end.i.i1182.cleanup718.thread_crit_edge

if.end.i.i1182.cleanup718.thread_crit_edge:       ; preds = %if.end.i.i1182
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718.thread

copy_to_user.exit1187:                            ; preds = %if.end.i.i1182
  %call.i.i.i1183 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buf, i32 noundef %427) #18
  %call.i12.i.i1184 = call i32 @arm_copy_to_user(ptr noundef %useraddr.addr.01405, ptr noundef nonnull %buf, i32 noundef %427) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1184)
  %tobool708.not = icmp eq i32 %call.i12.i.i1184, 0
  br i1 %tobool708.not, label %cleanup716, label %copy_to_user.exit1187.cleanup718.thread_crit_edge

copy_to_user.exit1187.cleanup718.thread_crit_edge: ; preds = %copy_to_user.exit1187
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718.thread

cleanup716:                                       ; preds = %copy_to_user.exit1187
  %add.ptr711 = getelementptr i8, ptr %useraddr.addr.01405, i32 %427
  %431 = ptrtoint ptr %399 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %399, align 4
  %add713 = add i32 %432, %427
  store i32 %add713, ptr %399, align 4
  %433 = ptrtoint ptr %400 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %400, align 4
  %sub715 = sub i32 %434, %427
  store i32 %sub715, ptr %400, align 4
  %tobool694.not = icmp eq i32 %sub715, 0
  br i1 %tobool694.not, label %cleanup716.cleanup718_crit_edge, label %cleanup716.while.body_crit_edge

cleanup716.while.body_crit_edge:                  ; preds = %cleanup716
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

cleanup716.cleanup718_crit_edge:                  ; preds = %cleanup716
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup718

cleanup718.thread:                                ; preds = %copy_to_user.exit1187.cleanup718.thread_crit_edge, %if.end.i.i1182.cleanup718.thread_crit_edge, %if.then.i.i.i.cleanup718.thread_crit_edge, %while.body.cleanup718.thread_crit_edge, %copy_to_user.exit1174.cleanup718.thread_crit_edge, %if.end59.i.i1165.cleanup718.thread_crit_edge, %if.end667.cleanup718.thread_crit_edge, %lor.lhs.false662.cleanup718.thread_crit_edge, %if.end659.cleanup718.thread_crit_edge, %if.end654.cleanup718.thread_crit_edge, %if.then11.i.i1159, %if.end645.cleanup718.thread_crit_edge, %if.end642.cleanup718.thread_crit_edge, %sw.bb637.cleanup718.thread_crit_edge
  %retval.10.ph = phi i32 [ -14, %copy_to_user.exit1174.cleanup718.thread_crit_edge ], [ -22, %if.end667.cleanup718.thread_crit_edge ], [ -22, %if.end659.cleanup718.thread_crit_edge ], [ -22, %lor.lhs.false662.cleanup718.thread_crit_edge ], [ -22, %if.end654.cleanup718.thread_crit_edge ], [ -5, %if.end645.cleanup718.thread_crit_edge ], [ -1, %if.end642.cleanup718.thread_crit_edge ], [ -95, %sw.bb637.cleanup718.thread_crit_edge ], [ -14, %if.then11.i.i1159 ], [ -14, %if.end59.i.i1165.cleanup718.thread_crit_edge ], [ -14, %if.end.i.i1182.cleanup718.thread_crit_edge ], [ -14, %if.then.i.i.i.cleanup718.thread_crit_edge ], [ %call702, %while.body.cleanup718.thread_crit_edge ], [ -14, %copy_to_user.exit1187.cleanup718.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %t638) #18
  br label %cleanup768

cleanup718:                                       ; preds = %cleanup716.cleanup718_crit_edge, %if.end691.cleanup718_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %t638) #18
  br label %sw.epilog

sw.bb722:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %t723) #18
  %435 = call ptr @memset(ptr %t723, i32 255, i32 36)
  %call725 = call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call725, label %if.end727, label %sw.bb722.cleanup765.thread_crit_edge

sw.bb722.cleanup765.thread_crit_edge:             ; preds = %sw.bb722
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup765.thread

if.end727:                                        ; preds = %sw.bb722
  %open_device_map.i1278 = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 5
  %436 = ptrtoint ptr %open_device_map.i1278 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load volatile i32, ptr %open_device_map.i1278, align 4
  %438 = and i32 %437, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %438)
  %tobool729.not = icmp eq i32 %438, 0
  br i1 %tobool729.not, label %if.end727.cleanup765.thread_crit_edge, label %if.end59.i.i1192

if.end727.cleanup765.thread_crit_edge:            ; preds = %if.end727
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup765.thread

if.end59.i.i1192:                                 ; preds = %if.end727
  call void @__might_fault(ptr noundef nonnull @.str.139, i32 noundef 156) #18
  %call.i.i1193 = call zeroext i1 @should_fail_usercopy() #18
  br i1 %call.i.i1193, label %if.end59.i.i1192.if.then11.i.i1210_crit_edge, label %land.lhs.true.i.i1197

if.end59.i.i1192.if.then11.i.i1210_crit_edge:     ; preds = %if.end59.i.i1192
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1210

land.lhs.true.i.i1197:                            ; preds = %if.end59.i.i1192
  %439 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %useraddr, i32 36, i32 -1226833920) #23, !srcloc !395
  %asmresult.i.i1195 = extractvalue { i32, i32 } %439, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1195)
  %cmp.i6.i1196 = icmp eq i32 %asmresult.i.i1195, 0
  br i1 %cmp.i6.i1196, label %if.end.i.i1207, label %land.lhs.true.i.i1197.if.then11.i.i1210_crit_edge, !prof !392

land.lhs.true.i.i1197.if.then11.i.i1210_crit_edge: ; preds = %land.lhs.true.i.i1197
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1210

if.end.i.i1207:                                   ; preds = %land.lhs.true.i.i1197
  %call.i.i.i1198 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %t723, i32 noundef 36) #18
  %440 = call i32 @llvm.read_register.i32(metadata !376) #18
  %and.i.i.i.i.i.i1199 = and i32 %440, -16384
  %441 = inttoptr i32 %and.i.i.i.i.i.i1199 to ptr
  %cpu_domain.i.i.i.i.i1200 = getelementptr inbounds %struct.thread_info, ptr %441, i32 0, i32 4
  %442 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i1200) #9, !srcloc !396
  %and.i.i.i.i1201 = and i32 %442, -13
  %or.i.i.i.i1202 = or i32 %and.i.i.i.i1201, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i1202) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  %call1.i.i.i1203 = call i32 @arm_copy_from_user(ptr noundef nonnull %t723, ptr noundef %useraddr, i32 noundef 36) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %442) #18, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i1203)
  %tobool4.not.i.i1206 = icmp eq i32 %call1.i.i.i1203, 0
  br i1 %tobool4.not.i.i1206, label %if.end735, label %if.end.i.i1207.if.then11.i.i1210_crit_edge, !prof !392

if.end.i.i1207.if.then11.i.i1210_crit_edge:       ; preds = %if.end.i.i1207
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11.i.i1210

if.then11.i.i1210:                                ; preds = %if.end.i.i1207.if.then11.i.i1210_crit_edge, %land.lhs.true.i.i1197.if.then11.i.i1210_crit_edge, %if.end59.i.i1192.if.then11.i.i1210_crit_edge
  %res.0.i.i12051384 = phi i32 [ %call1.i.i.i1203, %if.end.i.i1207.if.then11.i.i1210_crit_edge ], [ 36, %if.end59.i.i1192.if.then11.i.i1210_crit_edge ], [ 36, %land.lhs.true.i.i1197.if.then11.i.i1210_crit_edge ]
  %sub.i.i1208 = sub i32 36, %res.0.i.i12051384
  %add.ptr.i.i1209 = getelementptr i8, ptr %t723, i32 %sub.i.i1208
  %443 = call ptr @memset(ptr %add.ptr.i.i1209, i32 0, i32 %res.0.i.i12051384)
  br label %cleanup765.thread

if.end735:                                        ; preds = %if.end.i.i1207
  %444 = ptrtoint ptr %t723 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %t723, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1044, i32 %445)
  %cmp737.not = icmp eq i32 %445, 1044
  br i1 %cmp737.not, label %if.end740, label %if.end735.cleanup765.thread_crit_edge

if.end735.cleanup765.thread_crit_edge:            ; preds = %if.end735
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup765.thread

if.end740:                                        ; preds = %if.end735
  %sip = getelementptr inbounds %struct.ch_trace, ptr %t723, i32 0, i32 1
  %config_tx = getelementptr inbounds %struct.ch_trace, ptr %t723, i32 0, i32 12
  %446 = ptrtoint ptr %config_tx to i32
  call void @__asan_load1_noabort(i32 %446)
  %bf.load = load i8, ptr %config_tx, align 2
  %447 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %447)
  %tobool741.not = icmp eq i8 %447, 0
  br i1 %tobool741.not, label %if.end740.if.end750_crit_edge, label %if.then742

if.end740.if.end750_crit_edge:                    ; preds = %if.end740
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end750

if.then742:                                       ; preds = %if.end740
  call void @__sanitizer_cov_trace_pc() #20
  %bf.lshr744 = lshr i8 %bf.load, 7
  %conv745 = zext i8 %bf.lshr744 to i32
  %bf.lshr747 = lshr i8 %bf.load, 4
  %bf.clear748 = and i8 %bf.lshr747, 1
  %conv749 = zext i8 %bf.clear748 to i32
  call void @t3_config_trace_filter(ptr noundef %2, ptr noundef %sip, i32 noundef 0, i32 noundef %conv745, i32 noundef %conv749) #18
  br label %if.end750

if.end750:                                        ; preds = %if.then742, %if.end740.if.end750_crit_edge
  %448 = ptrtoint ptr %config_tx to i32
  call void @__asan_load1_noabort(i32 %448)
  %bf.load751 = load i8, ptr %config_tx, align 2
  %449 = and i8 %bf.load751, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %449)
  %tobool754.not = icmp eq i8 %449, 0
  br i1 %tobool754.not, label %if.end750.cleanup765_crit_edge, label %if.then755

if.end750.cleanup765_crit_edge:                   ; preds = %if.end750
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup765

if.then755:                                       ; preds = %if.end750
  call void @__sanitizer_cov_trace_pc() #20
  %bf.lshr758 = lshr i8 %bf.load751, 7
  %conv759 = zext i8 %bf.lshr758 to i32
  %bf.lshr761 = lshr i8 %bf.load751, 3
  %bf.clear762 = and i8 %bf.lshr761, 1
  %conv763 = zext i8 %bf.clear762 to i32
  call void @t3_config_trace_filter(ptr noundef %2, ptr noundef %sip, i32 noundef 1, i32 noundef %conv759, i32 noundef %conv763) #18
  br label %cleanup765

cleanup765.thread:                                ; preds = %if.end735.cleanup765.thread_crit_edge, %if.then11.i.i1210, %if.end727.cleanup765.thread_crit_edge, %sw.bb722.cleanup765.thread_crit_edge
  %retval.11.ph = phi i32 [ -22, %if.end735.cleanup765.thread_crit_edge ], [ -11, %if.end727.cleanup765.thread_crit_edge ], [ -1, %sw.bb722.cleanup765.thread_crit_edge ], [ -14, %if.then11.i.i1210 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %t723) #18
  br label %cleanup768

cleanup765:                                       ; preds = %if.then755, %if.end750.cleanup765_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %t723) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup765, %cleanup718, %cleanup634, %cleanup544.sw.epilog_crit_edge, %for.cond507.14, %cleanup472.sw.epilog_crit_edge, %copy_to_user.exit1056.sw.epilog_crit_edge, %cleanup431, %cleanup342.sw.epilog_crit_edge, %cleanup
  br label %cleanup768

cleanup768:                                       ; preds = %sw.epilog, %cleanup765.thread, %cleanup718.thread, %cleanup634.thread, %cleanup544.cleanup768_crit_edge, %cleanup544.thread1358, %cleanup544.thread, %cleanup529.thread, %cleanup472.cleanup768_crit_edge, %cleanup472.thread, %copy_to_user.exit1056.cleanup768_crit_edge, %copy_to_user.exit1056.thread, %cleanup431.thread, %cleanup342.cleanup768_crit_edge, %cleanup342.thread1330, %cleanup342.thread, %cleanup.thread, %if.end4.cleanup768_crit_edge, %if.then11.i.i, %entry.cleanup768_crit_edge
  %retval.12 = phi i32 [ 0, %sw.epilog ], [ -14, %cleanup544.cleanup768_crit_edge ], [ %call468, %cleanup472.cleanup768_crit_edge ], [ -14, %copy_to_user.exit1056.cleanup768_crit_edge ], [ -14, %cleanup342.cleanup768_crit_edge ], [ -95, %entry.cleanup768_crit_edge ], [ -95, %if.end4.cleanup768_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ %retval.1.ph, %cleanup342.thread ], [ -14, %cleanup342.thread1330 ], [ %retval.2.ph, %cleanup431.thread ], [ -14, %copy_to_user.exit1056.thread ], [ %retval.4.ph, %cleanup472.thread ], [ %retval.5.ph, %cleanup529.thread ], [ -95, %cleanup544.thread ], [ -14, %cleanup544.thread1358 ], [ %retval.7.ph, %cleanup634.thread ], [ %retval.10.ph, %cleanup718.thread ], [ %retval.11.ph, %cleanup765.thread ], [ -14, %if.then11.i.i ]
  ret i32 %retval.12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %mac = getelementptr i8, ptr %dev, i32 5624
  %call2 = tail call i32 @t3_mac_set_mtu(ptr noundef %mac, i32 noundef %new_mtu) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  %port.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 21
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu.i, align 4
  %arrayidx2.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 21, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.init_port_mtus.exit_crit_edge, label %if.then.i

if.end.init_port_mtus.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_port_mtus.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %mtu5.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %mtu5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtu5.i, align 4
  %shl.i = shl i32 %10, 16
  %or.i = or i32 %shl.i, %6
  br label %init_port_mtus.exit

init_port_mtus.exit:                              ; preds = %if.then.i, %if.end.init_port_mtus.exit_crit_edge
  %mtus.0.i = phi i32 [ %or.i, %if.then.i ], [ %6, %if.end.init_port_mtus.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  tail call void @arm_heavy_mb() #18
  %11 = tail call i32 @llvm.bswap.i32(i32 %mtus.0.i) #18
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #18, !srcloc !389
  %rev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 13
  %14 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %land.lhs.true, label %init_port_mtus.exit.cleanup_crit_edge

init_port_mtus.exit.cleanup_crit_edge:            ; preds = %init_port_mtus.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true:                                    ; preds = %init_port_mtus.exit
  %open_device_map.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %open_device_map.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %open_device_map.i, align 4
  %18 = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not = icmp eq i32 %18, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %mtus = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 6
  %a_wnd = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 7
  %b_wnd = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 8
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port.i, align 4
  %mtu11 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %mtu11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mtu11, align 4
  %conv = trunc i32 %22 to i16
  tail call void @t3_load_mtus(ptr noundef %1, ptr noundef %mtus, ptr noundef %a_wnd, ptr noundef %b_wnd, i16 noundef zeroext %conv) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %init_port_mtus.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cxgb_get_stats(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %stats_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #18
  %mac = getelementptr i8, ptr %dev, i32 5624
  %call2 = tail call ptr @t3_mac_update_stats(ptr noundef %mac) #18
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock) #18
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %call2, align 8
  %conv = trunc i64 %3 to i32
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %4 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %tx_bytes, align 4
  %tx_frames = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 2
  %5 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tx_frames, align 8
  %conv4 = trunc i64 %6 to i32
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %7 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv4, ptr %tx_packets, align 4
  %rx_octets = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 22
  %8 = ptrtoint ptr %rx_octets to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_octets, align 8
  %conv5 = trunc i64 %9 to i32
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %10 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv5, ptr %rx_bytes, align 4
  %rx_frames = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 24
  %11 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rx_frames, align 8
  %conv6 = trunc i64 %12 to i32
  %13 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv6, ptr %stats, align 4
  %rx_mcast_frames = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 25
  %14 = ptrtoint ptr %rx_mcast_frames to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rx_mcast_frames, align 8
  %conv7 = trunc i64 %15 to i32
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %16 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv7, ptr %multicast, align 4
  %tx_underrun = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 10
  %17 = ptrtoint ptr %tx_underrun to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tx_underrun, align 8
  %conv8 = trunc i64 %18 to i32
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %19 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv8, ptr %tx_errors, align 4
  %rx_symbol_errs = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 30
  %20 = ptrtoint ptr %rx_symbol_errs to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_symbol_errs, align 8
  %rx_fcs_errs = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 28
  %22 = ptrtoint ptr %rx_fcs_errs to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rx_fcs_errs, align 8
  %add = add i64 %23, %21
  %rx_too_long = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 36
  %24 = ptrtoint ptr %rx_too_long to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_too_long, align 8
  %add9 = add i64 %add, %25
  %rx_jabber = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 34
  %26 = ptrtoint ptr %rx_jabber to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rx_jabber, align 8
  %add10 = add i64 %add9, %27
  %rx_short = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 35
  %28 = ptrtoint ptr %rx_short to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rx_short, align 8
  %add11 = add i64 %add10, %29
  %rx_fifo_ovfl = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 49
  %30 = ptrtoint ptr %rx_fifo_ovfl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_fifo_ovfl, align 4
  %32 = trunc i64 %add11 to i32
  %conv14 = add i32 %31, %32
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %33 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv14, ptr %rx_errors, align 4
  %34 = load i64, ptr %rx_jabber, align 8
  %35 = load i64, ptr %rx_too_long, align 8
  %add17 = add i64 %35, %34
  %conv18 = trunc i64 %add17 to i32
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %36 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv18, ptr %rx_length_errors, align 4
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %37 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %rx_over_errors, align 4
  %38 = load i64, ptr %rx_fcs_errs, align 8
  %conv20 = trunc i64 %38 to i32
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %39 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv20, ptr %rx_crc_errors, align 4
  %40 = load i64, ptr %rx_symbol_errs, align 8
  %conv22 = trunc i64 %40 to i32
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %41 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv22, ptr %rx_frame_errors, align 4
  %42 = load i32, ptr %rx_fifo_ovfl, align 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %43 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %rx_fifo_errors, align 4
  %rx_cong_drops = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 45
  %44 = ptrtoint ptr %rx_cong_drops to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rx_cong_drops, align 8
  %conv24 = trunc i64 %45 to i32
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %46 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv24, ptr %rx_missed_errors, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %47 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %tx_aborted_errors, align 4
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %48 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %tx_carrier_errors, align 4
  %49 = load i64, ptr %tx_underrun, align 8
  %conv26 = trunc i64 %49 to i32
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %50 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv26, ptr %tx_fifo_errors, align 4
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 19
  %51 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %tx_heartbeat_errors, align 4
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 20
  %52 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tx_window_errors, align 4
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb_netpoll(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %first_qset = getelementptr i8, ptr %dev, i32 2314
  %nqsets = getelementptr i8, ptr %dev, i32 2313
  %2 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nqsets, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp21.not = icmp eq i8 %3, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %first_qset, align 2
  %conv = zext i8 %5 to i32
  %sge = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 16
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %qidx.022 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %qidx.022
  %source.0 = select i1 %tobool.not, ptr %1, ptr %arrayidx
  %polling = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %qidx.022, i32 2, i32 4
  %8 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %polling, align 8
  %call7 = tail call ptr @t3_intr_handler(ptr noundef %1, i32 noundef %9) #18
  %call8 = tail call i32 %call7(i32 noundef 0, ptr noundef %source.0) #18
  %inc = add nuw nsw i32 %qidx.022, 1
  %10 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %first_qset, align 2
  %conv3 = zext i8 %11 to i32
  %12 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nqsets, align 1
  %conv4 = zext i8 %13 to i32
  %add = add nuw nsw i32 %conv4, %conv3
  %cmp = icmp ult i32 %inc, %add
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @cxgb_fix_features(ptr nocapture noundef readnone %dev, i64 noundef %features) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i64 %features, -129
  %and = lshr i64 %features, 1
  %0 = and i64 %and, 128
  %features.addr.0 = or i64 %0, %and1
  ret i64 %features.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb_set_features(ptr nocapture noundef readonly %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @cxgb_vlan_mode(ptr noundef %dev, i64 noundef %features)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_update_qset_coalesce(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mc7_bd_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_config_trace_filter(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #0 align 64 {
entry:
  %fw_vers = alloca i32, align 4
  %tp_vers = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_vers) #18
  %2 = ptrtoint ptr %fw_vers to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fw_vers, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp_vers) #18
  %3 = ptrtoint ptr %tp_vers to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tp_vers, align 4
  %stats_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #18
  %call2 = call i32 @t3_get_fw_version(ptr noundef %1, ptr noundef nonnull %fw_vers) #18
  %call3 = call i32 @t3_get_tp_version(ptr noundef %1, ptr noundef nonnull %tp_vers) #18
  call void @_raw_spin_unlock(ptr noundef %stats_lock) #18
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call5 = call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.35, i32 noundef 32) #18
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %pdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %entry.pci_name.exit_crit_edge ]
  %call8 = call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #18
  %10 = ptrtoint ptr %fw_vers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %pci_name.exit.if.end_crit_edge, label %if.then

pci_name.exit.if.end_crit_edge:                   ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %11)
  %tobool10.not = icmp ult i32 %11, 268435456
  %cond = select i1 %tobool10.not, ptr @.str.142, ptr @.str.141
  %shr11 = lshr i32 %11, 16
  %and12 = and i32 %shr11, 4095
  %shr13 = lshr i32 %11, 8
  %and14 = and i32 %shr13, 255
  %and16 = and i32 %11, 255
  %12 = ptrtoint ptr %tp_vers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tp_vers, align 4
  %shr17 = lshr i32 %13, 16
  %and18 = and i32 %shr17, 255
  %shr19 = lshr i32 %13, 8
  %and20 = and i32 %shr19, 255
  %and22 = and i32 %13, 255
  %call23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.140, ptr noundef nonnull %cond, i32 noundef %and12, i32 noundef %and14, i32 noundef %and16, i32 noundef %and18, i32 noundef %and20, i32 noundef %and22)
  br label %if.end

if.end:                                           ; preds = %if.then, %pci_name.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp_vers) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_vers) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_regs_len(ptr nocapture noundef readnone %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3072
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_regs(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %rev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 13
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rev, align 4
  %shl = shl i32 %3, 10
  %variant.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 4, i32 3
  %4 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %variant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp.i = icmp eq i8 %5, 4
  %shl2 = select i1 %cmp.i, i32 -2147483648, i32 0
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, 3
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %6 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or3, ptr %version, align 4
  %7 = call ptr @memset(ptr %buf, i32 0, i32 3072)
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #18, !srcloc !386
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i = getelementptr i32, ptr %buf, i32 1
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %buf, align 4
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1) #18, !srcloc !386
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i.1 = getelementptr i32, ptr %buf, i32 2
  %17 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %incdec.ptr.i, align 4
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2) #18, !srcloc !386
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i.2 = getelementptr i32, ptr %buf, i32 3
  %22 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %incdec.ptr.i.1, align 4
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %24, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3) #18, !srcloc !386
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i.3 = getelementptr i32, ptr %buf, i32 4
  %27 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %incdec.ptr.i.2, align 4
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.4 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.4) #18, !srcloc !386
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i.4 = getelementptr i32, ptr %buf, i32 5
  %32 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %incdec.ptr.i.3, align 4
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.5 = getelementptr i8, ptr %34, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.5) #18, !srcloc !386
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i.5 = getelementptr i32, ptr %buf, i32 6
  %37 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %incdec.ptr.i.4, align 4
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.6 = getelementptr i8, ptr %39, i32 24
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.6) #18, !srcloc !386
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i.6 = getelementptr i32, ptr %buf, i32 7
  %42 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %incdec.ptr.i.5, align 4
  %43 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.7 = getelementptr i8, ptr %44, i32 28
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.7) #18, !srcloc !386
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i.7 = getelementptr i32, ptr %buf, i32 8
  %47 = ptrtoint ptr %incdec.ptr.i.6 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %incdec.ptr.i.6, align 4
  %48 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.8 = getelementptr i8, ptr %49, i32 32
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.8) #18, !srcloc !386
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i.8 = getelementptr i32, ptr %buf, i32 9
  %52 = ptrtoint ptr %incdec.ptr.i.7 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %incdec.ptr.i.7, align 4
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.9 = getelementptr i8, ptr %54, i32 36
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.9) #18, !srcloc !386
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i.9 = getelementptr i32, ptr %buf, i32 10
  %57 = ptrtoint ptr %incdec.ptr.i.8 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %incdec.ptr.i.8, align 4
  %58 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.10 = getelementptr i8, ptr %59, i32 40
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.10) #18, !srcloc !386
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i.10 = getelementptr i32, ptr %buf, i32 11
  %62 = ptrtoint ptr %incdec.ptr.i.9 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %incdec.ptr.i.9, align 4
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.11 = getelementptr i8, ptr %64, i32 44
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.11) #18, !srcloc !386
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i.11 = getelementptr i32, ptr %buf, i32 12
  %67 = ptrtoint ptr %incdec.ptr.i.10 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %incdec.ptr.i.10, align 4
  %68 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.12 = getelementptr i8, ptr %69, i32 48
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.12) #18, !srcloc !386
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %72 = ptrtoint ptr %incdec.ptr.i.11 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %incdec.ptr.i.11, align 4
  %add.ptr.i19 = getelementptr i8, ptr %buf, i32 56
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.body.i27.for.body.i27_crit_edge, %entry
  %p.06.i21 = phi ptr [ %add.ptr.i19, %entry ], [ %incdec.ptr.i24, %for.body.i27.for.body.i27_crit_edge ]
  %start.addr.05.i22 = phi i32 [ 56, %entry ], [ %add.i25, %for.body.i27.for.body.i27_crit_edge ]
  %73 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %74, i32 %start.addr.05.i22
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #18, !srcloc !386
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i24 = getelementptr i32, ptr %p.06.i21, i32 1
  %77 = ptrtoint ptr %p.06.i21 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %p.06.i21, align 4
  %add.i25 = add nuw nsw i32 %start.addr.05.i22, 4
  %cmp.not.i26 = icmp ugt i32 %start.addr.05.i22, 1340
  br i1 %cmp.not.i26, label %reg_block_dump.exit28, label %for.body.i27.for.body.i27_crit_edge

for.body.i27.for.body.i27_crit_edge:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i27

reg_block_dump.exit28:                            ; preds = %for.body.i27
  %add.ptr.i29 = getelementptr i8, ptr %buf, i32 1408
  br label %for.body.i37

for.body.i37:                                     ; preds = %for.body.i37.for.body.i37_crit_edge, %reg_block_dump.exit28
  %p.06.i31 = phi ptr [ %add.ptr.i29, %reg_block_dump.exit28 ], [ %incdec.ptr.i34, %for.body.i37.for.body.i37_crit_edge ]
  %start.addr.05.i32 = phi i32 [ 1408, %reg_block_dump.exit28 ], [ %add.i35, %for.body.i37.for.body.i37_crit_edge ]
  %78 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %79, i32 %start.addr.05.i32
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #18, !srcloc !386
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i34 = getelementptr i32, ptr %p.06.i31, i32 1
  %82 = ptrtoint ptr %p.06.i31 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %p.06.i31, align 4
  %add.i35 = add nuw nsw i32 %start.addr.05.i32, 4
  %cmp.not.i36 = icmp ugt i32 %start.addr.05.i32, 1564
  br i1 %cmp.not.i36, label %reg_block_dump.exit38, label %for.body.i37.for.body.i37_crit_edge

for.body.i37.for.body.i37_crit_edge:              ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i37

reg_block_dump.exit38:                            ; preds = %for.body.i37
  %add.ptr.i39 = getelementptr i8, ptr %buf, i32 1600
  %83 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %84, i32 1600
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #18, !srcloc !386
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i44 = getelementptr i8, ptr %buf, i32 1604
  %87 = ptrtoint ptr %add.ptr.i39 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %add.ptr.i39, align 4
  %88 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i43.1 = getelementptr i8, ptr %89, i32 1604
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.1) #18, !srcloc !386
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i44.1 = getelementptr i8, ptr %buf, i32 1608
  %92 = ptrtoint ptr %incdec.ptr.i44 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %incdec.ptr.i44, align 4
  %93 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i43.2 = getelementptr i8, ptr %94, i32 1608
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.2) #18, !srcloc !386
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i44.2 = getelementptr i8, ptr %buf, i32 1612
  %97 = ptrtoint ptr %incdec.ptr.i44.1 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %incdec.ptr.i44.1, align 4
  %98 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i43.3 = getelementptr i8, ptr %99, i32 1612
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.3) #18, !srcloc !386
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i44.3 = getelementptr i8, ptr %buf, i32 1616
  %102 = ptrtoint ptr %incdec.ptr.i44.2 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %incdec.ptr.i44.2, align 4
  %103 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i43.4 = getelementptr i8, ptr %104, i32 1616
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.4) #18, !srcloc !386
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i44.4 = getelementptr i8, ptr %buf, i32 1620
  %107 = ptrtoint ptr %incdec.ptr.i44.3 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %incdec.ptr.i44.3, align 4
  %108 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i43.5 = getelementptr i8, ptr %109, i32 1620
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.5) #18, !srcloc !386
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i44.5 = getelementptr i8, ptr %buf, i32 1624
  %112 = ptrtoint ptr %incdec.ptr.i44.4 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %incdec.ptr.i44.4, align 4
  %113 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i43.6 = getelementptr i8, ptr %114, i32 1624
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.6) #18, !srcloc !386
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i44.6 = getelementptr i8, ptr %buf, i32 1628
  %117 = ptrtoint ptr %incdec.ptr.i44.5 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %incdec.ptr.i44.5, align 4
  %118 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i43.7 = getelementptr i8, ptr %119, i32 1628
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.7) #18, !srcloc !386
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %122 = ptrtoint ptr %incdec.ptr.i44.6 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %incdec.ptr.i44.6, align 4
  %add.ptr.i49 = getelementptr i8, ptr %buf, i32 1632
  br label %for.body.i57

for.body.i57:                                     ; preds = %for.body.i57.for.body.i57_crit_edge, %reg_block_dump.exit38
  %p.06.i51 = phi ptr [ %add.ptr.i49, %reg_block_dump.exit38 ], [ %incdec.ptr.i54, %for.body.i57.for.body.i57_crit_edge ]
  %start.addr.05.i52 = phi i32 [ 1632, %reg_block_dump.exit38 ], [ %add.i55, %for.body.i57.for.body.i57_crit_edge ]
  %123 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %124, i32 %start.addr.05.i52
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53) #18, !srcloc !386
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i54 = getelementptr i32, ptr %p.06.i51, i32 1
  %127 = ptrtoint ptr %p.06.i51 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %p.06.i51, align 4
  %add.i55 = add nuw nsw i32 %start.addr.05.i52, 4
  %cmp.not.i56 = icmp ugt i32 %start.addr.05.i52, 2296
  br i1 %cmp.not.i56, label %reg_block_dump.exit58, label %for.body.i57.for.body.i57_crit_edge

for.body.i57.for.body.i57_crit_edge:              ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i57

reg_block_dump.exit58:                            ; preds = %for.body.i57
  %add.ptr.i59 = getelementptr i8, ptr %buf, i32 2444
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.body.i67.for.body.i67_crit_edge, %reg_block_dump.exit58
  %p.06.i61 = phi ptr [ %add.ptr.i59, %reg_block_dump.exit58 ], [ %incdec.ptr.i64, %for.body.i67.for.body.i67_crit_edge ]
  %start.addr.05.i62 = phi i32 [ 2444, %reg_block_dump.exit58 ], [ %add.i65, %for.body.i67.for.body.i67_crit_edge ]
  %128 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %129, i32 %start.addr.05.i62
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i63) #18, !srcloc !386
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i64 = getelementptr i32, ptr %p.06.i61, i32 1
  %132 = ptrtoint ptr %p.06.i61 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %p.06.i61, align 4
  %add.i65 = add nuw nsw i32 %start.addr.05.i62, 4
  %cmp.not.i66 = icmp ugt i32 %start.addr.05.i62, 2808
  br i1 %cmp.not.i66, label %reg_block_dump.exit68, label %for.body.i67.for.body.i67_crit_edge

for.body.i67.for.body.i67_crit_edge:              ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i67

reg_block_dump.exit68:                            ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i69 = getelementptr i8, ptr %buf, i32 2956
  %133 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i73 = getelementptr i8, ptr %134, i32 2956
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73) #18, !srcloc !386
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i74 = getelementptr i8, ptr %buf, i32 2960
  %137 = ptrtoint ptr %add.ptr.i69 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %add.ptr.i69, align 4
  %138 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i73.1 = getelementptr i8, ptr %139, i32 2960
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73.1) #18, !srcloc !386
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i74.1 = getelementptr i8, ptr %buf, i32 2964
  %142 = ptrtoint ptr %incdec.ptr.i74 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %incdec.ptr.i74, align 4
  %143 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i73.2 = getelementptr i8, ptr %144, i32 2964
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73.2) #18, !srcloc !386
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i74.2 = getelementptr i8, ptr %buf, i32 2968
  %147 = ptrtoint ptr %incdec.ptr.i74.1 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %incdec.ptr.i74.1, align 4
  %148 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i73.3 = getelementptr i8, ptr %149, i32 2968
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73.3) #18, !srcloc !386
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i74.3 = getelementptr i8, ptr %buf, i32 2972
  %152 = ptrtoint ptr %incdec.ptr.i74.2 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %incdec.ptr.i74.2, align 4
  %153 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i73.4 = getelementptr i8, ptr %154, i32 2972
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73.4) #18, !srcloc !386
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i74.4 = getelementptr i8, ptr %buf, i32 2976
  %157 = ptrtoint ptr %incdec.ptr.i74.3 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %incdec.ptr.i74.3, align 4
  %158 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i73.5 = getelementptr i8, ptr %159, i32 2976
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73.5) #18, !srcloc !386
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i74.5 = getelementptr i8, ptr %buf, i32 2980
  %162 = ptrtoint ptr %incdec.ptr.i74.4 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %incdec.ptr.i74.4, align 4
  %163 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i73.6 = getelementptr i8, ptr %164, i32 2980
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73.6) #18, !srcloc !386
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i74.6 = getelementptr i8, ptr %buf, i32 2984
  %167 = ptrtoint ptr %incdec.ptr.i74.5 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %incdec.ptr.i74.5, align 4
  %168 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i73.7 = getelementptr i8, ptr %169, i32 2984
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73.7) #18, !srcloc !386
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %incdec.ptr.i74.7 = getelementptr i8, ptr %buf, i32 2988
  %172 = ptrtoint ptr %incdec.ptr.i74.6 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %incdec.ptr.i74.6, align 4
  %173 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i73.8 = getelementptr i8, ptr %174, i32 2988
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73.8) #18, !srcloc !386
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %177 = ptrtoint ptr %incdec.ptr.i74.7 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %incdec.ptr.i74.7, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @get_wol(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %wol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = call ptr @memset(ptr %supported, i32 0, i32 14)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_msglevel(ptr nocapture noundef readonly %dev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %msg_enable = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @set_msglevel(ptr nocapture noundef readonly %dev, i32 noundef %val) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %msg_enable = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %val, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @restart_autoneg(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %autoneg = getelementptr i8, ptr %dev, i32 6112
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %phy = getelementptr i8, ptr %dev, i32 2316
  %ops = getelementptr i8, ptr %dev, i32 2336
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %autoneg_restart = getelementptr inbounds %struct.cphy_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %autoneg_restart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %autoneg_restart, align 4
  %call6 = tail call i32 %7(ptr noundef %phy) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -11, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_eeprom_len(ptr nocapture noundef readnone %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8192
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef %e, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %e, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 954396940, ptr %magic, align 4
  %pdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %e, i32 0, i32 2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  %conv = zext i32 %6 to i64
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %e, i32 0, i32 3
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %call2 = tail call i32 @pci_read_vpd(ptr noundef %4, i64 noundef %conv, i32 noundef %8, ptr noundef %data) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %eeprom, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 954396940, i32 %3)
  %cmp.not = icmp eq i32 %3, 954396940
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %and = and i32 %5, -4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %and3 = and i32 %5, 3
  %add = add nuw nsw i32 %and3, 3
  %add4 = add i32 %add, %7
  %and5 = and i32 %add4, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp7.not = icmp eq i32 %and, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and5, i32 %7)
  %cmp9.not = icmp eq i32 %and5, %7
  %or.cond = select i1 %cmp7.not, i1 %cmp9.not, i1 false
  br i1 %or.cond, label %if.end.if.end22_crit_edge, label %if.end8.i

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and5, i32 noundef 3264) #22
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end13

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end13:                                         ; preds = %if.end8.i
  %pdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %conv = zext i32 %and to i64
  %call14 = tail call i32 @pci_read_vpd(ptr noundef %9, i64 noundef %conv, i32 noundef %and5, ptr noundef nonnull %call9.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.out_crit_edge, label %if.end18

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %and20 = and i32 %11, 3
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %and20
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %14 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %13)
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %if.end.if.end22_crit_edge
  %buf.0 = phi ptr [ %call9.i, %if.end18 ], [ %data, %if.end.if.end22_crit_edge ]
  %call23 = tail call i32 @t3_seeprom_wp(ptr noundef %1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end26:                                         ; preds = %if.end22
  %pdev27 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev27, align 8
  %conv28 = zext i32 %and to i64
  %call29 = tail call i32 @pci_write_vpd(ptr noundef %16, i64 noundef %conv28, i32 noundef %and5, ptr noundef %buf.0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29)
  %cmp30 = icmp sgt i32 %call29, -1
  br i1 %cmp30, label %if.then32, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  %call33 = tail call i32 @t3_seeprom_wp(ptr noundef %1, i32 noundef 1) #18
  br label %out

out:                                              ; preds = %if.then32, %if.end26.out_crit_edge, %if.end22.out_crit_edge, %if.end13.out_crit_edge
  %buf.1 = phi ptr [ %call9.i, %if.end13.out_crit_edge ], [ %buf.0, %if.end22.out_crit_edge ], [ %buf.0, %if.then32 ], [ %buf.0, %if.end26.out_crit_edge ]
  %err.0 = phi i32 [ %call14, %if.end13.out_crit_edge ], [ %call23, %if.end22.out_crit_edge ], [ %call33, %if.then32 ], [ %call29, %if.end26.out_crit_edge ]
  %cmp35.not = icmp eq ptr %buf.1, %data
  br i1 %cmp35.not, label %out.if.end38_crit_edge, label %if.then37

out.if.end38_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then37:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef %buf.1) #18
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %out.if.end38_crit_edge
  %17 = tail call i32 @llvm.smin.i32(i32 %err.0, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.end38 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %c, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %coalesce_usecs = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %coalesce_usecs, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_coalesce_usecs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %c, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_coalesce_usecs, align 4
  %mul = mul i32 %3, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %mul)
  %cmp = icmp ugt i32 %mul, 8191
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nqsets = getelementptr i8, ptr %dev, i32 2313
  %4 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nqsets, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp220.not = icmp eq i8 %5, 0
  br i1 %cmp220.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sge4 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 %i.021
  %arrayidx6 = getelementptr [8 x %struct.sge_qset], ptr %sge4, i32 0, i32 %i.021
  %6 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_coalesce_usecs, align 4
  %coalesce_usecs = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 %i.021, i32 1
  %8 = ptrtoint ptr %coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %coalesce_usecs, align 4
  tail call void @t3_update_qset_coalesce(ptr noundef %arrayidx6, ptr noundef %arrayidx) #18
  %inc = add nuw nsw i32 %i.021, 1
  %9 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nqsets, align 1
  %conv = zext i8 %10 to i32
  %cmp2 = icmp ult i32 %inc, %conv
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @get_sge_param(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %e, ptr nocapture noundef readnone %kernel_e, ptr nocapture noundef readnone %extack) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %first_qset = getelementptr i8, ptr %dev, i32 2314
  %2 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %first_qset, align 2
  %idxprom = zext i8 %3 to i32
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 1
  %4 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16384, ptr %rx_max_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 3
  %5 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16384, ptr %rx_jumbo_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 4
  %6 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %tx_max_pending, align 4
  %fl_size = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 %idxprom, i32 3
  %7 = ptrtoint ptr %fl_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fl_size, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 5
  %9 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rx_pending, align 4
  %rspq_size = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 %idxprom, i32 2
  %10 = ptrtoint ptr %rspq_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rspq_size, align 4
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 6
  %12 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rx_mini_pending, align 4
  %jumbo_size = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 %idxprom, i32 4
  %13 = ptrtoint ptr %jumbo_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %jumbo_size, align 4
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 7
  %15 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rx_jumbo_pending, align 4
  %txq_size = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 %idxprom, i32 5
  %16 = ptrtoint ptr %txq_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %txq_size, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 8
  %18 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_sge_param(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %e, ptr nocapture noundef readnone %kernel_e, ptr nocapture noundef readnone %extack) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %3)
  %cmp = icmp ugt i32 %3, 16384
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 7
  %4 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %5)
  %cmp2 = icmp ugt i32 %5, 16384
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 8
  %6 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %7)
  %cmp4 = icmp ugt i32 %7, 16384
  br i1 %cmp4, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 6
  %8 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_mini_pending, align 4
  %10 = add i32 %9, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16353, i32 %10)
  %11 = icmp ult i32 %10, -16353
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp12 = icmp ult i32 %3, 32
  %or.cond65 = select i1 %11, i1 true, i1 %cmp12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp15 = icmp ult i32 %5, 32
  %or.cond66 = select i1 %or.cond65, i1 true, i1 %cmp15
  br i1 %or.cond66, label %lor.lhs.false5.cleanup_crit_edge, label %lor.lhs.false16

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false5
  %nports = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 9
  %12 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nports, align 4
  %mul = shl i32 %13, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul)
  %cmp18 = icmp ult i32 %7, %mul
  br i1 %cmp18, label %lor.lhs.false16.cleanup_crit_edge, label %if.end

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false16
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %nqsets = getelementptr i8, ptr %dev, i32 2313
  %16 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nqsets, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp2268.not = icmp eq i8 %17, 0
  br i1 %cmp2268.not, label %if.end20.cleanup_crit_edge, label %for.body.preheader

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.preheader:                               ; preds = %if.end20
  %first_qset = getelementptr i8, ptr %dev, i32 2314
  %18 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %first_qset, align 2
  %idxprom = zext i8 %19 to i32
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 %idxprom
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.070 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %q.069 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %arrayidx, %for.body.preheader ]
  %20 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_mini_pending, align 4
  %rspq_size = getelementptr inbounds %struct.qset_params, ptr %q.069, i32 0, i32 2
  %22 = ptrtoint ptr %rspq_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rspq_size, align 4
  %23 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_pending, align 4
  %fl_size = getelementptr inbounds %struct.qset_params, ptr %q.069, i32 0, i32 3
  %25 = ptrtoint ptr %fl_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %fl_size, align 4
  %26 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_jumbo_pending, align 4
  %jumbo_size = getelementptr inbounds %struct.qset_params, ptr %q.069, i32 0, i32 4
  %28 = ptrtoint ptr %jumbo_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %jumbo_size, align 4
  %29 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_pending, align 4
  %txq_size = getelementptr inbounds %struct.qset_params, ptr %q.069, i32 0, i32 5
  %31 = ptrtoint ptr %txq_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %txq_size, align 4
  %32 = load i32, ptr %tx_pending, align 4
  %arrayidx31 = getelementptr %struct.qset_params, ptr %q.069, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx31, align 4
  %34 = load i32, ptr %tx_pending, align 4
  %arrayidx34 = getelementptr %struct.qset_params, ptr %q.069, i32 0, i32 5, i32 2
  %35 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx34, align 4
  %inc = add nuw nsw i32 %i.070, 1
  %incdec.ptr = getelementptr %struct.qset_params, ptr %q.069, i32 1
  %36 = ptrtoint ptr %nqsets to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nqsets, align 1
  %conv = zext i8 %37 to i32
  %cmp22 = icmp ult i32 %inc, %conv
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false16.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @get_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %epause) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_fc = getelementptr i8, ptr %dev, i32 6110
  %0 = ptrtoint ptr %requested_fc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %requested_fc, align 2
  %2 = lshr i8 %1, 2
  %.lobit = and i8 %2, 1
  %3 = zext i8 %.lobit to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %autoneg, align 4
  %fc = getelementptr i8, ptr %dev, i32 6111
  %5 = ptrtoint ptr %fc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fc, align 1
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %9 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rx_pause, align 4
  %10 = load i8, ptr %fc, align 1
  %11 = lshr i8 %10, 1
  %.lobit17 = and i8 %11, 1
  %12 = zext i8 %.lobit17 to i32
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %13 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pauseparam(ptr noundef %dev, ptr nocapture noundef readonly %epause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %link_config = getelementptr i8, ptr %dev, i32 6096
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end4_crit_edge, label %if.else

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_config, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %entry.if.end4_crit_edge
  %.sink = phi i8 [ 0, %entry.if.end4_crit_edge ], [ 4, %if.else.if.end4_crit_edge ]
  %requested_fc2 = getelementptr i8, ptr %dev, i32 6110
  %4 = ptrtoint ptr %requested_fc2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %requested_fc2, align 2
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %5 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  %requested_fc7 = getelementptr i8, ptr %dev, i32 6110
  %7 = ptrtoint ptr %requested_fc7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %requested_fc7, align 2
  %9 = or i8 %8, 1
  store i8 %9, ptr %requested_fc7, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %10 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %if.then11

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  %requested_fc12 = getelementptr i8, ptr %dev, i32 6110
  %12 = ptrtoint ptr %requested_fc12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %requested_fc12, align 2
  %14 = or i8 %13, 2
  store i8 %14, ptr %requested_fc12, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end9.if.end16_crit_edge
  %autoneg17 = getelementptr i8, ptr %dev, i32 6112
  %15 = ptrtoint ptr %autoneg17 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %autoneg17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp19 = icmp eq i8 %16, 1
  br i1 %cmp19, label %if.then21, label %if.else26

if.then21:                                        ; preds = %if.end16
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then21.cleanup_crit_edge, label %if.then23

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  %phy = getelementptr i8, ptr %dev, i32 2316
  %mac = getelementptr i8, ptr %dev, i32 5624
  %call24 = tail call i32 @t3_link_start(ptr noundef %phy, ptr noundef %mac, ptr noundef %link_config) #18
  br label %cleanup

if.else26:                                        ; preds = %if.end16
  %requested_fc27 = getelementptr i8, ptr %dev, i32 6110
  %19 = ptrtoint ptr %requested_fc27 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %requested_fc27, align 2
  %21 = and i8 %20, 3
  %fc = getelementptr i8, ptr %dev, i32 6111
  %22 = ptrtoint ptr %fc to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %fc, align 1
  %state.i56 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %23 = ptrtoint ptr %state.i56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i56, align 4
  %and1.i.i57 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i57)
  %tobool.i58.not = icmp eq i32 %and1.i.i57, 0
  br i1 %tobool.i58.not, label %if.else26.cleanup_crit_edge, label %if.then32

if.else26.cleanup_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then32:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #20
  %mac33 = getelementptr i8, ptr %dev, i32 5624
  %conv35 = zext i8 %21 to i32
  %call36 = tail call i32 @t3_mac_set_speed_duplex_fc(ptr noundef %mac33, i32 noundef -1, i32 noundef -1, i32 noundef %conv35) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.else26.cleanup_crit_edge, %if.then23, %if.then21.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.else26.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.then21.cleanup_crit_edge ], [ 0, %if.then23 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = call ptr @memcpy(ptr %data, ptr @stats_strings, i32 1440)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_phys_id(ptr nocapture noundef readonly %dev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.cleanup_crit_edge
    i32 3, label %entry.sw.epilog.sink.split_crit_edge
    i32 2, label %entry.sw.bb3_crit_edge
    i32 0, label %entry.sw.bb3_crit_edge6
  ]

entry.sw.bb3_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb3

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb3 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef 208, i32 noundef 1, i32 noundef %.sink) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %state, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %stats_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #18
  %mac = getelementptr i8, ptr %dev, i32 5624
  %call2 = tail call ptr @t3_mac_update_stats(ptr noundef %mac) #18
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock) #18
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %call2, align 8
  %incdec.ptr = getelementptr i64, ptr %data, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %data, align 8
  %tx_frames = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 2
  %5 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tx_frames, align 8
  %incdec.ptr4 = getelementptr i64, ptr %data, i32 2
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %incdec.ptr, align 8
  %tx_mcast_frames = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 3
  %8 = ptrtoint ptr %tx_mcast_frames to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_mcast_frames, align 8
  %incdec.ptr5 = getelementptr i64, ptr %data, i32 3
  %10 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %incdec.ptr4, align 8
  %tx_bcast_frames = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 4
  %11 = ptrtoint ptr %tx_bcast_frames to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tx_bcast_frames, align 8
  %incdec.ptr6 = getelementptr i64, ptr %data, i32 4
  %13 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %incdec.ptr5, align 8
  %tx_pause = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 5
  %14 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_pause, align 8
  %incdec.ptr7 = getelementptr i64, ptr %data, i32 5
  %16 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %incdec.ptr6, align 8
  %tx_underrun = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 10
  %17 = ptrtoint ptr %tx_underrun to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tx_underrun, align 8
  %incdec.ptr8 = getelementptr i64, ptr %data, i32 6
  %19 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %incdec.ptr7, align 8
  %tx_fifo_urun = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 48
  %20 = ptrtoint ptr %tx_fifo_urun to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_fifo_urun, align 8
  %conv = zext i32 %21 to i64
  %incdec.ptr9 = getelementptr i64, ptr %data, i32 7
  %22 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %incdec.ptr8, align 8
  %tx_frames_64 = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 15
  %23 = ptrtoint ptr %tx_frames_64 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tx_frames_64, align 8
  %incdec.ptr10 = getelementptr i64, ptr %data, i32 8
  %25 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %incdec.ptr9, align 8
  %tx_frames_65_127 = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 16
  %26 = ptrtoint ptr %tx_frames_65_127 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tx_frames_65_127, align 8
  %incdec.ptr11 = getelementptr i64, ptr %data, i32 9
  %28 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %incdec.ptr10, align 8
  %tx_frames_128_255 = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 17
  %29 = ptrtoint ptr %tx_frames_128_255 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tx_frames_128_255, align 8
  %incdec.ptr12 = getelementptr i64, ptr %data, i32 10
  %31 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %incdec.ptr11, align 8
  %tx_frames_256_511 = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 18
  %32 = ptrtoint ptr %tx_frames_256_511 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tx_frames_256_511, align 8
  %incdec.ptr13 = getelementptr i64, ptr %data, i32 11
  %34 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %incdec.ptr12, align 8
  %tx_frames_512_1023 = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 19
  %35 = ptrtoint ptr %tx_frames_512_1023 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tx_frames_512_1023, align 8
  %incdec.ptr14 = getelementptr i64, ptr %data, i32 12
  %37 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %incdec.ptr13, align 8
  %tx_frames_1024_1518 = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 20
  %38 = ptrtoint ptr %tx_frames_1024_1518 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %tx_frames_1024_1518, align 8
  %incdec.ptr15 = getelementptr i64, ptr %data, i32 13
  %40 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %incdec.ptr14, align 8
  %tx_frames_1519_max = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 21
  %41 = ptrtoint ptr %tx_frames_1519_max to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %tx_frames_1519_max, align 8
  %incdec.ptr16 = getelementptr i64, ptr %data, i32 14
  %43 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %incdec.ptr15, align 8
  %rx_octets = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 22
  %44 = ptrtoint ptr %rx_octets to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rx_octets, align 8
  %incdec.ptr17 = getelementptr i64, ptr %data, i32 15
  %46 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %incdec.ptr16, align 8
  %rx_frames = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 24
  %47 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rx_frames, align 8
  %incdec.ptr18 = getelementptr i64, ptr %data, i32 16
  %49 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %incdec.ptr17, align 8
  %rx_mcast_frames = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 25
  %50 = ptrtoint ptr %rx_mcast_frames to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %rx_mcast_frames, align 8
  %incdec.ptr19 = getelementptr i64, ptr %data, i32 17
  %52 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %incdec.ptr18, align 8
  %rx_bcast_frames = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 26
  %53 = ptrtoint ptr %rx_bcast_frames to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %rx_bcast_frames, align 8
  %incdec.ptr20 = getelementptr i64, ptr %data, i32 18
  %55 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %incdec.ptr19, align 8
  %rx_pause = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 27
  %56 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %rx_pause, align 8
  %incdec.ptr21 = getelementptr i64, ptr %data, i32 19
  %58 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %incdec.ptr20, align 8
  %rx_fcs_errs = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 28
  %59 = ptrtoint ptr %rx_fcs_errs to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %rx_fcs_errs, align 8
  %incdec.ptr22 = getelementptr i64, ptr %data, i32 20
  %61 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %incdec.ptr21, align 8
  %rx_symbol_errs = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 30
  %62 = ptrtoint ptr %rx_symbol_errs to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %rx_symbol_errs, align 8
  %incdec.ptr23 = getelementptr i64, ptr %data, i32 21
  %64 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %incdec.ptr22, align 8
  %rx_short = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 35
  %65 = ptrtoint ptr %rx_short to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %rx_short, align 8
  %incdec.ptr24 = getelementptr i64, ptr %data, i32 22
  %67 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %incdec.ptr23, align 8
  %rx_jabber = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 34
  %68 = ptrtoint ptr %rx_jabber to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %rx_jabber, align 8
  %incdec.ptr25 = getelementptr i64, ptr %data, i32 23
  %70 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %incdec.ptr24, align 8
  %rx_too_long = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 36
  %71 = ptrtoint ptr %rx_too_long to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %rx_too_long, align 8
  %incdec.ptr26 = getelementptr i64, ptr %data, i32 24
  %73 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %incdec.ptr25, align 8
  %rx_fifo_ovfl = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 49
  %74 = ptrtoint ptr %rx_fifo_ovfl to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_fifo_ovfl, align 4
  %conv27 = zext i32 %75 to i64
  %incdec.ptr28 = getelementptr i64, ptr %data, i32 25
  %76 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv27, ptr %incdec.ptr26, align 8
  %rx_frames_64 = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 38
  %77 = ptrtoint ptr %rx_frames_64 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %rx_frames_64, align 8
  %incdec.ptr29 = getelementptr i64, ptr %data, i32 26
  %79 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %incdec.ptr28, align 8
  %rx_frames_65_127 = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 39
  %80 = ptrtoint ptr %rx_frames_65_127 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %rx_frames_65_127, align 8
  %incdec.ptr30 = getelementptr i64, ptr %data, i32 27
  %82 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %incdec.ptr29, align 8
  %rx_frames_128_255 = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 40
  %83 = ptrtoint ptr %rx_frames_128_255 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %rx_frames_128_255, align 8
  %incdec.ptr31 = getelementptr i64, ptr %data, i32 28
  %85 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %incdec.ptr30, align 8
  %rx_frames_256_511 = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 41
  %86 = ptrtoint ptr %rx_frames_256_511 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %rx_frames_256_511, align 8
  %incdec.ptr32 = getelementptr i64, ptr %data, i32 29
  %88 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %incdec.ptr31, align 8
  %rx_frames_512_1023 = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 42
  %89 = ptrtoint ptr %rx_frames_512_1023 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %rx_frames_512_1023, align 8
  %incdec.ptr33 = getelementptr i64, ptr %data, i32 30
  %91 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %incdec.ptr32, align 8
  %rx_frames_1024_1518 = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 43
  %92 = ptrtoint ptr %rx_frames_1024_1518 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %rx_frames_1024_1518, align 8
  %incdec.ptr34 = getelementptr i64, ptr %data, i32 31
  %94 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %incdec.ptr33, align 8
  %rx_frames_1519_max = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 44
  %95 = ptrtoint ptr %rx_frames_1519_max to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %rx_frames_1519_max, align 8
  %incdec.ptr35 = getelementptr i64, ptr %data, i32 32
  %97 = ptrtoint ptr %incdec.ptr34 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %incdec.ptr34, align 8
  %fifo_errors = getelementptr i8, ptr %dev, i32 2332
  %98 = ptrtoint ptr %fifo_errors to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fifo_errors, align 4
  %conv36 = zext i32 %99 to i64
  %incdec.ptr37 = getelementptr i64, ptr %data, i32 33
  %100 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv36, ptr %incdec.ptr35, align 8
  %first_qset.i = getelementptr i8, ptr %dev, i32 2314
  %101 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %first_qset.i, align 2
  %conv.i = zext i8 %102 to i32
  %nqsets.i = getelementptr i8, ptr %dev, i32 2313
  %103 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %nqsets.i, align 1
  %conv3.i = zext i8 %104 to i32
  %add.i = add nuw nsw i32 %conv3.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp12.not.i = icmp eq i8 %104, 0
  br i1 %cmp12.not.i, label %entry.collect_sge_port_stats.exit_crit_edge, label %for.body.lr.ph.i

entry.collect_sge_port_stats.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %collect_sge_port_stats.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %sge.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tot.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add6.i, %for.body.i.for.body.i_crit_edge ]
  %i.013.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr [8 x %struct.sge_qset], ptr %sge.i, i32 0, i32 %i.013.i, i32 12, i32 0
  %105 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %106, %tot.014.i
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %cmp.i = icmp ult i32 %inc.i, %add.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.collect_sge_port_stats.exit_crit_edge

for.body.i.collect_sge_port_stats.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %collect_sge_port_stats.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

collect_sge_port_stats.exit:                      ; preds = %for.body.i.collect_sge_port_stats.exit_crit_edge, %entry.collect_sge_port_stats.exit_crit_edge
  %tot.0.lcssa.i = phi i32 [ 0, %entry.collect_sge_port_stats.exit_crit_edge ], [ %add6.i, %for.body.i.collect_sge_port_stats.exit_crit_edge ]
  %conv39 = zext i32 %tot.0.lcssa.i to i64
  %incdec.ptr40 = getelementptr i64, ptr %data, i32 34
  %107 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv39, ptr %incdec.ptr37, align 8
  %108 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %first_qset.i, align 2
  %conv.i156 = zext i8 %109 to i32
  %110 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %nqsets.i, align 1
  %conv3.i158 = zext i8 %111 to i32
  %add.i159 = add nuw nsw i32 %conv3.i158, %conv.i156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %cmp12.not.i160 = icmp eq i8 %111, 0
  br i1 %cmp12.not.i160, label %collect_sge_port_stats.exit.collect_sge_port_stats.exit171_crit_edge, label %for.body.lr.ph.i162

collect_sge_port_stats.exit.collect_sge_port_stats.exit171_crit_edge: ; preds = %collect_sge_port_stats.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %collect_sge_port_stats.exit171

for.body.lr.ph.i162:                              ; preds = %collect_sge_port_stats.exit
  %sge.i161 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 16
  br label %for.body.i169

for.body.i169:                                    ; preds = %for.body.i169.for.body.i169_crit_edge, %for.body.lr.ph.i162
  %tot.014.i163 = phi i32 [ 0, %for.body.lr.ph.i162 ], [ %add6.i166, %for.body.i169.for.body.i169_crit_edge ]
  %i.013.i164 = phi i32 [ %conv.i156, %for.body.lr.ph.i162 ], [ %inc.i167, %for.body.i169.for.body.i169_crit_edge ]
  %arrayidx5.i165 = getelementptr [8 x %struct.sge_qset], ptr %sge.i161, i32 0, i32 %i.013.i164, i32 12, i32 3
  %112 = ptrtoint ptr %arrayidx5.i165 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx5.i165, align 4
  %add6.i166 = add i32 %113, %tot.014.i163
  %inc.i167 = add nuw nsw i32 %i.013.i164, 1
  %cmp.i168 = icmp ult i32 %inc.i167, %add.i159
  br i1 %cmp.i168, label %for.body.i169.for.body.i169_crit_edge, label %for.body.i169.collect_sge_port_stats.exit171_crit_edge

for.body.i169.collect_sge_port_stats.exit171_crit_edge: ; preds = %for.body.i169
  call void @__sanitizer_cov_trace_pc() #20
  br label %collect_sge_port_stats.exit171

for.body.i169.for.body.i169_crit_edge:            ; preds = %for.body.i169
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i169

collect_sge_port_stats.exit171:                   ; preds = %for.body.i169.collect_sge_port_stats.exit171_crit_edge, %collect_sge_port_stats.exit.collect_sge_port_stats.exit171_crit_edge
  %tot.0.lcssa.i170 = phi i32 [ 0, %collect_sge_port_stats.exit.collect_sge_port_stats.exit171_crit_edge ], [ %add6.i166, %for.body.i169.collect_sge_port_stats.exit171_crit_edge ]
  %conv42 = zext i32 %tot.0.lcssa.i170 to i64
  %incdec.ptr43 = getelementptr i64, ptr %data, i32 35
  %114 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %conv42, ptr %incdec.ptr40, align 8
  %115 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %first_qset.i, align 2
  %conv.i173 = zext i8 %116 to i32
  %117 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %nqsets.i, align 1
  %conv3.i175 = zext i8 %118 to i32
  %add.i176 = add nuw nsw i32 %conv3.i175, %conv.i173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp12.not.i177 = icmp eq i8 %118, 0
  br i1 %cmp12.not.i177, label %collect_sge_port_stats.exit171.collect_sge_port_stats.exit188_crit_edge, label %for.body.lr.ph.i179

collect_sge_port_stats.exit171.collect_sge_port_stats.exit188_crit_edge: ; preds = %collect_sge_port_stats.exit171
  call void @__sanitizer_cov_trace_pc() #20
  br label %collect_sge_port_stats.exit188

for.body.lr.ph.i179:                              ; preds = %collect_sge_port_stats.exit171
  %sge.i178 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 16
  br label %for.body.i186

for.body.i186:                                    ; preds = %for.body.i186.for.body.i186_crit_edge, %for.body.lr.ph.i179
  %tot.014.i180 = phi i32 [ 0, %for.body.lr.ph.i179 ], [ %add6.i183, %for.body.i186.for.body.i186_crit_edge ]
  %i.013.i181 = phi i32 [ %conv.i173, %for.body.lr.ph.i179 ], [ %inc.i184, %for.body.i186.for.body.i186_crit_edge ]
  %arrayidx5.i182 = getelementptr [8 x %struct.sge_qset], ptr %sge.i178, i32 0, i32 %i.013.i181, i32 12, i32 4
  %119 = ptrtoint ptr %arrayidx5.i182 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx5.i182, align 4
  %add6.i183 = add i32 %120, %tot.014.i180
  %inc.i184 = add nuw nsw i32 %i.013.i181, 1
  %cmp.i185 = icmp ult i32 %inc.i184, %add.i176
  br i1 %cmp.i185, label %for.body.i186.for.body.i186_crit_edge, label %for.body.i186.collect_sge_port_stats.exit188_crit_edge

for.body.i186.collect_sge_port_stats.exit188_crit_edge: ; preds = %for.body.i186
  call void @__sanitizer_cov_trace_pc() #20
  br label %collect_sge_port_stats.exit188

for.body.i186.for.body.i186_crit_edge:            ; preds = %for.body.i186
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i186

collect_sge_port_stats.exit188:                   ; preds = %for.body.i186.collect_sge_port_stats.exit188_crit_edge, %collect_sge_port_stats.exit171.collect_sge_port_stats.exit188_crit_edge
  %tot.0.lcssa.i187 = phi i32 [ 0, %collect_sge_port_stats.exit171.collect_sge_port_stats.exit188_crit_edge ], [ %add6.i183, %for.body.i186.collect_sge_port_stats.exit188_crit_edge ]
  %conv45 = zext i32 %tot.0.lcssa.i187 to i64
  %incdec.ptr46 = getelementptr i64, ptr %data, i32 36
  %121 = ptrtoint ptr %incdec.ptr43 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %conv45, ptr %incdec.ptr43, align 8
  %122 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %first_qset.i, align 2
  %conv.i190 = zext i8 %123 to i32
  %124 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %nqsets.i, align 1
  %conv3.i192 = zext i8 %125 to i32
  %add.i193 = add nuw nsw i32 %conv3.i192, %conv.i190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp12.not.i194 = icmp eq i8 %125, 0
  br i1 %cmp12.not.i194, label %collect_sge_port_stats.exit188.collect_sge_port_stats.exit205_crit_edge, label %for.body.lr.ph.i196

collect_sge_port_stats.exit188.collect_sge_port_stats.exit205_crit_edge: ; preds = %collect_sge_port_stats.exit188
  call void @__sanitizer_cov_trace_pc() #20
  br label %collect_sge_port_stats.exit205

for.body.lr.ph.i196:                              ; preds = %collect_sge_port_stats.exit188
  %sge.i195 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 16
  br label %for.body.i203

for.body.i203:                                    ; preds = %for.body.i203.for.body.i203_crit_edge, %for.body.lr.ph.i196
  %tot.014.i197 = phi i32 [ 0, %for.body.lr.ph.i196 ], [ %add6.i200, %for.body.i203.for.body.i203_crit_edge ]
  %i.013.i198 = phi i32 [ %conv.i190, %for.body.lr.ph.i196 ], [ %inc.i201, %for.body.i203.for.body.i203_crit_edge ]
  %arrayidx5.i199 = getelementptr [8 x %struct.sge_qset], ptr %sge.i195, i32 0, i32 %i.013.i198, i32 12, i32 2
  %126 = ptrtoint ptr %arrayidx5.i199 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx5.i199, align 4
  %add6.i200 = add i32 %127, %tot.014.i197
  %inc.i201 = add nuw nsw i32 %i.013.i198, 1
  %cmp.i202 = icmp ult i32 %inc.i201, %add.i193
  br i1 %cmp.i202, label %for.body.i203.for.body.i203_crit_edge, label %for.body.i203.collect_sge_port_stats.exit205_crit_edge

for.body.i203.collect_sge_port_stats.exit205_crit_edge: ; preds = %for.body.i203
  call void @__sanitizer_cov_trace_pc() #20
  br label %collect_sge_port_stats.exit205

for.body.i203.for.body.i203_crit_edge:            ; preds = %for.body.i203
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i203

collect_sge_port_stats.exit205:                   ; preds = %for.body.i203.collect_sge_port_stats.exit205_crit_edge, %collect_sge_port_stats.exit188.collect_sge_port_stats.exit205_crit_edge
  %tot.0.lcssa.i204 = phi i32 [ 0, %collect_sge_port_stats.exit188.collect_sge_port_stats.exit205_crit_edge ], [ %add6.i200, %for.body.i203.collect_sge_port_stats.exit205_crit_edge ]
  %conv48 = zext i32 %tot.0.lcssa.i204 to i64
  %128 = ptrtoint ptr %incdec.ptr46 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %conv48, ptr %incdec.ptr46, align 8
  %129 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %first_qset.i, align 2
  %conv.i207 = zext i8 %130 to i32
  %131 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %nqsets.i, align 1
  %conv3.i209 = zext i8 %132 to i32
  %add.i210 = add nuw nsw i32 %conv3.i209, %conv.i207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp12.not.i211 = icmp eq i8 %132, 0
  br i1 %cmp12.not.i211, label %collect_sge_port_stats.exit205.collect_sge_port_stats.exit222_crit_edge, label %for.body.lr.ph.i213

collect_sge_port_stats.exit205.collect_sge_port_stats.exit222_crit_edge: ; preds = %collect_sge_port_stats.exit205
  call void @__sanitizer_cov_trace_pc() #20
  br label %collect_sge_port_stats.exit222

for.body.lr.ph.i213:                              ; preds = %collect_sge_port_stats.exit205
  %sge.i212 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 16
  br label %for.body.i220

for.body.i220:                                    ; preds = %for.body.i220.for.body.i220_crit_edge, %for.body.lr.ph.i213
  %tot.014.i214 = phi i32 [ 0, %for.body.lr.ph.i213 ], [ %add6.i217, %for.body.i220.for.body.i220_crit_edge ]
  %i.013.i215 = phi i32 [ %conv.i207, %for.body.lr.ph.i213 ], [ %inc.i218, %for.body.i220.for.body.i220_crit_edge ]
  %arrayidx5.i216 = getelementptr [8 x %struct.sge_qset], ptr %sge.i212, i32 0, i32 %i.013.i215, i32 12, i32 1
  %133 = ptrtoint ptr %arrayidx5.i216 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx5.i216, align 4
  %add6.i217 = add i32 %134, %tot.014.i214
  %inc.i218 = add nuw nsw i32 %i.013.i215, 1
  %cmp.i219 = icmp ult i32 %inc.i218, %add.i210
  br i1 %cmp.i219, label %for.body.i220.for.body.i220_crit_edge, label %for.body.i220.collect_sge_port_stats.exit222_crit_edge

for.body.i220.collect_sge_port_stats.exit222_crit_edge: ; preds = %for.body.i220
  call void @__sanitizer_cov_trace_pc() #20
  br label %collect_sge_port_stats.exit222

for.body.i220.for.body.i220_crit_edge:            ; preds = %for.body.i220
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i220

collect_sge_port_stats.exit222:                   ; preds = %for.body.i220.collect_sge_port_stats.exit222_crit_edge, %collect_sge_port_stats.exit205.collect_sge_port_stats.exit222_crit_edge
  %tot.0.lcssa.i221 = phi i32 [ 0, %collect_sge_port_stats.exit205.collect_sge_port_stats.exit222_crit_edge ], [ %add6.i217, %for.body.i220.collect_sge_port_stats.exit222_crit_edge ]
  %incdec.ptr49 = getelementptr i64, ptr %data, i32 37
  %conv51 = zext i32 %tot.0.lcssa.i221 to i64
  %incdec.ptr52 = getelementptr i64, ptr %data, i32 38
  %135 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %conv51, ptr %incdec.ptr49, align 8
  %incdec.ptr55 = getelementptr i64, ptr %data, i32 41
  %rx_cong_drops = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 45
  %136 = call ptr @memset(ptr %incdec.ptr52, i32 0, i32 24)
  %137 = ptrtoint ptr %rx_cong_drops to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %rx_cong_drops, align 8
  %incdec.ptr56 = getelementptr i64, ptr %data, i32 42
  %139 = ptrtoint ptr %incdec.ptr55 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %138, ptr %incdec.ptr55, align 8
  %num_toggled = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 53
  %140 = ptrtoint ptr %num_toggled to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %num_toggled, align 4
  %conv57 = zext i32 %141 to i64
  %incdec.ptr58 = getelementptr i64, ptr %data, i32 43
  %142 = ptrtoint ptr %incdec.ptr56 to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %conv57, ptr %incdec.ptr56, align 8
  %num_resets = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 54
  %143 = ptrtoint ptr %num_resets to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %num_resets, align 8
  %conv59 = zext i32 %144 to i64
  %incdec.ptr60 = getelementptr i64, ptr %data, i32 44
  %145 = ptrtoint ptr %incdec.ptr58 to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %conv59, ptr %incdec.ptr58, align 8
  %link_faults = getelementptr inbounds %struct.mac_stats, ptr %call2, i32 0, i32 55
  %146 = ptrtoint ptr %link_faults to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %link_faults, align 4
  %conv61 = zext i32 %147 to i64
  %148 = ptrtoint ptr %incdec.ptr60 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %conv61, ptr %incdec.ptr60, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 45, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #0 align 64 {
entry:
  %supported = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supported) #18
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %supported, align 4, !annotation !390
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %link_config = getelementptr i8, ptr %dev, i32 6096
  %1 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %link_config, align 8
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %2) #18
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %advertising6 = getelementptr i8, ptr %dev, i32 6100
  %3 = ptrtoint ptr %advertising6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %advertising6, align 4
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising, i32 noundef %4) #18
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %speed = getelementptr i8, ptr %dev, i32 6106
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %speed, align 2
  %conv = zext i16 %9 to i32
  %speed9 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %speed9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %speed9, align 4
  %duplex = getelementptr i8, ptr %dev, i32 6109
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %duplex, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %speed14 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %speed14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %speed14, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ %12, %if.then ], [ -1, %if.else ]
  %14 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %14, align 4
  %call20 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %supported, ptr noundef %link_modes) #18
  %16 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %supported, align 4
  %and = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv21 = select i1 %tobool.not, i8 3, i8 0
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %18 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv21, ptr %port, align 1
  %mdio = getelementptr i8, ptr %dev, i32 2340
  %19 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mdio, align 4
  %conv23 = trunc i32 %20 to i8
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %21 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv23, ptr %phy_address, align 2
  %autoneg = getelementptr i8, ptr %dev, i32 6112
  %22 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %autoneg, align 8
  %autoneg27 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %24 = ptrtoint ptr %autoneg27 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %autoneg27, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supported) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #0 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %link_config = getelementptr i8, ptr %dev, i32 6096
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #18
  %0 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %advertising, align 4, !annotation !390
  %advertising1 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call2 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising1) #18
  %1 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %link_config, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %3 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then4, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then4:                                         ; preds = %if.then
  %speed6 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %speed6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed6, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %7 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %duplex, align 4
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %6, label %if.then4.speed_duplex_to_caps.exit_crit_edge [
    i32 10, label %sw.bb.i
    i32 100, label %sw.bb1.i
    i32 1000, label %sw.bb6.i
    i32 10000, label %sw.bb11.i
  ]

if.then4.speed_duplex_to_caps.exit_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %speed_duplex_to_caps.exit

sw.bb.i:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.i = icmp eq i8 %8, 1
  %..i = select i1 %cmp.i, i32 2, i32 1
  br label %speed_duplex_to_caps.exit

sw.bb1.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp2.i = icmp eq i8 %8, 1
  %.18.i = select i1 %cmp2.i, i32 8, i32 4
  br label %speed_duplex_to_caps.exit

sw.bb6.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp7.i = icmp eq i8 %8, 1
  %.19.i = select i1 %cmp7.i, i32 32, i32 16
  br label %speed_duplex_to_caps.exit

sw.bb11.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp12.i = icmp eq i8 %8, 1
  %spec.select.i = select i1 %cmp12.i, i32 4096, i32 0
  br label %speed_duplex_to_caps.exit

speed_duplex_to_caps.exit:                        ; preds = %sw.bb11.i, %sw.bb6.i, %sw.bb1.i, %sw.bb.i, %if.then4.speed_duplex_to_caps.exit_crit_edge
  %cap.0.i = phi i32 [ 0, %if.then4.speed_duplex_to_caps.exit_crit_edge ], [ %..i, %sw.bb.i ], [ %.18.i, %sw.bb1.i ], [ %.19.i, %sw.bb6.i ], [ %spec.select.i, %sw.bb11.i ]
  %and11 = and i32 %cap.0.i, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %speed_duplex_to_caps.exit.if.end15_crit_edge, label %speed_duplex_to_caps.exit.cleanup63_crit_edge

speed_duplex_to_caps.exit.cleanup63_crit_edge:    ; preds = %speed_duplex_to_caps.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup63

speed_duplex_to_caps.exit.if.end15_crit_edge:     ; preds = %speed_duplex_to_caps.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.end15:                                         ; preds = %speed_duplex_to_caps.exit.if.end15_crit_edge, %if.then.if.end15_crit_edge
  br label %cleanup63

if.end16:                                         ; preds = %entry
  br i1 %cmp, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end16
  %speed25 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %speed25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed25, align 4
  %duplex28 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %12 = ptrtoint ptr %duplex28 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %duplex28, align 4
  %14 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %11, label %if.then22.speed_duplex_to_caps.exit105_crit_edge [
    i32 10, label %sw.bb.i94
    i32 100, label %sw.bb1.i97
    i32 1000, label %if.then22.cleanup63_crit_edge
    i32 10000, label %sw.bb11.i103
  ]

if.then22.cleanup63_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup63

if.then22.speed_duplex_to_caps.exit105_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %speed_duplex_to_caps.exit105

sw.bb.i94:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.i92 = icmp eq i8 %13, 1
  %..i93 = select i1 %cmp.i92, i32 2, i32 1
  br label %speed_duplex_to_caps.exit105

sw.bb1.i97:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp2.i95 = icmp eq i8 %13, 1
  %.18.i96 = select i1 %cmp2.i95, i32 8, i32 4
  br label %speed_duplex_to_caps.exit105

sw.bb11.i103:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp12.i101 = icmp eq i8 %13, 1
  %spec.select.i102 = select i1 %cmp12.i101, i32 4096, i32 0
  br label %speed_duplex_to_caps.exit105

speed_duplex_to_caps.exit105:                     ; preds = %sw.bb11.i103, %sw.bb1.i97, %sw.bb.i94, %if.then22.speed_duplex_to_caps.exit105_crit_edge
  %cap.0.i104 = phi i32 [ 0, %if.then22.speed_duplex_to_caps.exit105_crit_edge ], [ %..i93, %sw.bb.i94 ], [ %.18.i96, %sw.bb1.i97 ], [ %spec.select.i102, %sw.bb11.i103 ]
  %and32 = and i32 %cap.0.i104, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %11)
  %cmp34 = icmp eq i32 %11, 1000
  %or.cond = or i1 %cmp34, %tobool33.not
  br i1 %or.cond, label %speed_duplex_to_caps.exit105.cleanup63_crit_edge, label %if.end37

speed_duplex_to_caps.exit105.cleanup63_crit_edge: ; preds = %speed_duplex_to_caps.exit105
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup63

if.end37:                                         ; preds = %speed_duplex_to_caps.exit105
  call void @__sanitizer_cov_trace_pc() #20
  %conv38 = trunc i32 %11 to i16
  %requested_speed = getelementptr i8, ptr %dev, i32 6104
  %15 = ptrtoint ptr %requested_speed to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv38, ptr %requested_speed, align 4
  %16 = ptrtoint ptr %duplex28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %duplex28, align 4
  %requested_duplex = getelementptr i8, ptr %dev, i32 6108
  %18 = ptrtoint ptr %requested_duplex to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %requested_duplex, align 4
  br label %if.end55

if.else:                                          ; preds = %if.end16
  %19 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %advertising, align 4
  %and46 = and i32 %2, 4159
  %and48 = and i32 %and46, %20
  store i32 %and48, ptr %advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else.cleanup63_crit_edge, label %if.end51

if.else.cleanup63_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup63

if.end51:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %requested_speed52 = getelementptr i8, ptr %dev, i32 6104
  %21 = ptrtoint ptr %requested_speed52 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %requested_speed52, align 4
  %requested_duplex53 = getelementptr i8, ptr %dev, i32 6108
  %22 = ptrtoint ptr %requested_duplex53 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %requested_duplex53, align 4
  %or = or i32 %and48, 64
  br label %if.end55

if.end55:                                         ; preds = %if.end51, %if.end37
  %.sink = phi i32 [ 0, %if.end37 ], [ %or, %if.end51 ]
  %advertising41 = getelementptr i8, ptr %dev, i32 6100
  %23 = ptrtoint ptr %advertising41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %advertising41, align 4
  %24 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %autoneg, align 1
  %autoneg58 = getelementptr i8, ptr %dev, i32 6112
  %26 = ptrtoint ptr %autoneg58 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %autoneg58, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end55.cleanup63_crit_edge, label %if.then60

if.end55.cleanup63_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup63

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  %phy = getelementptr i8, ptr %dev, i32 2316
  %mac = getelementptr i8, ptr %dev, i32 5624
  %call61 = call i32 @t3_link_start(ptr noundef %phy, ptr noundef %mac, ptr noundef %link_config) #18
  br label %cleanup63

cleanup63:                                        ; preds = %if.then60, %if.end55.cleanup63_crit_edge, %if.else.cleanup63_crit_edge, %speed_duplex_to_caps.exit105.cleanup63_crit_edge, %if.then22.cleanup63_crit_edge, %if.end15, %speed_duplex_to_caps.exit.cleanup63_crit_edge
  %retval.2 = phi i32 [ -22, %if.end15 ], [ 0, %speed_duplex_to_caps.exit.cleanup63_crit_edge ], [ -22, %speed_duplex_to_caps.exit105.cleanup63_crit_edge ], [ -22, %if.else.cleanup63_crit_edge ], [ 0, %if.then60 ], [ 0, %if.end55.cleanup63_crit_edge ], [ -22, %if.then22.cleanup63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #18
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_get_fw_version(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_get_tp_version(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_vpd(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_seeprom_wp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_vpd(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mac_set_speed_duplex_fc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_get_num_default_rss_queues() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_cam_size(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #18
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %tcam_size.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %tcam_size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tcam_size.i.i, align 4
  %call2.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.146, i32 noundef %3) #18
  tail call void @rtnl_unlock() #18
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_nfilters(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #18
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %nfilters.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 2
  %2 = ptrtoint ptr %nfilters.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nfilters.i, align 4
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.146, i32 noundef %3) #18
  tail call void @rtnl_unlock() #18
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_nfilters(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #18
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !390
  %call.i = tail call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call.i, label %if.end.i, label %entry.attr_store.exit_crit_edge

entry.attr_store.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %attr_store.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i.attr_store.exit_crit_edge

if.end.i.attr_store.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %attr_store.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @rtnl_lock() #18
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 8
  %offload.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 10, i32 14
  %5 = ptrtoint ptr %offload.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offload.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i1 = icmp eq i32 %6, 0
  %cond.neg.i = select i1 %tobool.not.i1, i32 0, i32 -16
  %flags.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 6
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i2, label %if.end6.i.set_nfilters.exit.thread_crit_edge

if.end6.i.set_nfilters.exit.thread_crit_edge:     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_nfilters.exit.thread

if.end.i2:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not.i = icmp eq i32 %2, 0
  br i1 %tobool3.not.i, label %if.end.i2.if.end5.i_crit_edge, label %land.lhs.true.i

if.end.i2.if.end5.i_crit_edge:                    ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i2
  %rev.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 10, i32 13
  %9 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %land.lhs.true.i.set_nfilters.exit.thread_crit_edge, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i

land.lhs.true.i.set_nfilters.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_nfilters.exit.thread

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i2.if.end5.i_crit_edge
  %tcam_size.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 20, i32 1
  %11 = ptrtoint ptr %tcam_size.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tcam_size.i.i, align 4
  %nservers.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 10, i32 1, i32 1
  %13 = ptrtoint ptr %nservers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nservers.i, align 4
  %sub.i = add i32 %12, %cond.neg.i
  %sub9.i = sub i32 %sub.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9.i, i32 %2)
  %cmp10.i = icmp ult i32 %sub9.i, %2
  br i1 %cmp10.i, label %if.end5.i.set_nfilters.exit.thread_crit_edge, label %15

if.end5.i.set_nfilters.exit.thread_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_nfilters.exit.thread

15:                                               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  %nfilters.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 10, i32 1, i32 2
  %16 = ptrtoint ptr %nfilters.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %2, ptr %nfilters.i, align 4
  br label %set_nfilters.exit.thread

set_nfilters.exit.thread:                         ; preds = %15, %if.end5.i.set_nfilters.exit.thread_crit_edge, %land.lhs.true.i.set_nfilters.exit.thread_crit_edge, %if.end6.i.set_nfilters.exit.thread_crit_edge
  %17 = phi i32 [ %len, %15 ], [ -22, %if.end5.i.set_nfilters.exit.thread_crit_edge ], [ -22, %land.lhs.true.i.set_nfilters.exit.thread_crit_edge ], [ -16, %if.end6.i.set_nfilters.exit.thread_crit_edge ]
  call void @rtnl_unlock() #18
  br label %attr_store.exit

attr_store.exit:                                  ; preds = %set_nfilters.exit.thread, %if.end.i.attr_store.exit_crit_edge, %entry.attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %17, %set_nfilters.exit.thread ], [ -1, %entry.attr_store.exit_crit_edge ], [ %call1.i, %if.end.i.attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #18
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_nservers(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #18
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %nservers.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 1, i32 1
  %2 = ptrtoint ptr %nservers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nservers.i, align 4
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.146, i32 noundef %3) #18
  tail call void @rtnl_unlock() #18
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_nservers(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #18
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !390
  %call.i = tail call zeroext i1 @capable(i32 noundef 12) #18
  br i1 %call.i, label %if.end.i, label %entry.attr_store.exit_crit_edge

entry.attr_store.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %attr_store.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i.attr_store.exit_crit_edge

if.end.i.attr_store.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %attr_store.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @rtnl_lock() #18
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 8
  %flags.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i1 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i1, label %if.end.i2, label %if.end6.i.set_nservers.exit.thread_crit_edge

if.end6.i.set_nservers.exit.thread_crit_edge:     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_nservers.exit.thread

if.end.i2:                                        ; preds = %if.end6.i
  %tcam_size.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 20, i32 1
  %7 = ptrtoint ptr %tcam_size.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tcam_size.i.i, align 4
  %nfilters.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 10, i32 1, i32 2
  %9 = ptrtoint ptr %nfilters.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nfilters.i, align 4
  %sub.i = add i32 %8, -16
  %sub3.i = sub i32 %sub.i, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3.i, i32 %2)
  %cmp.i = icmp ult i32 %sub3.i, %2
  br i1 %cmp.i, label %if.end.i2.set_nservers.exit.thread_crit_edge, label %11

if.end.i2.set_nservers.exit.thread_crit_edge:     ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_nservers.exit.thread

11:                                               ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #20
  %nservers.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 10, i32 1, i32 1
  %12 = ptrtoint ptr %nservers.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %2, ptr %nservers.i, align 4
  br label %set_nservers.exit.thread

set_nservers.exit.thread:                         ; preds = %11, %if.end.i2.set_nservers.exit.thread_crit_edge, %if.end6.i.set_nservers.exit.thread_crit_edge
  %13 = phi i32 [ %len, %11 ], [ -22, %if.end.i2.set_nservers.exit.thread_crit_edge ], [ -16, %if.end6.i.set_nservers.exit.thread_crit_edge ]
  call void @rtnl_unlock() #18
  br label %attr_store.exit

attr_store.exit:                                  ; preds = %set_nservers.exit.thread, %if.end.i.attr_store.exit_crit_edge, %entry.attr_store.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %set_nservers.exit.thread ], [ -1, %entry.attr_store.exit_crit_edge ], [ %call1.i, %if.end.i.attr_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #18
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb3_adapter_unofld(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t3_io_error_detected(ptr nocapture noundef readonly %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @t3_adapter_error(ptr noundef %1, i32 noundef 0, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t3_io_slot_reset(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @t3_reenable_adapter(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool.not, i32 5, i32 4
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t3_io_resume(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 164
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #18, !srcloc !386
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.163, i32 noundef %7) #21
  tail call void @rtnl_lock() #18
  %nports.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 9
  %8 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp16.not.i = icmp eq i32 %9, 0
  br i1 %cmp16.not.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 21, i32 %i.017.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.then.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.then.i:                                        ; preds = %for.body.i
  %call1.i = tail call i32 @cxgb_open(ptr noundef %11) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup.i_crit_edge, label %do.end.i

if.then.i.cleanup.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.100) #21
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i, %if.then.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.017.i, 1
  %16 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %offload.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 14
  %18 = ptrtoint ptr %offload.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offload.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i = icmp eq i32 %19, 0
  br i1 %tobool5.not.i, label %for.end.i.t3_resume_ports.exit_crit_edge, label %land.lhs.true.i

for.end.i.t3_resume_ports.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %t3_resume_ports.exit

land.lhs.true.i:                                  ; preds = %for.end.i
  %20 = load i32, ptr @ofld_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not.i = icmp eq i32 %20, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %land.lhs.true.i.t3_resume_ports.exit_crit_edge

land.lhs.true.i.t3_resume_ports.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %t3_resume_ports.exit

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @cxgb3_event_notify(ptr noundef %1, i32 noundef 0, i32 noundef 0) #18
  br label %t3_resume_ports.exit

t3_resume_ports.exit:                             ; preds = %if.then7.i, %land.lhs.true.i.t3_resume_ports.exit_crit_edge, %for.end.i.t3_resume_ports.exit_crit_edge
  tail call void @rtnl_unlock() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb3_offload_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !78, !80, !82, !83, !85, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !194, !195, !196, !198, !200, !202, !203, !205, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !297, !298, !300, !302, !304, !305, !307, !309, !311, !313, !315, !317, !319, !321, !322, !323, !324, !326, !328, !330, !331, !332, !334, !335, !337, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !367, !368, !369, !371, !373, !374, !375}
!llvm.named.register.sp = !{!376}
!llvm.module.flags = !{!377, !378, !379, !380, !381, !382, !383, !384}
!llvm.ident = !{!385}

!0 = !{ptr @__UNIQUE_ID_description368, !1, !"__UNIQUE_ID_description368", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 105, i32 1}
!2 = !{ptr @__UNIQUE_ID_author369, !3, !"__UNIQUE_ID_author369", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 106, i32 1}
!4 = !{ptr @__UNIQUE_ID_file370, !5, !"__UNIQUE_ID_file370", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 107, i32 1}
!6 = !{ptr @__UNIQUE_ID_license371, !5, !"__UNIQUE_ID_license371", i1 false, i1 false}
!7 = !{ptr @__param_dflt_msg_enable, !8, !"__param_dflt_msg_enable", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 112, i32 1}
!9 = !{ptr @__UNIQUE_ID_dflt_msg_enabletype372, !8, !"__UNIQUE_ID_dflt_msg_enabletype372", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_dflt_msg_enable373, !11, !"__UNIQUE_ID_dflt_msg_enable373", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 113, i32 1}
!12 = !{ptr @__param_msi, !13, !"__param_msi", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 126, i32 1}
!14 = !{ptr @__UNIQUE_ID_msitype374, !13, !"__UNIQUE_ID_msitype374", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_msi375, !16, !"__UNIQUE_ID_msi375", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 127, i32 1}
!17 = !{ptr @__param_ofld_disable, !18, !"__param_ofld_disable", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 136, i32 1}
!19 = !{ptr @__UNIQUE_ID_ofld_disabletype376, !18, !"__UNIQUE_ID_ofld_disabletype376", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_ofld_disable377, !21, !"__UNIQUE_ID_ofld_disable377", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 137, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 317, i32 9}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 317, i32 15}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 317, i32 21}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 317, i32 28}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 317, i32 48}
!32 = !{ptr @t3_os_phymod_changed.mod_str, !33, !"mod_str", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 316, i32 21}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 324, i32 20}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 326, i32 20}
!38 = !{ptr @__UNIQUE_ID_firmware378, !39, !"__UNIQUE_ID_firmware378", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1001, i32 1}
!40 = !{ptr @__UNIQUE_ID_firmware379, !41, !"__UNIQUE_ID_firmware379", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1002, i32 1}
!42 = !{ptr @__UNIQUE_ID_firmware380, !43, !"__UNIQUE_ID_firmware380", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1003, i32 1}
!44 = !{ptr @__UNIQUE_ID_firmware381, !45, !"__UNIQUE_ID_firmware381", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1004, i32 1}
!46 = !{ptr @__UNIQUE_ID_firmware382, !47, !"__UNIQUE_ID_firmware382", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1005, i32 1}
!48 = !{ptr @__UNIQUE_ID_firmware383, !49, !"__UNIQUE_ID_firmware383", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1006, i32 1}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1040, i32 3}
!52 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @t3_get_edc_fw._entry, !51, !"_entry", i1 false, i1 false}
!57 = !{ptr @t3_get_edc_fw._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1048, i32 3}
!60 = !{ptr @t3_get_edc_fw._entry.12, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @t3_get_edc_fw._entry_ptr.14, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1059, i32 3}
!64 = !{ptr @t3_get_edc_fw._entry.15, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @t3_get_edc_fw._entry_ptr.17, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3009, i32 2}
!68 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @t3_fatal_err._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @t3_fatal_err._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3011, i32 3}
!74 = !{ptr @t3_fatal_err._entry.21, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @t3_fatal_err._entry_ptr.23, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @__initcall__kmod_cxgb3__390_3470_cxgb3_init_module6, !77, !"__initcall__kmod_cxgb3__390_3470_cxgb3_init_module6", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3470, i32 1}
!78 = !{ptr @__exitcall_cxgb3_cleanup_module, !79, !"__exitcall_cxgb3_cleanup_module", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3471, i32 1}
!80 = !{ptr @cxgb3_wq, !81, !"cxgb3_wq", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 147, i32 26}
!82 = !{ptr @__param_str_dflt_msg_enable, !8, !"__param_str_dflt_msg_enable", i1 false, i1 false}
!83 = !{ptr @dflt_msg_enable, !84, !"dflt_msg_enable", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 110, i32 12}
!85 = !{ptr @__param_str_msi, !13, !"__param_str_msi", i1 false, i1 false}
!86 = !{ptr @msi, !87, !"msi", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 124, i32 12}
!88 = !{ptr @__param_str_ofld_disable, !18, !"__param_str_ofld_disable", i1 false, i1 false}
!89 = !{ptr @ofld_disable, !90, !"ofld_disable", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 134, i32 12}
!91 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 158, i32 20}
!93 = !{ptr @.str.25, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 160, i32 19}
!95 = !{ptr @.str.26, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 165, i32 8}
!97 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 168, i32 8}
!99 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 171, i32 8}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 175, i32 20}
!103 = !{ptr @.str.30, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 177, i32 10}
!105 = !{ptr @.str.31, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 177, i32 19}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1014, i32 13}
!109 = !{ptr @.str.33, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1017, i32 13}
!111 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1020, i32 13}
!113 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3446, i32 10}
!115 = !{ptr @driver, !116, !"driver", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3445, i32 26}
!117 = !{ptr @cxgb3_pci_tbl, !118, !"cxgb3_pci_tbl", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 88, i32 35}
!119 = !{ptr @.str.36, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3214, i32 14}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3216, i32 4}
!123 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @init_one._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @init_one._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3223, i32 3}
!128 = !{ptr @init_one._entry.39, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @init_one._entry_ptr.41, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3230, i32 3}
!132 = !{ptr @.str.44, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @init_one._entry.42, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @init_one._entry_ptr.45, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3236, i32 3}
!137 = !{ptr @init_one._entry.46, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @init_one._entry_ptr.48, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3256, i32 3}
!141 = !{ptr @init_one._entry.49, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @init_one._entry_ptr.51, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.53, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3263, i32 3}
!145 = !{ptr @init_one._entry.52, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @init_one._entry_ptr.54, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @init_one.__key, !148, !"__key", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3273, i32 2}
!149 = !{ptr @.str.55, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @init_one.__key.56, !151, !"__key", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3274, i32 2}
!152 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @init_one.__key.58, !154, !"__key", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3275, i32 2}
!155 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @init_one.__key.60, !157, !"__key", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3278, i32 2}
!158 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @init_one.__key.62, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3279, i32 2}
!161 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @init_one.__key.64, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3281, i32 2}
!164 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @init_one.__key.66, !166, !"__key", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3282, i32 2}
!167 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @init_one.__key.68, !169, !"__key", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3283, i32 2}
!170 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @init_one.__key.70, !172, !"__key", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3285, i32 2}
!173 = !{ptr @.str.71, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @init_one.__key.72, !172, !"__key", i1 false, i1 false}
!175 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3336, i32 4}
!178 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @init_one._entry.74, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @init_one._entry_ptr.77, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.79, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3351, i32 3}
!183 = !{ptr @init_one._entry.78, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @init_one._entry_ptr.80, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3377, i32 3}
!187 = !{ptr @init_one._entry.81, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @init_one._entry_ptr.83, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 2989, i32 2}
!191 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @fatal_error_task._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @fatal_error_task._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @offload_attr_group, !197, !"offload_attr_group", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 884, i32 37}
!198 = !{ptr @offload_attrs, !199, !"offload_attrs", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 872, i32 26}
!200 = !{ptr @.str.88, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 863, i32 1}
!202 = !{ptr @dev_attr_sched0, !201, !"dev_attr_sched0", i1 false, i1 false}
!203 = !{ptr @.str.89, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 816, i32 22}
!205 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 819, i32 22}
!207 = !{ptr @.str.91, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 864, i32 1}
!209 = !{ptr @dev_attr_sched1, !208, !"dev_attr_sched1", i1 false, i1 false}
!210 = !{ptr @.str.92, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 865, i32 1}
!212 = !{ptr @dev_attr_sched2, !211, !"dev_attr_sched2", i1 false, i1 false}
!213 = !{ptr @.str.93, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 866, i32 1}
!215 = !{ptr @dev_attr_sched3, !214, !"dev_attr_sched3", i1 false, i1 false}
!216 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 867, i32 1}
!218 = !{ptr @dev_attr_sched4, !217, !"dev_attr_sched4", i1 false, i1 false}
!219 = !{ptr @.str.95, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 868, i32 1}
!221 = !{ptr @dev_attr_sched5, !220, !"dev_attr_sched5", i1 false, i1 false}
!222 = !{ptr @.str.96, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 869, i32 1}
!224 = !{ptr @dev_attr_sched6, !223, !"dev_attr_sched6", i1 false, i1 false}
!225 = !{ptr @.str.97, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 870, i32 1}
!227 = !{ptr @dev_attr_sched7, !226, !"dev_attr_sched7", i1 false, i1 false}
!228 = !{ptr @.str.98, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 2931, i32 3}
!230 = !{ptr @.str.99, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @t3_reenable_adapter._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @t3_reenable_adapter._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.100, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 2960, i32 5}
!235 = !{ptr @.str.101, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @t3_resume_ports._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @t3_resume_ports._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.102, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1432, i32 4}
!240 = !{ptr @.str.103, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @cxgb_open._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @cxgb_open._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.104, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1219, i32 4}
!245 = !{ptr @.str.105, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @cxgb_up._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @cxgb_up._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.107, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1227, i32 4}
!250 = !{ptr @cxgb_up._entry.106, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @cxgb_up._entry_ptr.108, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.110, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1303, i32 4}
!254 = !{ptr @cxgb_up._entry.109, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @cxgb_up._entry_ptr.111, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.113, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1315, i32 2}
!258 = !{ptr @cxgb_up._entry.112, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @cxgb_up._entry_ptr.114, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.115, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1080, i32 30}
!262 = !{ptr @.str.116, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1082, i32 3}
!264 = !{ptr @upgrade_fw._entry, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @upgrade_fw._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.118, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1090, i32 3}
!268 = !{ptr @upgrade_fw._entry.117, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @upgrade_fw._entry_ptr.119, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.121, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1093, i32 3}
!272 = !{ptr @upgrade_fw._entry.120, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @upgrade_fw._entry_ptr.122, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.123, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1127, i32 29}
!276 = !{ptr @.str.124, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1131, i32 3}
!278 = !{ptr @.str.125, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @update_tpsram._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @update_tpsram._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.127, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1142, i32 3}
!283 = !{ptr @update_tpsram._entry.126, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @update_tpsram._entry_ptr.128, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.130, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1147, i32 3}
!287 = !{ptr @update_tpsram._entry.129, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @update_tpsram._entry_ptr.131, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.133, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1150, i32 3}
!291 = !{ptr @update_tpsram._entry.132, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @update_tpsram._entry_ptr.134, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.135, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 394, i32 6}
!295 = !{ptr @.str.136, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1375, i32 3}
!297 = !{ptr @offload_open.__UNIQUE_ID_ddebug384, !296, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!298 = distinct !{null, !299, !"__already_done", i1 false, i1 false}
!299 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 2826, i32 2}
!300 = !{ptr @cxgb_netdev_ops, !301, !"cxgb_netdev_ops", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3176, i32 36}
!302 = distinct !{null, !303, !"__already_done", i1 false, i1 false}
!303 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!304 = distinct !{null, !303, !"<string literal>", i1 false, i1 false}
!305 = distinct !{null, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!307 = !{ptr @.str.139, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!309 = !{ptr @cxgb_ethtool_ops, !310, !"cxgb_ethtool_ops", i1 false, i1 false}
!310 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 2102, i32 33}
!311 = !{ptr @.str.140, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1635, i32 5}
!313 = !{ptr @.str.141, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1636, i32 34}
!315 = !{ptr @.str.142, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1636, i32 40}
!317 = !{ptr @stats_strings, !318, !"stats_strings", i1 false, i1 false}
!318 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 1542, i32 19}
!319 = !{ptr @.str.143, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3111, i32 3}
!321 = !{ptr @.str.144, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @set_nqsets._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @set_nqsets._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @cxgb3_attr_group, !325, !"cxgb3_attr_group", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 795, i32 37}
!326 = !{ptr @cxgb3_attrs, !327, !"cxgb3_attrs", i1 false, i1 false}
!327 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 788, i32 26}
!328 = !{ptr @.str.145, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 784, i32 1}
!330 = !{ptr @dev_attr_cam_size, !329, !"dev_attr_cam_size", i1 false, i1 false}
!331 = !{ptr @.str.146, !329, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.147, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 785, i32 1}
!334 = !{ptr @dev_attr_nfilters, !333, !"dev_attr_nfilters", i1 false, i1 false}
!335 = !{ptr @.str.148, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 786, i32 1}
!337 = !{ptr @dev_attr_nservers, !336, !"dev_attr_nservers", i1 false, i1 false}
!338 = !{ptr @.str.149, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3141, i32 3}
!340 = !{ptr @.str.150, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3141, i32 10}
!342 = !{ptr @.str.151, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3141, i32 19}
!344 = !{ptr @.str.152, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3141, i32 32}
!346 = !{ptr @.str.153, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3141, i32 45}
!348 = !{ptr @print_port_info.pci_variant, !349, !"pci_variant", i1 false, i1 false}
!349 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3140, i32 21}
!350 = !{ptr @.str.154, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3148, i32 30}
!352 = !{ptr @.str.155, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3152, i32 30}
!354 = !{ptr @.str.156, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3162, i32 20}
!356 = !{ptr @.str.157, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3164, i32 27}
!358 = !{ptr @.str.158, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3164, i32 33}
!360 = !{ptr @.str.159, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3165, i32 37}
!362 = !{ptr @.str.160, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3166, i32 36}
!364 = !{ptr @.str.161, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3168, i32 4}
!366 = !{ptr @.str.162, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @print_port_info._entry, !365, !"_entry", i1 false, i1 false}
!368 = !{ptr @print_port_info._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @t3_err_handler, !370, !"t3_err_handler", i1 false, i1 false}
!370 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3073, i32 40}
!371 = !{ptr @.str.163, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/ethernet/chelsio/cxgb3/cxgb3_main.c", i32 3065, i32 2}
!373 = !{ptr @.str.164, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @t3_io_resume._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @t3_io_resume._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{!"sp"}
!377 = !{i32 1, !"wchar_size", i32 2}
!378 = !{i32 1, !"min_enum_size", i32 4}
!379 = !{i32 8, !"branch-target-enforcement", i32 0}
!380 = !{i32 8, !"sign-return-address", i32 0}
!381 = !{i32 8, !"sign-return-address-all", i32 0}
!382 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!383 = !{i32 7, !"uwtable", i32 1}
!384 = !{i32 7, !"frame-pointer", i32 2}
!385 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!386 = !{i64 5067577}
!387 = !{i64 2157010830}
!388 = !{i64 2157011220}
!389 = !{i64 5067159}
!390 = !{!"auto-init"}
!391 = !{i64 2157265357}
!392 = !{!"branch_weights", i32 2000, i32 1}
!393 = !{i64 2155477624, i64 2155478112, i64 2155477661, i64 2155477717, i64 2155477751, i64 2155477775, i64 2155477816, i64 2155477837, i64 2155477865, i64 2155477899}
!394 = !{i64 2149040623, i64 2149040628, i64 2149040641, i64 2149040685, i64 2149040719, i64 2149040740}
!395 = !{i64 2153963629, i64 2153963654}
!396 = !{i64 6459184}
!397 = !{i64 6459381}
!398 = !{i64 2153944614}
!399 = !{i64 687256, i64 687273}
!400 = !{i64 2153964310, i64 2153964335}
!401 = !{i32 0, i32 33}
