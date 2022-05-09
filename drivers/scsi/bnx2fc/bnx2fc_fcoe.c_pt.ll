; ModuleID = '/llk/IR_all_yes/drivers/scsi/bnx2fc/bnx2fc_fcoe.c_pt.bc'
source_filename = "../drivers/scsi/bnx2fc/bnx2fc_fcoe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.105 }
%union.anon.105 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fcoe_percpu_s = type { ptr, %struct.work_struct, %struct.sk_buff_head, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fcoe_transport = type { [16 x i8], i8, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bnx2fc_percpu_s = type { ptr, %struct.list_head, %struct.spinlock }
%struct.fcoe_sysfs_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cnic_ulp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t }
%struct.bnx2fc_hba = type { %struct.list_head, ptr, ptr, ptr, i32, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, i32, i32, i32, i16, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, %struct.bnx2fc_fw_stats, %struct.fcoe_statistics_params, ptr, i32, %struct.completion, %struct.fcoe_capabilities, %struct.timer_list, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, %struct.list_head, [16 x i8] }
%struct.bnx2fc_fw_stats = type { i64, i64, i64, i64, i64 }
%struct.fcoe_statistics_params = type { %struct.fcoe_tx_stat_params, %struct.fcoe_rx_stat_params_section0, %struct.fcoe_rx_stat_params_section1, %struct.fcoe_rx_stat_params_section2 }
%struct.fcoe_tx_stat_params = type { i32, i32, i32, i32 }
%struct.fcoe_rx_stat_params_section0 = type { i32, i32 }
%struct.fcoe_rx_stat_params_section1 = type { i32, i32 }
%struct.fcoe_rx_stat_params_section2 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fcoe_capabilities = type { i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.112, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.129, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.112 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.129 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.cnic_dev = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, [6 x i8], i32, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bnx2fc_interface = type { %struct.list_head, i32, ptr, ptr, %struct.packet_type, %struct.packet_type, ptr, %struct.kref, i8, i32, i8, i8 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
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
%struct.fcoe_ctlr = type { i32, i32, ptr, ptr, %struct.list_head, ptr, i16, i32, i32, i32, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, ptr, %struct.rnd_state, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], ptr, ptr, ptr, %struct.mutex, %struct.spinlock }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fcoe_ctlr_device = type { i32, %struct.device, ptr, %struct.list_head, [20 x i8], ptr, [20 x i8], ptr, %struct.mutex, i32, i32, i32, %struct.fcoe_fc_els_lesb }
%struct.fcoe_fc_els_lesb = type { i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.bnx2fc_lport = type { %struct.list_head, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.fcoe_fcf_device = type { i32, %struct.device, %struct.list_head, %struct.work_struct, %struct.delayed_work, i32, ptr, i32, i64, i64, i32, i16, [6 x i8], i8, i32, i8, i16 }
%struct.fc_vport_identifiers = type { i64, i64, i32, i8, i32, [64 x i8] }
%struct.cnic_fc_npiv_tbl = type { [64 x [8 x i8]], [64 x [8 x i8]], i32 }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.bnx2fc_rport = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [6 x i8], i32, i32, i32, %struct.atomic_t, %struct.b577xx_doorbell_set_prod, %struct.b577xx_fcoe_rx_doorbell, ptr, i32, i16, i8, i32, ptr, i32, i16, i8, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, [4 x ptr], [4 x i32], ptr, i32, %struct.spinlock, %struct.spinlock, %struct.atomic_t, i32, i32, i32, %struct.list_head, [257 x ptr], %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.wait_queue_head, %struct.timer_list, %struct.wait_queue_head }
%struct.b577xx_doorbell_set_prod = type { i16, i8, %struct.b577xx_doorbell_hdr }
%struct.b577xx_doorbell_hdr = type { i8 }
%struct.b577xx_fcoe_rx_doorbell = type { %struct.b577xx_doorbell_hdr, i8, i16 }
%struct.fc_rport_priv = type { ptr, ptr, %struct.kref, i32, %struct.fc_rport_identifiers, i16, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, %struct.delayed_work, i32, ptr, %struct.list_head, %struct.work_struct, i32, i16, %struct.callback_head, i16, i8, ptr }
%struct.fc_rport_identifiers = type { i64, i64, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.fcoe_crc_eof = type { i32, i8, [3 x i8] }
%struct.fcoe_hdr = type { i8, [12 x i8], i8 }
%struct.fc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fcoe_port = type { ptr, ptr, %struct.sk_buff_head, i8, i32, i32, %struct.timer_list, %struct.work_struct, [6 x i8], ptr }
%struct.bnx2fc_work = type { %struct.list_head, ptr, ptr, [256 x i8], i16, i8 }
%struct.fc_vport = type { i32, i32, i64, i64, i32, i32, i32, [64 x i8], ptr, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.work_struct }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.130, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.130 = type { ptr }
%struct.fcoe_stats_info = type { [12 x i8], [8 x i8], [8 x i8], [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author379 = internal constant [62 x i8] c"bnx2fc.author=Bhanu Prakash Gollapudi <bprakash@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description380 = internal constant [38 x i8] c"bnx2fc.description=QLogic FCoE Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file381 = internal constant [39 x i8] c"bnx2fc.file=drivers/scsi/bnx2fc/bnx2fc\00", section ".modinfo", align 1
@__UNIQUE_ID_license382 = internal constant [19 x i8] c"bnx2fc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version383 = internal constant [23 x i8] c"bnx2fc.version=2.12.13\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bnx2fc\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2.12.13\00", [24 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug_logging = internal constant [21 x i8] c"bnx2fc.debug_logging\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@bnx2fc_debug_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_logging = internal constant %struct.kernel_param { ptr @__param_str_debug_logging, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @bnx2fc_debug_level } }, section "__param", align 4
@__UNIQUE_ID_debug_loggingtype384 = internal constant [34 x i8] c"bnx2fc.parmtype=debug_logging:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_logging385 = internal constant [283 x i8] c"bnx2fc.parm=debug_logging:Option to enable extended logging,\0A\09\09Default is 0 - no logging.\0A\09\090x01 - SCSI cmd error, cleanup.\0A\09\090x02 - Session setup, cleanup, etc.\0A\09\090x04 - lport events, link, mtu, etc.\0A\09\090x08 - ELS logs.\0A\09\090x10 - fcoe L2 fame related logs.\0A\09\090xff - LOG all messages.\00", section ".modinfo", align 1
@__param_str_devloss_tmo = internal constant [19 x i8] c"bnx2fc.devloss_tmo\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@bnx2fc_devloss_tmo = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_devloss_tmo = internal constant %struct.kernel_param { ptr @__param_str_devloss_tmo, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.105 { ptr @bnx2fc_devloss_tmo } }, section "__param", align 4
@__UNIQUE_ID_devloss_tmotype386 = internal constant [33 x i8] c"bnx2fc.parmtype=devloss_tmo:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_devloss_tmo387 = internal constant [86 x i8] c"bnx2fc.parm=devloss_tmo: Change devloss_tmo for the remote ports attached via bnx2fc.\00", section ".modinfo", align 1
@__param_str_max_luns = internal constant [16 x i8] c"bnx2fc.max_luns\00", align 1
@bnx2fc_max_luns = internal global { i32, [28 x i8] } { i32 65535, [28 x i8] zeroinitializer }, align 32
@__param_max_luns = internal constant %struct.kernel_param { ptr @__param_str_max_luns, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.105 { ptr @bnx2fc_max_luns } }, section "__param", align 4
@__UNIQUE_ID_max_lunstype388 = internal constant [30 x i8] c"bnx2fc.parmtype=max_luns:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_luns389 = internal constant [80 x i8] c"bnx2fc.parm=max_luns: Change the default max_lun per SCSI host. Default 0xffff.\00", section ".modinfo", align 1
@__param_str_queue_depth = internal constant [19 x i8] c"bnx2fc.queue_depth\00", align 1
@bnx2fc_queue_depth = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_queue_depth = internal constant %struct.kernel_param { ptr @__param_str_queue_depth, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.105 { ptr @bnx2fc_queue_depth } }, section "__param", align 4
@__UNIQUE_ID_queue_depthtype390 = internal constant [33 x i8] c"bnx2fc.parmtype=queue_depth:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_queue_depth391 = internal constant [93 x i8] c"bnx2fc.parm=queue_depth: Change the default queue depth of SCSI devices attached via bnx2fc.\00", section ".modinfo", align 1
@__param_str_log_fka = internal constant [15 x i8] c"bnx2fc.log_fka\00", align 1
@bnx2fc_log_fka = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_log_fka = internal constant %struct.kernel_param { ptr @__param_str_log_fka, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @bnx2fc_log_fka } }, section "__param", align 4
@__UNIQUE_ID_log_fkatype392 = internal constant [29 x i8] c"bnx2fc.parmtype=log_fka:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_log_fka393 = internal constant [121 x i8] c"bnx2fc.parm=log_fka: Print message to kernel log when fcoe is initiating a FIP keep alive when debug logging is enabled.\00", section ".modinfo", align 1
@bnx2fc_global_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@bnx2fc_global = dso_local global { %struct.fcoe_percpu_s, [48 x i8] } zeroinitializer, align 32
@bnx2fc_dev_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bnx2fc_dev_lock, i64 52), ptr getelementptr (i8, ptr @bnx2fc_dev_lock, i64 52) }, ptr @bnx2fc_dev_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@adapter_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@adapter_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bnx2fc_mod_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bnx2fc: MOD_EXIT:destroy hba = 0x%p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2fc_mod_exit\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/scsi/bnx2fc/bnx2fc_fcoe.c\00", [62 x i8] zeroinitializer }, align 32
@bnx2fc_mod_exit._entry_ptr = internal global ptr @bnx2fc_mod_exit._entry, section ".printk_index", align 4
@bnx2fc_online_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bnx2fc_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@bnx2fc_transport = internal global { %struct.fcoe_transport, [44 x i8] } { %struct.fcoe_transport { [16 x i8] c"bnx2fc\00\00\00\00\00\00\00\00\00\00", i8 0, %struct.list_head { ptr getelementptr (i8, ptr @bnx2fc_transport, i64 20), ptr getelementptr (i8, ptr @bnx2fc_transport, i64 20) }, ptr @bnx2fc_match, ptr @bnx2fc_ctlr_alloc, ptr @bnx2fc_create, ptr @bnx2fc_destroy, ptr @bnx2fc_enable, ptr @bnx2fc_disable }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_bnx2fc__403_2820_bnx2fc_mod_init6 = internal global ptr @bnx2fc_mod_init, section ".initcall6.init", align 4
@__exitcall_bnx2fc_mod_exit = internal global ptr @bnx2fc_mod_exit, section ".exitcall.exit", align 4
@__pcpu_scope_bnx2fc_percpu = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_bnx2fc_percpu = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@bnx2fc_percpu = weak dso_local global %struct.bnx2fc_percpu_s zeroinitializer, section ".data..percpu", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2fc_global_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2fc_dev_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2fc_dev_lock\00", [16 x i8] zeroinitializer }, align 32
@bnx2fc_ulp_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 1973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\013ULP_STOP\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2fc_ulp_stop\00", [16 x i8] zeroinitializer }, align 32
@bnx2fc_ulp_stop._entry_ptr = internal global ptr @bnx2fc_ulp_stop._entry, section ".printk_index", align 4
@if_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@bnx2fc_port_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 1865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016bnx2fc: Entered %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2fc_port_shutdown\00", [43 x i8] zeroinitializer }, align 32
@bnx2fc_port_shutdown._entry_ptr = internal global ptr @bnx2fc_port_shutdown._entry, section ".printk_index", align 4
@bnx2fc_fw_destroy.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&hba->destroy_timer)\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bnx2fc_destroy_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013bnx2fc: ERROR:bnx2fc_destroy_timer - Destroy compl not received!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2fc_destroy_timer\00", [43 x i8] zeroinitializer }, align 32
@bnx2fc_destroy_timer._entry_ptr = internal global ptr @bnx2fc_destroy_timer._entry, section ".printk_index", align 4
@bnx2fc_transport_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bnx2fc_vport_xport_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bnx2fc_hba_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 2517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013bnx2fc: adapter_lookup: hba NULL\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnx2fc_hba_lookup\00", [46 x i8] zeroinitializer }, align 32
@bnx2fc_hba_lookup._entry_ptr = internal global ptr @bnx2fc_hba_lookup._entry, section ".printk_index", align 4
@_bnx2fc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 2315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016bnx2fc: Entered bnx2fc_create\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_bnx2fc_create\00", [17 x i8] zeroinitializer }, align 32
@_bnx2fc_create._entry_ptr = internal global ptr @_bnx2fc_create._entry, section ".printk_index", align 4
@_bnx2fc_create._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.5, i32 2317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013fip mode not FABRIC\0A\00", [41 x i8] zeroinitializer }, align 32
@_bnx2fc_create._entry_ptr.22 = internal global ptr @_bnx2fc_create._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bnx2x\00", [26 x i8] zeroinitializer }, align 32
@_bnx2fc_create._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.5, i32 2339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013bnx2fc: Not a netxtreme2 device\0A\00", [61 x i8] zeroinitializer }, align 32
@_bnx2fc_create._entry_ptr.26 = internal global ptr @_bnx2fc_create._entry.24, section ".printk_index", align 4
@_bnx2fc_create._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.19, ptr @.str.5, i32 2344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2fc: unable to obtain drv_info\0A\00", [59 x i8] zeroinitializer }, align 32
@_bnx2fc_create._entry_ptr.29 = internal global ptr @_bnx2fc_create._entry.27, section ".printk_index", align 4
@_bnx2fc_create._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.19, ptr @.str.5, i32 2353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bnx2fc: bnx2fc_create: hba not found\0A\00", [56 x i8] zeroinitializer }, align 32
@_bnx2fc_create._entry_ptr.32 = internal global ptr @_bnx2fc_create._entry.30, section ".printk_index", align 4
@_bnx2fc_create._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.19, ptr @.str.5, i32 2364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013bnx2fc: bnx2fc_interface_create failed\0A\00", [54 x i8] zeroinitializer }, align 32
@_bnx2fc_create._entry_ptr.35 = internal global ptr @_bnx2fc_create._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2fc_timer_wq\00", [16 x i8] zeroinitializer }, align 32
@_bnx2fc_create._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.19, ptr @.str.5, i32 2382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013bnx2fc: ulp_init could not create timer_wq\0A\00", [50 x i8] zeroinitializer }, align 32
@_bnx2fc_create._entry_ptr.40 = internal global ptr @_bnx2fc_create._entry.38, section ".printk_index", align 4
@_bnx2fc_create._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.19, ptr @.str.5, i32 2390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: Failed to create interface (%s)\0A\00", [53 x i8] zeroinitializer }, align 32
@_bnx2fc_create._entry_ptr.43 = internal global ptr @_bnx2fc_create._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"create: START DISC\0A\00", [44 x i8] zeroinitializer }, align 32
@bnx2fc_fcoe_sysfs_templ = internal global { %struct.fcoe_sysfs_function_template, [56 x i8] } { %struct.fcoe_sysfs_function_template { ptr @fcoe_ctlr_get_lesb, ptr @fcoe_ctlr_get_lesb, ptr @fcoe_ctlr_get_lesb, ptr @fcoe_ctlr_get_lesb, ptr @fcoe_ctlr_get_lesb, ptr @fcoe_ctlr_get_lesb, ptr null, ptr @bnx2fc_ctlr_enabled, ptr @fcoe_fcf_get_selected, ptr @bnx2fc_fcf_get_vlan_id }, [56 x i8] zeroinitializer }, align 32
@bnx2fc_interface_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013bnx2fc: Unable to allocate interface structure\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2fc_interface_create\00", [40 x i8] zeroinitializer }, align 32
@bnx2fc_interface_create._entry_ptr = internal global ptr @bnx2fc_interface_create._entry, section ".printk_index", align 4
@__bnx2fc_enable._entry = internal constant %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 2189, ptr null, ptr null }, align 1
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013bnx2fc: bnx2fc: __bnx2fc_enable: lport not found\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__bnx2fc_enable\00", [16 x i8] zeroinitializer }, align 32
@__bnx2fc_enable._entry_ptr = internal global ptr @__bnx2fc_enable._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Exceeded count max of npiv table\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"First NPIV table entries invalid.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NPIV[%u]:%016llx-%016llx\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Creating vport %s:%s.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to create vport\0A\00", [40 x i8] zeroinitializer }, align 32
@__bnx2fc_disable._entry = internal constant %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 2091, ptr null, ptr null }, align 1
@.str.54 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013bnx2fc: bnx2fc: __bnx2fc_disable: lport not found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__bnx2fc_disable\00", [47 x i8] zeroinitializer }, align 32
@__bnx2fc_disable._entry_ptr = internal global ptr @__bnx2fc_disable._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@bnx2fc_fip_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016bnx2fc: Sending FKA from %pM to %pM.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2fc_fip_send\00", [16 x i8] zeroinitializer }, align 32
@bnx2fc_fip_send._entry_ptr = internal global ptr @bnx2fc_fip_send._entry, section ".printk_index", align 4
@bnx2fc_interface_setup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@bnx2fc_interface_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.5, i32 1253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016bnx2fc: net_config: ha->type = %d, fip_mac = \00", [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2fc_interface_setup\00", [41 x i8] zeroinitializer }, align 32
@bnx2fc_interface_setup._entry_ptr = internal global ptr @bnx2fc_interface_setup._entry, section ".printk_index", align 4
@bnx2fc_interface_setup._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.5, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%2x:%2x:%2x:%2x:%2x:%2x\0A\00", [37 x i8] zeroinitializer }, align 32
@bnx2fc_interface_setup._entry_ptr.63 = internal global ptr @bnx2fc_interface_setup._entry.61, section ".printk_index", align 4
@bnx2fc_interface_setup._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.5, i32 1263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016bnx2fc: Found SAN MAC\0A\00", [39 x i8] zeroinitializer }, align 32
@bnx2fc_interface_setup._entry_ptr.66 = internal global ptr @bnx2fc_interface_setup._entry.64, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@bnx2fc_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2fc: bnx2fc_rcv: lport is NULL\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bnx2fc_rcv\00", [21 x i8] zeroinitializer }, align 32
@bnx2fc_rcv._entry_ptr = internal global ptr @bnx2fc_rcv._entry, section ".printk_index", align 4
@bnx2fc_rcv._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.5, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: bnx2fc_rcv: Wrong FC type frame\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2fc_rcv._entry_ptr.74 = internal global ptr @bnx2fc_rcv._entry.72, section ".printk_index", align 4
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to alloc blport\0A\00", [40 x i8] zeroinitializer }, align 32
@bnx2fc_shost_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @bnx2fc_queuecommand, ptr null, ptr null, ptr @.str.94, ptr null, ptr null, ptr null, ptr null, ptr @bnx2fc_eh_abort, ptr @bnx2fc_eh_device_reset, ptr @bnx2fc_eh_target_reset, ptr null, ptr @fc_eh_host_reset, ptr @fc_slave_alloc, ptr @bnx2fc_slave_configure, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fc_eh_timed_out, ptr null, ptr null, ptr null, ptr null, i32 0, i32 -1, i16 255, i16 0, i32 16319, i32 0, i32 32767, i32 0, i16 3, i8 0, i32 0, i8 -128, i32 0, ptr @bnx2fc_host_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@bnx2fc_if_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 1522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013bnx2fc: could not allocate scsi host structure\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2fc_if_create\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_if_create._entry_ptr = internal global ptr @bnx2fc_if_create._entry, section ".printk_index", align 4
@bnx2fc_if_create._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.5, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013bnx2fc: Setting vport names, 0x%llX 0x%llX\0A\00", [50 x i8] zeroinitializer }, align 32
@bnx2fc_if_create._entry_ptr.81 = internal global ptr @bnx2fc_if_create._entry.79, section ".printk_index", align 4
@bnx2fc_if_create._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.5, i32 1545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013bnx2fc: Error on bnx2fc_net_config\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2fc_if_create._entry_ptr.84 = internal global ptr @bnx2fc_if_create._entry.82, section ".printk_index", align 4
@bnx2fc_if_create._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.5, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: Couldn't configure shost for %s\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2fc_if_create._entry_ptr.87 = internal global ptr @bnx2fc_if_create._entry.85, section ".printk_index", align 4
@bnx2fc_if_create._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.78, ptr @.str.5, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013bnx2fc: Couldn't configure libfc\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2fc_if_create._entry_ptr.90 = internal global ptr @bnx2fc_if_create._entry.88, section ".printk_index", align 4
@bnx2fc_if_create._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.78, ptr @.str.5, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2fc: Error on bnx2fc_em_config\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2fc_if_create._entry_ptr.93 = internal global ptr @bnx2fc_if_create._entry.91, section ".printk_index", align 4
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"QLogic Offload FCoE Initiator\00", [34 x i8] zeroinitializer }, align 32
@bnx2fc_host_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bnx2fc_host_group, ptr null], [24 x i8] zeroinitializer }, align 32
@bnx2fc_host_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bnx2fc_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@bnx2fc_host_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_tm_timeout, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_tm_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bnx2fc_tm_timeout_show, ptr @bnx2fc_tm_timeout_store }, [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tm_timeout\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@bnx2fc_net_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&port->timer)\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WWNN = 0x%llx\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WWPN = 0x%llx\0A\00", [17 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@bnx2fc_shost_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.5, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013bnx2fc: Error on scsi_add_host\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2fc_shost_config\00", [44 x i8] zeroinitializer }, align 32
@bnx2fc_shost_config._entry_ptr = internal global ptr @bnx2fc_shost_config._entry, section ".printk_index", align 4
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s (QLogic %s) v%s over %s\00", [37 x i8] zeroinitializer }, align 32
@bnx2fc_libfc_fcn_templ = internal constant { %struct.libfc_function_template, [32 x i8] } { %struct.libfc_function_template { ptr @bnx2fc_xmit, ptr @bnx2fc_elsct_send, ptr null, ptr null, ptr null, ptr @fcoe_get_lesb, ptr null, ptr null, ptr @bnx2fc_rport_event_handler, ptr null, ptr @bnx2fc_cleanup, ptr @bnx2fc_abort_io, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2fc_xmit link down\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FCF not selected yet!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"xmit: Frame is for offloaded session port_id = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/scsi/fc_frame.h\00", [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Xmit L2 frame rport = 0x%x, oxid = 0x%x, r_ctl = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ABTS frame\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Send L2 frame type 0x%x rctl 0x%x thru non-offload path\0A\00", [39 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@bnx2fc_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.111, ptr @.str.5, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2fc_cleanup\00", [17 x i8] zeroinitializer }, align 32
@bnx2fc_cleanup._entry_ptr = internal global ptr @bnx2fc_cleanup._entry, section ".printk_index", align 4
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"flush/cleanup\0A\00", [17 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@bnx2fc_em_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.5, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013bnx2fc: em_config:fc_exch_mgr_alloc failed\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2fc_em_config\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_em_config._entry_ptr = internal global ptr @bnx2fc_em_config._entry, section ".printk_index", align 4
@bnx2fc_start_disc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.115, ptr @.str.5, i32 2003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnx2fc_start_disc\00", [46 x i8] zeroinitializer }, align 32
@bnx2fc_start_disc._entry_ptr = internal global ptr @bnx2fc_start_disc._entry, section ".printk_index", align 4
@bnx2fc_start_disc._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.5, i32 2006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013bnx2fc: Init not done yet\0A\00", [35 x i8] zeroinitializer }, align 32
@bnx2fc_start_disc._entry_ptr.118 = internal global ptr @bnx2fc_start_disc._entry.116, section ".printk_index", align 4
@.str.119 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"calling fc_fabric_login\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctlr_link_up\0A\00", [18 x i8] zeroinitializer }, align 32
@bnx2fc_interface_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.5, i32 1321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016bnx2fc: Interface is being released\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2fc_interface_release\00", [39 x i8] zeroinitializer }, align 32
@bnx2fc_interface_release._entry_ptr = internal global ptr @bnx2fc_interface_release._entry, section ".printk_index", align 4
@bnx2fc_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.5, i32 1684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013bnx2fc: bnx2fc_destroy: interface or lport not found\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2fc_destroy\00", [17 x i8] zeroinitializer }, align 32
@bnx2fc_destroy._entry_ptr = internal global ptr @bnx2fc_destroy._entry, section ".printk_index", align 4
@.str.125 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Entered %s, destroying lport %p\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.bnx2fc_port_destroy = private unnamed_addr constant [20 x i8] c"bnx2fc_port_destroy\00", align 1
@bnx2fc_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.5, i32 2246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013bnx2fc: bnx2fc: bnx2fc_enable: interface not found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bnx2fc_enable\00", [18 x i8] zeroinitializer }, align 32
@bnx2fc_enable._entry_ptr = internal global ptr @bnx2fc_enable._entry, section ".printk_index", align 4
@bnx2fc_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.5, i32 2119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013bnx2fc: bnx2fc: bnx2fc_disable: interface not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2fc_disable\00", [17 x i8] zeroinitializer }, align 32
@bnx2fc_disable._entry_ptr = internal global ptr @bnx2fc_disable._entry, section ".printk_index", align 4
@bnx2fc_mod_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.5, i32 2693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016bnx2fc: %s\00", [19 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2fc_mod_init\00", [16 x i8] zeroinitializer }, align 32
@bnx2fc_mod_init._entry_ptr = internal global ptr @bnx2fc_mod_init._entry, section ".printk_index", align 4
@version = internal global { [55 x i8], [41 x i8] } { [55 x i8] c"QLogic FCoE Driver bnx2fc v2.12.13 (October 15, 2015)\0A\00", [41 x i8] zeroinitializer }, align 32
@bnx2fc_mod_init._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.5, i32 2699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013failed to register an fcoe transport, check if libfcoe is loaded\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2fc_mod_init._entry_ptr.134 = internal global ptr @bnx2fc_mod_init._entry.132, section ".printk_index", align 4
@bnx2fc_mod_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&bnx2fc_dev_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2fc_l2_thread\00", [47 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@bnx2fc_mod_init.__key.137 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.138 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&p->fp_work_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scsi/bnx2fc:online\00", [45 x i8] zeroinitializer }, align 32
@bnx2fc_cnic_cb = internal global { %struct.cnic_ulp_ops, [36 x i8] } { %struct.cnic_ulp_ops { ptr @bnx2fc_ulp_init, ptr @bnx2fc_ulp_exit, ptr @bnx2fc_ulp_start, ptr @bnx2fc_ulp_stop, ptr @bnx2fc_indicate_kcqe, ptr @bnx2fc_indicate_netevent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bnx2fc_ulp_get_stats, ptr null, %struct.atomic_t zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@bnx2fc_attach_transport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.5, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013bnx2fc: Failed to attach FC transport\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2fc_attach_transport\00", [40 x i8] zeroinitializer }, align 32
@bnx2fc_attach_transport._entry_ptr = internal global ptr @bnx2fc_attach_transport._entry, section ".printk_index", align 4
@bnx2fc_attach_transport._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.141, ptr @.str.5, i32 1298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013bnx2fc: Failed to attach FC transport for vport\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2fc_attach_transport._entry_ptr.144 = internal global ptr @bnx2fc_attach_transport._entry.142, section ".printk_index", align 4
@bnx2fc_transport_function = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr @fc_set_rport_loss_tmo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fc_get_host_port_state, ptr null, ptr @fc_get_host_speed, ptr null, ptr null, ptr null, ptr @bnx2fc_get_host_stats, ptr null, ptr @bnx2fc_fcoe_reset, ptr null, ptr @bnx2fc_rport_terminate_io, ptr null, ptr @bnx2fc_vport_create, ptr @bnx2fc_vport_disable, ptr @bnx2fc_vport_destroy, ptr @fc_lport_bsg_request, ptr null, i32 1628, i32 0, i32 0, i8 -1, i8 120, i8 7, i8 -16 }, [48 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FW stat req timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@bnx2fc_vport_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.5, i32 1146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013bnx2fc: Failed to create vport, WWPN (0x%s) already exists\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2fc_vport_create\00", [44 x i8] zeroinitializer }, align 32
@bnx2fc_vport_create._entry_ptr = internal global ptr @bnx2fc_vport_create._entry, section ".printk_index", align 4
@bnx2fc_vport_create._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.5, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013bnx2fc: vn ports cannot be created onthis interface\0A\00", [41 x i8] zeroinitializer }, align 32
@bnx2fc_vport_create._entry_ptr.152 = internal global ptr @bnx2fc_vport_create._entry.150, section ".printk_index", align 4
@bnx2fc_vport_create._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.149, ptr @.str.5, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: bnx2fc_vport_create (%s) failed\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2fc_vport_create._entry_ptr.155 = internal global ptr @bnx2fc_vport_create._entry.153, section ".printk_index", align 4
@bnx2fc_vport_xport_function = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr @fc_set_rport_loss_tmo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fc_get_host_port_state, ptr null, ptr @fc_get_host_speed, ptr null, ptr null, ptr null, ptr @fc_get_host_stats, ptr null, ptr @bnx2fc_fcoe_reset, ptr null, ptr @fc_rport_terminate_io, ptr null, ptr null, ptr null, ptr null, ptr @fc_lport_bsg_request, ptr null, i32 1628, i32 0, i32 0, i8 -1, i8 120, i8 7, i8 -16 }, [48 x i8] zeroinitializer }, align 32
@bnx2fc_recv_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.5, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013bnx2fc: Invalid lport struct\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnx2fc_recv_frame\00", [46 x i8] zeroinitializer }, align 32
@bnx2fc_recv_frame._entry_ptr = internal global ptr @bnx2fc_recv_frame._entry, section ".printk_index", align 4
@.str.161 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FC frame d_id mismatch with MAC %pM.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fpma mismatch\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Wrong source address: mac:%pM dest_addr:%pM.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Dropping frame due to destination mismatch: lport->port_id=%x fh->d_id=%x.\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2fc_recv_frame._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.160, ptr @.str.5, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014bnx2fc: dropping frame with CRC error\0A\00", [55 x i8] zeroinitializer }, align 32
@bnx2fc_recv_frame._entry_ptr.167 = internal global ptr @bnx2fc_recv_frame._entry.165, section ".printk_index", align 4
@.str.168 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2fc_thread/%d\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_cpu_offline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.5, i32 2645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016bnx2fc: destroying io thread for CPU %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2fc_cpu_offline\00", [45 x i8] zeroinitializer }, align 32
@bnx2fc_cpu_offline._entry_ptr = internal global ptr @bnx2fc_cpu_offline._entry, section ".printk_index", align 4
@bnx2fc_ulp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.173, ptr @.str.5, i32 2050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2fc_ulp_init\00", [16 x i8] zeroinitializer }, align 32
@bnx2fc_ulp_init._entry_ptr = internal global ptr @bnx2fc_ulp_init._entry, section ".printk_index", align 4
@bnx2fc_ulp_init._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.5, i32 2056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013bnx2fc: bnx2fc FCoE not supported on %s, flags: %lx fcoe_conn: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2fc_ulp_init._entry_ptr.176 = internal global ptr @bnx2fc_ulp_init._entry.174, section ".printk_index", align 4
@bnx2fc_ulp_init._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.173, ptr @.str.5, i32 2062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2fc: hba initialization failed\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2fc_ulp_init._entry_ptr.179 = internal global ptr @bnx2fc_ulp_init._entry.177, section ".printk_index", align 4
@bnx2fc_ulp_init._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.173, ptr @.str.5, i32 2066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016bnx2fc: bnx2fc: FCoE initialized for %s.\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2fc_ulp_init._entry_ptr.182 = internal global ptr @bnx2fc_ulp_init._entry.180, section ".printk_index", align 4
@bnx2fc_ulp_init._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.173, ptr @.str.5, i32 2079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bnx2fc: register_device failed, rc = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2fc_ulp_init._entry_ptr.185 = internal global ptr @bnx2fc_ulp_init._entry.183, section ".printk_index", align 4
@bnx2fc_hba_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.5, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013bnx2fc: Unable to allocate hba structure\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnx2fc_hba_create\00", [46 x i8] zeroinitializer }, align 32
@bnx2fc_hba_create._entry_ptr = internal global ptr @bnx2fc_hba_create._entry, section ".printk_index", align 4
@bnx2fc_hba_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.188 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&hba->hba_lock\00", [17 x i8] zeroinitializer }, align 32
@bnx2fc_hba_create.__key.189 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.190 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&hba->hba_mutex\00", [16 x i8] zeroinitializer }, align 32
@bnx2fc_hba_create.__key.191 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.192 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&hba->hba_stats_mutex\00", [42 x i8] zeroinitializer }, align 32
@bnx2fc_hba_create._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.187, ptr @.str.5, i32 1390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bnx2fc: create_adapter:  bind error\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2fc_hba_create._entry_ptr.195 = internal global ptr @bnx2fc_hba_create._entry.193, section ".printk_index", align 4
@bnx2fc_hba_create._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.187, ptr @.str.5, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013bnx2fc: Unable to allocate tgt offload list\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2fc_hba_create._entry_ptr.198 = internal global ptr @bnx2fc_hba_create._entry.196, section ".printk_index", align 4
@bnx2fc_hba_create._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.187, ptr @.str.5, i32 1408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013bnx2fc: em_config:bnx2fc_cmd_mgr_alloc failed\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_hba_create._entry_ptr.201 = internal global ptr @bnx2fc_hba_create._entry.199, section ".printk_index", align 4
@bnx2fc_hba_create.__key.202 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.203 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&hba->shutdown_wait\00", [44 x i8] zeroinitializer }, align 32
@bnx2fc_hba_create.__key.204 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.205 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&hba->destroy_wait\00", [45 x i8] zeroinitializer }, align 32
@bnx2fc_bind_pcidev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.5, i32 1740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013bnx2fc: cnic is NULL\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2fc_bind_pcidev\00", [45 x i8] zeroinitializer }, align 32
@bnx2fc_bind_pcidev._entry_ptr = internal global ptr @bnx2fc_bind_pcidev._entry, section ".printk_index", align 4
@bnx2fc_bind_pcidev._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.207, ptr @.str.5, i32 1778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013bnx2fc: bnx2fc: Unknown device id 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2fc_bind_pcidev._entry_ptr.216 = internal global ptr @bnx2fc_bind_pcidev._entry.214, section ".printk_index", align 4
@bnx2fc_ulp_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.5, i32 2531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016bnx2fc: Entered bnx2fc_ulp_exit\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2fc_ulp_exit\00", [16 x i8] zeroinitializer }, align 32
@bnx2fc_ulp_exit._entry_ptr = internal global ptr @bnx2fc_ulp_exit._entry, section ".printk_index", align 4
@bnx2fc_ulp_exit._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.218, ptr @.str.5, i32 2535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013bnx2fc: bnx2fc port check: %s, flags: %lx\0A\00", [51 x i8] zeroinitializer }, align 32
@bnx2fc_ulp_exit._entry_ptr.221 = internal global ptr @bnx2fc_ulp_exit._entry.219, section ".printk_index", align 4
@bnx2fc_ulp_exit._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.218, ptr @.str.5, i32 2543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013bnx2fc: bnx2fc_ulp_exit: hba not found, dev 0%p\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2fc_ulp_exit._entry_ptr.224 = internal global ptr @bnx2fc_ulp_exit._entry.222, section ".printk_index", align 4
@bnx2fc_ulp_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.5, i32 1847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016bnx2fc: bnx2fc started.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2fc_ulp_start\00", [47 x i8] zeroinitializer }, align 32
@bnx2fc_ulp_start._entry_ptr = internal global ptr @bnx2fc_ulp_start._entry, section ".printk_index", align 4
@bnx2fc_ulp_start._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.226, ptr @.str.5, i32 1854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bnx2fc: ulp_init: start discovery\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2fc_ulp_start._entry_ptr.229 = internal global ptr @bnx2fc_ulp_start._entry.227, section ".printk_index", align 4
@bnx2fc_fw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.5, i32 1901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\011bnx2fc: bnx2fc_bind_adapter_devices failed - rc = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2fc_fw_init\00", [17 x i8] zeroinitializer }, align 32
@bnx2fc_fw_init._entry_ptr = internal global ptr @bnx2fc_fw_init._entry, section ".printk_index", align 4
@bnx2fc_fw_init._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.231, ptr @.str.5, i32 1908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\011bnx2fc: bnx2fc_send_fw_fcoe_init_msg failed - rc = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@bnx2fc_fw_init._entry_ptr.234 = internal global ptr @bnx2fc_fw_init._entry.232, section ".printk_index", align 4
@bnx2fc_fw_init._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.231, ptr @.str.5, i32 1922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013bnx2fc: bnx2fc_start: %s failed to initialize.  Ignoring...\0A\00", [33 x i8] zeroinitializer }, align 32
@bnx2fc_fw_init._entry_ptr.237 = internal global ptr @bnx2fc_fw_init._entry.235, section ".printk_index", align 4
@bnx2fc_indicate_netevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.239, ptr @.str.5, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013indicate_netevent: hba is not UP!!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2fc_indicate_netevent\00", [39 x i8] zeroinitializer }, align 32
@bnx2fc_indicate_netevent._entry_ptr = internal global ptr @bnx2fc_indicate_netevent._entry, section ".printk_index", align 4
@.str.240 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"netevent handler - event=%s %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2fc_indicate_netevent._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.239, ptr @.str.5, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016bnx2fc: Link up while interface is disabled.\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2fc_indicate_netevent._entry_ptr.243 = internal global ptr @bnx2fc_indicate_netevent._entry.241, section ".printk_index", align 4
@bnx2fc_indicate_netevent._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.239, ptr @.str.5, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016bnx2fc: Link down while interface is disabled.\0A\00", [46 x i8] zeroinitializer }, align 32
@bnx2fc_indicate_netevent._entry_ptr.246 = internal global ptr @bnx2fc_indicate_netevent._entry.244, section ".printk_index", align 4
@bnx2fc_indicate_netevent.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bnx2fc_indicate_netevent._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.239, ptr @.str.5, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016bnx2fc: indicate_netevent num_ofld_sess = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2fc_indicate_netevent._entry_ptr.249 = internal global ptr @bnx2fc_indicate_netevent._entry.247, section ".printk_index", align 4
@bnx2fc_indicate_netevent._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.239, ptr @.str.5, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016bnx2fc: wakeup - num_ofld_sess = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2fc_indicate_netevent._entry_ptr.252 = internal global ptr @bnx2fc_indicate_netevent._entry.250, section ".printk_index", align 4
@str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"2.12.13\00\00\00\00\00\00", [19 x i8] zeroinitializer }, align 32
@str.253 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCM57840\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.254 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCM57810\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.255 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCM57800\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.256 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCM57712\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.257 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCM57711\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.258 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCM57710\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.259 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.260 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 15, i64 82]
@__sancov_gen_cov_switch_values.261 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 34, i64 129]
@__sancov_gen_cov_switch_values.262 = internal global [18 x i64] [i64 16, i64 16, i64 5710, i64 5711, i64 5730, i64 5731, i64 5743, i64 5770, i64 5773, i64 5774, i64 5793, i64 5794, i64 5796, i64 5797, i64 5801, i64 5805, i64 5806, i64 5807]
@__sancov_gen_cov_switch_values.263 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 6, i64 10]
@__sancov_gen_cov_switch_values.264 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.265 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 40, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant [19 x i8] c"bnx2fc_debug_level\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 101, i32 14 }
@___asan_gen_.278 = private unnamed_addr constant [19 x i8] c"bnx2fc_devloss_tmo\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 113, i32 13 }
@___asan_gen_.281 = private unnamed_addr constant [16 x i8] c"bnx2fc_max_luns\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 118, i32 13 }
@___asan_gen_.284 = private unnamed_addr constant [19 x i8] c"bnx2fc_queue_depth\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 123, i32 13 }
@___asan_gen_.287 = private unnamed_addr constant [15 x i8] c"bnx2fc_log_fka\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 128, i32 13 }
@___asan_gen_.290 = private unnamed_addr constant [19 x i8] c"bnx2fc_global_lock\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [14 x i8] c"bnx2fc_global\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 54, i32 22 }
@___asan_gen_.296 = private unnamed_addr constant [16 x i8] c"bnx2fc_dev_lock\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [13 x i8] c"adapter_list\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 21, i32 25 }
@___asan_gen_.302 = private unnamed_addr constant [14 x i8] c"adapter_count\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 23, i32 12 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2782, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant [20 x i8] c"bnx2fc_online_state\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2677, i32 25 }
@___asan_gen_.320 = private unnamed_addr constant [10 x i8] c"bnx2fc_wq\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 49, i32 26 }
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"bnx2fc_transport\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2602, i32 30 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 55, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 24, i32 8 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1973, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [8 x i8] c"if_list\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 22, i32 25 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1865, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1941, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 853, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [26 x i8] c"bnx2fc_transport_template\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 46, i32 40 }
@___asan_gen_.374 = private unnamed_addr constant [28 x i8] c"bnx2fc_vport_xport_template\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 47, i32 40 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2517, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2315, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2317, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2338, i32 31 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2339, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2344, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2353, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2364, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2380, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2382, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2389, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2415, i32 24 }
@___asan_gen_.449 = private unnamed_addr constant [24 x i8] c"bnx2fc_fcoe_sysfs_templ\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2823, i32 44 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1457, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2189, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2138, i32 25 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2145, i32 25 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2165, i32 7 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2169, i32 25 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2174, i32 26 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2091, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1123, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1251, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1252, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1254, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1263, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 695, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 723, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 443, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 454, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1510, i32 28 }
@___asan_gen_.548 = private unnamed_addr constant [22 x i8] c"bnx2fc_shost_template\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2959, i32 34 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1522, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1537, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1545, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1551, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1559, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1577, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2961, i32 12 }
@___asan_gen_.593 = private unnamed_addr constant [19 x i8] c"bnx2fc_host_groups\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [18 x i8] c"bnx2fc_host_group\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2954, i32 1 }
@___asan_gen_.599 = private unnamed_addr constant [18 x i8] c"bnx2fc_host_attrs\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2949, i32 26 }
@___asan_gen_.602 = private unnamed_addr constant [20 x i8] c"dev_attr_tm_timeout\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2946, i32 8 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2922, i32 15 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 827, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 835, i32 25 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 842, i32 25 }
@___asan_gen_.627 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1984, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 759, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 765, i32 4 }
@___asan_gen_.641 = private unnamed_addr constant [23 x i8] c"bnx2fc_libfc_fcn_templ\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2980, i32 39 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 291, i32 25 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 298, i32 26 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 323, i32 25 }
@___asan_gen_.654 = private unnamed_addr constant [27 x i8] c"../include/scsi/fc_frame.h\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 161, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 224, i32 22 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 245, i32 23 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 247, i32 23 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 197, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 206, i32 25 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1019, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2003, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2006, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2011, i32 24 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2014, i32 25 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1321, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1684, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1703, i32 24 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2246, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2119, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2693, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 32, i32 13 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2698, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2705, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2721, i32 14 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2736, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2739, i32 46 }
@___asan_gen_.776 = private unnamed_addr constant [15 x i8] c"bnx2fc_cnic_cb\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2993, i32 28 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1290, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1297, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant [26 x i8] c"bnx2fc_transport_function\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2836, i32 36 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 710, i32 25 }
@___asan_gen_.804 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 87, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1144, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1151, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1162, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant [28 x i8] c"bnx2fc_vport_xport_function\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2876, i32 36 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 530, i32 3 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 573, i32 25 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 583, i32 26 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 590, i32 26 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 627, i32 25 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 640, i32 4 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2628, i32 6 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2645, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2050, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2054, i32 3 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2062, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2066, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2079, i32 3 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1374, i32 3 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1377, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1378, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1379, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1390, i32 3 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1400, i32 3 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1408, i32 3 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1427, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1428, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1740, i32 3 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1778, i32 3 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2531, i32 2 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2534, i32 3 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 2542, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1847, i32 2 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1854, i32 4 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1900, i32 3 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1907, i32 3 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 1920, i32 3 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 887, i32 4 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 929, i32 25 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 939, i32 5 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 956, i32 5 }
@___asan_gen_.1052 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 979, i32 3 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 980, i32 3 }
@___asan_gen_.1061 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1064 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1065 = private constant [37 x i8] c"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c\00", align 1
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1065, i32 986, i32 3 }
@___asan_gen_.1067 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.1068 = private unnamed_addr constant [8 x i8] c"str.253\00", align 1
@___asan_gen_.1069 = private unnamed_addr constant [8 x i8] c"str.254\00", align 1
@___asan_gen_.1070 = private unnamed_addr constant [8 x i8] c"str.255\00", align 1
@___asan_gen_.1071 = private unnamed_addr constant [8 x i8] c"str.256\00", align 1
@___asan_gen_.1072 = private unnamed_addr constant [8 x i8] c"str.257\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant [8 x i8] c"str.258\00", align 1
@llvm.compiler.used = appending global [371 x ptr] [ptr @__UNIQUE_ID_author379, ptr @__UNIQUE_ID_debug_logging385, ptr @__UNIQUE_ID_debug_loggingtype384, ptr @__UNIQUE_ID_description380, ptr @__UNIQUE_ID_devloss_tmo387, ptr @__UNIQUE_ID_devloss_tmotype386, ptr @__UNIQUE_ID_file381, ptr @__UNIQUE_ID_license382, ptr @__UNIQUE_ID_log_fka393, ptr @__UNIQUE_ID_log_fkatype392, ptr @__UNIQUE_ID_max_luns389, ptr @__UNIQUE_ID_max_lunstype388, ptr @__UNIQUE_ID_queue_depth391, ptr @__UNIQUE_ID_queue_depthtype390, ptr @__UNIQUE_ID_version383, ptr @__bnx2fc_disable._entry, ptr @__bnx2fc_disable._entry_ptr, ptr @__bnx2fc_enable._entry, ptr @__bnx2fc_enable._entry_ptr, ptr @__exitcall_bnx2fc_mod_exit, ptr @__initcall__kmod_bnx2fc__403_2820_bnx2fc_mod_init6, ptr @__modver_attr, ptr @__param_debug_logging, ptr @__param_devloss_tmo, ptr @__param_log_fka, ptr @__param_max_luns, ptr @__param_queue_depth, ptr @_bnx2fc_create._entry, ptr @_bnx2fc_create._entry.20, ptr @_bnx2fc_create._entry.24, ptr @_bnx2fc_create._entry.27, ptr @_bnx2fc_create._entry.30, ptr @_bnx2fc_create._entry.33, ptr @_bnx2fc_create._entry.38, ptr @_bnx2fc_create._entry.41, ptr @_bnx2fc_create._entry_ptr, ptr @_bnx2fc_create._entry_ptr.22, ptr @_bnx2fc_create._entry_ptr.26, ptr @_bnx2fc_create._entry_ptr.29, ptr @_bnx2fc_create._entry_ptr.32, ptr @_bnx2fc_create._entry_ptr.35, ptr @_bnx2fc_create._entry_ptr.40, ptr @_bnx2fc_create._entry_ptr.43, ptr @bnx2fc_attach_transport._entry, ptr @bnx2fc_attach_transport._entry.142, ptr @bnx2fc_attach_transport._entry_ptr, ptr @bnx2fc_attach_transport._entry_ptr.144, ptr @bnx2fc_bind_pcidev._entry, ptr @bnx2fc_bind_pcidev._entry.214, ptr @bnx2fc_bind_pcidev._entry_ptr, ptr @bnx2fc_bind_pcidev._entry_ptr.216, ptr @bnx2fc_cleanup._entry, ptr @bnx2fc_cleanup._entry_ptr, ptr @bnx2fc_cpu_offline._entry, ptr @bnx2fc_cpu_offline._entry_ptr, ptr @bnx2fc_destroy._entry, ptr @bnx2fc_destroy._entry_ptr, ptr @bnx2fc_destroy_timer._entry, ptr @bnx2fc_destroy_timer._entry_ptr, ptr @bnx2fc_disable._entry, ptr @bnx2fc_disable._entry_ptr, ptr @bnx2fc_em_config._entry, ptr @bnx2fc_em_config._entry_ptr, ptr @bnx2fc_enable._entry, ptr @bnx2fc_enable._entry_ptr, ptr @bnx2fc_fip_send._entry, ptr @bnx2fc_fip_send._entry_ptr, ptr @bnx2fc_fw_init._entry, ptr @bnx2fc_fw_init._entry.232, ptr @bnx2fc_fw_init._entry.235, ptr @bnx2fc_fw_init._entry_ptr, ptr @bnx2fc_fw_init._entry_ptr.234, ptr @bnx2fc_fw_init._entry_ptr.237, ptr @bnx2fc_hba_create._entry, ptr @bnx2fc_hba_create._entry.193, ptr @bnx2fc_hba_create._entry.196, ptr @bnx2fc_hba_create._entry.199, ptr @bnx2fc_hba_create._entry_ptr, ptr @bnx2fc_hba_create._entry_ptr.195, ptr @bnx2fc_hba_create._entry_ptr.198, ptr @bnx2fc_hba_create._entry_ptr.201, ptr @bnx2fc_hba_lookup._entry, ptr @bnx2fc_hba_lookup._entry_ptr, ptr @bnx2fc_if_create._entry, ptr @bnx2fc_if_create._entry.79, ptr @bnx2fc_if_create._entry.82, ptr @bnx2fc_if_create._entry.85, ptr @bnx2fc_if_create._entry.88, ptr @bnx2fc_if_create._entry.91, ptr @bnx2fc_if_create._entry_ptr, ptr @bnx2fc_if_create._entry_ptr.81, ptr @bnx2fc_if_create._entry_ptr.84, ptr @bnx2fc_if_create._entry_ptr.87, ptr @bnx2fc_if_create._entry_ptr.90, ptr @bnx2fc_if_create._entry_ptr.93, ptr @bnx2fc_indicate_netevent._entry, ptr @bnx2fc_indicate_netevent._entry.241, ptr @bnx2fc_indicate_netevent._entry.244, ptr @bnx2fc_indicate_netevent._entry.247, ptr @bnx2fc_indicate_netevent._entry.250, ptr @bnx2fc_indicate_netevent._entry_ptr, ptr @bnx2fc_indicate_netevent._entry_ptr.243, ptr @bnx2fc_indicate_netevent._entry_ptr.246, ptr @bnx2fc_indicate_netevent._entry_ptr.249, ptr @bnx2fc_indicate_netevent._entry_ptr.252, ptr @bnx2fc_interface_create._entry, ptr @bnx2fc_interface_create._entry_ptr, ptr @bnx2fc_interface_release._entry, ptr @bnx2fc_interface_release._entry_ptr, ptr @bnx2fc_interface_setup._entry, ptr @bnx2fc_interface_setup._entry.61, ptr @bnx2fc_interface_setup._entry.64, ptr @bnx2fc_interface_setup._entry_ptr, ptr @bnx2fc_interface_setup._entry_ptr.63, ptr @bnx2fc_interface_setup._entry_ptr.66, ptr @bnx2fc_mod_exit, ptr @bnx2fc_mod_exit._entry, ptr @bnx2fc_mod_exit._entry_ptr, ptr @bnx2fc_mod_init._entry, ptr @bnx2fc_mod_init._entry.132, ptr @bnx2fc_mod_init._entry_ptr, ptr @bnx2fc_mod_init._entry_ptr.134, ptr @bnx2fc_port_shutdown._entry, ptr @bnx2fc_port_shutdown._entry_ptr, ptr @bnx2fc_rcv._entry, ptr @bnx2fc_rcv._entry.72, ptr @bnx2fc_rcv._entry_ptr, ptr @bnx2fc_rcv._entry_ptr.74, ptr @bnx2fc_recv_frame._entry, ptr @bnx2fc_recv_frame._entry.165, ptr @bnx2fc_recv_frame._entry_ptr, ptr @bnx2fc_recv_frame._entry_ptr.167, ptr @bnx2fc_shost_config._entry, ptr @bnx2fc_shost_config._entry_ptr, ptr @bnx2fc_start_disc._entry, ptr @bnx2fc_start_disc._entry.116, ptr @bnx2fc_start_disc._entry_ptr, ptr @bnx2fc_start_disc._entry_ptr.118, ptr @bnx2fc_ulp_exit._entry, ptr @bnx2fc_ulp_exit._entry.219, ptr @bnx2fc_ulp_exit._entry.222, ptr @bnx2fc_ulp_exit._entry_ptr, ptr @bnx2fc_ulp_exit._entry_ptr.221, ptr @bnx2fc_ulp_exit._entry_ptr.224, ptr @bnx2fc_ulp_init._entry, ptr @bnx2fc_ulp_init._entry.174, ptr @bnx2fc_ulp_init._entry.177, ptr @bnx2fc_ulp_init._entry.180, ptr @bnx2fc_ulp_init._entry.183, ptr @bnx2fc_ulp_init._entry_ptr, ptr @bnx2fc_ulp_init._entry_ptr.176, ptr @bnx2fc_ulp_init._entry_ptr.179, ptr @bnx2fc_ulp_init._entry_ptr.182, ptr @bnx2fc_ulp_init._entry_ptr.185, ptr @bnx2fc_ulp_start._entry, ptr @bnx2fc_ulp_start._entry.227, ptr @bnx2fc_ulp_start._entry_ptr, ptr @bnx2fc_ulp_start._entry_ptr.229, ptr @bnx2fc_ulp_stop._entry, ptr @bnx2fc_ulp_stop._entry_ptr, ptr @bnx2fc_vport_create._entry, ptr @bnx2fc_vport_create._entry.150, ptr @bnx2fc_vport_create._entry.153, ptr @bnx2fc_vport_create._entry_ptr, ptr @bnx2fc_vport_create._entry_ptr.152, ptr @bnx2fc_vport_create._entry_ptr.155, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bnx2fc_debug_level, ptr @bnx2fc_devloss_tmo, ptr @bnx2fc_max_luns, ptr @bnx2fc_queue_depth, ptr @bnx2fc_log_fka, ptr @bnx2fc_global_lock, ptr @bnx2fc_global, ptr @bnx2fc_dev_lock, ptr @adapter_list, ptr @adapter_count, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bnx2fc_online_state, ptr @bnx2fc_wq, ptr @bnx2fc_transport, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @if_list, ptr @.str.11, ptr @.str.12, ptr @bnx2fc_fw_destroy.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @bnx2fc_transport_template, ptr @bnx2fc_vport_xport_template, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @bnx2fc_fcoe_sysfs_templ, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @bnx2fc_shost_template, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @bnx2fc_host_groups, ptr @bnx2fc_host_group, ptr @bnx2fc_host_attrs, ptr @dev_attr_tm_timeout, ptr @.str.95, ptr @.str.96, ptr @bnx2fc_net_config.__key, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @skb_queue_head_init.__key, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @bnx2fc_libfc_fcn_templ, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @version, ptr @.str.133, ptr @bnx2fc_mod_init.__key, ptr @.str.135, ptr @.str.136, ptr @bnx2fc_mod_init.__key.137, ptr @.str.138, ptr @.str.139, ptr @bnx2fc_cnic_cb, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @bnx2fc_transport_function, ptr @.str.146, ptr @init_completion.__key, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.154, ptr @bnx2fc_vport_xport_function, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.186, ptr @.str.187, ptr @bnx2fc_hba_create.__key, ptr @.str.188, ptr @bnx2fc_hba_create.__key.189, ptr @.str.190, ptr @bnx2fc_hba_create.__key.191, ptr @.str.192, ptr @.str.194, ptr @.str.197, ptr @.str.200, ptr @bnx2fc_hba_create.__key.202, ptr @.str.203, ptr @bnx2fc_hba_create.__key.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.215, ptr @.str.217, ptr @.str.218, ptr @.str.220, ptr @.str.223, ptr @.str.225, ptr @.str.226, ptr @.str.228, ptr @.str.230, ptr @.str.231, ptr @.str.233, ptr @.str.236, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.242, ptr @.str.245, ptr @bnx2fc_indicate_netevent.__key, ptr @.str.248, ptr @.str.251, ptr @str, ptr @str.253, ptr @str.254, ptr @str.255, ptr @str.256, ptr @str.257, ptr @str.258], section "llvm.metadata"
@0 = internal global [274 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_devloss_tmo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_max_luns to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_queue_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_log_fka to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_global_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_global to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_dev_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_mod_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_online_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_transport to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_ulp_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_port_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_fw_destroy.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_destroy_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_vport_xport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_hba_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_bnx2fc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_bnx2fc_create._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_bnx2fc_create._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_bnx2fc_create._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_bnx2fc_create._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_bnx2fc_create._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_bnx2fc_create._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_bnx2fc_create._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_fcoe_sysfs_templ to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_interface_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_fip_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_interface_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_interface_setup._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_interface_setup._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_rcv._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_shost_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_if_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_if_create._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_if_create._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_if_create._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_if_create._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_if_create._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_host_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_host_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tm_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_net_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_shost_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_libfc_fcn_templ to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_em_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_start_disc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_start_disc._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_interface_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_mod_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_mod_init._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_mod_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_mod_init.__key.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cnic_cb to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_attach_transport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_attach_transport._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_transport_function to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_vport_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_vport_create._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_vport_create._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_vport_xport_function to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_recv_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_recv_frame._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_cpu_offline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_ulp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_ulp_init._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_ulp_init._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_ulp_init._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_ulp_init._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_hba_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_hba_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_hba_create.__key.189 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_hba_create.__key.191 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_hba_create._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_hba_create._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_hba_create._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_hba_create.__key.202 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_hba_create.__key.204 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_bind_pcidev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_bind_pcidev._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_ulp_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_ulp_exit._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_ulp_exit._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_ulp_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_ulp_start._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_fw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_fw_init._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_fw_init._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_indicate_netevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_indicate_netevent._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_indicate_netevent._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_indicate_netevent.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_indicate_netevent._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2fc_indicate_netevent._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.253 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.254 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.255 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.256 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.257 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.258 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2fc_get_paged_crc_eof(ptr noundef %skb, i32 noundef %tlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @bnx2fc_global_lock) #21
  %call = tail call i32 @fcoe_get_paged_crc_eof(ptr noundef %skb, i32 noundef %tlen, ptr noundef nonnull @bnx2fc_global) #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bnx2fc_global_lock) #21
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_get_paged_crc_eof(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2fc_get_link_state(ptr noundef %hba) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %phys_dev = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 3
  %0 = ptrtoint ptr %phys_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phys_dev, align 8
  %state = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %adapter_state1 = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba, i32 0, i32 9
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_set_bit(i32 noundef 2, ptr noundef %adapter_state1) #21
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %adapter_state1) #21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_mod_exit() #3 section ".exit.text" align 64 {
entry:
  %to_be_deleted = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_be_deleted) #21
  %0 = getelementptr inbounds %struct.list_head, ptr %to_be_deleted, i32 0, i32 1
  %1 = ptrtoint ptr %to_be_deleted to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %to_be_deleted, ptr %to_be_deleted, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %to_be_deleted, ptr %0, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @bnx2fc_dev_lock, i32 noundef 0) #21
  %3 = load volatile ptr, ptr @adapter_list, align 4
  %cmp.i.not.i = icmp eq ptr %3, @adapter_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %4 = ptrtoint ptr %to_be_deleted to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %to_be_deleted, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1), align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %to_be_deleted, ptr %prev3.i.i, align 4
  store ptr %3, ptr %to_be_deleted, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %6, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev6.i.i, align 4
  store volatile ptr @adapter_list, ptr @adapter_list, align 4
  store ptr @adapter_list, ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1), align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  store i32 0, ptr @adapter_count, align 4
  call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  %10 = ptrtoint ptr %to_be_deleted to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %to_be_deleted, align 4
  %cmp.not50 = icmp eq ptr %11, %to_be_deleted
  br i1 %cmp.not50, label %list_splice_init.exit.for.end_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %bnx2fc_hba_destroy.exit.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %hba.051 = phi ptr [ %next1.052, %bnx2fc_hba_destroy.exit.for.body_crit_edge ], [ %11, %list_splice_init.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %hba.051 to i32
  call void @__asan_load4_noabort(i32 %12)
  %next1.052 = load ptr, ptr %hba.051, align 8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %hba.051) #21
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %hba.051, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %hba.051 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hba.051, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %hba.051 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %hba.051, ptr %hba.051, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %hba.051, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %hba.051, ptr %prev.i3.i, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %hba.051) #24
  call void @bnx2fc_ulp_stop(ptr noundef %hba.051)
  %reg_with_cnic = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.051, i32 0, i32 4
  %call10 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %reg_with_cnic) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #23
  %cnic = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.051, i32 0, i32 1
  %21 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cnic, align 8
  %unregister_device = getelementptr inbounds %struct.cnic_dev, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %unregister_device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unregister_device, align 4
  %call12 = call i32 %24(ptr noundef %22, i32 noundef 2) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %cmd_mgr.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.051, i32 0, i32 5
  %25 = ptrtoint ptr %cmd_mgr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd_mgr.i, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i44

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

if.then.i44:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  call void @bnx2fc_cmd_mgr_free(ptr noundef nonnull %26) #21
  %27 = ptrtoint ptr %cmd_mgr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %cmd_mgr.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i44, %if.end.if.end.i_crit_edge
  %tgt_ofld_list.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.051, i32 0, i32 30
  %28 = ptrtoint ptr %tgt_ofld_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tgt_ofld_list.i, align 4
  call void @kfree(ptr noundef %29) #21
  %pcidev.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.051, i32 0, i32 2
  %30 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcidev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.end.i.bnx2fc_hba_destroy.exit_crit_edge, label %if.then.i.i

if.end.i.bnx2fc_hba_destroy.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_hba_destroy.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %chip_num.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.051, i32 0, i32 43
  %32 = ptrtoint ptr %chip_num.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %chip_num.i.i, align 8
  call void @pci_dev_put(ptr noundef nonnull %31) #21
  br label %bnx2fc_hba_destroy.exit

bnx2fc_hba_destroy.exit:                          ; preds = %if.then.i.i, %if.end.i.bnx2fc_hba_destroy.exit_crit_edge
  %33 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %pcidev.i.i, align 4
  call void @kfree(ptr noundef %hba.051) #21
  %cmp.not = icmp eq ptr %next1.052, %to_be_deleted
  br i1 %cmp.not, label %bnx2fc_hba_destroy.exit.for.end_crit_edge, label %bnx2fc_hba_destroy.exit.for.body_crit_edge

bnx2fc_hba_destroy.exit.for.body_crit_edge:       ; preds = %bnx2fc_hba_destroy.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

bnx2fc_hba_destroy.exit.for.end_crit_edge:        ; preds = %bnx2fc_hba_destroy.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %bnx2fc_hba_destroy.exit.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  %call18 = call i32 @cnic_unregister_driver(i32 noundef 2) #21
  call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 2)) #21
  %34 = load ptr, ptr @bnx2fc_global, align 4
  store ptr null, ptr @bnx2fc_global, align 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2), align 4
  %cmp.i.i53 = icmp eq ptr %35, getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2)
  %tobool.not.i454854 = icmp eq ptr %35, null
  %tobool.not.i4555 = or i1 %cmp.i.i53, %tobool.not.i454854
  br i1 %tobool.not.i4555, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %36 = phi ptr [ %44, %while.body.while.body_crit_edge ], [ %35, %for.end.while.body_crit_edge ]
  %37 = load i32, ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 1), align 4
  %sub.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i, ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 1), align 4
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %36, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %36, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %41, ptr %prev17.i.i, align 4
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %39, ptr %41, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %36, i32 noundef 0) #21
  %44 = load ptr, ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2), align 4
  %cmp.i.i = icmp eq ptr %44, getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2)
  %tobool.not.i4548 = icmp eq ptr %44, null
  %tobool.not.i45 = or i1 %cmp.i.i, %tobool.not.i4548
  br i1 %tobool.not.i45, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end.while.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 2)) #21
  %tobool25.not = icmp eq ptr %34, null
  br i1 %tobool25.not, label %while.end.if.end28_crit_edge, label %if.then26

while.end.if.end28_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end28

if.then26:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #23
  %call27 = call i32 @kthread_stop(ptr noundef nonnull %34) #21
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %while.end.if.end28_crit_edge
  %45 = load i32, ptr @bnx2fc_online_state, align 4
  call void @__cpuhp_remove_state(i32 noundef %45, i1 noundef zeroext true) #21
  %46 = load ptr, ptr @bnx2fc_wq, align 4
  call void @destroy_workqueue(ptr noundef %46) #21
  %47 = load ptr, ptr @bnx2fc_transport_template, align 4
  call void @fc_release_transport(ptr noundef %47) #21
  %48 = load ptr, ptr @bnx2fc_vport_xport_template, align 4
  call void @fc_release_transport(ptr noundef %48) #21
  store ptr null, ptr @bnx2fc_transport_template, align 4
  store ptr null, ptr @bnx2fc_vport_xport_template, align 4
  %call29 = call i32 @fcoe_transport_detach(ptr noundef nonnull @bnx2fc_transport) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_be_deleted) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_ulp_stop(ptr noundef %handle) #1 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #24
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2fc_dev_lock, i32 noundef 0) #21
  %flags = getelementptr inbounds %struct.bnx2fc_hba, ptr %handle, i32 0, i32 10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.exit_crit_edge, label %for.cond.preheader

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

for.cond.preheader:                               ; preds = %entry
  %interface.040 = load ptr, ptr @if_list, align 4
  %cmp.not41 = icmp eq ptr %interface.040, @if_list
  br i1 %cmp.not41, label %for.cond.preheader.do.body11_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body11_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body11

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %interface.042 = phi ptr [ %interface.0, %for.inc.for.body_crit_edge ], [ %interface.040, %for.cond.preheader.for.body_crit_edge ]
  %hba3 = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface.042, i32 0, i32 2
  %2 = ptrtoint ptr %hba3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba3, align 4
  %cmp4 = icmp eq ptr %3, %handle
  br i1 %cmp4, label %if.then5, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  tail call fastcc void @bnx2fc_stop(ptr noundef %interface.042)
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %interface.042 to i32
  call void @__asan_load4_noabort(i32 %4)
  %interface.0 = load ptr, ptr %interface.042, align 4
  %cmp.not = icmp eq ptr %interface.0, @if_list
  br i1 %cmp.not, label %for.inc.do.body11_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.inc.do.body11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body11

do.body11:                                        ; preds = %for.inc.do.body11_crit_edge, %for.cond.preheader.do.body11_crit_edge
  %num_ofld_sess = getelementptr inbounds %struct.bnx2fc_hba, ptr %handle, i32 0, i32 41
  %5 = ptrtoint ptr %num_ofld_sess to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_ofld_sess, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp12.not = icmp eq i32 %6, 0
  br i1 %cmp12.not, label %do.end25, label %do.body17, !prof !575

do.body17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/bnx2fc/bnx2fc_fcoe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1982, 0\0A.popsection", ""() #21, !srcloc !576
  unreachable

do.end25:                                         ; preds = %do.body11
  %hba_mutex = getelementptr inbounds %struct.bnx2fc_hba, ptr %handle, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %hba_mutex, i32 noundef 0) #21
  %adapter_state = getelementptr inbounds %struct.bnx2fc_hba, ptr %handle, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %adapter_state) #21
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %adapter_state) #21
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %adapter_state) #21
  tail call void @mutex_unlock(ptr noundef %hba_mutex) #21
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end25.exit_crit_edge, label %if.then.i

do.end25.exit_crit_edge:                          ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.then.i:                                        ; preds = %do.end25
  %call1.i = tail call i32 @bnx2fc_send_fw_fcoe_destroy_msg(ptr noundef %handle) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.then.i.if.end36.i_crit_edge

if.then.i.if.end36.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end36.i

do.body.i:                                        ; preds = %if.then.i
  %destroy_timer.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %handle, i32 0, i32 37
  tail call void @init_timer_key(ptr noundef %destroy_timer.i, ptr noundef nonnull @bnx2fc_destroy_timer, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @bnx2fc_fw_destroy.__key) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %7, 300
  %expires.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %handle, i32 0, i32 37, i32 1
  %8 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %expires.i, align 8
  tail call void @add_timer(ptr noundef %destroy_timer.i) #21
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1948) #21
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not.i = icmp eq i32 %11, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %do.body.i.if.end24.i_crit_edge

do.body.i.if.end24.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end24.i

if.then13.i:                                      ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #21
  %12 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #21
  %destroy_wait.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %handle, i32 0, i32 38
  %call1560.i = call i32 @prepare_to_wait_event(ptr noundef %destroy_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #21
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not61.i = icmp eq i32 %15, 0
  br i1 %tobool18.not61.i, label %if.then13.i.if.end.i_crit_edge, label %if.then13.i.for.end.i_crit_edge

if.then13.i.for.end.i_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

if.then13.i.if.end.i_crit_edge:                   ; preds = %if.then13.i
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then13.i.if.end.i_crit_edge
  %call1562.i = phi i32 [ %call15.i, %cleanup.i.if.end.i_crit_edge ], [ %call1560.i, %if.then13.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1562.i)
  %tobool20.not.i = icmp eq i32 %call1562.i, 0
  br i1 %tobool20.not.i, label %cleanup.i, label %if.end.i.__out.i_crit_edge

if.end.i.__out.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %__out.i

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #21
  %call15.i = call i32 @prepare_to_wait_event(ptr noundef %destroy_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #21
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 2
  %tobool18.not.i = icmp eq i32 %18, 0
  br i1 %tobool18.not.i, label %cleanup.i.if.end.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then13.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %destroy_wait.i, ptr noundef nonnull %__wq_entry.i) #21
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end.i.__out.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #21
  br label %if.end24.i

if.end24.i:                                       ; preds = %__out.i, %do.body.i.if.end24.i_crit_edge
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #21
  %19 = call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stack.i.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %27 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end24.i.if.then30.i_crit_edge, !prof !575

if.end24.i.if.then30.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then30.i

signal_pending.exit.i:                            ; preds = %if.end24.i
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %24, align 4
  %and1.i.i.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool29.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool29.not.i, label %signal_pending.exit.i.if.end33.i_crit_edge, label %signal_pending.exit.i.if.then30.i_crit_edge

signal_pending.exit.i.if.then30.i_crit_edge:      ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then30.i

signal_pending.exit.i.if.end33.i_crit_edge:       ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end33.i

if.then30.i:                                      ; preds = %signal_pending.exit.i.if.then30.i_crit_edge, %if.end24.i.if.then30.i_crit_edge
  call void @flush_signals(ptr noundef %22) #21
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %signal_pending.exit.i.if.end33.i_crit_edge
  %call35.i = call i32 @del_timer_sync(ptr noundef %destroy_timer.i) #21
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end33.i, %if.then.i.if.end36.i_crit_edge
  call void @bnx2fc_free_fw_resc(ptr noundef %handle) #21
  call void @bnx2fc_free_task_ctx(ptr noundef %handle) #21
  br label %exit

exit:                                             ; preds = %if.end36.i, %do.end25.exit_crit_edge, %entry.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cnic_unregister_driver(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_transport_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_mod_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @version) #24
  %call1 = tail call i32 @fcoe_transport_attach(ptr noundef nonnull @bnx2fc_transport) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  store volatile ptr @adapter_list, ptr @adapter_list, align 4
  store ptr @adapter_list, ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1), align 4
  store volatile ptr @if_list, ptr @if_list, align 4
  store ptr @if_list, ptr getelementptr inbounds (%struct.list_head, ptr @if_list, i32 0, i32 1), align 4
  tail call void @__mutex_init(ptr noundef nonnull @bnx2fc_dev_lock, ptr noundef nonnull @.str.135, ptr noundef nonnull @bnx2fc_mod_init.__key) #21
  store i32 0, ptr @adapter_count, align 4
  %call.i = tail call ptr @fc_attach_transport(ptr noundef nonnull @bnx2fc_transport_function) #21
  store ptr %call.i, ptr @bnx2fc_transport_template, align 4
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #24
  br label %detach_ft

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call ptr @fc_attach_transport(ptr noundef nonnull @bnx2fc_vport_xport_function) #21
  store ptr %call2.i, ptr @bnx2fc_vport_xport_template, align 4
  %cmp3.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.i, label %do.end6.i, label %if.end13

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #24
  %0 = load ptr, ptr @bnx2fc_transport_template, align 4
  tail call void @fc_release_transport(ptr noundef %0) #21
  store ptr null, ptr @bnx2fc_transport_template, align 4
  br label %detach_ft

if.end13:                                         ; preds = %if.end.i
  %call14 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0) #21
  store ptr %call14, ptr @bnx2fc_wq, align 4
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.release_bt_crit_edge, label %if.end17

if.end13.release_bt_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #23
  br label %release_bt

if.end17:                                         ; preds = %if.end13
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 2), ptr noundef nonnull @.str.100, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #21
  store ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2), ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2), align 4
  store ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2), ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 1), align 4
  %call18 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @bnx2fc_l2_rcv_thread, ptr noundef nonnull @bnx2fc_global, i32 noundef -1, ptr noundef nonnull @.str.136) #21
  %cmp.i63 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #23
  %1 = ptrtoint ptr %call18 to i32
  br label %free_wq

if.end22:                                         ; preds = %if.end17
  %call23 = tail call i32 @wake_up_process(ptr noundef %call18) #21
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 2)) #21
  store ptr %call18, ptr @bnx2fc_global, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 2)) #21
  %call2767 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2767, i32 %2)
  %cmp68 = icmp ult i32 %call2767, %2
  br i1 %cmp68, label %if.end22.do.body28_crit_edge, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

if.end22.do.body28_crit_edge:                     ; preds = %if.end22
  br label %do.body28

do.body28:                                        ; preds = %do.body28.do.body28_crit_edge, %if.end22.do.body28_crit_edge
  %call2769 = phi i32 [ %call27, %do.body28.do.body28_crit_edge ], [ %call2767, %if.end22.do.body28_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call2769
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, ptrtoint (ptr @bnx2fc_percpu to i32)
  %5 = inttoptr i32 %add to ptr
  %work_list = getelementptr inbounds %struct.bnx2fc_percpu_s, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %work_list, ptr %work_list, align 4
  %prev.i = getelementptr inbounds %struct.bnx2fc_percpu_s, ptr %5, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %work_list, ptr %prev.i, align 4
  %fp_work_lock = getelementptr inbounds %struct.bnx2fc_percpu_s, ptr %5, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %fp_work_lock, ptr noundef nonnull @.str.138, ptr noundef nonnull @bnx2fc_mod_init.__key.137, i16 noundef signext 3) #21
  %call27 = tail call i32 @cpumask_next(i32 noundef %call2769, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call27, %8
  br i1 %cmp, label %do.body28.do.body28_crit_edge, label %do.body28.for.end_crit_edge

do.body28.for.end_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

do.body28.do.body28_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body28

for.end:                                          ; preds = %do.body28.for.end_crit_edge, %if.end22.for.end_crit_edge
  %call.i64 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.139, i1 noundef zeroext true, ptr noundef nonnull @bnx2fc_cpu_online, ptr noundef nonnull @bnx2fc_cpu_offline, i1 noundef zeroext false) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp38 = icmp slt i32 %call.i64, 0
  br i1 %cmp38, label %stop_thread, label %if.end40

if.end40:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  store i32 %call.i64, ptr @bnx2fc_online_state, align 4
  %call41 = tail call i32 @cnic_register_driver(i32 noundef 2, ptr noundef nonnull @bnx2fc_cnic_cb) #21
  br label %cleanup

stop_thread:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  %call42 = tail call i32 @kthread_stop(ptr noundef %call18) #21
  br label %free_wq

free_wq:                                          ; preds = %stop_thread, %if.then20
  %rc.0 = phi i32 [ %1, %if.then20 ], [ %call.i64, %stop_thread ]
  %9 = load ptr, ptr @bnx2fc_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %9) #21
  br label %release_bt

release_bt:                                       ; preds = %free_wq, %if.end13.release_bt_crit_edge
  %rc.1 = phi i32 [ %rc.0, %free_wq ], [ -12, %if.end13.release_bt_crit_edge ]
  %10 = load ptr, ptr @bnx2fc_transport_template, align 4
  tail call void @fc_release_transport(ptr noundef %10) #21
  %11 = load ptr, ptr @bnx2fc_vport_xport_template, align 4
  tail call void @fc_release_transport(ptr noundef %11) #21
  store ptr null, ptr @bnx2fc_transport_template, align 4
  store ptr null, ptr @bnx2fc_vport_xport_template, align 4
  br label %detach_ft

detach_ft:                                        ; preds = %release_bt, %do.end6.i, %do.end.i
  %rc.2 = phi i32 [ %rc.1, %release_bt ], [ -19, %do.end.i ], [ -19, %do.end6.i ]
  %call43 = tail call i32 @fcoe_transport_detach(ptr noundef nonnull @bnx2fc_transport) #21
  br label %cleanup

cleanup:                                          ; preds = %detach_ft, %if.end40, %do.end4
  %retval.0 = phi i32 [ 0, %if.end40 ], [ %call1, %do.end4 ], [ %rc.2, %detach_ft ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2fc_stop(ptr noundef %interface) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %interface, i32 -1
  %hba = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface, i32 0, i32 2
  %0 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba, align 4
  %flags = getelementptr inbounds %struct.bnx2fc_hba, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %lp = getelementptr %struct.fcoe_ctlr, ptr %interface, i32 -1, i32 2
  %4 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lp, align 4
  %6 = load i32, ptr @bnx2fc_debug_level, align 4
  %and.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.bnx2fc_port_shutdown.exit_crit_edge, label %do.end.i, !prof !575

if.end.bnx2fc_port_shutdown.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_port_shutdown.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #24
  br label %bnx2fc_port_shutdown.exit

bnx2fc_port_shutdown.exit:                        ; preds = %do.end.i, %if.end.bnx2fc_port_shutdown.exit_crit_edge
  %call5.i = tail call i32 @fc_fabric_logoff(ptr noundef %5) #21
  %call6.i = tail call i32 @fc_lport_destroy(ptr noundef %5) #21
  %lp_mutex = getelementptr inbounds %struct.fc_lport, ptr %5, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #21
  %vports = getelementptr inbounds %struct.fc_lport, ptr %5, i32 0, i32 7
  %7 = ptrtoint ptr %vports to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn25 = load ptr, ptr %vports, align 4
  %cmp.not26 = icmp eq ptr %.pn25, %vports
  br i1 %cmp.not26, label %bnx2fc_port_shutdown.exit.for.end_crit_edge, label %bnx2fc_port_shutdown.exit.for.body_crit_edge

bnx2fc_port_shutdown.exit.for.body_crit_edge:     ; preds = %bnx2fc_port_shutdown.exit
  br label %for.body

bnx2fc_port_shutdown.exit.for.end_crit_edge:      ; preds = %bnx2fc_port_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %bnx2fc_port_shutdown.exit.for.body_crit_edge
  %.pn27 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn25, %bnx2fc_port_shutdown.exit.for.body_crit_edge ]
  %vport.0 = getelementptr i8, ptr %.pn27, i32 -852
  %8 = ptrtoint ptr %vport.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vport.0, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 51
  %10 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost_data, align 8
  %port_type = getelementptr inbounds %struct.fc_host_attrs, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %port_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %port_type, align 4
  %13 = ptrtoint ptr %.pn27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn27, align 4
  %cmp.not = icmp eq ptr %.pn, %vports
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %bnx2fc_port_shutdown.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #21
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %shost_data10 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 51
  %16 = ptrtoint ptr %shost_data10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shost_data10, align 8
  %port_type11 = getelementptr inbounds %struct.fc_host_attrs, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %port_type11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %port_type11, align 4
  %call12 = tail call i32 @fcoe_ctlr_link_down(ptr noundef %add.ptr) #21
  tail call void @fcoe_clean_pending_queue(ptr noundef %5) #21
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_ctlr_link_down(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_clean_pending_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_fabric_logoff(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_lport_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_send_fw_fcoe_destroy_msg(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_destroy_timer(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #24
  %flags = getelementptr i8, ptr %t, i32 -268
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #21
  %destroy_wait = getelementptr i8, ptr %t, i32 48
  tail call void @__wake_up(ptr noundef %destroy_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_free_fw_resc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_free_task_ctx(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_cmd_mgr_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_release_transport(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bnx2fc_match(ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2fc_dev_lock, i32 noundef 0) #21
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call1 = tail call ptr @vlan_dev_real_dev(ptr noundef %netdev) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phys_dev.0 = phi ptr [ %call1, %if.then ], [ %netdev, %entry.if.end_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %hba.0.in.i = phi ptr [ @adapter_list, %if.end ], [ %hba.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %hba.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %hba.0.i = load ptr, ptr %hba.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %hba.0.i, @adapter_list
  br i1 %cmp.not.i, label %bnx2fc_hba_lookup.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %phys_dev1.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %phys_dev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phys_dev1.i, align 8
  %cmp2.i = icmp eq ptr %4, %phys_dev.0
  br i1 %cmp2.i, label %bnx2fc_hba_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

bnx2fc_hba_lookup.exit.thread:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #24
  br label %if.end4

bnx2fc_hba_lookup.exit:                           ; preds = %for.body.i
  %tobool.not = icmp eq ptr %hba.0.i, null
  br i1 %tobool.not, label %bnx2fc_hba_lookup.exit.if.end4_crit_edge, label %bnx2fc_hba_lookup.exit.cleanup_crit_edge

bnx2fc_hba_lookup.exit.cleanup_crit_edge:         ; preds = %bnx2fc_hba_lookup.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

bnx2fc_hba_lookup.exit.if.end4_crit_edge:         ; preds = %bnx2fc_hba_lookup.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end4

if.end4:                                          ; preds = %bnx2fc_hba_lookup.exit.if.end4_crit_edge, %bnx2fc_hba_lookup.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %bnx2fc_hba_lookup.exit.cleanup_crit_edge
  %tobool.not9 = phi i1 [ false, %if.end4 ], [ true, %bnx2fc_hba_lookup.exit.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  ret i1 %tobool.not9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_ctlr_alloc(ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_bnx2fc_create(ptr noundef %netdev, i32 noundef 2, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_create(ptr noundef %netdev, i32 noundef %fip_mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_bnx2fc_create(ptr noundef %netdev, i32 noundef %fip_mode, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_destroy(ptr noundef readnone %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #21
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2fc_dev_lock, i32 noundef 0) #21
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %interface.0.in.i = phi ptr [ @if_list, %entry ], [ %interface.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %interface.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %interface.0.i = load ptr, ptr %interface.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %interface.0.i, @if_list
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %netdev1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %netdev
  br i1 %cmp2.i, label %bnx2fc_interface_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

bnx2fc_interface_lookup.exit:                     ; preds = %for.body.i
  %tobool.not = icmp eq ptr %interface.0.i, null
  br i1 %tobool.not, label %bnx2fc_interface_lookup.exit.if.then_crit_edge, label %lor.lhs.false

bnx2fc_interface_lookup.exit.if.then_crit_edge:   ; preds = %bnx2fc_interface_lookup.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

lor.lhs.false:                                    ; preds = %bnx2fc_interface_lookup.exit
  %lp = getelementptr %struct.fcoe_ctlr, ptr %interface.0.i, i32 -1, i32 2
  %3 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lp, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %bnx2fc_interface_lookup.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #24
  br label %netdev_err

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  %timer_work_queue3 = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface.0.i, i32 0, i32 6
  %5 = ptrtoint ptr %timer_work_queue3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timer_work_queue3, align 4
  tail call fastcc void @__bnx2fc_destroy(ptr noundef nonnull %interface.0.i)
  tail call void @destroy_workqueue(ptr noundef %6) #21
  br label %netdev_err

netdev_err:                                       ; preds = %if.end, %if.then
  %rc.0 = phi i32 [ 0, %if.end ], [ -19, %if.then ]
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  tail call void @rtnl_unlock() #21
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_enable(ptr noundef readnone %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #21
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2fc_dev_lock, i32 noundef 0) #21
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %interface.0.in.i = phi ptr [ @if_list, %entry ], [ %interface.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %interface.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %interface.0.i = load ptr, ptr %interface.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %interface.0.i, @if_list
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %netdev1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %netdev
  br i1 %cmp2.i, label %bnx2fc_interface_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

bnx2fc_interface_lookup.exit:                     ; preds = %for.body.i
  %tobool.not = icmp eq ptr %interface.0.i, null
  br i1 %tobool.not, label %bnx2fc_interface_lookup.exit.if.then_crit_edge, label %if.else

bnx2fc_interface_lookup.exit.if.then_crit_edge:   ; preds = %bnx2fc_interface_lookup.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

if.then:                                          ; preds = %bnx2fc_interface_lookup.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #24
  br label %if.end

if.else:                                          ; preds = %bnx2fc_interface_lookup.exit
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %interface.0.i, i32 -1
  %call2 = tail call fastcc i32 @__bnx2fc_enable(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rc.0 = phi i32 [ %call2, %if.else ], [ -19, %if.then ]
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  tail call void @rtnl_unlock() #21
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_disable(ptr noundef readnone %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #21
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2fc_dev_lock, i32 noundef 0) #21
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %interface.0.in.i = phi ptr [ @if_list, %entry ], [ %interface.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %interface.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %interface.0.i = load ptr, ptr %interface.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %interface.0.i, @if_list
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %netdev1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %netdev
  br i1 %cmp2.i, label %bnx2fc_interface_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

bnx2fc_interface_lookup.exit:                     ; preds = %for.body.i
  %tobool.not = icmp eq ptr %interface.0.i, null
  br i1 %tobool.not, label %bnx2fc_interface_lookup.exit.if.then_crit_edge, label %if.else

bnx2fc_interface_lookup.exit.if.then_crit_edge:   ; preds = %bnx2fc_interface_lookup.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

if.then:                                          ; preds = %bnx2fc_interface_lookup.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #24
  br label %if.end

if.else:                                          ; preds = %bnx2fc_interface_lookup.exit
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %interface.0.i, i32 -1
  %enabled.i = getelementptr %struct.fcoe_ctlr, ptr %interface.0.i, i32 0, i32 12, i32 3, i32 1
  %3 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled.i, align 4, !range !577
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.then.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then.i:                                        ; preds = %if.else
  %lp.i = getelementptr %struct.fcoe_ctlr, ptr %interface.0.i, i32 -1, i32 2
  %5 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lp.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #24
  br label %if.end

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %7 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %enabled.i, align 4
  %call5.i = tail call i32 @fcoe_ctlr_link_down(ptr noundef %add.ptr) #21
  %8 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lp.i, align 4
  tail call void @fcoe_clean_pending_queue(ptr noundef %9) #21
  br label %if.end

if.end:                                           ; preds = %if.else.i, %do.end.i, %if.else.if.end_crit_edge, %if.then
  %rc.0 = phi i32 [ -19, %if.then ], [ -19, %do.end.i ], [ 0, %if.else.i ], [ 0, %if.else.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  tail call void @rtnl_unlock() #21
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vlan_dev_real_dev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_bnx2fc_create(ptr noundef %netdev, i32 noundef %fip_mode, i32 noundef %link_state) unnamed_addr #1 align 64 {
entry:
  %drvinfo = alloca %struct.ethtool_drvinfo, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 196, ptr nonnull %drvinfo) #21
  %0 = call ptr @memset(ptr %drvinfo, i32 255, i32 196)
  %1 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !575

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #24
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fip_mode)
  %cmp.not = icmp eq i32 %fip_mode, 2
  br i1 %cmp.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #23
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #24
  br label %cleanup

if.end12:                                         ; preds = %do.end5
  tail call void @rtnl_lock() #21
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2fc_dev_lock, i32 noundef 0) #21
  %call13 = tail call zeroext i1 @try_module_get(ptr noundef null) #21
  br i1 %call13, label %if.end15, label %if.end12.mod_err_crit_edge

if.end12.mod_err_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #23
  br label %mod_err

if.end15:                                         ; preds = %if.end12
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  %call18 = tail call ptr @vlan_dev_real_dev(ptr noundef %netdev) #21
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %phys_dev.0 = phi ptr [ %call18, %if.then17 ], [ %netdev, %if.end15.if.end19_crit_edge ]
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %phys_dev.0, i32 0, i32 44
  %4 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ethtool_ops, align 16
  %tobool20.not = icmp eq ptr %5, null
  br i1 %tobool20.not, label %if.end19.do.end37_crit_edge, label %land.lhs.true

if.end19.do.end37_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end37

land.lhs.true:                                    ; preds = %if.end19
  %get_drvinfo = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %get_drvinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_drvinfo, align 4
  %tobool22.not = icmp eq ptr %7, null
  br i1 %tobool22.not, label %land.lhs.true.do.end37_crit_edge, label %if.then23

land.lhs.true.do.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end37

if.then23:                                        ; preds = %land.lhs.true
  %8 = call ptr @memset(ptr %drvinfo, i32 0, i32 196)
  %9 = ptrtoint ptr %get_drvinfo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_drvinfo, align 4
  call void %10(ptr noundef %phys_dev.0, ptr noundef nonnull %drvinfo) #21
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(5) %driver, ptr noundef nonnull dereferenceable(5) @.str.23, i32 5) #26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool27.not = icmp eq i32 %bcmp, 0
  br i1 %tobool27.not, label %if.then23.for.cond.i_crit_edge, label %do.end31

if.then23.for.cond.i_crit_edge:                   ; preds = %if.then23
  br label %for.cond.i

do.end31:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #23
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #24
  br label %netdev_err

do.end37:                                         ; preds = %land.lhs.true.do.end37_crit_edge, %if.end19.do.end37_crit_edge
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #24
  br label %netdev_err

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then23.for.cond.i_crit_edge
  %hba.0.in.i = phi ptr [ %hba.0.i, %for.body.i.for.cond.i_crit_edge ], [ @adapter_list, %if.then23.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %hba.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %hba.0.i = load ptr, ptr %hba.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %hba.0.i, @adapter_list
  br i1 %cmp.not.i, label %bnx2fc_hba_lookup.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %phys_dev1.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.0.i, i32 0, i32 3
  %12 = ptrtoint ptr %phys_dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phys_dev1.i, align 8
  %cmp2.i = icmp eq ptr %13, %phys_dev.0
  br i1 %cmp2.i, label %bnx2fc_hba_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

bnx2fc_hba_lookup.exit.thread:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #24
  br label %if.then43

bnx2fc_hba_lookup.exit:                           ; preds = %for.body.i
  %tobool42.not = icmp eq ptr %hba.0.i, null
  br i1 %tobool42.not, label %bnx2fc_hba_lookup.exit.if.then43_crit_edge, label %bnx2fc_hba_lookup.exit.for.cond.i158_crit_edge

bnx2fc_hba_lookup.exit.for.cond.i158_crit_edge:   ; preds = %bnx2fc_hba_lookup.exit
  br label %for.cond.i158

bnx2fc_hba_lookup.exit.if.then43_crit_edge:       ; preds = %bnx2fc_hba_lookup.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then43

if.then43:                                        ; preds = %bnx2fc_hba_lookup.exit.if.then43_crit_edge, %bnx2fc_hba_lookup.exit.thread
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #24
  br label %netdev_err

for.cond.i158:                                    ; preds = %for.body.i160.for.cond.i158_crit_edge, %bnx2fc_hba_lookup.exit.for.cond.i158_crit_edge
  %interface.0.in.i = phi ptr [ %interface.0.i, %for.body.i160.for.cond.i158_crit_edge ], [ @if_list, %bnx2fc_hba_lookup.exit.for.cond.i158_crit_edge ]
  %14 = ptrtoint ptr %interface.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %interface.0.i = load ptr, ptr %interface.0.in.i, align 4
  %cmp.not.i157 = icmp eq ptr %interface.0.i, @if_list
  br i1 %cmp.not.i157, label %for.cond.i158.if.end53_crit_edge, label %for.body.i160

for.cond.i158.if.end53_crit_edge:                 ; preds = %for.cond.i158
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end53

for.body.i160:                                    ; preds = %for.cond.i158
  %netdev1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev1.i, align 4
  %cmp2.i159 = icmp eq ptr %16, %netdev
  br i1 %cmp2.i159, label %bnx2fc_interface_lookup.exit, label %for.body.i160.for.cond.i158_crit_edge

for.body.i160.for.cond.i158_crit_edge:            ; preds = %for.body.i160
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i158

bnx2fc_interface_lookup.exit:                     ; preds = %for.body.i160
  %tobool51.not = icmp eq ptr %interface.0.i, null
  br i1 %tobool51.not, label %bnx2fc_interface_lookup.exit.if.end53_crit_edge, label %bnx2fc_interface_lookup.exit.netdev_err_crit_edge

bnx2fc_interface_lookup.exit.netdev_err_crit_edge: ; preds = %bnx2fc_interface_lookup.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %netdev_err

bnx2fc_interface_lookup.exit.if.end53_crit_edge:  ; preds = %bnx2fc_interface_lookup.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end53

if.end53:                                         ; preds = %bnx2fc_interface_lookup.exit.if.end53_crit_edge, %for.cond.i158.if.end53_crit_edge
  %dev.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  %call.i162 = call ptr @fcoe_ctlr_device_add(ptr noundef %dev.i, ptr noundef nonnull @bnx2fc_fcoe_sysfs_templ, i32 noundef 556) #21
  %tobool.not.i = icmp eq ptr %call.i162, null
  br i1 %tobool.not.i, label %do.end.i163, label %if.end.i

do.end.i163:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #23
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #24
  br label %do.end59

if.end.i:                                         ; preds = %if.end53
  %add.ptr.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1
  %cdev.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %cdev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i162, ptr %cdev.i, align 4
  %add.ptr.i1.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 4, i32 3
  %tobool.not.i.i = icmp eq ptr %netdev, null
  br i1 %tobool.not.i.i, label %if.end.i.dev_hold.exit.i_crit_edge, label %do.body1.i.i

if.end.i.dev_hold.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %if.end.i
  %18 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !578
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 118
  %19 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %27, %21
  %28 = inttoptr i32 %add.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add13.i.i = add i32 %30, 1
  store i32 %add13.i.i, ptr %28, align 4
  %31 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !579
  %and.i.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !580

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @warn_bogus_irq_restore() #21
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #21, !srcloc !581
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %if.end.i.dev_hold.exit.i_crit_edge
  %kref.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %add.ptr.i1.i, i32 0, i32 7
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #21
  %32 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1, ptr %kref.i, align 4
  %hba4.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 4
  %33 = ptrtoint ptr %hba4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %hba.0.i, ptr %hba4.i, align 4
  %netdev5.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 4, i32 1
  %34 = ptrtoint ptr %netdev5.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %netdev, ptr %netdev5.i, align 4
  call void @fcoe_ctlr_init(ptr noundef %add.ptr.i.i, i32 noundef 2) #21
  %send.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 10, i32 1, i32 4
  %35 = ptrtoint ptr %send.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @bnx2fc_fip_send, ptr %send.i, align 4
  %update_mac.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 10, i32 1, i32 4, i32 1
  %36 = ptrtoint ptr %update_mac.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @bnx2fc_update_src_mac, ptr %update_mac.i, align 4
  %get_src_addr.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 10, i32 1, i32 4, i32 1, i32 1
  %37 = ptrtoint ptr %get_src_addr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @bnx2fc_get_src_mac, ptr %get_src_addr.i, align 4
  %if_flags.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 4, i32 7
  call void @_set_bit(i32 noundef 0, ptr noundef %if_flags.i) #21
  %38 = ptrtoint ptr %netdev5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev5.i, align 4
  %40 = ptrtoint ptr %hba4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hba4.i, align 4
  %phys_dev.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %phys_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phys_dev.i.i, align 8
  %44 = call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %47, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !582
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #21
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #21
  br i1 %call.i.i.i, label %dev_hold.exit.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

dev_hold.exit.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %dev_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %dev_hold.exit.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 696, ptr noundef nonnull @.str.68) #21
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %dev_hold.exit.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i = call i32 @rcu_read_lock_any_held() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i2.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i2.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b128.i.i = load i1, ptr @bnx2fc_interface_setup.__warned, align 1
  br i1 %.b128.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @bnx2fc_interface_setup.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1251, ptr noundef nonnull @.str.58) #21
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge
  %dev_addrs.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 67
  %48 = ptrtoint ptr %dev_addrs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %ha.0138.i.i = load volatile ptr, ptr %dev_addrs.i.i, align 4
  %cmp.not139.i.i = icmp eq ptr %ha.0138.i.i, %dev_addrs.i.i
  br i1 %cmp.not139.i.i, label %do.end.i.i.for.end.i.i_crit_edge, label %do.body14.lr.ph.i.i

do.end.i.i.for.end.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i.i

do.body14.lr.ph.i.i:                              ; preds = %do.end.i.i
  %ctl_src_addr.i.i = getelementptr %struct.fcoe_ctlr, ptr %add.ptr.i1.i, i32 -1, i32 28
  br label %do.body14.i.i

do.body14.i.i:                                    ; preds = %for.inc.i.i.do.body14.i.i_crit_edge, %do.body14.lr.ph.i.i
  %ha.0141.i.i = phi ptr [ %ha.0138.i.i, %do.body14.lr.ph.i.i ], [ %ha.0.i.i, %for.inc.i.i.do.body14.i.i_crit_edge ]
  %sel_san_mac.0140.i.i = phi i32 [ 0, %do.body14.lr.ph.i.i ], [ %sel_san_mac.1.i.i, %for.inc.i.i.do.body14.i.i_crit_edge ]
  %49 = load i32, ptr @bnx2fc_debug_level, align 4
  %and.i.i = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool15.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool15.not.i.i, label %do.body14.i.i.do.end29.i.i_crit_edge, label %do.end21.i.i, !prof !575

do.body14.i.i.do.end29.i.i_crit_edge:             ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end29.i.i

do.end21.i.i:                                     ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %type.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0141.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %type.i.i, align 4
  %conv.i.i = zext i8 %51 to i32
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %conv.i.i) #24
  br label %do.end29.i.i

do.end29.i.i:                                     ; preds = %do.end21.i.i, %do.body14.i.i.do.end29.i.i_crit_edge
  %addr.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0141.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %addr.i.i, align 4
  %conv31.i.i = zext i8 %53 to i32
  %arrayidx33.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0141.i.i, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx33.i.i, align 1
  %conv34.i.i = zext i8 %55 to i32
  %arrayidx36.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0141.i.i, i32 0, i32 2, i32 2
  %56 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx36.i.i, align 2
  %conv37.i.i = zext i8 %57 to i32
  %arrayidx39.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0141.i.i, i32 0, i32 2, i32 3
  %58 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx39.i.i, align 1
  %conv40.i.i = zext i8 %59 to i32
  %arrayidx42.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0141.i.i, i32 0, i32 2, i32 4
  %60 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx42.i.i, align 4
  %conv43.i.i = zext i8 %61 to i32
  %arrayidx45.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0141.i.i, i32 0, i32 2, i32 5
  %62 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx45.i.i, align 1
  %conv46.i.i = zext i8 %63 to i32
  %call47.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %conv31.i.i, i32 noundef %conv34.i.i, i32 noundef %conv37.i.i, i32 noundef %conv40.i.i, i32 noundef %conv43.i.i, i32 noundef %conv46.i.i) #24
  %type48.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0141.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %type48.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %type48.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %65)
  %cmp50.i.i = icmp eq i8 %65, 2
  br i1 %cmp50.i.i, label %land.lhs.true52.i.i, label %do.end29.i.i.for.inc.i.i_crit_edge

do.end29.i.i.for.inc.i.i_crit_edge:               ; preds = %do.end29.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

land.lhs.true52.i.i:                              ; preds = %do.end29.i.i
  %66 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i.i, align 4
  %68 = and i32 %67, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.i.not.i.i.i = icmp eq i32 %68, 0
  br i1 %tobool.i.not.i.i.i, label %is_valid_ether_addr.exit.i.i, label %land.lhs.true52.i.i.for.inc.i.i_crit_edge

land.lhs.true52.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

is_valid_ether_addr.exit.i.i:                     ; preds = %land.lhs.true52.i.i
  %69 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx42.i.i, align 2
  %conv.i.i.i.i = zext i16 %70 to i32
  %or.i.i.i.i = or i32 %67, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.not.i.i, label %is_valid_ether_addr.exit.i.i.for.inc.i.i_crit_edge, label %if.then56.i.i

is_valid_ether_addr.exit.i.i.for.inc.i.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

if.then56.i.i:                                    ; preds = %is_valid_ether_addr.exit.i.i
  %71 = call ptr @memcpy(ptr %ctl_src_addr.i.i, ptr %addr.i.i, i32 6)
  %72 = load i32, ptr @bnx2fc_debug_level, align 4
  %and61.i.i = and i32 %72, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i)
  %tobool62.not.i.i = icmp eq i32 %and61.i.i, 0
  br i1 %tobool62.not.i.i, label %if.then56.i.i.for.inc.i.i_crit_edge, label %do.end72.i.i, !prof !575

if.then56.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

do.end72.i.i:                                     ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %call74.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #24
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end72.i.i, %if.then56.i.i.for.inc.i.i_crit_edge, %is_valid_ether_addr.exit.i.i.for.inc.i.i_crit_edge, %land.lhs.true52.i.i.for.inc.i.i_crit_edge, %do.end29.i.i.for.inc.i.i_crit_edge
  %sel_san_mac.1.i.i = phi i32 [ 1, %do.end72.i.i ], [ 1, %if.then56.i.i.for.inc.i.i_crit_edge ], [ %sel_san_mac.0140.i.i, %is_valid_ether_addr.exit.i.i.for.inc.i.i_crit_edge ], [ %sel_san_mac.0140.i.i, %do.end29.i.i.for.inc.i.i_crit_edge ], [ %sel_san_mac.0140.i.i, %land.lhs.true52.i.i.for.inc.i.i_crit_edge ]
  %73 = ptrtoint ptr %ha.0141.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %ha.0.i.i = load volatile ptr, ptr %ha.0141.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %ha.0.i.i, %dev_addrs.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.do.body14.i.i_crit_edge

for.inc.i.i.do.body14.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body14.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %do.end.i.i.for.end.i.i_crit_edge
  %sel_san_mac.0.lcssa.i.i = phi i32 [ 0, %do.end.i.i.for.end.i.i_crit_edge ], [ %sel_san_mac.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %call.i129.i.i = call zeroext i1 @rcu_is_watching() #21
  br i1 %call.i129.i.i, label %for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i132.i.i

for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i132.i.i:                           ; preds = %for.end.i.i
  %call1.i130.i.i = call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i130.i.i)
  %tobool.not.i131.i.i = icmp eq i32 %call1.i130.i.i, 0
  br i1 %tobool.not.i131.i.i, label %land.lhs.true.i132.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i134.i.i

land.lhs.true.i132.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i132.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i134.i.i:                          ; preds = %land.lhs.true.i132.i.i
  %.b4.i133.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i133.i.i, label %land.lhs.true2.i134.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i135.i.i

land.lhs.true2.i134.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i134.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_unlock.exit.i.i

if.then.i135.i.i:                                 ; preds = %land.lhs.true2.i134.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 724, ptr noundef nonnull @.str.69) #21
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i135.i.i, %land.lhs.true2.i134.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i132.i.i.rcu_read_unlock.exit.i.i_crit_edge, %for.end.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !583
  %74 = call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i.i.i136.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i136.i.i to ptr
  %preempt_count.i.i.i.i137.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i.i.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i.i.i137.i.i, align 4
  %sub.i.i.i.i.i = add i32 %77, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i137.i.i, align 4
  call void @rcu_read_unlock_strict() #21
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sel_san_mac.0.lcssa.i.i)
  %tobool88.not.i.i = icmp eq i32 %sel_san_mac.0.lcssa.i.i, 0
  br i1 %tobool88.not.i.i, label %if.end9.i, label %bnx2fc_interface_create.exit

if.end9.i:                                        ; preds = %rcu_read_unlock.exit.i.i
  call void @fcoe_ctlr_destroy(ptr noundef %add.ptr.i.i) #21
  br i1 %tobool.not.i.i, label %if.end9.i.dev_put.exit.i_crit_edge, label %do.body1.i12.i

if.end9.i.dev_put.exit.i_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dev_put.exit.i

do.body1.i12.i:                                   ; preds = %if.end9.i
  %78 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !578
  %pcpu_refcnt.i4.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 118
  %79 = ptrtoint ptr %pcpu_refcnt.i4.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pcpu_refcnt.i4.i, align 4
  %81 = ptrtoint ptr %80 to i32
  %82 = call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i5.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i5.i to ptr
  %cpu.i6.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %cpu.i6.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cpu.i6.i, align 4
  %arrayidx.i7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i7.i, align 4
  %add.i8.i = add i32 %87, %81
  %88 = inttoptr i32 %add.i8.i to ptr
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %add13.i9.i = add i32 %90, -1
  store i32 %add13.i9.i, ptr %88, align 4
  %91 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !579
  %and.i.i.i10.i = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i10.i)
  %tobool24.not.i11.i = icmp eq i32 %and.i.i.i10.i, 0
  br i1 %tobool24.not.i11.i, label %if.then28.i13.i, label %do.body1.i12.i.do.end30.i14.i_crit_edge, !prof !580

do.body1.i12.i.do.end30.i14.i_crit_edge:          ; preds = %do.body1.i12.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end30.i14.i

if.then28.i13.i:                                  ; preds = %do.body1.i12.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @warn_bogus_irq_restore() #21
  br label %do.end30.i14.i

do.end30.i14.i:                                   ; preds = %if.then28.i13.i, %do.body1.i12.i.do.end30.i14.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %78) #21, !srcloc !581
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %do.end30.i14.i, %if.end9.i.dev_put.exit.i_crit_edge
  call void @fcoe_ctlr_device_delete(ptr noundef nonnull %call.i162) #21
  br label %do.end59

bnx2fc_interface_create.exit:                     ; preds = %rcu_read_unlock.exit.i.i
  %fip_packet_type.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 6
  %func.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 5, i32 1, i32 1, i32 1
  %92 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @bnx2fc_fip_recv, ptr %func.i.i, align 4
  %93 = ptrtoint ptr %fip_packet_type.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -30444, ptr %fip_packet_type.i.i, align 4
  %dev.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 7
  %94 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %39, ptr %dev.i.i, align 4
  call void @dev_add_pack(ptr noundef %fip_packet_type.i.i) #21
  %fcoe_packet_type.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 5
  %func95.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 2
  %95 = ptrtoint ptr %func95.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @bnx2fc_rcv, ptr %func95.i.i, align 4
  %96 = ptrtoint ptr %fcoe_packet_type.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 -30458, ptr %fcoe_packet_type.i.i, align 4
  %dev99.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 5, i32 1
  %97 = ptrtoint ptr %dev99.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %39, ptr %dev99.i.i, align 4
  call void @dev_add_pack(ptr noundef %fcoe_packet_type.i.i) #21
  %tobool55.not = icmp eq ptr %add.ptr.i1.i, null
  br i1 %tobool55.not, label %bnx2fc_interface_create.exit.do.end59_crit_edge, label %if.end62

bnx2fc_interface_create.exit.do.end59_crit_edge:  ; preds = %bnx2fc_interface_create.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end59

do.end59:                                         ; preds = %bnx2fc_interface_create.exit.do.end59_crit_edge, %dev_put.exit.i, %do.end.i163
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #24
  br label %netdev_err

if.end62:                                         ; preds = %bnx2fc_interface_create.exit
  %98 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %priv_flags.i, align 16
  %and.i166 = and i64 %99, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i166)
  %tobool.i167.not = icmp eq i64 %and.i166, 0
  br i1 %tobool.i167.not, label %if.end62.if.end66_crit_edge, label %if.then64

if.end62.if.end66_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end66

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #23
  %call65 = call zeroext i16 @vlan_dev_vlan_id(ptr noundef %netdev) #21
  %conv = zext i16 %call65 to i32
  %vlan_enabled = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 8, i32 1
  %100 = ptrtoint ptr %vlan_enabled to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %vlan_enabled, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end62.if.end66_crit_edge
  %vlan_id.0 = phi i32 [ %conv, %if.then64 ], [ 0, %if.end62.if.end66_crit_edge ]
  %101 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cdev.i, align 4
  %vlan_id68 = getelementptr inbounds %struct.bnx2fc_interface, ptr %add.ptr.i1.i, i32 0, i32 9
  %103 = ptrtoint ptr %vlan_id68 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %vlan_id.0, ptr %vlan_id68, align 4
  %tm_timeout = getelementptr inbounds %struct.bnx2fc_interface, ptr %add.ptr.i1.i, i32 0, i32 11
  %104 = ptrtoint ptr %tm_timeout to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 60, ptr %tm_timeout, align 1
  %call69 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.36, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.37) #21
  %timer_work_queue = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 8, i32 0, i32 1
  %105 = ptrtoint ptr %timer_work_queue to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call69, ptr %timer_work_queue, align 4
  %tobool71.not = icmp eq ptr %call69, null
  br i1 %tobool71.not, label %do.end75, label %if.end78

do.end75:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #23
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #24
  br label %ifput_err

if.end78:                                         ; preds = %if.end66
  %dev = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %102, i32 0, i32 1
  %call79 = call fastcc ptr @bnx2fc_if_create(ptr noundef nonnull %add.ptr.i1.i, ptr noundef %dev, i32 noundef 0)
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %do.end84, label %if.end88

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #23
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %netdev) #24
  %106 = ptrtoint ptr %timer_work_queue to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %timer_work_queue, align 4
  call void @destroy_workqueue(ptr noundef %107) #21
  br label %ifput_err

if.end88:                                         ; preds = %if.end78
  %108 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @if_list, i32 0, i32 1), align 4
  %call.i.i168 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %add.ptr.i1.i, ptr noundef %108, ptr noundef nonnull @if_list) #21
  br i1 %call.i.i168, label %if.end.i.i, label %if.end88.list_add_tail.exit_crit_edge

if.end88.list_add_tail.exit_crit_edge:            ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #23
  store ptr %add.ptr.i1.i, ptr getelementptr inbounds (%struct.list_head, ptr @if_list, i32 0, i32 1), align 4
  %109 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @if_list, ptr %add.ptr.i1.i, align 4
  %prev3.i.i = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 4, i32 6
  %110 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %108, ptr %prev3.i.i, align 4
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %add.ptr.i1.i, ptr %108, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end88.list_add_tail.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %112 = load volatile i32, ptr @jiffies, align 128
  %boot_time = getelementptr inbounds %struct.fc_lport, ptr %call79, i32 0, i32 14
  %113 = ptrtoint ptr %boot_time to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %boot_time, align 4
  %lp = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1
  %114 = ptrtoint ptr %lp to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call79, ptr %lp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %link_state)
  %cmp89 = icmp eq i32 %link_state, 1
  %enabled = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %102, i32 0, i32 11
  br i1 %cmp89, label %if.then91, label %if.else92

if.then91:                                        ; preds = %list_add_tail.exit
  %115 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %enabled, align 8
  %add.ptr.i.i169 = getelementptr %struct.fc_lport, ptr %call79, i32 1
  %116 = ptrtoint ptr %add.ptr.i.i169 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %add.ptr.i.i169, align 4
  %hba1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %hba1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hba1.i, align 4
  %phys_dev.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %phys_dev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %phys_dev.i, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %121, i32 0, i32 14
  %122 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags.i, align 8
  %and.i170 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i170)
  %tobool.not.i171 = icmp eq i32 %and.i170, 0
  br i1 %tobool.not.i171, label %if.then91.if.then105_crit_edge, label %land.lhs.true.i

if.then91.if.then105_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then105

land.lhs.true.i:                                  ; preds = %if.then91
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %121, i32 0, i32 6
  %124 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %state.i.i, align 4
  %126 = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.i.i172 = icmp eq i32 %126, 0
  br i1 %tobool.not.i.i172, label %if.then100, label %land.lhs.true.i.if.then105_crit_edge

land.lhs.true.i.if.then105_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then105

if.else92:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #23
  %127 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %enabled, align 8
  call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef nonnull %call79, ptr noundef nonnull @.str.44) #21
  call fastcc void @bnx2fc_start_disc(ptr noundef nonnull %add.ptr.i1.i)
  br label %if.end107

if.then100:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  %adapter_state.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %119, i32 0, i32 9
  call void @_clear_bit(i32 noundef 2, ptr noundef %adapter_state.i) #21
  call void @fcoe_ctlr_link_up(ptr noundef %add.ptr.i.i) #21
  %128 = ptrtoint ptr %call79 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %call79, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %129, i32 0, i32 51
  %130 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %shost_data, align 8
  %port_type = getelementptr inbounds %struct.fc_host_attrs, ptr %131, i32 0, i32 23
  %132 = ptrtoint ptr %port_type to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 3, ptr %port_type, align 4
  %133 = ptrtoint ptr %hba4.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hba4.i, align 4
  br label %if.then105

if.then105:                                       ; preds = %if.then100, %land.lhs.true.i.if.then105_crit_edge, %if.then91.if.then105_crit_edge
  %.sink191 = phi ptr [ %134, %if.then100 ], [ %119, %land.lhs.true.i.if.then105_crit_edge ], [ %119, %if.then91.if.then105_crit_edge ]
  %.sink = phi i32 [ 3, %if.then100 ], [ 2, %land.lhs.true.i.if.then105_crit_edge ], [ 2, %if.then91.if.then105_crit_edge ]
  %adapter_state3.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %.sink191, i32 0, i32 9
  call void @_set_bit(i32 noundef %.sink, ptr noundef %adapter_state3.i) #21
  call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef nonnull %call79, ptr noundef nonnull @.str.44) #21
  call fastcc void @bnx2fc_start_disc(ptr noundef nonnull %add.ptr.i1.i)
  %enabled106 = getelementptr %struct.fcoe_ctlr_device, ptr %call.i162, i32 1, i32 1, i32 12, i32 8, i32 2
  %135 = ptrtoint ptr %enabled106 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %enabled106, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.else92
  call fastcc void @bnx2fc_interface_put(ptr noundef nonnull %add.ptr.i1.i)
  call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  call void @rtnl_unlock() #21
  br label %cleanup

ifput_err:                                        ; preds = %do.end84, %do.end75
  call fastcc void @bnx2fc_net_cleanup(ptr noundef nonnull %add.ptr.i1.i)
  call fastcc void @bnx2fc_interface_put(ptr noundef nonnull %add.ptr.i1.i)
  br label %mod_err

netdev_err:                                       ; preds = %do.end59, %bnx2fc_interface_lookup.exit.netdev_err_crit_edge, %if.then43, %do.end37, %do.end31
  %rc.1 = phi i32 [ -22, %do.end31 ], [ -12, %do.end59 ], [ -19, %if.then43 ], [ -22, %do.end37 ], [ -17, %bnx2fc_interface_lookup.exit.netdev_err_crit_edge ]
  call void @module_put(ptr noundef null) #21
  br label %mod_err

mod_err:                                          ; preds = %netdev_err, %ifput_err, %if.end12.mod_err_crit_edge
  %rc.2 = phi i32 [ %rc.1, %netdev_err ], [ -22, %ifput_err ], [ -22, %if.end12.mod_err_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  call void @rtnl_unlock() #21
  br label %cleanup

cleanup:                                          ; preds = %mod_err, %if.end107, %do.end9
  %retval.0 = phi i32 [ -5, %do.end9 ], [ %rc.2, %mod_err ], [ 0, %if.end107 ]
  call void @llvm.lifetime.end.p0(i64 196, ptr nonnull %drvinfo) #21
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bnx2fc_if_create(ptr noundef %interface, ptr noundef %parent, i32 noundef %npiv) unnamed_addr #1 align 64 {
entry:
  %wwnn.i = alloca i64, align 8
  %wwpn.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i8, ptr %parent, i32 -128
  %hba2 = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface, i32 0, i32 2
  %0 = ptrtoint ptr %hba2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #27
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %lp = getelementptr %struct.fcoe_ctlr, ptr %interface, i32 -1, i32 2
  %3 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lp, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %4, ptr noundef nonnull @.str.76) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_outstanding_cmds = getelementptr inbounds %struct.bnx2fc_hba, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %max_outstanding_cmds to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_outstanding_cmds, align 4
  store i32 %6, ptr getelementptr inbounds (%struct.scsi_host_template, ptr @bnx2fc_shost_template, i32 0, i32 34), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npiv)
  %tobool3.not = icmp eq i32 %npiv, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call.i = tail call ptr @scsi_host_alloc(ptr noundef nonnull @bnx2fc_shost_template, i32 noundef 1188) #21
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then4.do.end_crit_edge, label %if.end.i

if.then4.do.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #23
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 53
  %7 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %hostdata.i.i, align 8
  %ema_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %ema_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %ema_list.i, ptr %ema_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ema_list.i, ptr %prev.i.i, align 4
  %vports.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 2
  %10 = ptrtoint ptr %vports.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %vports.i, ptr %vports.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vports.i, ptr %prev.i1.i, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %call6 = tail call ptr @libfc_vport_create(ptr noundef %add.ptr1, i32 noundef 180) #21
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end.i
  %lport.0 = phi ptr [ %call6, %if.else ], [ %hostdata.i.i, %if.end.i ]
  %tobool8.not = icmp eq ptr %lport.0, null
  br i1 %tobool8.not, label %if.end7.do.end_crit_edge, label %if.end12

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

do.end:                                           ; preds = %if.end7.do.end_crit_edge, %if.then4.do.end_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #24
  br label %free_blport

if.end12:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lport.0, align 8
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1
  %lport14 = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 1
  %14 = ptrtoint ptr %lport14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lport.0, ptr %lport14, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %interface, ptr %add.ptr.i, align 4
  %get_netdev = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 6, i32 10, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %get_netdev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bnx2fc_netdev, ptr %get_netdev, align 4
  %link_up.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 10
  %17 = ptrtoint ptr %link_up.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %link_up.i, align 4
  %qfull.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 11
  %18 = ptrtoint ptr %qfull.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %qfull.i, align 1
  %max_retry_count.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 27
  %19 = ptrtoint ptr %max_retry_count.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %max_retry_count.i, align 8
  %max_rport_retry_count.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 28
  %20 = ptrtoint ptr %max_rport_retry_count.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %max_rport_retry_count.i, align 1
  %e_d_tov.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 22
  %21 = ptrtoint ptr %e_d_tov.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2000, ptr %e_d_tov.i, align 4
  %r_a_tov.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 23
  %22 = ptrtoint ptr %r_a_tov.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 10000, ptr %r_a_tov.i, align 8
  %service_params.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 21
  %23 = ptrtoint ptr %service_params.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 418, ptr %service_params.i, align 8
  %does_npiv.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 25
  %24 = ptrtoint ptr %does_npiv.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %does_npiv.i, align 8
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %does_npiv.i, align 8
  %rnid_gen.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 24
  %25 = call ptr @memset(ptr %rnid_gen.i, i32 0, i32 52)
  %rnid_atype.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 24, i32 1
  %26 = ptrtoint ptr %rnid_atype.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 7, ptr %rnid_atype.i, align 4
  %call.i.i = tail call noalias ptr @__alloc_percpu(i32 noundef 168, i32 noundef 8) #28
  %stats.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 16
  %27 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i, ptr %stats.i.i, align 8
  %tobool.not.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.not.i, label %if.end12.lp_config_err_crit_edge, label %if.end18

if.end12.lp_config_err_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #23
  br label %lp_config_err

if.end18:                                         ; preds = %if.end12
  %call2.i = tail call i32 @fc_lport_config(ptr noundef nonnull %lport.0) #21
  br i1 %tobool3.not, label %if.end18.if.end28_crit_edge, label %do.end23

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end28

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #23
  %node_name = getelementptr i8, ptr %parent, i32 -120
  %28 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %node_name, align 8
  %port_name = getelementptr i8, ptr %parent, i32 -112
  %30 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %port_name, align 8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i64 noundef %29, i64 noundef %31) #24
  %32 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %node_name, align 8
  %wwnn1.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 20
  %34 = ptrtoint ptr %wwnn1.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %wwnn1.i, align 8
  %35 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %port_name, align 8
  %wwpn1.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 19
  %37 = ptrtoint ptr %wwpn1.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %wwpn1.i, align 8
  br label %if.end28

if.end28:                                         ; preds = %do.end23, %if.end18.if.end28_crit_edge
  %netdev = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface, i32 0, i32 3
  %38 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wwnn.i) #21
  %40 = ptrtoint ptr %wwnn.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 -1, ptr %wwnn.i, align 8, !annotation !584
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wwpn.i) #21
  %41 = ptrtoint ptr %wwpn.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 -1, ptr %wwpn.i, align 8, !annotation !584
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 4
  %hba1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %hba1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hba1.i, align 4
  %phys_dev.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %phys_dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phys_dev.i, align 8
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 44
  %48 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ethtool_ops.i, align 16
  %tobool.not.i134 = icmp eq ptr %49, null
  br i1 %tobool.not.i134, label %if.end28.do.end34_crit_edge, label %lor.lhs.false.i

if.end28.do.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end34

lor.lhs.false.i:                                  ; preds = %if.end28
  %get_pauseparam.i = getelementptr inbounds %struct.ethtool_ops, ptr %49, i32 0, i32 21
  %50 = ptrtoint ptr %get_pauseparam.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_pauseparam.i, align 4
  %tobool4.not.i = icmp eq ptr %51, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.do.end34_crit_edge, label %if.end.i135

lor.lhs.false.i.do.end34_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end34

if.end.i135:                                      ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @fc_set_mfs(ptr noundef nonnull %lport.0, i32 noundef 2072) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i135.do.end34_crit_edge

if.end.i135.do.end34_crit_edge:                   ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end34

if.end8.i:                                        ; preds = %if.end.i135
  %fcoe_pending_queue.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 1, i32 1
  %lock.i.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #21
  %52 = ptrtoint ptr %fcoe_pending_queue.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %fcoe_pending_queue.i, ptr %fcoe_pending_queue.i, align 4
  %prev.i.i.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 2
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %fcoe_pending_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 3
  %54 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %qlen.i.i.i, align 4
  %fcoe_pending_queue_active.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 6, i32 8, i32 1, i32 1
  %55 = ptrtoint ptr %fcoe_pending_queue_active.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %fcoe_pending_queue_active.i, align 4
  %timer.i = getelementptr %struct.fc_lport, ptr %lport.0, i32 1, i32 6, i32 8, i32 1, i32 4
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @fcoe_queue_timer, i32 noundef 0, ptr noundef nonnull @.str.97, ptr noundef nonnull @bnx2fc_net_config.__key) #21
  %call9.i = tail call i32 @fcoe_link_speed_update(ptr noundef nonnull %lport.0) #21
  %vport.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 8
  %56 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vport.i, align 8
  %tobool10.not.i = icmp eq ptr %57, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end8.i.if.end37_crit_edge

if.end8.i.if.end37_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end37

if.then11.i:                                      ; preds = %if.end8.i
  %call12.i = call i32 @fcoe_get_wwn(ptr noundef %39, ptr noundef nonnull %wwnn.i, i32 noundef 0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then11.i.if.end16.i_crit_edge, label %if.then14.i

if.then11.i.if.end16.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #23
  %ctl_src_addr.i = getelementptr %struct.fcoe_ctlr, ptr %43, i32 -1, i32 28
  %call15.i = call i64 @fcoe_wwn_from_mac(ptr noundef %ctl_src_addr.i, i32 noundef 1, i32 noundef 0) #21
  %58 = ptrtoint ptr %wwnn.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %call15.i, ptr %wwnn.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.then11.i.if.end16.i_crit_edge
  %59 = ptrtoint ptr %wwnn.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %wwnn.i, align 8
  call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef nonnull %lport.0, ptr noundef nonnull @.str.98, i64 noundef %60) #21
  %61 = ptrtoint ptr %wwnn.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %wwnn.i, align 8
  %wwnn1.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 20
  %63 = ptrtoint ptr %wwnn1.i.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %wwnn1.i.i, align 8
  %call17.i = call i32 @fcoe_get_wwn(ptr noundef %39, ptr noundef nonnull %wwpn.i, i32 noundef 1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end23.i_crit_edge, label %if.then19.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #23
  %ctl_src_addr20.i = getelementptr %struct.fcoe_ctlr, ptr %43, i32 -1, i32 28
  %call22.i = call i64 @fcoe_wwn_from_mac(ptr noundef %ctl_src_addr20.i, i32 noundef 2, i32 noundef 0) #21
  %64 = ptrtoint ptr %wwpn.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %call22.i, ptr %wwpn.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end23.i_crit_edge
  %65 = ptrtoint ptr %wwpn.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %wwpn.i, align 8
  call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef nonnull %lport.0, ptr noundef nonnull @.str.99, i64 noundef %66) #21
  %67 = ptrtoint ptr %wwpn.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %wwpn.i, align 8
  %wwpn1.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 19
  %69 = ptrtoint ptr %wwpn1.i.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %wwpn1.i.i, align 8
  br label %if.end37

do.end34:                                         ; preds = %if.end.i135.do.end34_crit_edge, %lor.lhs.false.i.do.end34_crit_edge, %if.end28.do.end34_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwpn.i) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwnn.i) #21
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #24
  br label %lp_config_err

if.end37:                                         ; preds = %if.end23.i, %if.end8.i.if.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwpn.i) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wwnn.i) #21
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 4
  %hba1.i138 = getelementptr inbounds %struct.bnx2fc_interface, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %hba1.i138 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hba1.i138, align 4
  %74 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lport.0, align 8
  %max_cmd_len.i = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 24
  %76 = ptrtoint ptr %max_cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 16, ptr %max_cmd_len.i, align 4
  %77 = load i32, ptr @bnx2fc_max_luns, align 4
  %conv.i = zext i32 %77 to i64
  %max_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 22
  %78 = ptrtoint ptr %max_lun.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv.i, ptr %max_lun.i, align 8
  %max_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 21
  %79 = ptrtoint ptr %max_id.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 256, ptr %max_id.i, align 4
  %max_channel.i = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 20
  %80 = ptrtoint ptr %max_channel.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %max_channel.i, align 8
  %81 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vport.i, align 8
  %tobool.not.i140 = icmp eq ptr %82, null
  %bnx2fc_transport_template.val.i = load ptr, ptr @bnx2fc_transport_template, align 4
  %bnx2fc_vport_xport_template.val.i = load ptr, ptr @bnx2fc_vport_xport_template, align 4
  %.sink.i = select i1 %tobool.not.i140, ptr %bnx2fc_transport_template.val.i, ptr %bnx2fc_vport_xport_template.val.i
  %83 = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 12
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %.sink.i, ptr %83, align 4
  %85 = load ptr, ptr %lport.0, align 8
  %call.i.i141 = call i32 @scsi_add_host_with_dma(ptr noundef %85, ptr noundef %parent, ptr noundef %parent) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i141)
  %tobool5.not.i = icmp eq i32 %call.i.i141, 0
  br i1 %tobool5.not.i, label %if.end8.i143, label %do.end43

if.end8.i143:                                     ; preds = %if.end37
  %86 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vport.i, align 8
  %tobool10.not.i142 = icmp eq ptr %87, null
  br i1 %tobool10.not.i142, label %if.then11.i144, label %if.end8.i143.if.end47_crit_edge

if.end8.i143.if.end47_crit_edge:                  ; preds = %if.end8.i143
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end47

if.then11.i144:                                   ; preds = %if.end8.i143
  call void @__sanitizer_cov_trace_pc() #23
  %88 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lport.0, align 8
  %shost_data.i = getelementptr inbounds %struct.Scsi_Host, ptr %89, i32 0, i32 51
  %90 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %shost_data.i, align 8
  %max_npiv_vports.i = getelementptr inbounds %struct.fc_host_attrs, ptr %91, i32 0, i32 7
  %92 = ptrtoint ptr %max_npiv_vports.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -1, ptr %max_npiv_vports.i, align 4
  br label %if.end47

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #23
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #24
  %93 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %netdev, align 4
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %94) #24
  br label %lp_config_err

if.end47:                                         ; preds = %if.then11.i144, %if.end8.i143.if.end47_crit_edge
  %95 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lport.0, align 8
  %shost_data15.i = getelementptr inbounds %struct.Scsi_Host, ptr %96, i32 0, i32 51
  %97 = ptrtoint ptr %shost_data15.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %shost_data15.i, align 8
  %symbolic_name.i = getelementptr inbounds %struct.fc_host_attrs, ptr %98, i32 0, i32 28
  %chip_num.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %73, i32 0, i32 43
  %netdev.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %71, i32 0, i32 3
  %99 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %netdev.i, align 4
  %call18.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %symbolic_name.i, i32 noundef 256, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.1, ptr noundef %chip_num.i, ptr noundef nonnull @.str.2, ptr noundef %100) #21
  %tt.i = getelementptr inbounds %struct.fc_lport, ptr %lport.0, i32 0, i32 9
  %101 = call ptr @memcpy(ptr %tt.i, ptr @bnx2fc_libfc_fcn_templ, i32 64)
  %call.i145 = call i32 @fc_elsct_init(ptr noundef nonnull %lport.0) #21
  %call1.i = call i32 @fc_exch_init(ptr noundef nonnull %lport.0) #21
  call void @fc_disc_init(ptr noundef nonnull %lport.0) #21
  call void @fc_disc_config(ptr noundef nonnull %lport.0, ptr noundef nonnull %lport.0) #21
  %102 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lport.0, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %103, i32 0, i32 51
  %104 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %shost_data, align 8
  %port_type = getelementptr inbounds %struct.fc_host_attrs, ptr %105, i32 0, i32 23
  %106 = ptrtoint ptr %port_type to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %port_type, align 4
  %107 = load i32, ptr @bnx2fc_devloss_tmo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool58.not = icmp eq i32 %107, 0
  br i1 %tobool58.not, label %if.end47.if.end61_crit_edge, label %if.then59

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end61

if.then59:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #23
  %shost_data60 = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 51
  %108 = ptrtoint ptr %shost_data60 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %shost_data60, align 8
  %dev_loss_tmo = getelementptr inbounds %struct.fc_host_attrs, ptr %109, i32 0, i32 30
  %110 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %107, ptr %dev_loss_tmo, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end47.if.end61_crit_edge
  br i1 %tobool3.not, label %if.then63, label %if.end69

if.then63:                                        ; preds = %if.end61
  %max_xid.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %1, i32 0, i32 12
  %111 = ptrtoint ptr %max_xid.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %max_xid.i, align 4
  %add.i = add i16 %112, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %113 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %113)
  %cmp.i = icmp ult i32 %113, 3
  %114 = trunc i32 %113 to i16
  %115 = shl i16 %114, 9
  %phi.cast.i = add i16 %115, -1
  %sub.pn.i = select i1 %cmp.i, i16 %phi.cast.i, i16 8191
  %conv9.i = add i16 %sub.pn.i, %112
  %call.i146 = call ptr @fc_exch_mgr_alloc(ptr noundef nonnull %lport.0, i32 noundef 46, i16 noundef zeroext %add.i, i16 noundef zeroext %conv9.i, ptr noundef null) #21
  %tobool.not.i147 = icmp eq ptr %call.i146, null
  br i1 %tobool.not.i147, label %if.end69.thread161, label %if.then63.if.end77_crit_edge

if.then63.if.end77_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end77

if.end69.thread161:                               ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #23
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #24
  br label %do.end74

if.end69:                                         ; preds = %if.end61
  %shost66 = getelementptr i8, ptr %parent, i32 -24
  %116 = ptrtoint ptr %shost66 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %shost66, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %117, i32 0, i32 53
  %call68 = call i32 @fc_exch_mgr_list_clone(ptr noundef %hostdata.i, ptr noundef nonnull %lport.0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool70.not = icmp eq i32 %call68, 0
  br i1 %tobool70.not, label %if.end69.if.end77_crit_edge, label %if.end69.do.end74_crit_edge

if.end69.do.end74_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end74

if.end69.if.end77_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end77

do.end74:                                         ; preds = %if.end69.do.end74_crit_edge, %if.end69.thread161
  %shost.0165 = phi ptr [ %13, %if.end69.thread161 ], [ %117, %if.end69.do.end74_crit_edge ]
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #24
  call void @scsi_remove_host(ptr noundef %shost.0165) #21
  br label %lp_config_err

if.end77:                                         ; preds = %if.end69.if.end77_crit_edge, %if.then63.if.end77_crit_edge
  %kref.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface, i32 0, i32 7
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #21
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #21
  %118 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #21, !srcloc !585
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end77.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !580

if.end77.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end77
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %119 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %119)
  %.not.i.i.i.i.i = icmp sgt i32 %119, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.bnx2fc_interface_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !575

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.bnx2fc_interface_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_interface_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end77.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end77.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #21
  br label %bnx2fc_interface_get.exit

bnx2fc_interface_get.exit:                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.bnx2fc_interface_get.exit_crit_edge
  %hba_lock = getelementptr inbounds %struct.bnx2fc_hba, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock_bh(ptr noundef %hba_lock) #21
  %lport78 = getelementptr inbounds %struct.bnx2fc_lport, ptr %call7.i.i, i32 0, i32 1
  %120 = ptrtoint ptr %lport78 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %lport.0, ptr %lport78, align 8
  %vports = getelementptr inbounds %struct.bnx2fc_hba, ptr %1, i32 0, i32 42
  %prev.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %1, i32 0, i32 42, i32 1
  %121 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i, align 4
  %call.i.i150 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %122, ptr noundef %vports) #21
  br i1 %call.i.i150, label %if.end.i.i, label %bnx2fc_interface_get.exit.list_add_tail.exit_crit_edge

bnx2fc_interface_get.exit.list_add_tail.exit_crit_edge: ; preds = %bnx2fc_interface_get.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %bnx2fc_interface_get.exit
  call void @__sanitizer_cov_trace_pc() #23
  %123 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %124 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %vports, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %125 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev3.i.i, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %call7.i.i, ptr %122, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %bnx2fc_interface_get.exit.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %hba_lock) #21
  br label %cleanup

lp_config_err:                                    ; preds = %do.end74, %do.end43, %do.end34, %if.end12.lp_config_err_crit_edge
  %127 = ptrtoint ptr %lport.0 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %lport.0, align 8
  call void @scsi_host_put(ptr noundef %128) #21
  br label %free_blport

free_blport:                                      ; preds = %lp_config_err, %do.end
  call void @kfree(ptr noundef nonnull %call7.i.i) #21
  br label %cleanup

cleanup:                                          ; preds = %free_blport, %list_add_tail.exit, %if.then
  %retval.0 = phi ptr [ null, %free_blport ], [ %lport.0, %list_add_tail.exit ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_link_up(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @BNX2FC_HBA_DBG(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2fc_start_disc(ptr noundef %interface) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %interface, i32 -1
  %0 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !575

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.115) #24
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %hba = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface, i32 0, i32 2
  %1 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hba, align 4
  %flags = getelementptr inbounds %struct.bnx2fc_hba, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool7.not = icmp eq i32 %and1.i, 0
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #23
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #24
  br label %cleanup

if.end14:                                         ; preds = %do.end5
  %lp = getelementptr %struct.fcoe_ctlr, ptr %interface, i32 -1, i32 2
  %5 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lp, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %6, ptr noundef nonnull @.str.119) #21
  %add.ptr.i.i = getelementptr %struct.fc_lport, ptr %6, i32 1
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 4
  %hba1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %hba1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hba1.i, align 4
  %phys_dev.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %phys_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phys_dev.i, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end14.if.end20.sink.split_crit_edge, label %land.lhs.true.i

if.end14.if.end20.sink.split_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end20.sink.split

land.lhs.true.i:                                  ; preds = %if.end14
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 6
  %15 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %land.lhs.true, label %land.lhs.true.i.if.end20.sink.split_crit_edge

land.lhs.true.i.if.end20.sink.split_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end20.sink.split

land.lhs.true:                                    ; preds = %land.lhs.true.i
  %adapter_state.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %10, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %adapter_state.i) #21
  %enabled = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface, i32 0, i32 10
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enabled, align 4, !range !577
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool17.not = icmp eq i8 %19, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end20_crit_edge, label %if.then18

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %6, ptr noundef nonnull @.str.120) #21
  tail call void @fcoe_ctlr_link_up(ptr noundef %add.ptr) #21
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %6, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 51
  %22 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shost_data, align 8
  %port_type = getelementptr inbounds %struct.fc_host_attrs, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %port_type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %port_type, align 4
  %25 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hba, align 4
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then18, %land.lhs.true.i.if.end20.sink.split_crit_edge, %if.end14.if.end20.sink.split_crit_edge
  %.sink47 = phi ptr [ %26, %if.then18 ], [ %10, %if.end14.if.end20.sink.split_crit_edge ], [ %10, %land.lhs.true.i.if.end20.sink.split_crit_edge ]
  %.sink = phi i32 [ 3, %if.then18 ], [ 2, %if.end14.if.end20.sink.split_crit_edge ], [ 2, %land.lhs.true.i.if.end20.sink.split_crit_edge ]
  %adapter_state3.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %.sink47, i32 0, i32 9
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %adapter_state3.i) #21
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge
  %sel_fcf = getelementptr %struct.fcoe_ctlr, ptr %interface, i32 -1, i32 3
  %27 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sel_fcf, align 4
  %tobool21.not = icmp eq ptr %28, null
  br i1 %tobool21.not, label %while.body, label %if.end20.while.end_crit_edge

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body:                                       ; preds = %if.end20
  tail call void @msleep(i32 noundef 250) #21
  %29 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sel_fcf, align 4
  %tobool21.not.1 = icmp eq ptr %30, null
  br i1 %tobool21.not.1, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.1:                                     ; preds = %while.body
  tail call void @msleep(i32 noundef 250) #21
  %31 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sel_fcf, align 4
  %tobool21.not.2 = icmp eq ptr %32, null
  br i1 %tobool21.not.2, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  tail call void @msleep(i32 noundef 250) #21
  %33 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sel_fcf, align 4
  %tobool21.not.3 = icmp eq ptr %34, null
  br i1 %tobool21.not.3, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  tail call void @msleep(i32 noundef 250) #21
  %35 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sel_fcf, align 4
  %tobool21.not.4 = icmp eq ptr %36, null
  br i1 %tobool21.not.4, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  tail call void @msleep(i32 noundef 250) #21
  %37 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sel_fcf, align 4
  %tobool21.not.5 = icmp eq ptr %38, null
  br i1 %tobool21.not.5, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  tail call void @msleep(i32 noundef 250) #21
  %39 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sel_fcf, align 4
  %tobool21.not.6 = icmp eq ptr %40, null
  br i1 %tobool21.not.6, label %while.body.6, label %while.body.5.while.end_crit_edge

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  tail call void @msleep(i32 noundef 250) #21
  %41 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sel_fcf, align 4
  %tobool21.not.7 = icmp eq ptr %42, null
  br i1 %tobool21.not.7, label %while.body.7, label %while.body.6.while.end_crit_edge

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  tail call void @msleep(i32 noundef 250) #21
  %43 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sel_fcf, align 4
  %tobool21.not.8 = icmp eq ptr %44, null
  br i1 %tobool21.not.8, label %while.body.8, label %while.body.7.while.end_crit_edge

while.body.7.while.end_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.8:                                     ; preds = %while.body.7
  tail call void @msleep(i32 noundef 250) #21
  %45 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sel_fcf, align 4
  %tobool21.not.9 = icmp eq ptr %46, null
  br i1 %tobool21.not.9, label %while.body.9, label %while.body.8.while.end_crit_edge

while.body.8.while.end_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.9:                                     ; preds = %while.body.8
  tail call void @msleep(i32 noundef 250) #21
  %47 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sel_fcf, align 4
  %tobool21.not.10 = icmp eq ptr %48, null
  br i1 %tobool21.not.10, label %while.body.10, label %while.body.9.while.end_crit_edge

while.body.9.while.end_crit_edge:                 ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.10:                                    ; preds = %while.body.9
  tail call void @msleep(i32 noundef 250) #21
  %49 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sel_fcf, align 4
  %tobool21.not.11 = icmp eq ptr %50, null
  br i1 %tobool21.not.11, label %while.body.11, label %while.body.10.while.end_crit_edge

while.body.10.while.end_crit_edge:                ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.11:                                    ; preds = %while.body.10
  tail call void @msleep(i32 noundef 250) #21
  %51 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sel_fcf, align 4
  %tobool21.not.12 = icmp eq ptr %52, null
  br i1 %tobool21.not.12, label %while.body.12, label %while.body.11.while.end_crit_edge

while.body.11.while.end_crit_edge:                ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.12:                                    ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @msleep(i32 noundef 250) #21
  br label %while.end

while.end:                                        ; preds = %while.body.12, %while.body.11.while.end_crit_edge, %while.body.10.while.end_crit_edge, %while.body.9.while.end_crit_edge, %while.body.8.while.end_crit_edge, %while.body.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end20.while.end_crit_edge
  %call26 = tail call i32 @fc_set_mfs(ptr noundef %6, i32 noundef 2072) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end29:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #23
  %call30 = tail call i32 @fc_lport_init(ptr noundef %6) #21
  %call31 = tail call i32 @fc_fabric_login(ptr noundef %6) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %while.end.cleanup_crit_edge, %do.end11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2fc_interface_put(ptr noundef %interface) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  %kref = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !586
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #21
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #21, !srcloc !587
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !575

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #21
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !588
  %1 = load i32, ptr @bnx2fc_debug_level, align 4
  %and.i.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.do.end6.i.i_crit_edge, label %do.end.i.i, !prof !575

if.then.i.do.end6.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end6.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #24
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %do.end.i.i, %if.then.i.do.end6.i.i_crit_edge
  %cdev.i.i = getelementptr %struct.bnx2fc_interface, ptr %interface, i32 -4, i32 5, i32 3
  %2 = ptrtoint ptr %cdev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev.i.i, align 4
  %netdev8.i.i = getelementptr %struct.bnx2fc_interface, ptr %interface, i32 0, i32 3
  %4 = ptrtoint ptr %netdev8.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev8.i.i, align 4
  %if_flags.i.i = getelementptr %struct.bnx2fc_interface, ptr %interface, i32 0, i32 1
  %call9.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %if_flags.i.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %do.end6.i.i.if.end12.i.i_crit_edge, label %if.then11.i.i

do.end6.i.i.if.end12.i.i_crit_edge:               ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end12.i.i

if.then11.i.i:                                    ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr7.i.i = getelementptr %struct.bnx2fc_interface, ptr %interface, i32 -4, i32 4, i32 7
  tail call void @fcoe_ctlr_destroy(ptr noundef %add.ptr7.i.i) #21
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then11.i.i, %do.end6.i.i.if.end12.i.i_crit_edge
  tail call void @fcoe_ctlr_device_delete(ptr noundef %3) #21
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.end12.i.i.bnx2fc_interface_release.exit.i_crit_edge, label %do.body1.i.i.i

if.end12.i.i.bnx2fc_interface_release.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_interface_release.exit.i

do.body1.i.i.i:                                   ; preds = %if.end12.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !578
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i.i.i = add i32 %18, -1
  store i32 %add13.i.i.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !579
  %and.i.i.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.do.end30.i.i.i_crit_edge, !prof !580

do.body1.i.i.i.do.end30.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end30.i.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @warn_bogus_irq_restore() #21
  br label %do.end30.i.i.i

do.end30.i.i.i:                                   ; preds = %if.then28.i.i.i, %do.body1.i.i.i.do.end30.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #21, !srcloc !581
  br label %bnx2fc_interface_release.exit.i

bnx2fc_interface_release.exit.i:                  ; preds = %do.end30.i.i.i, %if.end12.i.i.bnx2fc_interface_release.exit.i_crit_edge
  tail call void @module_put(ptr noundef null) #21
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %bnx2fc_interface_release.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2fc_net_cleanup(ptr noundef %interface) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %fcoe_packet_type = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface, i32 0, i32 4
  tail call void @__dev_remove_pack(ptr noundef %fcoe_packet_type) #21
  %fip_packet_type = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface, i32 0, i32 5
  tail call void @__dev_remove_pack(ptr noundef %fip_packet_type) #21
  tail call void @synchronize_net() #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fcoe_ctlr_device_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_init(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_fip_send(ptr nocapture noundef readonly %fip, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %fip_op = getelementptr i8, ptr %1, i32 16
  %6 = ptrtoint ptr %fip_op to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %fip_op, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp = icmp eq i16 %7, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %fip_subcode = getelementptr i8, ptr %1, i32 19
  %8 = ptrtoint ptr %fip_subcode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fip_subcode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp4 = icmp eq i8 %9, 1
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end16

land.lhs.true6:                                   ; preds = %land.lhs.true
  %10 = load i32, ptr @bnx2fc_log_fka, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %land.lhs.true6.if.end16_crit_edge, label %do.body

land.lhs.true6.if.end16_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end16

do.body:                                          ; preds = %land.lhs.true6
  %11 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.if.end16_crit_edge, label %do.end, !prof !575

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 1
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %h_source, ptr noundef %add.ptr.i) #24
  br label %if.end16

if.end16:                                         ; preds = %do.end, %do.body.if.end16_crit_edge, %land.lhs.true6.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %netdev = getelementptr %struct.fcoe_ctlr, ptr %fip, i32 1, i32 4
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  %14 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %14, align 8
  %call18 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnx2fc_update_src_mac(ptr nocapture noundef writeonly %lport, ptr nocapture noundef readonly %addr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %data_src_addr = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 6, i32 10
  %0 = call ptr @memcpy(ptr %data_src_addr, ptr %addr, i32 6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bnx2fc_get_src_mac(ptr noundef readnone %lport) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %data_src_addr = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 6, i32 10
  ret ptr %data_src_addr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_device_delete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_get_lesb(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_ctlr_enabled(ptr noundef %cdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fcoe_ctlr_device, ptr %cdev, i32 1
  %enabled = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %cdev, i32 0, i32 11
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call1 = tail call fastcc i32 @__bnx2fc_enable(ptr noundef %add.ptr.i)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %enabled.i = getelementptr %struct.fcoe_ctlr_device, ptr %cdev, i32 1, i32 1, i32 12, i32 8, i32 2
  %3 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled.i, align 4, !range !577
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %sw.bb2.cleanup_crit_edge, label %if.then.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb2
  %lp.i = getelementptr %struct.fcoe_ctlr_device, ptr %cdev, i32 1, i32 1
  %5 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lp.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #24
  br label %cleanup

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %7 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %enabled.i, align 4
  %call5.i = tail call i32 @fcoe_ctlr_link_down(ptr noundef %add.ptr.i) #21
  %8 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lp.i, align 4
  tail call void @fcoe_clean_pending_queue(ptr noundef %9) #21
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %do.end.i, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -524, %entry.cleanup_crit_edge ], [ -19, %do.end.i ], [ 0, %if.else.i ], [ 0, %sw.bb2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_fcf_get_selected(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnx2fc_fcf_get_vlan_id(ptr nocapture noundef %fcf_dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.fcoe_fcf_device, ptr %fcf_dev, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %vlan_id = getelementptr i8, ptr %1, i32 1668
  %2 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vlan_id, align 4
  %conv = trunc i32 %3 to i16
  %vlan_id2 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %fcf_dev, i32 0, i32 16
  %4 = ptrtoint ptr %vlan_id2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %vlan_id2, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bnx2fc_enable(ptr noundef %ctlr) unnamed_addr #1 align 64 {
entry:
  %vpid.i = alloca %struct.fc_vport_identifiers, align 8
  %wwpn_str.i = alloca [32 x i8], align 1
  %wwnn_str.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr %struct.fcoe_ctlr, ptr %ctlr, i32 1, i32 12, i32 3, i32 1
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !577
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10

if.then:                                          ; preds = %entry
  %lp = getelementptr inbounds %struct.fcoe_ctlr, ptr %ctlr, i32 0, i32 2
  %2 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lp, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end, label %if.else

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #24
  br label %cleanup

if.else:                                          ; preds = %if.then
  %add.ptr.i.i = getelementptr %struct.fc_lport, ptr %3, i32 1
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 4
  %hba1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hba1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hba1.i, align 4
  %phys_dev.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %phys_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phys_dev.i, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.bnx2fc_link_ok.exit_crit_edge, label %land.lhs.true.i

if.else.bnx2fc_link_ok.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_link_ok.exit

land.lhs.true.i:                                  ; preds = %if.else
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.then7, label %land.lhs.true.i.bnx2fc_link_ok.exit_crit_edge

land.lhs.true.i.bnx2fc_link_ok.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_link_ok.exit

bnx2fc_link_ok.exit:                              ; preds = %land.lhs.true.i.bnx2fc_link_ok.exit_crit_edge, %if.else.bnx2fc_link_ok.exit_crit_edge
  %adapter_state3.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %7, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %adapter_state3.i) #21
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  %adapter_state.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %7, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %adapter_state.i) #21
  tail call void @fcoe_ctlr_link_up(ptr noundef %ctlr) #21
  %15 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %enabled, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %bnx2fc_link_ok.exit, %entry.if.end10_crit_edge
  %hba11 = getelementptr %struct.fcoe_ctlr, ptr %ctlr, i32 1, i32 3
  %16 = ptrtoint ptr %hba11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hba11, align 4
  %lp12 = getelementptr inbounds %struct.fcoe_ctlr, ptr %ctlr, i32 0, i32 2
  %18 = ptrtoint ptr %lp12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lp12, align 4
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %cnic = getelementptr inbounds %struct.bnx2fc_hba, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cnic, align 8
  %tobool16.not = icmp eq ptr %21, null
  %tobool19.not = icmp eq ptr %19, null
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool19.not
  br i1 %or.cond, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 8
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %get_fc_npiv_tbl = getelementptr inbounds %struct.cnic_dev, ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %get_fc_npiv_tbl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_fc_npiv_tbl, align 4
  %tobool26.not = icmp eq ptr %25, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 1028) #27
  %tobool30.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %27 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cnic, align 8
  %get_fc_npiv_tbl34 = getelementptr inbounds %struct.cnic_dev, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %get_fc_npiv_tbl34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_fc_npiv_tbl34, align 4
  %call36 = tail call i32 %30(ptr noundef %28, ptr noundef nonnull %call7.i.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end32.done_free_crit_edge

if.end32.done_free_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #23
  br label %done_free

if.end39:                                         ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %vpid.i) #21
  %31 = getelementptr inbounds i8, ptr %vpid.i, i32 16
  %32 = call ptr @memset(ptr %31, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wwpn_str.i) #21
  %33 = call ptr @memset(ptr %wwpn_str.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wwnn_str.i) #21
  %count.i = getelementptr inbounds %struct.cnic_fc_npiv_tbl, ptr %call7.i.i, i32 0, i32 2
  %34 = call ptr @memset(ptr %wwnn_str.i, i32 255, i32 32)
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %36)
  %cmp.i = icmp ugt i32 %36, 64
  br i1 %cmp.i, label %if.end39.done.sink.split.i_crit_edge, label %if.end.i

if.end39.done.sink.split.i_crit_edge:             ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #23
  br label %done.sink.split.i

if.end.i:                                         ; preds = %if.end39
  %wwnn1.i = getelementptr inbounds %struct.cnic_fc_npiv_tbl, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %wwnn1.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %wwnn1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp2.i = icmp eq i64 %38, 0
  br i1 %cmp2.i, label %land.lhs.true.i62, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end8.i

land.lhs.true.i62:                                ; preds = %if.end.i
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp6.i = icmp eq i64 %40, 0
  br i1 %cmp6.i, label %land.lhs.true.i62.done.sink.split.i_crit_edge, label %land.lhs.true.i62.if.end8.i_crit_edge

land.lhs.true.i62.if.end8.i_crit_edge:            ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end8.i

land.lhs.true.i62.done.sink.split.i_crit_edge:    ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #23
  br label %done.sink.split.i

if.end8.i:                                        ; preds = %land.lhs.true.i62.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %31, align 8
  %vport_type.i = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vpid.i, i32 0, i32 4
  %42 = ptrtoint ptr %vport_type.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 7, ptr %vport_type.i, align 8
  %disable.i = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vpid.i, i32 0, i32 3
  %43 = ptrtoint ptr %disable.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %disable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp101.not.i = icmp eq i32 %36, 0
  br i1 %cmp101.not.i, label %if.end8.i.bnx2fc_npiv_create_vports.exit_crit_edge, label %for.body.lr.ph.i

if.end8.i.bnx2fc_npiv_create_vports.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_npiv_create_vports.exit

for.body.lr.ph.i:                                 ; preds = %if.end8.i
  %wwnn17.i = getelementptr inbounds %struct.fc_lport, ptr %19, i32 0, i32 20
  %port_name.i = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vpid.i, i32 0, i32 1
  %symbolic_name.i = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vpid.i, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %created.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %created.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc36.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx12.i = getelementptr %struct.cnic_fc_npiv_tbl, ptr %call7.i.i, i32 0, i32 1, i32 %i.02.i
  %44 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %cmp15.i = icmp eq i64 %45, 0
  br i1 %cmp15.i, label %if.then16.i, label %for.body.i.if.end18.i_crit_edge

for.body.i.if.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end18.i

if.then16.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  %46 = ptrtoint ptr %wwnn17.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %wwnn17.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %for.body.i.if.end18.i_crit_edge
  %wwnn.0.i = phi i64 [ %47, %if.then16.i ], [ %45, %for.body.i.if.end18.i_crit_edge ]
  %48 = ptrtoint ptr %vpid.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %wwnn.0.i, ptr %vpid.i, align 8
  %arrayidx20.i = getelementptr [64 x [8 x i8]], ptr %call7.i.i, i32 0, i32 %i.02.i
  %49 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx20.i, align 8
  %51 = ptrtoint ptr %port_name.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %port_name.i, align 8
  %call26.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %symbolic_name.i, i32 noundef 64, ptr noundef nonnull @.str.51, i32 noundef %created.03.i, i64 noundef %50, i64 noundef %wwnn.0.i) #21
  %52 = ptrtoint ptr %vpid.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %vpid.i, align 8
  call void @fcoe_wwn_to_str(i64 noundef %53, ptr noundef nonnull %wwnn_str.i, i32 noundef 32) #21
  %54 = ptrtoint ptr %port_name.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %port_name.i, align 8
  call void @fcoe_wwn_to_str(i64 noundef %55, ptr noundef nonnull %wwpn_str.i, i32 noundef 32) #21
  call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %19, ptr noundef nonnull @.str.52, ptr noundef nonnull %wwnn_str.i, ptr noundef nonnull %wwpn_str.i) #21
  %56 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %19, align 8
  %call33.i = call ptr @fc_vport_create(ptr noundef %57, i32 noundef 0, ptr noundef nonnull %vpid.i) #21
  %tobool.not.i63 = icmp eq ptr %call33.i, null
  br i1 %tobool.not.i63, label %if.else.i64, label %if.then34.i

if.then34.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #23
  %inc.i = add i32 %created.03.i, 1
  br label %for.inc.i

if.else.i64:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %19, ptr noundef nonnull @.str.53) #21
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i64, %if.then34.i
  %created.1.i = phi i32 [ %inc.i, %if.then34.i ], [ %created.03.i, %if.else.i64 ]
  %inc36.i = add nuw i32 %i.02.i, 1
  %58 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count.i, align 8
  %cmp10.i = icmp ult i32 %inc36.i, %59
  br i1 %cmp10.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.bnx2fc_npiv_create_vports.exit_crit_edge

for.inc.i.bnx2fc_npiv_create_vports.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_npiv_create_vports.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

done.sink.split.i:                                ; preds = %land.lhs.true.i62.done.sink.split.i_crit_edge, %if.end39.done.sink.split.i_crit_edge
  %.str.50.sink.i = phi ptr [ @.str.49, %if.end39.done.sink.split.i_crit_edge ], [ @.str.50, %land.lhs.true.i62.done.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef nonnull %19, ptr noundef nonnull %.str.50.sink.i) #21
  br label %bnx2fc_npiv_create_vports.exit

bnx2fc_npiv_create_vports.exit:                   ; preds = %done.sink.split.i, %for.inc.i.bnx2fc_npiv_create_vports.exit_crit_edge, %if.end8.i.bnx2fc_npiv_create_vports.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wwnn_str.i) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wwpn_str.i) #21
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %vpid.i) #21
  br label %done_free

done_free:                                        ; preds = %bnx2fc_npiv_create_vports.exit, %if.end32.done_free_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #21
  br label %cleanup

cleanup:                                          ; preds = %done_free, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %done_free ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_wwn_to_str(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_vport_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_fip_recv(ptr noundef %skb, ptr nocapture noundef readnone %dev, ptr noundef %ptype, ptr nocapture noundef readnone %orig_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i8, ptr %ptype, i32 -496
  tail call void @fcoe_ctlr_recv(ptr noundef %add.ptr1, ptr noundef %skb) #21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_rcv(ptr noundef %skb, ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %ptype, ptr nocapture noundef readnone %olddev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr i8, ptr %ptype, i32 -448
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end, !prof !580

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #24
  br label %err

if.end:                                           ; preds = %entry
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #21
  %2 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #21
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread69, !prof !580

skb_share_check.exit.thread69:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @consume_skb(ptr noundef %skb) #21
  br label %if.end7

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #21
  br label %err

skb_share_check.exit:                             ; preds = %if.end
  %tobool5.not = icmp eq ptr %skb, null
  br i1 %tobool5.not, label %skb_share_check.exit.err_crit_edge, label %skb_share_check.exit.if.end7_crit_edge

skb_share_check.exit.if.end7_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end7

skb_share_check.exit.err_crit_edge:               ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %err

if.end7:                                          ; preds = %skb_share_check.exit.if.end7_crit_edge, %skb_share_check.exit.thread69
  %skb.addr.0.i72 = phi ptr [ %call7.i, %skb_share_check.exit.thread69 ], [ %skb, %skb_share_check.exit.if.end7_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i72, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i72, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30458, i16 %9)
  %cmp9.not = icmp eq i16 %9, -30458
  br i1 %cmp9.not, label %if.end23, label %do.end20, !prof !575

do.end20:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #24
  br label %err

if.end23:                                         ; preds = %if.end7
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i72, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %11)
  %cmp24 = icmp ult i32 %11, 46
  br i1 %cmp24, label %if.end23.err_crit_edge, label %lor.rhs, !prof !580

if.end23.err_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #23
  br label %err

lor.rhs:                                          ; preds = %if.end23
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i72, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 37
  br i1 %cmp.i, label %lor.rhs.if.end36_crit_edge, label %pskb_may_pull.exit, !prof !575

lor.rhs.if.end36_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end36

pskb_may_pull.exit:                               ; preds = %lor.rhs
  %sub.i = sub nuw nsw i32 38, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i72, i32 noundef %sub.i) #21
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.err_crit_edge, label %pskb_may_pull.exit.if.end36_crit_edge, !prof !580

pskb_may_pull.exit.if.end36_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end36

pskb_may_pull.exit.err_crit_edge:                 ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %err

if.end36:                                         ; preds = %pskb_may_pull.exit.if.end36_crit_edge, %lor.rhs.if.end36_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i72, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i66 = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i72, i32 0, i32 15, i32 0, i32 19
  %add.i = add i16 %conv.i.i66, 14
  %18 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %add.i, ptr %transport_header.i.i, align 2
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i72, i32 0, i32 3
  %19 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %cb.i, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 2)) #21
  %20 = load ptr, ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 0, i32 0, i32 1), align 4
  %21 = ptrtoint ptr %skb.addr.0.i72 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2), ptr %skb.addr.0.i72, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %skb.addr.0.i72, i32 0, i32 1
  %22 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb.addr.0.i72, ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 0, i32 0, i32 1), align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %skb.addr.0.i72, ptr %20, align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 1), align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp40 = icmp eq i32 %24, 0
  br i1 %cmp40, label %if.then42, label %if.end36.if.end44_crit_edge

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end44

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #23
  %25 = load ptr, ptr @bnx2fc_global, align 4
  %call43 = tail call i32 @wake_up_process(ptr noundef %25) #21
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end36.if.end44_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 2)) #21
  br label %cleanup

err:                                              ; preds = %pskb_may_pull.exit.err_crit_edge, %if.end23.err_crit_edge, %do.end20, %skb_share_check.exit.err_crit_edge, %skb_share_check.exit.thread, %do.end
  %skb.addr.0 = phi ptr [ %skb, %do.end ], [ %skb.addr.0.i72, %do.end20 ], [ %skb.addr.0.i72, %pskb_may_pull.exit.err_crit_edge ], [ null, %skb_share_check.exit.err_crit_edge ], [ %skb.addr.0.i72, %if.end23.err_crit_edge ], [ %skb, %skb_share_check.exit.thread ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #21
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end44
  %retval.0 = phi i32 [ -1, %err ], [ 0, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_ctlr_recv(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @libfc_vport_create(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bnx2fc_netdev(ptr nocapture noundef readonly %lport) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %netdev = getelementptr inbounds %struct.bnx2fc_interface, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_exch_mgr_list_clone(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_queuecommand(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_eh_abort(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_eh_device_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_eh_target_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_eh_host_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_slave_alloc(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_slave_configure(ptr noundef %sdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bnx2fc_queue_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %0) #21
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_eh_timed_out(ptr noundef) #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_tm_timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 1944
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tm_timeout = getelementptr inbounds %struct.bnx2fc_interface, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %tm_timeout to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tm_timeout, align 1
  %conv = zext i8 %3 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.96, i32 noundef %conv)
  %call3 = tail call i32 @strlen(ptr noundef %buf) #26
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_tm_timeout_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 1944
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #21
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !584
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp sgt i32 %4, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %conv = trunc i32 %4 to i8
  %tm_timeout = getelementptr inbounds %struct.bnx2fc_interface, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %tm_timeout to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %tm_timeout, align 1
  %call5 = call i32 @strlen(ptr noundef %buf) #26
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call2, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #21
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_lport_config(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_set_mfs(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_queue_timer(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_link_speed_update(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_get_wwn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fcoe_wwn_from_mac(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_elsct_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_exch_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_disc_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_disc_config(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_xmit(ptr noundef %lport, ptr noundef %fp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1
  %hba1 = getelementptr inbounds %struct.bnx2fc_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba1, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %5)
  %cmp.i = icmp ult i32 %5, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !580

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.107, i32 noundef 161, i32 noundef 9, ptr noundef null) #21
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %link_up = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 10
  %8 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %lport, ptr noundef nonnull @.str.104) #21
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #21
  br label %cleanup144

if.end:                                           ; preds = %fc_frame_header_get.exit
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %11)
  %cmp = icmp eq i8 %11, 34
  br i1 %cmp, label %if.then7, label %if.end.if.end15_crit_edge, !prof !580

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15

if.then7:                                         ; preds = %if.end
  %sel_fcf = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 3
  %12 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sel_fcf, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %lport, ptr noundef nonnull @.str.105) #21
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #21
  br label %cleanup144

if.end10:                                         ; preds = %if.then7
  %call11 = tail call i32 @fcoe_ctlr_els_send(ptr noundef %add.ptr, ptr noundef %lport, ptr noundef %fp) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.end10.cleanup144_crit_edge

if.end10.cleanup144_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup144

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15

if.end15:                                         ; preds = %if.end10.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3
  %fr_sof = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 18
  %14 = ptrtoint ptr %fr_sof to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fr_sof, align 2
  %fr_eof = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 19
  %16 = ptrtoint ptr %fr_eof to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fr_eof, align 1
  %hba_lock = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %hba_lock) #21
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fh_d_id, align 1
  %conv.i = zext i8 %19 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr %struct.fc_frame_header, ptr %7, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %21 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %7, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %23 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %call21 = tail call ptr @bnx2fc_tgt_lookup(ptr noundef %add.ptr.i, i32 noundef %or6.i) #21
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end15.if.else_crit_edge, label %land.lhs.true

if.end15.if.else_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

land.lhs.true:                                    ; preds = %if.end15
  %flags = getelementptr inbounds %struct.bnx2fc_rport, ptr %call21, i32 0, i32 9
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool24.not = icmp eq i32 %26, 0
  br i1 %tobool24.not, label %land.lhs.true.if.else_crit_edge, label %if.then25

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

if.then25:                                        ; preds = %land.lhs.true
  %27 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fh_d_id, align 1
  %conv.i242 = zext i8 %28 to i32
  %shl.i243 = shl nuw nsw i32 %conv.i242, 16
  %29 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i245 = zext i8 %30 to i32
  %shl3.i246 = shl nuw nsw i32 %conv2.i245, 8
  %or.i247 = or i32 %shl3.i246, %shl.i243
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i249 = zext i8 %32 to i32
  %or6.i250 = or i32 %or.i247, %conv5.i249
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %lport, ptr noundef nonnull @.str.106, i32 noundef %or6.i250) #21
  tail call void @_raw_spin_unlock_bh(ptr noundef %hba_lock) #21
  %rdata1.i = getelementptr inbounds %struct.bnx2fc_rport, ptr %call21, i32 0, i32 2
  %33 = ptrtoint ptr %rdata1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rdata1.i, align 4
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %36)
  %cmp.i.i = icmp ult i32 %36, 24
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then25.fc_frame_header_get.exit.i_crit_edge, !prof !580

if.then25.fc_frame_header_get.exit.i_crit_edge:   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #23
  br label %fc_frame_header_get.exit.i

do.end.i.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.107, i32 noundef 161, i32 noundef 9, ptr noundef null) #21
  br label %fc_frame_header_get.exit.i

fc_frame_header_get.exit.i:                       ; preds = %do.end.i.i, %if.then25.fc_frame_header_get.exit.i_crit_edge
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i, align 4
  %port_id.i = getelementptr inbounds %struct.fc_rport_priv, ptr %34, i32 0, i32 4, i32 2
  %39 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port_id.i, align 8
  %fh_ox_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %38, i32 0, i32 9
  %41 = ptrtoint ptr %fh_ox_id.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %fh_ox_id.i, align 4
  %conv.i251 = zext i16 %42 to i32
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %38, align 4
  %conv2.i252 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef nonnull %call21, ptr noundef nonnull @.str.108, i32 noundef %40, i32 noundef %conv.i251, i32 noundef %conv2.i252) #21
  %fh_type.i = getelementptr inbounds %struct.fc_frame_header, ptr %38, i32 0, i32 4
  %45 = ptrtoint ptr %fh_type.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %fh_type.i, align 4
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.259)
  switch i8 %46, label %fc_frame_header_get.exit.i.bnx2fc_xmit_l2_frame.exit_crit_edge [
    i8 1, label %land.lhs.true.i
    i8 0, label %land.lhs.true20.i
  ]

fc_frame_header_get.exit.i.bnx2fc_xmit_l2_frame.exit_crit_edge: ; preds = %fc_frame_header_get.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_xmit_l2_frame.exit

land.lhs.true.i:                                  ; preds = %fc_frame_header_get.exit.i
  %48 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %49)
  %cmp7.i = icmp eq i8 %49, 34
  br i1 %cmp7.i, label %if.then.i, label %land.lhs.true.i.bnx2fc_xmit_l2_frame.exit_crit_edge

land.lhs.true.i.bnx2fc_xmit_l2_frame.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_xmit_l2_frame.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %51)
  %cmp.i.i.i = icmp ugt i32 %51, 24
  br i1 %cmp.i.i.i, label %fc_frame_payload_get.exit.i.i, label %if.then.i.if.end31.thread.i_crit_edge

if.then.i.if.end31.thread.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end31.thread.i

fc_frame_payload_get.exit.i.i:                    ; preds = %if.then.i
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.fc_frame_header, ptr %53, i32 1
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i, label %fc_frame_payload_get.exit.i.i.if.end31.thread.i_crit_edge, label %fc_frame_payload_op.exit.i

fc_frame_payload_get.exit.i.i.if.end31.thread.i_crit_edge: ; preds = %fc_frame_payload_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end31.thread.i

fc_frame_payload_op.exit.i:                       ; preds = %fc_frame_payload_get.exit.i.i
  %54 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %add.ptr.i.i.i, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.260)
  switch i8 %55, label %fc_frame_payload_op.exit.i.if.end31.thread.i_crit_edge [
    i8 82, label %sw.bb.i
    i8 5, label %sw.bb12.i
    i8 15, label %sw.bb14.i
  ]

fc_frame_payload_op.exit.i.if.end31.thread.i_crit_edge: ; preds = %fc_frame_payload_op.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end31.thread.i

sw.bb.i:                                          ; preds = %fc_frame_payload_op.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  %call11.i = tail call i32 @bnx2fc_send_adisc(ptr noundef nonnull %call21, ptr noundef %fp) #21
  br label %if.end31.i

sw.bb12.i:                                        ; preds = %fc_frame_payload_op.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  %call13.i = tail call i32 @bnx2fc_send_logo(ptr noundef nonnull %call21, ptr noundef %fp) #21
  br label %if.end31.i

sw.bb14.i:                                        ; preds = %fc_frame_payload_op.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  %call15.i = tail call i32 @bnx2fc_send_rls(ptr noundef nonnull %call21, ptr noundef %fp) #21
  br label %if.end31.i

land.lhs.true20.i:                                ; preds = %fc_frame_header_get.exit.i
  %57 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %58)
  %cmp23.i = icmp eq i8 %58, -127
  br i1 %cmp23.i, label %if.then25.i, label %land.lhs.true20.i.bnx2fc_xmit_l2_frame.exit_crit_edge

land.lhs.true20.i.bnx2fc_xmit_l2_frame.exit_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_xmit_l2_frame.exit

if.then25.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef nonnull %call21, ptr noundef nonnull @.str.109) #21
  br label %if.end31.thread.i

if.end31.i:                                       ; preds = %sw.bb14.i, %sw.bb12.i, %sw.bb.i
  %rc.0.i = phi i32 [ %call15.i, %sw.bb14.i ], [ %call13.i, %sw.bb12.i ], [ %call11.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool.not.i = icmp eq i32 %rc.0.i, 0
  br i1 %tobool.not.i, label %if.end31.i.if.end31.thread.i_crit_edge, label %if.end31.i.if.then33_crit_edge

if.end31.i.if.then33_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then33

if.end31.i.if.end31.thread.i_crit_edge:           ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end31.thread.i

if.end31.thread.i:                                ; preds = %if.end31.i.if.end31.thread.i_crit_edge, %if.then25.i, %fc_frame_payload_op.exit.i.if.end31.thread.i_crit_edge, %fc_frame_payload_get.exit.i.i.if.end31.thread.i_crit_edge, %if.then.i.if.end31.thread.i_crit_edge
  br label %if.then33

bnx2fc_xmit_l2_frame.exit:                        ; preds = %land.lhs.true20.i.bnx2fc_xmit_l2_frame.exit_crit_edge, %land.lhs.true.i.bnx2fc_xmit_l2_frame.exit_crit_edge, %fc_frame_header_get.exit.i.bnx2fc_xmit_l2_frame.exit_crit_edge
  %conv28.i = zext i8 %46 to i32
  %59 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %38, align 4
  %conv30.i = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef nonnull %call21, ptr noundef nonnull @.str.110, i32 noundef %conv28.i, i32 noundef %conv30.i) #21
  br label %if.end36

if.then33:                                        ; preds = %if.end31.thread.i, %if.end31.i.if.then33_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end31.i.if.then33_crit_edge ], [ 0, %if.end31.thread.i ]
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #21
  br label %cleanup144

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end15.if.else_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %hba_lock) #21
  br label %if.end36

if.end36:                                         ; preds = %if.else, %bnx2fc_xmit_l2_frame.exit
  %61 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i, align 4
  %add = add i32 %62, -4
  %div239 = lshr i32 %add, 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15
  %63 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %call37 = tail call i32 @fcoe_fc_crc(ptr noundef %fp) #21
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 7
  %64 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.i.not = icmp eq i32 %65, 0
  br i1 %tobool.i.not, label %if.else53, label %if.then39

if.then39:                                        ; preds = %if.end36
  tail call void @_raw_spin_lock(ptr noundef nonnull @bnx2fc_global_lock) #21
  %call.i = tail call i32 @fcoe_get_paged_crc_eof(ptr noundef %fp, i32 noundef 8, ptr noundef nonnull @bnx2fc_global) #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bnx2fc_global_lock) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool41.not = icmp eq i32 %call.i, 0
  br i1 %tobool41.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #23
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 17
  %66 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nr_frags, align 2
  %conv46 = zext i8 %69 to i32
  %sub47 = add nsw i32 %conv46, -1
  %arrayidx48 = getelementptr %struct.skb_shared_info, ptr %67, i32 0, i32 12, i32 %sub47
  %70 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx48, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %72 = load i32, ptr @pgprot_kernel, align 4
  %or.i254 = or i32 %72, 512
  %73 = tail call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %76, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !589
  %77 = tail call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i1.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 213
  %81 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %82, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !590
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %71, i32 noundef %or.i254) #21
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %67, i32 0, i32 12, i32 %sub47, i32 2
  %83 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bv_offset.i, align 4
  %add.ptr52 = getelementptr i8, ptr %call.i.i, i32 %84
  br label %if.end55

cleanup:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #21
  br label %cleanup144

if.else53:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #23
  %call54 = tail call ptr @skb_put(ptr noundef %fp, i32 noundef 8) #21
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %cleanup.thread
  %cp.1 = phi ptr [ %call54, %if.else53 ], [ %add.ptr52, %cleanup.thread ]
  %85 = ptrtoint ptr %cp.1 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 0, ptr %cp.1, align 1
  %fcoe_eof = getelementptr inbounds %struct.fcoe_crc_eof, ptr %cp.1, i32 0, i32 1
  %86 = ptrtoint ptr %fcoe_eof to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %17, ptr %fcoe_eof, align 1
  %neg = xor i32 %call37, -1
  %87 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %88 = ptrtoint ptr %cp.1 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %cp.1, align 1
  %89 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.i256.not = icmp eq i32 %90, 0
  br i1 %tobool.i256.not, label %if.end55.if.end61_crit_edge, label %do.end

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end61

do.end:                                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @kunmap_local_indexed(ptr noundef %cp.1) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !591
  %91 = tail call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i1.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 213
  %95 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %96, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !592
  %97 = tail call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %100, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end61

if.end61:                                         ; preds = %do.end, %if.end55.if.end61_crit_edge
  %call63 = tail call ptr @skb_push(ptr noundef %fp, i32 noundef 28) #21
  %101 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 18
  %103 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %102 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %104 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i257 = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 21
  %105 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i257, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 20
  %106 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i257, ptr %network_header.i, align 4
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 8
  %107 = ptrtoint ptr %mac_len to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 14, ptr %mac_len, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 15, i32 0, i32 18
  %108 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 -30458, ptr %protocol, align 8
  %netdev = getelementptr inbounds %struct.bnx2fc_interface, ptr %1, i32 0, i32 3
  %109 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %netdev, align 4
  %111 = getelementptr inbounds %struct.anon.44, ptr %fp, i32 0, i32 2
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %110, ptr %111, align 8
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %104, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %113 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 -30458, ptr %h_proto, align 1
  %map_dest = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 22
  %114 = ptrtoint ptr %map_dest to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %map_dest, align 2, !range !577
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool66.not = icmp eq i8 %115, 0
  br i1 %tobool66.not, label %if.else71, label %if.then67

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #23
  %116 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 14, ptr %add.ptr.i.i, align 1
  %arrayidx1.i264 = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %117 = ptrtoint ptr %arrayidx1.i264 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -4, ptr %arrayidx1.i264, align 1
  %arrayidx2.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %118 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %arrayidx2.i, align 1
  %119 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %fh_d_id, align 1
  %arrayidx4.i265 = getelementptr i8, ptr %add.ptr.i.i, i32 3
  %121 = ptrtoint ptr %arrayidx4.i265 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %arrayidx4.i265, align 1
  %122 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx1.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %124 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %arrayidx6.i, align 1
  %125 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx4.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %add.ptr.i.i, i32 5
  %127 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %arrayidx8.i, align 1
  br label %if.end75

if.else71:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #23
  %dest_addr = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 27
  %128 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %dest_addr, i32 6)
  br label %if.end75

if.end75:                                         ; preds = %if.else71, %if.then67
  %flogi_oxid = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 19
  %129 = ptrtoint ptr %flogi_oxid to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %flogi_oxid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %130)
  %cmp77.not = icmp eq i16 %130, -1
  %h_source89 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  br i1 %cmp77.not, label %if.else88, label %if.then85, !prof !575

if.then85:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #23
  %ctl_src_addr = getelementptr %struct.fcoe_ctlr, ptr %1, i32 -1, i32 28
  %131 = call ptr @memcpy(ptr %h_source89, ptr %ctl_src_addr, i32 6)
  br label %if.end92

if.else88:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #23
  %data_src_addr = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 6, i32 10
  %132 = call ptr @memcpy(ptr %h_source89, ptr %data_src_addr, i32 6)
  br label %if.end92

if.end92:                                         ; preds = %if.else88, %if.then85
  %add.ptr93 = getelementptr %struct.ethhdr, ptr %add.ptr.i.i, i32 1
  %133 = call ptr @memset(ptr %add.ptr93, i32 0, i32 13)
  %fcoe_sof = getelementptr inbounds %struct.fcoe_hdr, ptr %add.ptr93, i32 0, i32 2
  %134 = ptrtoint ptr %fcoe_sof to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %15, ptr %fcoe_sof, align 1
  %seq_offload = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 25
  %135 = ptrtoint ptr %seq_offload to i32
  call void @__asan_load1_noabort(i32 %135)
  %bf.load94 = load i8, ptr %seq_offload, align 8
  %136 = and i8 %bf.load94, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool96.not = icmp eq i8 %136, 0
  br i1 %tobool96.not, label %if.end92.if.else110_crit_edge, label %land.lhs.true97

if.end92.if.else110_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else110

land.lhs.true97:                                  ; preds = %if.end92
  %fr_max_payload = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 16
  %137 = ptrtoint ptr %fr_max_payload to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %fr_max_payload, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool102.not = icmp eq i16 %138, 0
  br i1 %tobool102.not, label %land.lhs.true97.if.else110_crit_edge, label %if.then103

land.lhs.true97.if.else110_crit_edge:             ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else110

if.then103:                                       ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #23
  %end.i266 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 17
  %139 = ptrtoint ptr %end.i266 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %end.i266, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %140, i32 0, i32 8
  %141 = ptrtoint ptr %gso_type to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 32, ptr %gso_type, align 8
  %142 = ptrtoint ptr %fr_max_payload to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %fr_max_payload, align 8
  br label %do.body116

if.else110:                                       ; preds = %land.lhs.true97.if.else110_crit_edge, %if.end92.if.else110_crit_edge
  %end.i268 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 17
  %144 = ptrtoint ptr %end.i268 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %end.i268, align 4
  %gso_type112 = getelementptr inbounds %struct.skb_shared_info, ptr %145, i32 0, i32 8
  %146 = ptrtoint ptr %gso_type112 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %gso_type112, align 8
  br label %do.body116

do.body116:                                       ; preds = %if.else110, %if.then103
  %end.i266.sink = phi ptr [ %end.i266, %if.then103 ], [ %end.i268, %if.else110 ]
  %.sink = phi i16 [ %143, %if.then103 ], [ 0, %if.else110 ]
  %147 = ptrtoint ptr %end.i266.sink to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %end.i266.sink, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %gso_size to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %.sink, ptr %gso_size, align 4
  %stats119 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 16
  %150 = ptrtoint ptr %stats119 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %stats119, align 8
  %152 = ptrtoint ptr %151 to i32
  %153 = tail call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %156, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !593
  %157 = tail call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i = and i32 %157, -16384
  %158 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cpu, align 4
  %arrayidx126 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %160
  %161 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx126, align 4
  %add127 = add i32 %162, %152
  %163 = inttoptr i32 %add127 to ptr
  %TxFrames = getelementptr inbounds %struct.fc_stats, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %TxFrames to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %TxFrames, align 8
  %inc = add i64 %165, 1
  store i64 %inc, ptr %TxFrames, align 8
  %166 = zext i32 %div239 to i64
  %TxWords = getelementptr inbounds %struct.fc_stats, ptr %163, i32 0, i32 2
  %167 = ptrtoint ptr %TxWords to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %TxWords, align 8
  %add129 = add i64 %168, %166
  store i64 %add129, ptr %TxWords, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !594
  %169 = tail call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i240 = and i32 %169, -16384
  %170 = inttoptr i32 %and.i.i.i240 to ptr
  %preempt_count.i.i241 = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %preempt_count.i.i241 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %preempt_count.i.i241, align 4
  %sub.i = add i32 %172, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i241, align 4
  %173 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %lport, ptr %cb, align 8
  %qlen = getelementptr %struct.fc_lport, ptr %lport, i32 1, i32 3
  %174 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool136.not = icmp eq i32 %175, 0
  br i1 %tobool136.not, label %if.else138, label %if.then137

if.then137:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @fcoe_check_wait_queue(ptr noundef %lport, ptr noundef %fp) #21
  br label %cleanup144

if.else138:                                       ; preds = %do.body116
  %call139 = tail call i32 @fcoe_start_io(ptr noundef %fp) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.else138.cleanup144_crit_edge, label %if.then141

if.else138.cleanup144_crit_edge:                  ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup144

if.then141:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @fcoe_check_wait_queue(ptr noundef %lport, ptr noundef %fp) #21
  br label %cleanup144

cleanup144:                                       ; preds = %if.then141, %if.else138.cleanup144_crit_edge, %if.then137, %cleanup, %if.then33, %if.end10.cleanup144_crit_edge, %if.then9, %if.then
  %retval.1 = phi i32 [ %retval.0.i.ph, %if.then33 ], [ -12, %cleanup ], [ -22, %if.then9 ], [ 0, %if.then ], [ 0, %if.end10.cleanup144_crit_edge ], [ 0, %if.else138.cleanup144_crit_edge ], [ 0, %if.then141 ], [ 0, %if.then137 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bnx2fc_elsct_send(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_get_lesb(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_rport_event_handler(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_cleanup(ptr noundef readonly %lport) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %lport, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %hba1 = getelementptr inbounds %struct.bnx2fc_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba1, align 4
  %4 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !575

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.111) #24
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %hba_mutex = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %hba_mutex, i32 noundef 0) #21
  %hba_lock = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %hba_lock) #21
  %tgt_ofld_list = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end7
  %i.031 = phi i32 [ 0, %do.end7 ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %tgt_ofld_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tgt_ofld_list, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %i.031
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.then9:                                         ; preds = %for.body
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %cmp11 = icmp eq ptr %10, %add.ptr.i
  br i1 %cmp11, label %if.then12, label %if.then9.for.inc_crit_edge

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_raw_spin_unlock_bh(ptr noundef %hba_lock) #21
  tail call void (ptr, ptr, ...) @BNX2FC_TGT_DBG(ptr noundef nonnull %8, ptr noundef nonnull @.str.112) #21
  tail call void @bnx2fc_flush_active_ios(ptr noundef nonnull %8) #21
  tail call void @_raw_spin_lock_bh(ptr noundef %hba_lock) #21
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.then9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_raw_spin_unlock_bh(ptr noundef %hba_lock) #21
  tail call void @mutex_unlock(ptr noundef %hba_mutex) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnx2fc_abort_io(ptr nocapture noundef %lport) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_ctlr_els_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bnx2fc_tgt_lookup(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_fc_crc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcoe_check_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_start_io(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @BNX2FC_TGT_DBG(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_send_adisc(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_send_logo(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_send_rls(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_flush_active_ios(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_exch_mgr_alloc(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #17

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_lport_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_fabric_login(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_remove_pack(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__bnx2fc_destroy(ptr noundef %interface) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr %struct.fcoe_ctlr, ptr %interface, i32 -1, i32 2
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %hba1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface, i32 0, i32 2
  %2 = ptrtoint ptr %hba1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba1.i, align 4
  %timer.i = getelementptr %struct.fc_lport, ptr %1, i32 1, i32 6, i32 8, i32 1, i32 4
  %call2.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #21
  tail call void @fcoe_clean_pending_queue(ptr noundef %1) #21
  %fcoe_packet_type.i.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface, i32 0, i32 4
  tail call void @__dev_remove_pack(ptr noundef %fcoe_packet_type.i.i) #21
  %fip_packet_type.i.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface, i32 0, i32 5
  tail call void @__dev_remove_pack(ptr noundef %fip_packet_type.i.i) #21
  tail call void @synchronize_net() #21
  %hba_lock.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %hba_lock.i.i) #21
  %vports.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %vports.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vports.i.i, align 8
  %cmp.not26.i.i = icmp eq ptr %5, %vports.i.i
  br i1 %cmp.not26.i.i, label %entry.bnx2fc_interface_cleanup.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.bnx2fc_interface_cleanup.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_interface_cleanup.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %blport.027.i.i = phi ptr [ %tmp.029.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %5, %entry.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %blport.027.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.029.i.i = load ptr, ptr %blport.027.i.i, align 4
  %lport8.i.i = getelementptr inbounds %struct.bnx2fc_lport, ptr %blport.027.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %lport8.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lport8.i.i, align 4
  %cmp9.i.i = icmp eq ptr %8, %1
  br i1 %cmp9.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %blport.027.i.i) #21
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del.exit.i.i_crit_edge

if.then.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %blport.027.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i.i, align 4
  %11 = ptrtoint ptr %blport.027.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %blport.027.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del.exit.i.i_crit_edge
  %15 = ptrtoint ptr %blport.027.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %blport.027.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %blport.027.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %blport.027.i.i) #21
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %list_del.exit.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %tmp.029.i.i, %vports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.bnx2fc_interface_cleanup.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i.i

for.inc.i.i.bnx2fc_interface_cleanup.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_interface_cleanup.exit

bnx2fc_interface_cleanup.exit:                    ; preds = %for.inc.i.i.bnx2fc_interface_cleanup.exit_crit_edge, %entry.bnx2fc_interface_cleanup.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %hba_lock.i.i) #21
  tail call fastcc void @bnx2fc_stop(ptr noundef %interface)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %interface) #21
  br i1 %call.i.i, label %if.end.i.i, label %bnx2fc_interface_cleanup.exit.list_del.exit_crit_edge

bnx2fc_interface_cleanup.exit.list_del.exit_crit_edge: ; preds = %bnx2fc_interface_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del.exit

if.end.i.i:                                       ; preds = %bnx2fc_interface_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %interface, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %interface, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %bnx2fc_interface_cleanup.exit.list_del.exit_crit_edge
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %1, i32 1
  %23 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %interface, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %interface, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @bnx2fc_port_destroy(ptr noundef %add.ptr.i)
  tail call fastcc void @bnx2fc_interface_put(ptr noundef %interface)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2fc_port_destroy(ptr nocapture noundef readonly %port) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %lport1 = getelementptr inbounds %struct.fcoe_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %lport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport1, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %1, ptr noundef nonnull @.str.125, ptr noundef nonnull @__func__.bnx2fc_port_destroy, ptr noundef %1) #21
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 2)) #21
  %2 = load ptr, ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2), align 4
  %cmp.not18.i.i = icmp eq ptr %2, getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2)
  br i1 %cmp.not18.i.i, label %entry.bnx2fc_if_destroy.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.bnx2fc_if_destroy.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_if_destroy.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %skb.019.i.i = phi ptr [ %next.020.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %2, %entry.for.body.i.i_crit_edge ]
  %3 = ptrtoint ptr %skb.019.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %next.020.i.i = load ptr, ptr %skb.019.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.019.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb.i.i.i, align 4
  %cmp4.i.i = icmp eq ptr %5, %1
  br i1 %cmp4.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %6 = load i32, ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 1), align 4
  %sub.i.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i.i, ptr getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 1), align 4
  %7 = ptrtoint ptr %skb.019.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb.019.i.i, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.44, ptr %skb.019.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %skb.019.i.i, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.44, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %prev17.i.i.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %10, align 8
  tail call void @kfree_skb_reason(ptr noundef %skb.019.i.i, i32 noundef 0) #21
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %next.020.i.i, getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2)
  br i1 %cmp.not.i.i, label %for.inc.i.i.bnx2fc_if_destroy.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i.i

for.inc.i.i.bnx2fc_if_destroy.exit_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_if_destroy.exit

bnx2fc_if_destroy.exit:                           ; preds = %for.inc.i.i.bnx2fc_if_destroy.exit_crit_edge, %entry.bnx2fc_if_destroy.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.fcoe_percpu_s, ptr @bnx2fc_global, i32 0, i32 2, i32 2)) #21
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  tail call void @fc_remove_host(ptr noundef %14) #21
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  tail call void @scsi_remove_host(ptr noundef %16) #21
  tail call void @fc_exch_mgr_free(ptr noundef %1) #21
  %stats.i.i = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats.i.i, align 8
  tail call void @free_percpu(ptr noundef %18) #21
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  tail call void @scsi_host_put(ptr noundef %20) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remove_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_exch_mgr_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_transport_attach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_l2_rcv_thread(ptr noundef %arg) #1 align 64 {
entry:
  %crc_eof.i = alloca %struct.fcoe_crc_eof, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %3, i32 noundef -20) #21
  br label %__here

__here:                                           ; preds = %entry
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 212
  %6 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 ptrtoint (ptr blockaddress(@bnx2fc_l2_rcv_thread, %__here) to i32), ptr %task_state_change, align 4
  %7 = load ptr, ptr %task, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %7, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !595
  %call62234 = call zeroext i1 @kthread_should_stop() #21
  br i1 %call62234, label %__here.__here197_crit_edge, label %while.body.lr.ph

__here.__here197_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here197

while.body.lr.ph:                                 ; preds = %__here
  %fcoe_rx_list = getelementptr inbounds %struct.fcoe_percpu_s, ptr %arg, i32 0, i32 2
  %lock = getelementptr inbounds %struct.fcoe_percpu_s, ptr %arg, i32 0, i32 2, i32 2
  %qlen.i.i = getelementptr inbounds %struct.fcoe_percpu_s, ptr %arg, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds %struct.fcoe_crc_eof, ptr %crc_eof.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %__here123.while.body_crit_edge, %while.body.lr.ph
  call void @schedule() #21
  call void @_raw_spin_lock_bh(ptr noundef %lock) #21
  %10 = ptrtoint ptr %fcoe_rx_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fcoe_rx_list, align 4
  %cmp.i.i231 = icmp eq ptr %11, %fcoe_rx_list
  %tobool.not.i230232 = icmp eq ptr %11, null
  %tobool.not.i233 = or i1 %cmp.i.i231, %tobool.not.i230232
  br i1 %tobool.not.i233, label %while.body.__here123_crit_edge, label %while.body.while.body68_crit_edge

while.body.while.body68_crit_edge:                ; preds = %while.body
  br label %while.body68

while.body.__here123_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here123

while.body68:                                     ; preds = %bnx2fc_recv_frame.exit.while.body68_crit_edge, %while.body.while.body68_crit_edge
  %12 = phi ptr [ %164, %bnx2fc_recv_frame.exit.while.body68_crit_edge ], [ %11, %while.body.while.body68_crit_edge ]
  %13 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %12, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %18, ptr %prev17.i.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %16, ptr %18, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crc_eof.i) #21
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3
  %21 = ptrtoint ptr %crc_eof.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %crc_eof.i, align 8
  %22 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb.i.i, align 4
  %cmp.i = icmp eq ptr %23, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i, !prof !580

do.end.i:                                         ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #23
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #24
  call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #21
  br label %bnx2fc_recv_frame.exit

if.end.i:                                         ; preds = %while.body68
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i, label %if.end.i.if.end6.i_crit_edge, label %skb_linearize.exit.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end6.i

skb_linearize.exit.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %call.i.i.i = call ptr @__pskb_pull_tail(ptr noundef nonnull %12, i32 noundef %25) #21
  br label %if.end6.i

if.end6.i:                                        ; preds = %skb_linearize.exit.i, %if.end.i.if.end6.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 18
  %26 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 15, i32 0, i32 21
  %28 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %29 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %conv.i.i.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %31 to i32
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %conv.i.i
  %call12.i = call ptr @skb_pull(ptr noundef nonnull %12, i32 noundef 14) #21
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 6
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %33, -8
  %stats17.i = getelementptr inbounds %struct.fc_lport, ptr %23, i32 0, i32 16
  %34 = ptrtoint ptr %stats17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stats17.i, align 8
  %36 = ptrtoint ptr %35 to i32
  %37 = call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %40, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !596
  %41 = call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %46, %36
  %47 = inttoptr i32 %add.i to ptr
  %RxFrames.i = getelementptr inbounds %struct.fc_stats, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %RxFrames.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %RxFrames.i, align 8
  %inc.i = add i64 %49, 1
  store i64 %inc.i, ptr %RxFrames.i, align 8
  %div250.i = lshr i32 %sub.i, 2
  %conv.i = zext i32 %div250.i to i64
  %RxWords.i = getelementptr inbounds %struct.fc_stats, ptr %47, i32 0, i32 4
  %50 = ptrtoint ptr %RxWords.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %RxWords.i, align 8
  %add24.i = add i64 %51, %conv.i
  store i64 %add24.i, ptr %RxWords.i, align 8
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !597
  %52 = call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i251.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i251.i to ptr
  %preempt_count.i.i252.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i252.i, align 4
  %sub.i.i228 = add i32 %55, -1
  store volatile i32 %sub.i.i228, ptr %preempt_count.i.i252.i, align 4
  %fr_seq.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 4
  %56 = ptrtoint ptr %fr_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %fr_seq.i.i, align 4
  %fr_flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 20
  %57 = ptrtoint ptr %fr_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %fr_flags.i.i, align 4
  %fr_encaps.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 21
  %58 = ptrtoint ptr %fr_encaps.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %fr_encaps.i.i, align 1
  %59 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %23, ptr %cb.i.i, align 8
  %fcoe_sof.i = getelementptr inbounds %struct.fcoe_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %fcoe_sof.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %fcoe_sof.i, align 1
  %fr_sof.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 18
  %62 = ptrtoint ptr %fr_sof.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %fr_sof.i, align 2
  %call34.i = call i32 @skb_copy_bits(ptr noundef nonnull %12, i32 noundef %sub.i, ptr noundef nonnull %crc_eof.i, i32 noundef 8) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #21
  br label %bnx2fc_recv_frame.exit

if.end37.i:                                       ; preds = %if.end6.i
  %63 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %9, align 4
  %fr_eof.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 19
  %65 = ptrtoint ptr %fr_eof.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %fr_eof.i, align 1
  %66 = ptrtoint ptr %crc_eof.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %crc_eof.i, align 8
  %fr_crc44.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 12
  %68 = ptrtoint ptr %fr_crc44.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %fr_crc44.i, align 4
  %69 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %sub.i)
  %cmp.i.i229 = icmp ugt i32 %70, %sub.i
  br i1 %cmp.i.i229, label %cond.true.i265.i, label %if.end37.i.if.end48.i_crit_edge

if.end37.i.if.end48.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end48.i

cond.true.i265.i:                                 ; preds = %if.end37.i
  %71 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i.i, label %__skb_trim.exit.i.i.i, label %pskb_trim.exit.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i265.i
  call void @__sanitizer_cov_trace_pc() #23
  %73 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub.i, ptr %len.i, align 4
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 19
  %74 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %75, i32 %sub.i
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 16
  %76 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %if.end48thread-pre-split.i

pskb_trim.exit.i:                                 ; preds = %cond.true.i265.i
  %call.i.i266.i = call i32 @___pskb_trim(ptr noundef nonnull %12, i32 noundef %sub.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i266.i)
  %tobool46.not.i = icmp eq i32 %call.i.i266.i, 0
  br i1 %tobool46.not.i, label %pskb_trim.exit.i.if.end48thread-pre-split.i_crit_edge, label %if.then47.i

pskb_trim.exit.i.if.end48thread-pre-split.i_crit_edge: ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end48thread-pre-split.i

if.then47.i:                                      ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #21
  br label %bnx2fc_recv_frame.exit

if.end48thread-pre-split.i:                       ; preds = %pskb_trim.exit.i.if.end48thread-pre-split.i_crit_edge, %__skb_trim.exit.i.i.i
  %77 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr.i = load i32, ptr %len.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end48thread-pre-split.i, %if.end37.i.if.end48.i_crit_edge
  %78 = phi i32 [ %.pr.i, %if.end48thread-pre-split.i ], [ %70, %if.end37.i.if.end48.i_crit_edge ]
  %add.ptr.i267.i = getelementptr %struct.fc_lport, ptr %23, i32 1
  %79 = ptrtoint ptr %add.ptr.i267.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i267.i, align 4
  %add.ptr.i = getelementptr %struct.fcoe_ctlr, ptr %80, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %78)
  %cmp.i268.i = icmp ult i32 %78, 24
  br i1 %cmp.i268.i, label %do.end.i.i, label %if.end48.i.fc_frame_header_get.exit.i_crit_edge, !prof !580

if.end48.i.fc_frame_header_get.exit.i_crit_edge:  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %fc_frame_header_get.exit.i

do.end.i.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.107, i32 noundef 161, i32 noundef 9, ptr noundef null) #21
  br label %fc_frame_header_get.exit.i

fc_frame_header_get.exit.i:                       ; preds = %do.end.i.i, %if.end48.i.fc_frame_header_get.exit.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 19
  %81 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx51.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 3
  %83 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx51.i, align 1
  %conv.i269.i = zext i8 %84 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i269.i, 16
  %arrayidx1.i.i = getelementptr i8, ptr %arrayidx51.i, i32 1
  %85 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %86 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %arrayidx51.i, i32 2
  %87 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %88 to i32
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  %fh_d_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %82, i32 0, i32 1
  %89 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %fh_d_id.i, align 1
  %conv.i270.i = zext i8 %90 to i32
  %shl.i271.i = shl nuw nsw i32 %conv.i270.i, 16
  %arrayidx1.i272.i = getelementptr %struct.fc_frame_header, ptr %82, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %arrayidx1.i272.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx1.i272.i, align 1
  %conv2.i273.i = zext i8 %92 to i32
  %shl3.i274.i = shl nuw nsw i32 %conv2.i273.i, 8
  %or.i275.i = or i32 %shl3.i274.i, %shl.i271.i
  %arrayidx4.i276.i = getelementptr %struct.fc_frame_header, ptr %82, i32 0, i32 1, i32 2
  %93 = ptrtoint ptr %arrayidx4.i276.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx4.i276.i, align 1
  %conv5.i277.i = zext i8 %94 to i32
  %or6.i278.i = or i32 %or.i275.i, %conv5.i277.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or6.i.i, i32 %or6.i278.i)
  %cmp55.not.i = icmp eq i32 %or6.i.i, %or6.i278.i
  br i1 %cmp55.not.i, label %if.end58.i, label %if.then57.i

if.then57.i:                                      ; preds = %fc_frame_header_get.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef nonnull %23, ptr noundef nonnull @.str.161, ptr noundef %add.ptr.i.i.i) #21
  call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #21
  br label %bnx2fc_recv_frame.exit

if.end58.i:                                       ; preds = %fc_frame_header_get.exit.i
  %call62.i = call ptr @fc_vport_id_lookup(ptr noundef nonnull %23, i32 noundef %or6.i.i) #21
  %tobool63.not.i = icmp eq ptr %call62.i, null
  br i1 %tobool63.not.i, label %if.end58.i.if.end70.i_crit_edge, label %if.then64.i

if.end58.i.if.end70.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end70.i

if.then64.i:                                      ; preds = %if.end58.i
  %data_src_addr.i = getelementptr %struct.fc_lport, ptr %call62.i, i32 1, i32 6, i32 10
  %95 = ptrtoint ptr %data_src_addr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %data_src_addr.i, align 4
  %97 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i.i.i, align 4
  %xor.i.i = xor i32 %98, %96
  %add.ptr.i289.i = getelementptr %struct.fc_lport, ptr %call62.i, i32 1, i32 6, i32 10, i32 0, i32 1
  %99 = ptrtoint ptr %add.ptr.i289.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %add.ptr.i289.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %101 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %102, %100
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i290.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i290.i)
  %cmp.i291.i = icmp eq i32 %or.i290.i, 0
  br i1 %cmp.i291.i, label %if.then64.i.if.end70.i_crit_edge, label %if.then68.i

if.then64.i.if.end70.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end70.i

if.then68.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef nonnull %23, ptr noundef nonnull @.str.162) #21
  call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #21
  br label %bnx2fc_recv_frame.exit

if.end70.i:                                       ; preds = %if.then64.i.if.end70.i_crit_edge, %if.end58.i.if.end70.i_crit_edge
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool71.not.i = icmp eq i32 %104, 0
  br i1 %tobool71.not.i, label %if.end70.i.if.end79.i_crit_edge, label %if.then72.i

if.end70.i.if.end79.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end79.i

if.then72.i:                                      ; preds = %if.end70.i
  %dest_addr.i = getelementptr %struct.fcoe_ctlr, ptr %80, i32 -1, i32 27
  %105 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %h_source.i, align 4
  %107 = ptrtoint ptr %dest_addr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dest_addr.i, align 4
  %xor.i292.i = xor i32 %108, %106
  %add.ptr.i293.i = getelementptr i8, ptr %h_source.i, i32 4
  %109 = ptrtoint ptr %add.ptr.i293.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %add.ptr.i293.i, align 2
  %add.ptr1.i294.i = getelementptr %struct.fcoe_ctlr, ptr %80, i32 -1, i32 27, i32 4
  %111 = ptrtoint ptr %add.ptr1.i294.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %add.ptr1.i294.i, align 2
  %xor37.i295.i = xor i16 %112, %110
  %xor3.i296.i = zext i16 %xor37.i295.i to i32
  %or.i297.i = or i32 %xor.i292.i, %xor3.i296.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i297.i)
  %cmp.i298.i = icmp eq i32 %or.i297.i, 0
  br i1 %cmp.i298.i, label %if.then72.i.if.end79.i_crit_edge, label %if.then75.i

if.then72.i.if.end79.i_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end79.i

if.then75.i:                                      ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef nonnull %23, ptr noundef nonnull @.str.163, ptr noundef %h_source.i, ptr noundef %dest_addr.i) #21
  call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #21
  br label %bnx2fc_recv_frame.exit

if.end79.i:                                       ; preds = %if.then72.i.if.end79.i_crit_edge, %if.end70.i.if.end79.i_crit_edge
  %113 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %82, align 4
  %115 = zext i8 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.261)
  switch i8 %114, label %if.end79.i.if.end112.i_crit_edge [
    i8 1, label %land.lhs.true.i
    i8 34, label %land.lhs.true92.i
    i8 -127, label %if.then111.i
  ]

if.end79.i.if.end112.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end112.i

land.lhs.true.i:                                  ; preds = %if.end79.i
  %fh_type.i = getelementptr inbounds %struct.fc_frame_header, ptr %82, i32 0, i32 4
  %116 = ptrtoint ptr %fh_type.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %fh_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %117)
  %cmp84.i = icmp eq i8 %117, 8
  br i1 %cmp84.i, label %if.then86.i, label %land.lhs.true.i.if.end112.i_crit_edge

land.lhs.true.i.if.end112.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end112.i

if.then86.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #21
  br label %bnx2fc_recv_frame.exit

land.lhs.true92.i:                                ; preds = %if.end79.i
  %fh_type93.i = getelementptr inbounds %struct.fc_frame_header, ptr %82, i32 0, i32 4
  %118 = ptrtoint ptr %fh_type93.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %fh_type93.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %119)
  %cmp95.i = icmp eq i8 %119, 1
  br i1 %cmp95.i, label %if.then97.i, label %land.lhs.true92.i.if.end112.i_crit_edge

land.lhs.true92.i.if.end112.i_crit_edge:          ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end112.i

if.then97.i:                                      ; preds = %land.lhs.true92.i
  %120 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %121)
  %cmp.i.i.i = icmp ugt i32 %121, 24
  br i1 %cmp.i.i.i, label %fc_frame_payload_get.exit.i.i, label %if.then97.i.if.end112.i_crit_edge

if.then97.i.if.end112.i_crit_edge:                ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end112.i

fc_frame_payload_get.exit.i.i:                    ; preds = %if.then97.i
  %122 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i299.i = getelementptr %struct.fc_frame_header, ptr %123, i32 1
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i299.i, null
  br i1 %tobool.not.i.i, label %fc_frame_payload_get.exit.i.i.if.end112.i_crit_edge, label %fc_frame_payload_op.exit.i

fc_frame_payload_get.exit.i.i.if.end112.i_crit_edge: ; preds = %fc_frame_payload_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end112.i

fc_frame_payload_op.exit.i:                       ; preds = %fc_frame_payload_get.exit.i.i
  %124 = ptrtoint ptr %add.ptr.i.i299.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %add.ptr.i.i299.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %125)
  %cond.i = icmp eq i8 %125, 5
  br i1 %cond.i, label %sw.bb.i, label %fc_frame_payload_op.exit.i.if.end112.i_crit_edge

fc_frame_payload_op.exit.i.if.end112.i_crit_edge: ; preds = %fc_frame_payload_op.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end112.i

sw.bb.i:                                          ; preds = %fc_frame_payload_op.exit.i
  %fh_s_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %82, i32 0, i32 3
  %126 = ptrtoint ptr %fh_s_id.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %fh_s_id.i, align 1
  %conv.i300.i = zext i8 %127 to i32
  %shl.i301.i = shl nuw nsw i32 %conv.i300.i, 16
  %arrayidx1.i302.i = getelementptr %struct.fc_frame_header, ptr %82, i32 0, i32 3, i32 1
  %128 = ptrtoint ptr %arrayidx1.i302.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx1.i302.i, align 1
  %conv2.i303.i = zext i8 %129 to i32
  %shl3.i304.i = shl nuw nsw i32 %conv2.i303.i, 8
  %or.i305.i = or i32 %shl3.i304.i, %shl.i301.i
  %arrayidx4.i306.i = getelementptr %struct.fc_frame_header, ptr %82, i32 0, i32 3, i32 2
  %130 = ptrtoint ptr %arrayidx4.i306.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx4.i306.i, align 1
  %conv5.i307.i = zext i8 %131 to i32
  %or6.i308.i = or i32 %or.i305.i, %conv5.i307.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %or6.i308.i)
  %cmp102.i = icmp eq i32 %or6.i308.i, 16777214
  br i1 %cmp102.i, label %if.then104.i, label %sw.bb.i.if.end112.i_crit_edge

sw.bb.i.if.end112.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end112.i

if.then104.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #21
  br label %bnx2fc_recv_frame.exit

if.then111.i:                                     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #21
  br label %bnx2fc_recv_frame.exit

if.end112.i:                                      ; preds = %sw.bb.i.if.end112.i_crit_edge, %fc_frame_payload_op.exit.i.if.end112.i_crit_edge, %fc_frame_payload_get.exit.i.i.if.end112.i_crit_edge, %if.then97.i.if.end112.i_crit_edge, %land.lhs.true92.i.if.end112.i_crit_edge, %land.lhs.true.i.if.end112.i_crit_edge, %if.end79.i.if.end112.i_crit_edge
  %port_id.i = getelementptr inbounds %struct.fc_lport, ptr %23, i32 0, i32 18
  %132 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %port_id.i, align 8
  %134 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %fh_d_id.i, align 1
  %conv.i309.i = zext i8 %135 to i32
  %shl.i310.i = shl nuw nsw i32 %conv.i309.i, 16
  %136 = ptrtoint ptr %arrayidx1.i272.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx1.i272.i, align 1
  %conv2.i312.i = zext i8 %137 to i32
  %shl3.i313.i = shl nuw nsw i32 %conv2.i312.i, 8
  %or.i314.i = or i32 %shl3.i313.i, %shl.i310.i
  %138 = ptrtoint ptr %arrayidx4.i276.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx4.i276.i, align 1
  %conv5.i316.i = zext i8 %139 to i32
  %or6.i317.i = or i32 %or.i314.i, %conv5.i316.i
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %or6.i317.i)
  %cmp116.not.i = icmp eq i32 %133, %or6.i317.i
  %tobool63.not.not.i = xor i1 %tobool63.not.i, true
  %brmerge.i = select i1 %cmp116.not.i, i1 true, i1 %tobool63.not.not.i
  br i1 %brmerge.i, label %if.end125.i, label %if.then120.i

if.then120.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef nonnull %23, ptr noundef nonnull @.str.164, i32 noundef %133, i32 noundef %or6.i317.i) #21
  call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #21
  br label %bnx2fc_recv_frame.exit

if.end125.i:                                      ; preds = %if.end112.i
  %140 = ptrtoint ptr %fr_crc44.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %fr_crc44.i, align 4
  %142 = call i32 @llvm.bswap.i32(i32 %141) #21
  %143 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %data.i.i.i, align 4
  %call130.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %144, i32 noundef %sub.i) #25
  %neg.i = xor i32 %call130.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %neg.i)
  %cmp131.not.i = icmp eq i32 %142, %neg.i
  br i1 %cmp131.not.i, label %if.end169.i, label %do.body140.i, !prof !575

do.body140.i:                                     ; preds = %if.end125.i
  %145 = ptrtoint ptr %stats17.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %stats17.i, align 8
  %147 = ptrtoint ptr %146 to i32
  %148 = call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i253.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i253.i to ptr
  %preempt_count.i.i254.i = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %preempt_count.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %preempt_count.i.i254.i, align 4
  %add.i255.i = add i32 %151, 1
  store volatile i32 %add.i255.i, ptr %preempt_count.i.i254.i, align 4
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !598
  %152 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cpu.i, align 4
  %arrayidx154.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %153
  %154 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx154.i, align 4
  %add155.i = add i32 %155, %147
  %156 = inttoptr i32 %add155.i to ptr
  %InvalidCRCCount.i = getelementptr inbounds %struct.fc_stats, ptr %156, i32 0, i32 13
  %157 = ptrtoint ptr %InvalidCRCCount.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %InvalidCRCCount.i, align 8
  %inc156.i = add i64 %158, 1
  store i64 %inc156.i, ptr %InvalidCRCCount.i, align 8
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !599
  %159 = call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i256.i = and i32 %159, -16384
  %160 = inttoptr i32 %and.i.i.i256.i to ptr
  %preempt_count.i.i257.i = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %preempt_count.i.i257.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %preempt_count.i.i257.i, align 4
  %sub.i258.i = add i32 %162, -1
  store volatile i32 %sub.i258.i, ptr %preempt_count.i.i257.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %158)
  %cmp160.i = icmp ult i64 %158, 5
  br i1 %cmp160.i, label %do.end165.i, label %do.body140.i.if.end168.i_crit_edge

do.body140.i.if.end168.i_crit_edge:               ; preds = %do.body140.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end168.i

do.end165.i:                                      ; preds = %do.body140.i
  call void @__sanitizer_cov_trace_pc() #23
  %call167.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #24
  br label %if.end168.i

if.end168.i:                                      ; preds = %do.end165.i, %do.body140.i.if.end168.i_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #21
  br label %bnx2fc_recv_frame.exit

if.end169.i:                                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @fc_exch_recv(ptr noundef nonnull %23, ptr noundef nonnull %12) #21
  br label %bnx2fc_recv_frame.exit

bnx2fc_recv_frame.exit:                           ; preds = %if.end169.i, %if.end168.i, %if.then120.i, %if.then111.i, %if.then104.i, %if.then86.i, %if.then75.i, %if.then68.i, %if.then57.i, %if.then47.i, %if.then36.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crc_eof.i) #21
  call void @_raw_spin_lock_bh(ptr noundef %lock) #21
  %163 = ptrtoint ptr %fcoe_rx_list to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %fcoe_rx_list, align 4
  %cmp.i.i = icmp eq ptr %164, %fcoe_rx_list
  %tobool.not.i230 = icmp eq ptr %164, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i230
  br i1 %tobool.not.i, label %bnx2fc_recv_frame.exit.__here123_crit_edge, label %bnx2fc_recv_frame.exit.while.body68_crit_edge

bnx2fc_recv_frame.exit.while.body68_crit_edge:    ; preds = %bnx2fc_recv_frame.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body68

bnx2fc_recv_frame.exit.__here123_crit_edge:       ; preds = %bnx2fc_recv_frame.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here123

__here123:                                        ; preds = %bnx2fc_recv_frame.exit.__here123_crit_edge, %while.body.__here123_crit_edge
  %165 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %task, align 8
  %task_state_change127 = getelementptr inbounds %struct.task_struct, ptr %166, i32 0, i32 212
  %167 = ptrtoint ptr %task_state_change127 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 ptrtoint (ptr blockaddress(@bnx2fc_l2_rcv_thread, %__here123) to i32), ptr %task_state_change127, align 4
  %168 = load ptr, ptr %task, align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile i32 1, ptr %168, align 128
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #21
  %call62 = call zeroext i1 @kthread_should_stop() #21
  br i1 %call62, label %__here123.__here197_crit_edge, label %__here123.while.body_crit_edge

__here123.while.body_crit_edge:                   ; preds = %__here123
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

__here123.__here197_crit_edge:                    ; preds = %__here123
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here197

__here197:                                        ; preds = %__here123.__here197_crit_edge, %__here.__here197_crit_edge
  %170 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %task, align 8
  %task_state_change201 = getelementptr inbounds %struct.task_struct, ptr %171, i32 0, i32 212
  %172 = ptrtoint ptr %task_state_change201 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 ptrtoint (ptr blockaddress(@bnx2fc_l2_rcv_thread, %__here197) to i32), ptr %task_state_change201, align 4
  %173 = load ptr, ptr %task, align 8
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile i32 0, ptr %173, align 128
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_cpu_online(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @bnx2fc_percpu to i32)
  %2 = inttoptr i32 %add to ptr
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @bnx2fc_percpu_io_thread, ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str.168, i32 noundef %cpu) #21
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @kthread_bind(ptr noundef %call, i32 noundef %cpu) #21
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %2, align 4
  %call4 = tail call i32 @wake_up_process(ptr noundef %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_cpu_offline(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body7_crit_edge, label %do.end, !prof !575

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i32 noundef %cpu) #24
  br label %do.body7

do.body7:                                         ; preds = %do.end, %entry.do.body7_crit_edge
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @bnx2fc_percpu to i32)
  %3 = inttoptr i32 %add to ptr
  %fp_work_lock = getelementptr inbounds %struct.bnx2fc_percpu_s, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %fp_work_lock) #21
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  store ptr null, ptr %3, align 4
  %work_list = getelementptr inbounds %struct.bnx2fc_percpu_s, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %work_list, align 4
  %cmp.not49 = icmp eq ptr %7, %work_list
  br i1 %cmp.not49, label %do.body7.for.end_crit_edge, label %do.body7.for.body_crit_edge

do.body7.for.body_crit_edge:                      ; preds = %do.body7
  br label %for.body

do.body7.for.end_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %do.body7.for.body_crit_edge
  %work.050 = phi ptr [ %tmp.0, %list_del_init.exit.for.body_crit_edge ], [ %7, %do.body7.for.body_crit_edge ]
  %8 = ptrtoint ptr %work.050 to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.0 = load ptr, ptr %work.050, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %work.050) #21
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %work.050, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %work.050 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %work.050, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %work.050 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %work.050, ptr %work.050, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %work.050, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %work.050, ptr %prev.i3.i, align 4
  %tgt = getelementptr inbounds %struct.bnx2fc_work, ptr %work.050, i32 0, i32 1
  %17 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tgt, align 4
  %wqe = getelementptr inbounds %struct.bnx2fc_work, ptr %work.050, i32 0, i32 4
  %19 = ptrtoint ptr %wqe to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %wqe, align 4
  %rq_data = getelementptr inbounds %struct.bnx2fc_work, ptr %work.050, i32 0, i32 3
  %num_rq = getelementptr inbounds %struct.bnx2fc_work, ptr %work.050, i32 0, i32 5
  %21 = ptrtoint ptr %num_rq to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_rq, align 2
  %task = getelementptr inbounds %struct.bnx2fc_work, ptr %work.050, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 4
  tail call void @bnx2fc_process_cq_compl(ptr noundef %18, i16 noundef zeroext %20, ptr noundef %rq_data, i8 noundef zeroext %22, ptr noundef %24) #21
  tail call void @kfree(ptr noundef %work.050) #21
  %cmp.not = icmp eq ptr %tmp.0, %work_list
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %do.body7.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %fp_work_lock) #21
  %tobool29.not = icmp eq ptr %5, null
  br i1 %tobool29.not, label %for.end.if.end32_crit_edge, label %if.then30

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  %call31 = tail call i32 @kthread_stop(ptr noundef nonnull %5) #21
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %for.end.if.end32_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cnic_register_driver(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_attach_transport(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_set_rport_loss_tmo(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_get_host_port_state(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_get_host_speed(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bnx2fc_get_host_stats(ptr noundef %shost) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %add.ptr.i = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %hba2 = getelementptr inbounds %struct.bnx2fc_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hba2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba2, align 4
  %stats_buffer = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats_buffer, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %hba_stats_mutex = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %hba_stats_mutex, i32 noundef 0) #21
  %call3 = tail call ptr @fc_get_host_stats(ptr noundef %shost) #21
  %stat_req_done = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 35
  %6 = ptrtoint ptr %stat_req_done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %stat_req_done, align 4
  %wait.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 35, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.147, ptr noundef nonnull @init_completion.__key) #21
  %call4 = tail call i32 @bnx2fc_send_stat_req(ptr noundef %3) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.unlock_stats_mutex_crit_edge

if.end.unlock_stats_mutex_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %unlock_stats_mutex

if.end7:                                          ; preds = %if.end
  %call9 = tail call i32 @wait_for_completion_timeout(ptr noundef %stat_req_done, i32 noundef 200) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %do.body

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %hostdata.i, ptr noundef nonnull @.str.146) #21
  br label %unlock_stats_mutex

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  %rx_stat2 = getelementptr inbounds %struct.fcoe_statistics_params, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %rx_stat2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_stat2, align 4
  %prev_stats = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 32
  %rx_stat213 = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 32, i32 3
  %9 = ptrtoint ptr %rx_stat213 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_stat213, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp ult i32 %8, %10
  %val.0.p.v = select i1 %cmp.not, i32 268435455, i32 0
  %val.0.p = sub i32 %8, %10
  %val.0 = add i32 %val.0.p, %val.0.p.v
  %conv = zext i32 %val.0 to i64
  %bfw_stats = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 31
  %11 = ptrtoint ptr %bfw_stats to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bfw_stats, align 8
  %add25 = add i64 %12, %conv
  store i64 %add25, ptr %bfw_stats, align 8
  %invalid_crc_count = getelementptr inbounds %struct.fc_host_statistics, ptr %call3, i32 0, i32 14
  %13 = ptrtoint ptr %invalid_crc_count to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %invalid_crc_count, align 8
  %add28 = add i64 %add25, %14
  store i64 %add28, ptr %invalid_crc_count, align 8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 4
  %17 = ptrtoint ptr %prev_stats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prev_stats, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp34.not = icmp ult i32 %16, %18
  %val30.0.p.v = select i1 %cmp34.not, i32 268435455, i32 0
  %val30.0.p = sub i32 %16, %18
  %val30.0 = add i32 %val30.0.p, %val30.0.p.v
  %conv48 = zext i32 %val30.0 to i64
  %fcoe_tx_pkt_cnt50 = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 31, i32 1
  %19 = ptrtoint ptr %fcoe_tx_pkt_cnt50 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fcoe_tx_pkt_cnt50, align 8
  %add51 = add i64 %20, %conv48
  store i64 %add51, ptr %fcoe_tx_pkt_cnt50, align 8
  %tx_frames = getelementptr inbounds %struct.fc_host_statistics, ptr %call3, i32 0, i32 1
  %21 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_frames, align 8
  %add56 = add i64 %add51, %22
  store i64 %add56, ptr %tx_frames, align 8
  %fcoe_tx_byte_cnt = getelementptr inbounds %struct.fcoe_tx_stat_params, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %fcoe_tx_byte_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fcoe_tx_byte_cnt, align 4
  %fcoe_tx_byte_cnt62 = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 32, i32 0, i32 1
  %25 = ptrtoint ptr %fcoe_tx_byte_cnt62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fcoe_tx_byte_cnt62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp63.not = icmp ult i32 %24, %26
  %val58.0.p.v = select i1 %cmp63.not, i32 268435455, i32 0
  %val58.0.p = sub i32 %24, %26
  %val58.0 = add i32 %val58.0.p, %val58.0.p.v
  %conv77 = zext i32 %val58.0 to i64
  %fcoe_tx_byte_cnt79 = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 31, i32 3
  %27 = ptrtoint ptr %fcoe_tx_byte_cnt79 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %fcoe_tx_byte_cnt79, align 8
  %add80 = add i64 %28, %conv77
  store i64 %add80, ptr %fcoe_tx_byte_cnt79, align 8
  %div237 = lshr i64 %add80, 2
  %tx_words = getelementptr inbounds %struct.fc_host_statistics, ptr %call3, i32 0, i32 2
  %29 = ptrtoint ptr %tx_words to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tx_words, align 8
  %add85 = add i64 %div237, %30
  store i64 %add85, ptr %tx_words, align 8
  %rx_stat0 = getelementptr inbounds %struct.fcoe_statistics_params, ptr %5, i32 0, i32 1
  %31 = ptrtoint ptr %rx_stat0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_stat0, align 4
  %rx_stat089 = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 32, i32 1
  %33 = ptrtoint ptr %rx_stat089 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_stat089, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp91.not = icmp ult i32 %32, %34
  %val87.0.p.v = select i1 %cmp91.not, i32 268435455, i32 0
  %val87.0.p = sub i32 %32, %34
  %val87.0 = add i32 %val87.0.p, %val87.0.p.v
  %conv105 = zext i32 %val87.0 to i64
  %fcoe_rx_pkt_cnt107 = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 31, i32 2
  %35 = ptrtoint ptr %fcoe_rx_pkt_cnt107 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %fcoe_rx_pkt_cnt107, align 8
  %add108 = add i64 %36, %conv105
  store i64 %add108, ptr %fcoe_rx_pkt_cnt107, align 8
  %rx_frames = getelementptr inbounds %struct.fc_host_statistics, ptr %call3, i32 0, i32 3
  %37 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %rx_frames, align 8
  %add113 = add i64 %add108, %38
  store i64 %add113, ptr %rx_frames, align 8
  %fcoe_rx_byte_cnt = getelementptr inbounds %struct.fcoe_statistics_params, ptr %5, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %fcoe_rx_byte_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fcoe_rx_byte_cnt, align 4
  %fcoe_rx_byte_cnt119 = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 32, i32 1, i32 1
  %41 = ptrtoint ptr %fcoe_rx_byte_cnt119 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fcoe_rx_byte_cnt119, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp120.not = icmp ult i32 %40, %42
  %val115.0.p.v = select i1 %cmp120.not, i32 268435455, i32 0
  %val115.0.p = sub i32 %40, %42
  %val115.0 = add i32 %val115.0.p, %val115.0.p.v
  %conv134 = zext i32 %val115.0 to i64
  %fcoe_rx_byte_cnt136 = getelementptr inbounds %struct.bnx2fc_hba, ptr %3, i32 0, i32 31, i32 4
  %43 = ptrtoint ptr %fcoe_rx_byte_cnt136 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %fcoe_rx_byte_cnt136, align 8
  %add137 = add i64 %44, %conv134
  store i64 %add137, ptr %fcoe_rx_byte_cnt136, align 8
  %div142238 = lshr i64 %add137, 2
  %rx_words = getelementptr inbounds %struct.fc_host_statistics, ptr %call3, i32 0, i32 4
  %45 = ptrtoint ptr %rx_words to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %rx_words, align 8
  %add143 = add i64 %div142238, %46
  store i64 %add143, ptr %rx_words, align 8
  %dumped_frames = getelementptr inbounds %struct.fc_host_statistics, ptr %call3, i32 0, i32 8
  %47 = ptrtoint ptr %dumped_frames to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %dumped_frames, align 8
  %lip_count = getelementptr inbounds %struct.fc_host_statistics, ptr %call3, i32 0, i32 5
  %loss_of_sync_count = getelementptr inbounds %struct.fc_host_statistics, ptr %call3, i32 0, i32 10
  %48 = call ptr @memset(ptr %lip_count, i32 0, i32 16)
  %49 = call ptr @memset(ptr %loss_of_sync_count, i32 0, i32 24)
  %50 = ptrtoint ptr %stats_buffer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %stats_buffer, align 8
  %52 = call ptr @memcpy(ptr %prev_stats, ptr %51, i32 64)
  br label %unlock_stats_mutex

unlock_stats_mutex:                               ; preds = %do.body, %if.then11, %if.end.unlock_stats_mutex_crit_edge
  tail call void @mutex_unlock(ptr noundef %hba_stats_mutex) #21
  br label %cleanup

cleanup:                                          ; preds = %unlock_stats_mutex, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %unlock_stats_mutex ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_fcoe_reset(ptr noundef %shost) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %call1 = tail call i32 @fc_lport_reset(ptr noundef %hostdata.i) #21
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnx2fc_rport_terminate_io(ptr nocapture noundef %rport) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_vport_create(ptr noundef %vport, i1 noundef zeroext %disabled) #1 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %shost1 = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 9
  %0 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost1, align 8
  %add.ptr.i = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %netdev3 = getelementptr inbounds %struct.bnx2fc_interface, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #21
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %call4 = tail call i32 @fcoe_validate_vport_create(ptr noundef %vport) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %port_name = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 3
  %7 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %port_name, align 8
  call void @fcoe_wwn_to_str(i64 noundef %8, ptr noundef nonnull %buf, i32 noundef 32) #21
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull %buf) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %hba = getelementptr inbounds %struct.bnx2fc_interface, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hba, align 4
  %flags = getelementptr inbounds %struct.bnx2fc_hba, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool8.not = icmp eq i32 %and1.i, 0
  br i1 %tobool8.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #24
  br label %cleanup

if.end15:                                         ; preds = %if.end
  tail call void @rtnl_lock() #21
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2fc_dev_lock, i32 noundef 0) #21
  %dev = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 14
  %call16 = tail call fastcc ptr @bnx2fc_if_create(ptr noundef %3, ptr noundef %dev, i32 noundef 1)
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  tail call void @rtnl_unlock() #21
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %5) #24
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %13 = load i32, ptr @bnx2fc_devloss_tmo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool26.not = icmp eq i32 %13, 0
  br i1 %tobool26.not, label %if.end25.if.end28_crit_edge, label %if.then27

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #23
  %14 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call16, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 51
  %16 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shost_data, align 8
  %dev_loss_tmo = getelementptr inbounds %struct.fc_host_attrs, ptr %17, i32 0, i32 30
  %18 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %dev_loss_tmo, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25.if.end28_crit_edge
  br i1 %disabled, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #23
  %19 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vport, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 1
  %21 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %vport_last_state.i, align 4
  store i32 2, ptr %vport, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %boot_time = getelementptr inbounds %struct.fc_lport, ptr %call16, i32 0, i32 14
  %23 = ptrtoint ptr %boot_time to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %boot_time, align 4
  %call31 = tail call i32 @fc_lport_init(ptr noundef nonnull %call16) #21
  %call32 = tail call i32 @fc_fabric_login(ptr noundef nonnull %call16) #21
  tail call void @fc_vport_setlink(ptr noundef nonnull %call16) #21
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then30, %do.end21, %do.end12, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ -5, %do.end21 ], [ -5, %do.end12 ], [ 0, %if.else ], [ 0, %if.then30 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_vport_disable(ptr nocapture noundef %vport, i1 noundef zeroext %disable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  br i1 %disable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vport, align 8
  %vport_last_state.i = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 1
  %4 = ptrtoint ptr %vport_last_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %vport_last_state.i, align 4
  store i32 2, ptr %vport, align 8
  %call = tail call i32 @fc_fabric_logoff(ptr noundef %1) #21
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %boot_time = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %boot_time to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %boot_time, align 4
  %call1 = tail call i32 @fc_fabric_login(ptr noundef %1) #21
  tail call void @fc_vport_setlink(ptr noundef %1) #21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_vport_destroy(ptr noundef readonly %vport) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %shost1 = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 9
  %0 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost1, align 8
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 8
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %add.ptr.i = getelementptr %struct.fc_lport, ptr %3, i32 1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %lp_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 9, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #21
  %vports = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %vports, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %vports
  br i1 %cmp.not, label %if.then11.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %vport4 = getelementptr i8, ptr %.pn, i32 -572
  %7 = ptrtoint ptr %vport4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vport4, align 8
  %cmp5 = icmp eq ptr %8, %vport
  br i1 %cmp5, label %if.end13, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond

if.then11.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #21
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %list14 = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list14) #21
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.list_del.exit_crit_edge

if.end13.list_del.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 36, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %list14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list14, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end13.list_del.exit_crit_edge
  %15 = ptrtoint ptr %list14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %list14, align 4
  %prev.i = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 36, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #21
  %hba = getelementptr inbounds %struct.bnx2fc_interface, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hba, align 4
  %lport = getelementptr %struct.fc_lport, ptr %3, i32 1, i32 1
  %19 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lport, align 4
  %hba_lock.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %18, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %hba_lock.i) #21
  %vports.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %18, i32 0, i32 42
  %21 = ptrtoint ptr %vports.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vports.i, align 8
  %cmp.not26.i = icmp eq ptr %22, %vports.i
  br i1 %cmp.not26.i, label %list_del.exit.bnx2fc_free_vport.exit_crit_edge, label %list_del.exit.for.body.i_crit_edge

list_del.exit.for.body.i_crit_edge:               ; preds = %list_del.exit
  br label %for.body.i

list_del.exit.bnx2fc_free_vport.exit_crit_edge:   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_free_vport.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %list_del.exit.for.body.i_crit_edge
  %blport.027.i = phi ptr [ %tmp.029.i, %for.inc.i.for.body.i_crit_edge ], [ %22, %list_del.exit.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %blport.027.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmp.029.i = load ptr, ptr %blport.027.i, align 4
  %lport8.i = getelementptr inbounds %struct.bnx2fc_lport, ptr %blport.027.i, i32 0, i32 1
  %24 = ptrtoint ptr %lport8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lport8.i, align 4
  %cmp9.i = icmp eq ptr %25, %20
  br i1 %cmp9.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %blport.027.i) #21
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %blport.027.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %blport.027.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %blport.027.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %32 = ptrtoint ptr %blport.027.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %blport.027.i, align 4
  %prev.i.i36 = getelementptr inbounds %struct.list_head, ptr %blport.027.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i36, align 4
  tail call void @kfree(ptr noundef %blport.027.i) #21
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.029.i, %vports.i
  br i1 %cmp.not.i, label %for.inc.i.bnx2fc_free_vport.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

for.inc.i.bnx2fc_free_vport.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_free_vport.exit

bnx2fc_free_vport.exit:                           ; preds = %for.inc.i.bnx2fc_free_vport.exit_crit_edge, %list_del.exit.bnx2fc_free_vport.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %hba_lock.i) #21
  %34 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lport, align 4
  %36 = load i32, ptr @bnx2fc_debug_level, align 4
  %and.i = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %bnx2fc_free_vport.exit.bnx2fc_port_shutdown.exit_crit_edge, label %do.end.i, !prof !575

bnx2fc_free_vport.exit.bnx2fc_port_shutdown.exit_crit_edge: ; preds = %bnx2fc_free_vport.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_port_shutdown.exit

do.end.i:                                         ; preds = %bnx2fc_free_vport.exit
  call void @__sanitizer_cov_trace_pc() #23
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #24
  br label %bnx2fc_port_shutdown.exit

bnx2fc_port_shutdown.exit:                        ; preds = %do.end.i, %bnx2fc_free_vport.exit.bnx2fc_port_shutdown.exit_crit_edge
  %call5.i = tail call i32 @fc_fabric_logoff(ptr noundef %35) #21
  %call6.i = tail call i32 @fc_lport_destroy(ptr noundef %35) #21
  tail call fastcc void @bnx2fc_port_destroy(ptr noundef %add.ptr.i)
  tail call fastcc void @bnx2fc_interface_put(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %bnx2fc_port_shutdown.exit, %if.then11.critedge
  %retval.0 = phi i32 [ 0, %bnx2fc_port_shutdown.exit ], [ -2, %if.then11.critedge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_lport_bsg_request(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_get_host_stats(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_send_stat_req(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_lport_reset(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_validate_vport_create(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_vport_setlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_rport_terminate_io(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_vport_id_lookup(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_exch_recv(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2fc_percpu_io_thread(ptr noundef %arg) #1 align 64 {
entry:
  %work_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %work_list) #21
  %0 = getelementptr inbounds %struct.list_head, ptr %work_list, i32 0, i32 1
  %1 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %work_list, ptr %work_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %work_list, ptr %0, align 4
  %3 = call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  call void @set_user_nice(ptr noundef %6, i32 noundef -20) #21
  br label %__here

__here:                                           ; preds = %entry
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 212
  %9 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 ptrtoint (ptr blockaddress(@bnx2fc_percpu_io_thread, %__here) to i32), ptr %task_state_change, align 4
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %10, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !600
  %call63260 = call zeroext i1 @kthread_should_stop() #21
  br i1 %call63260, label %__here.__here215_crit_edge, label %while.body.lr.ph

__here.__here215_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here215

while.body.lr.ph:                                 ; preds = %__here
  %fp_work_lock = getelementptr inbounds %struct.bnx2fc_percpu_s, ptr %arg, i32 0, i32 2
  %work_list67 = getelementptr inbounds %struct.bnx2fc_percpu_s, ptr %arg, i32 0, i32 1
  %prev2.i.i = getelementptr inbounds %struct.bnx2fc_percpu_s, ptr %arg, i32 0, i32 1, i32 1
  br label %while.body

while.body:                                       ; preds = %__here142.while.body_crit_edge, %while.body.lr.ph
  call void @schedule() #21
  call void @_raw_spin_lock_bh(ptr noundef %fp_work_lock) #21
  %12 = ptrtoint ptr %work_list67 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %work_list67, align 4
  %cmp.i.not259 = icmp eq ptr %13, %work_list67
  br i1 %cmp.i.not259, label %while.body.__here142_crit_edge, label %while.body.while.body72_crit_edge

while.body.while.body72_crit_edge:                ; preds = %while.body
  br label %while.body72

while.body.__here142_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here142

while.body72:                                     ; preds = %for.end.while.body72_crit_edge, %while.body.while.body72_crit_edge
  %14 = ptrtoint ptr %work_list67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %work_list67, align 4
  %cmp.i.not.i = icmp eq ptr %15, %work_list67
  br i1 %cmp.i.not.i, label %while.body72.list_splice_init.exit_crit_edge, label %if.then.i

while.body72.list_splice_init.exit_crit_edge:     ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #23
  %16 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %work_list, align 4
  %18 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %work_list, ptr %prev3.i.i, align 4
  store ptr %15, ptr %work_list, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %19, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev6.i.i, align 4
  %23 = ptrtoint ptr %work_list67 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %work_list67, ptr %work_list67, align 4
  store ptr %work_list67, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %while.body72.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %fp_work_lock) #21
  %24 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %work_list, align 4
  %cmp.not256 = icmp eq ptr %25, %work_list
  br i1 %cmp.not256, label %list_splice_init.exit.for.end_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %work.0257 = phi ptr [ %tmp.0, %list_del_init.exit.for.body_crit_edge ], [ %25, %list_splice_init.exit.for.body_crit_edge ]
  %26 = ptrtoint ptr %work.0257 to i32
  call void @__asan_load4_noabort(i32 %26)
  %tmp.0 = load ptr, ptr %work.0257, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %work.0257) #21
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %work.0257, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %work.0257 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %work.0257, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %33 = ptrtoint ptr %work.0257 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %work.0257, ptr %work.0257, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %work.0257, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %work.0257, ptr %prev.i3.i, align 4
  %tgt = getelementptr inbounds %struct.bnx2fc_work, ptr %work.0257, i32 0, i32 1
  %35 = ptrtoint ptr %tgt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tgt, align 4
  %wqe = getelementptr inbounds %struct.bnx2fc_work, ptr %work.0257, i32 0, i32 4
  %37 = ptrtoint ptr %wqe to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %wqe, align 4
  %rq_data = getelementptr inbounds %struct.bnx2fc_work, ptr %work.0257, i32 0, i32 3
  %num_rq = getelementptr inbounds %struct.bnx2fc_work, ptr %work.0257, i32 0, i32 5
  %39 = ptrtoint ptr %num_rq to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_rq, align 2
  %task85 = getelementptr inbounds %struct.bnx2fc_work, ptr %work.0257, i32 0, i32 2
  %41 = ptrtoint ptr %task85 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task85, align 4
  call void @bnx2fc_process_cq_compl(ptr noundef %36, i16 noundef zeroext %38, ptr noundef %rq_data, i8 noundef zeroext %40, ptr noundef %42) #21
  call void @kfree(ptr noundef %work.0257) #21
  %cmp.not = icmp eq ptr %tmp.0, %work_list
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %fp_work_lock) #21
  %43 = ptrtoint ptr %work_list67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %work_list67, align 4
  %cmp.i.not = icmp eq ptr %44, %work_list67
  br i1 %cmp.i.not, label %for.end.__here142_crit_edge, label %for.end.while.body72_crit_edge

for.end.while.body72_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body72

for.end.__here142_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here142

__here142:                                        ; preds = %for.end.__here142_crit_edge, %while.body.__here142_crit_edge
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %task_state_change146 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 212
  %47 = ptrtoint ptr %task_state_change146 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 ptrtoint (ptr blockaddress(@bnx2fc_percpu_io_thread, %__here142) to i32), ptr %task_state_change146, align 4
  %48 = load ptr, ptr %task, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 1, ptr %48, align 128
  call void @_raw_spin_unlock_bh(ptr noundef %fp_work_lock) #21
  %call63 = call zeroext i1 @kthread_should_stop() #21
  br i1 %call63, label %__here142.__here215_crit_edge, label %__here142.while.body_crit_edge

__here142.while.body_crit_edge:                   ; preds = %__here142
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

__here142.__here215_crit_edge:                    ; preds = %__here142
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here215

__here215:                                        ; preds = %__here142.__here215_crit_edge, %__here.__here215_crit_edge
  %50 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task, align 8
  %task_state_change219 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 212
  %52 = ptrtoint ptr %task_state_change219 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 ptrtoint (ptr blockaddress(@bnx2fc_percpu_io_thread, %__here215) to i32), ptr %task_state_change219, align 4
  %53 = load ptr, ptr %task, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %53, align 128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %work_list) #21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_bind(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_process_cq_compl(ptr noundef, i16 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_ulp_init(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !575

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.173) #24
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %flags = getelementptr inbounds %struct.cnic_dev, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %do.end5.do.end11_crit_edge, label %lor.lhs.false

do.end5.do.end11_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end11

lor.lhs.false:                                    ; preds = %do.end5
  %max_fcoe_conn = getelementptr inbounds %struct.cnic_dev, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %max_fcoe_conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_fcoe_conn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %lor.lhs.false.do.end11_crit_edge, label %if.end16

lor.lhs.false.do.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end11

do.end11:                                         ; preds = %lor.lhs.false.do.end11_crit_edge, %do.end5.do.end11_crit_edge
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %max_fcoe_conn14 = getelementptr inbounds %struct.cnic_dev, ptr %dev, i32 0, i32 20
  %8 = ptrtoint ptr %max_fcoe_conn14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_fcoe_conn14, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef %7, i32 noundef %2, i32 noundef %9) #24
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 712) #27
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %do.body2.i

do.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186) #24
  br label %do.end22

do.body2.i:                                       ; preds = %if.end16
  %hba_lock.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %hba_lock.i, ptr noundef nonnull @.str.188, ptr noundef nonnull @bnx2fc_hba_create.__key, i16 noundef signext 3) #21
  %hba_mutex.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %hba_mutex.i, ptr noundef nonnull @.str.190, ptr noundef nonnull @bnx2fc_hba_create.__key.189) #21
  %hba_stats_mutex.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %hba_stats_mutex.i, ptr noundef nonnull @.str.192, ptr noundef nonnull @bnx2fc_hba_create.__key.191) #21
  %cnic12.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %cnic12.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %cnic12.i, align 8
  %max_fcoe_exchanges.i = getelementptr inbounds %struct.cnic_dev, ptr %dev, i32 0, i32 22
  %12 = ptrtoint ptr %max_fcoe_exchanges.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_fcoe_exchanges.i, align 4
  %max_tasks.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 13
  %14 = ptrtoint ptr %max_tasks.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %max_tasks.i, align 8
  %div101.i = lshr i32 %13, 1
  %elstm_xids.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 15
  %15 = ptrtoint ptr %elstm_xids.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div101.i, ptr %elstm_xids.i, align 8
  %max_outstanding_cmds.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 14
  %16 = ptrtoint ptr %max_outstanding_cmds.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div101.i, ptr %max_outstanding_cmds.i, align 4
  %17 = trunc i32 %13 to i16
  %conv.i = add i16 %17, -1
  %max_xid.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 12
  %18 = ptrtoint ptr %max_xid.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %max_xid.i, align 4
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #23
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206) #24
  br label %do.end21.i

if.end.i.i:                                       ; preds = %do.body2.i
  %pcidev.i.i = getelementptr inbounds %struct.cnic_dev, ptr %dev, i32 0, i32 1
  %19 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcidev.i.i, align 4
  %pcidev3.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %pcidev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %pcidev3.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %20, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.do.end21.i_crit_edge, label %if.end7.i.i

if.end.i.i.do.end21.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end21.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 8
  %22 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %device.i.i, align 2
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.262)
  switch i16 %23, label %do.end31.i.i [
    i16 5710, label %sw.bb.i.i
    i16 5711, label %sw.bb9.i.i
    i16 5730, label %if.end7.i.i.sw.bb13.i.i_crit_edge
    i16 5731, label %if.end7.i.i.sw.bb13.i.i_crit_edge65
    i16 5743, label %if.end7.i.i.sw.bb13.i.i_crit_edge66
    i16 5770, label %if.end7.i.i.sw.bb17.i.i_crit_edge
    i16 5797, label %if.end7.i.i.sw.bb17.i.i_crit_edge67
    i16 5801, label %if.end7.i.i.sw.bb17.i.i_crit_edge68
    i16 5774, label %if.end7.i.i.sw.bb21.i.i_crit_edge
    i16 5806, label %if.end7.i.i.sw.bb21.i.i_crit_edge69
    i16 5807, label %if.end7.i.i.sw.bb21.i.i_crit_edge70
    i16 5773, label %if.end7.i.i.sw.bb25.i.i_crit_edge
    i16 5796, label %if.end7.i.i.sw.bb25.i.i_crit_edge71
    i16 5805, label %if.end7.i.i.sw.bb25.i.i_crit_edge72
    i16 5794, label %if.end7.i.i.sw.bb25.i.i_crit_edge73
    i16 5793, label %if.end7.i.i.sw.bb25.i.i_crit_edge74
  ]

if.end7.i.i.sw.bb25.i.i_crit_edge74:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb25.i.i

if.end7.i.i.sw.bb25.i.i_crit_edge73:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb25.i.i

if.end7.i.i.sw.bb25.i.i_crit_edge72:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb25.i.i

if.end7.i.i.sw.bb25.i.i_crit_edge71:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb25.i.i

if.end7.i.i.sw.bb25.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb25.i.i

if.end7.i.i.sw.bb21.i.i_crit_edge70:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb21.i.i

if.end7.i.i.sw.bb21.i.i_crit_edge69:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb21.i.i

if.end7.i.i.sw.bb21.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb21.i.i

if.end7.i.i.sw.bb17.i.i_crit_edge68:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb17.i.i

if.end7.i.i.sw.bb17.i.i_crit_edge67:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb17.i.i

if.end7.i.i.sw.bb17.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb17.i.i

if.end7.i.i.sw.bb13.i.i_crit_edge66:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb13.i.i

if.end7.i.i.sw.bb13.i.i_crit_edge65:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb13.i.i

if.end7.i.i.sw.bb13.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb13.i.i

sw.bb.i.i:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %chip_num.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 43
  %25 = call ptr @memcpy(ptr %chip_num.i.i, ptr @str.258, i32 16)
  br label %if.end24.i

sw.bb9.i.i:                                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %chip_num10.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 43
  %26 = call ptr @memcpy(ptr %chip_num10.i.i, ptr @str.257, i32 16)
  br label %if.end24.i

sw.bb13.i.i:                                      ; preds = %if.end7.i.i.sw.bb13.i.i_crit_edge, %if.end7.i.i.sw.bb13.i.i_crit_edge65, %if.end7.i.i.sw.bb13.i.i_crit_edge66
  %chip_num14.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 43
  %27 = call ptr @memcpy(ptr %chip_num14.i.i, ptr @str.256, i32 16)
  br label %if.end24.i

sw.bb17.i.i:                                      ; preds = %if.end7.i.i.sw.bb17.i.i_crit_edge, %if.end7.i.i.sw.bb17.i.i_crit_edge67, %if.end7.i.i.sw.bb17.i.i_crit_edge68
  %chip_num18.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 43
  %28 = call ptr @memcpy(ptr %chip_num18.i.i, ptr @str.255, i32 16)
  br label %if.end24.i

sw.bb21.i.i:                                      ; preds = %if.end7.i.i.sw.bb21.i.i_crit_edge, %if.end7.i.i.sw.bb21.i.i_crit_edge69, %if.end7.i.i.sw.bb21.i.i_crit_edge70
  %chip_num22.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 43
  %29 = call ptr @memcpy(ptr %chip_num22.i.i, ptr @str.254, i32 16)
  br label %if.end24.i

sw.bb25.i.i:                                      ; preds = %if.end7.i.i.sw.bb25.i.i_crit_edge, %if.end7.i.i.sw.bb25.i.i_crit_edge71, %if.end7.i.i.sw.bb25.i.i_crit_edge72, %if.end7.i.i.sw.bb25.i.i_crit_edge73, %if.end7.i.i.sw.bb25.i.i_crit_edge74
  %chip_num26.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 43
  %30 = call ptr @memcpy(ptr %chip_num26.i.i, ptr @str.253, i32 16)
  br label %if.end24.i

do.end31.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv.i.i = zext i16 %23 to i32
  %call35.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, i32 noundef %conv.i.i) #24
  br label %if.end24.i

do.end21.i:                                       ; preds = %if.end.i.i.do.end21.i_crit_edge, %do.end.i.i
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194) #24
  br label %bind_err.i

if.end24.i:                                       ; preds = %do.end31.i.i, %sw.bb25.i.i, %sw.bb21.i.i, %sw.bb17.i.i, %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb.i.i
  %31 = ptrtoint ptr %pcidev3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcidev3.i.i, align 4
  %call37.i.i = tail call ptr @pci_dev_get(ptr noundef %32) #21
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %phys_dev.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %phys_dev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %phys_dev.i, align 8
  %next_conn_id.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 11
  %36 = ptrtoint ptr %next_conn_id.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %next_conn_id.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 4096) #27
  %tgt_ofld_list.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 30
  %38 = ptrtoint ptr %tgt_ofld_list.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i.i, ptr %tgt_ofld_list.i, align 4
  %tobool27.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool27.not.i, label %do.end31.i, label %if.end34.i

do.end31.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #23
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197) #24
  br label %tgtofld_err.i

if.end34.i:                                       ; preds = %if.end24.i
  %num_ofld_sess.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 41
  %39 = ptrtoint ptr %num_ofld_sess.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %num_ofld_sess.i, align 4
  %call35.i = tail call ptr @bnx2fc_cmd_mgr_alloc(ptr noundef nonnull %call7.i.i.i) #21
  %cmd_mgr.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %cmd_mgr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call35.i, ptr %cmd_mgr.i, align 8
  %tobool37.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool37.not.i, label %do.end41.i, label %do.end28

do.end41.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #23
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200) #24
  %41 = ptrtoint ptr %tgt_ofld_list.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tgt_ofld_list.i, align 4
  tail call void @kfree(ptr noundef %42) #21
  br label %tgtofld_err.i

tgtofld_err.i:                                    ; preds = %do.end41.i, %do.end31.i
  %43 = ptrtoint ptr %pcidev3.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcidev3.i.i, align 4
  %tobool.not.i103.i = icmp eq ptr %44, null
  br i1 %tobool.not.i103.i, label %tgtofld_err.i.bnx2fc_unbind_pcidev.exit.i_crit_edge, label %if.then.i.i

tgtofld_err.i.bnx2fc_unbind_pcidev.exit.i_crit_edge: ; preds = %tgtofld_err.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_unbind_pcidev.exit.i

if.then.i.i:                                      ; preds = %tgtofld_err.i
  call void @__sanitizer_cov_trace_pc() #23
  %chip_num.i104.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 43
  %45 = ptrtoint ptr %chip_num.i104.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %chip_num.i104.i, align 8
  tail call void @pci_dev_put(ptr noundef nonnull %44) #21
  br label %bnx2fc_unbind_pcidev.exit.i

bnx2fc_unbind_pcidev.exit.i:                      ; preds = %if.then.i.i, %tgtofld_err.i.bnx2fc_unbind_pcidev.exit.i_crit_edge
  %46 = ptrtoint ptr %pcidev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %pcidev3.i.i, align 4
  br label %bind_err.i

bind_err.i:                                       ; preds = %bnx2fc_unbind_pcidev.exit.i, %do.end21.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #21
  br label %do.end22

do.end22:                                         ; preds = %bind_err.i, %do.end.i
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #24
  br label %cleanup

do.end28:                                         ; preds = %if.end34.i
  %fcoe_cap45.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 36
  %47 = ptrtoint ptr %fcoe_cap45.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 67108992, ptr %fcoe_cap45.i, align 8
  %48 = ptrtoint ptr %max_outstanding_cmds.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_outstanding_cmds.i, align 4
  %capability2.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 36, i32 1
  %or49.i = or i32 %49, 16777216
  %50 = ptrtoint ptr %capability2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or49.i, ptr %capability2.i, align 4
  %capability3.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 36, i32 2
  %shl51.i = shl i32 %49, 16
  %or53.i = or i32 %shl51.i, 1024
  %51 = ptrtoint ptr %capability3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or53.i, ptr %capability3.i, align 8
  %capability4.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 36, i32 3
  %52 = ptrtoint ptr %capability4.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %capability4.i, align 4
  %shutdown_wait.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 39
  tail call void @__init_waitqueue_head(ptr noundef %shutdown_wait.i, ptr noundef nonnull @.str.203, ptr noundef nonnull @bnx2fc_hba_create.__key.202) #21
  %destroy_wait.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 38
  tail call void @__init_waitqueue_head(ptr noundef %destroy_wait.i, ptr noundef nonnull @.str.205, ptr noundef nonnull @bnx2fc_hba_create.__key.204) #21
  %vports.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 42
  %53 = ptrtoint ptr %vports.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %vports.i, ptr %vports.i, align 8
  %prev.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 42, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %vports.i, ptr %prev.i.i, align 4
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef %56) #24
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2fc_dev_lock, i32 noundef 0) #21
  %57 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1), align 4
  %call.i.i61 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %57, ptr noundef nonnull @adapter_list) #21
  br i1 %call.i.i61, label %if.end.i.i62, label %do.end28.list_add_tail.exit_crit_edge

do.end28.list_add_tail.exit_crit_edge:            ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit

if.end.i.i62:                                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #23
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1), align 4
  %58 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @adapter_list, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %prev3.i.i, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call7.i.i.i, ptr %57, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i62, %do.end28.list_add_tail.exit_crit_edge
  %61 = load i32, ptr @adapter_count, align 4
  %inc = add i32 %61, 1
  store i32 %inc, ptr @adapter_count, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  %fcoe_cap34 = getelementptr inbounds %struct.cnic_dev, ptr %dev, i32 0, i32 24
  %62 = ptrtoint ptr %fcoe_cap34 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %fcoe_cap45.i, ptr %fcoe_cap34, align 4
  %reg_with_cnic = getelementptr inbounds %struct.bnx2fc_hba, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %reg_with_cnic) #21
  %register_device = getelementptr inbounds %struct.cnic_dev, ptr %dev, i32 0, i32 4
  %63 = ptrtoint ptr %register_device to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %register_device, align 4
  %call35 = tail call i32 %64(ptr noundef nonnull %dev, i32 noundef 2, ptr noundef nonnull %call7.i.i.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.else, label %do.end40

do.end40:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #23
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, i32 noundef %call35) #24
  br label %cleanup

if.else:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_set_bit(i32 noundef 1, ptr noundef %reg_with_cnic) #21
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end40, %do.end22, %do.end11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_ulp_exit(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !575

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217) #24
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %flags = getelementptr inbounds %struct.cnic_dev, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %do.end12, label %if.end16

do.end12:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #23
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef %5, i32 noundef %2) #24
  br label %cleanup

if.end16:                                         ; preds = %do.end6
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2fc_dev_lock, i32 noundef 0) #21
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end16
  %hba.0.in.i = phi ptr [ @adapter_list, %if.end16 ], [ %hba.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %hba.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %hba.0.i = load ptr, ptr %hba.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %hba.0.i, @adapter_list
  br i1 %cmp.not.i, label %for.cond.i.do.end22_crit_edge, label %for.body.i

for.cond.i.do.end22_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end22

for.body.i:                                       ; preds = %for.cond.i
  %cnic1.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %cnic1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cnic1.i, align 8
  %cmp2.i = icmp eq ptr %8, %dev
  br i1 %cmp2.i, label %bnx2fc_find_hba_for_cnic.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

bnx2fc_find_hba_for_cnic.exit:                    ; preds = %for.body.i
  %cnic1.i.le = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.0.i, i32 0, i32 1
  %tobool18.not = icmp eq ptr %hba.0.i, null
  br i1 %tobool18.not, label %bnx2fc_find_hba_for_cnic.exit.do.end22_crit_edge, label %if.end25

bnx2fc_find_hba_for_cnic.exit.do.end22_crit_edge: ; preds = %bnx2fc_find_hba_for_cnic.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end22

do.end22:                                         ; preds = %bnx2fc_find_hba_for_cnic.exit.do.end22_crit_edge, %for.cond.i.do.end22_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef %dev) #24
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  br label %cleanup

if.end25:                                         ; preds = %bnx2fc_find_hba_for_cnic.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %hba.0.i) #21
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.list_del_init.exit_crit_edge

if.end25.list_del_init.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %hba.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %hba.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hba.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end25.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %hba.0.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %hba.0.i, ptr %hba.0.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %hba.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %hba.0.i, ptr %prev.i3.i, align 4
  %17 = load i32, ptr @adapter_count, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr @adapter_count, align 4
  %18 = load ptr, ptr @if_list, align 4
  %cmp.not72 = icmp eq ptr %18, @if_list
  br i1 %cmp.not72, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %list_del_init.exit.for.body_crit_edge
  %interface.073 = phi ptr [ %tmp.074, %for.inc.for.body_crit_edge ], [ %18, %list_del_init.exit.for.body_crit_edge ]
  %19 = ptrtoint ptr %interface.073 to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.074 = load ptr, ptr %interface.073, align 4
  %hba34 = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface.073, i32 0, i32 2
  %20 = ptrtoint ptr %hba34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hba34, align 4
  %cmp35 = icmp eq ptr %21, %hba.0.i
  br i1 %cmp35, label %if.then36, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  tail call fastcc void @__bnx2fc_destroy(ptr noundef %interface.073)
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.074, @if_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del_init.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  tail call void @bnx2fc_ulp_stop(ptr noundef nonnull %hba.0.i)
  %reg_with_cnic = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.0.i, i32 0, i32 4
  %call43 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %reg_with_cnic) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %for.end.if.end48_crit_edge, label %if.then45

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end48

if.then45:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  %22 = ptrtoint ptr %cnic1.i.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cnic1.i.le, align 8
  %unregister_device = getelementptr inbounds %struct.cnic_dev, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %unregister_device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unregister_device, align 4
  %call47 = tail call i32 %25(ptr noundef %23, i32 noundef 2) #21
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %for.end.if.end48_crit_edge
  %cmd_mgr.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.0.i, i32 0, i32 5
  %26 = ptrtoint ptr %cmd_mgr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd_mgr.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end48.if.end.i_crit_edge, label %if.then.i

if.end48.if.end.i_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

if.then.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @bnx2fc_cmd_mgr_free(ptr noundef nonnull %27) #21
  %28 = ptrtoint ptr %cmd_mgr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %cmd_mgr.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end48.if.end.i_crit_edge
  %tgt_ofld_list.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.0.i, i32 0, i32 30
  %29 = ptrtoint ptr %tgt_ofld_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tgt_ofld_list.i, align 4
  tail call void @kfree(ptr noundef %30) #21
  %pcidev.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.0.i, i32 0, i32 2
  %31 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcidev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.bnx2fc_hba_destroy.exit_crit_edge, label %if.then.i.i

if.end.i.bnx2fc_hba_destroy.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_hba_destroy.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %chip_num.i.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %hba.0.i, i32 0, i32 43
  %33 = ptrtoint ptr %chip_num.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %chip_num.i.i, align 8
  tail call void @pci_dev_put(ptr noundef nonnull %32) #21
  br label %bnx2fc_hba_destroy.exit

bnx2fc_hba_destroy.exit:                          ; preds = %if.then.i.i, %if.end.i.bnx2fc_hba_destroy.exit_crit_edge
  %34 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %pcidev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %hba.0.i) #21
  br label %cleanup

cleanup:                                          ; preds = %bnx2fc_hba_destroy.exit, %do.end22, %do.end12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_ulp_start(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2fc_dev_lock, i32 noundef 0) #21
  %flags = getelementptr inbounds %struct.bnx2fc_hba, ptr %handle, i32 0, i32 10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @bnx2fc_setup_task_ctx(ptr noundef %handle) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.do.end.i_crit_edge

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.then
  %call1.i.i = tail call i32 @bnx2fc_setup_fw_resc(ptr noundef %handle) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  tail call void @bnx2fc_free_fw_resc(ptr noundef %handle) #21
  tail call void @bnx2fc_free_task_ctx(ptr noundef %handle) #21
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef -12) #24
  br label %do.body

if.end.i:                                         ; preds = %if.end.i.i
  %call2.i = tail call i32 @bnx2fc_send_fw_fcoe_init_msg(ptr noundef %handle) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %while.cond.preheader.i, label %do.end7.i

while.cond.preheader.i:                           ; preds = %if.end.i
  %adapter_state.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %handle, i32 0, i32 9
  %2 = ptrtoint ptr %adapter_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %adapter_state.i, align 4
  %and1.i4.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i4.i)
  %tobool12.not5.not.i = icmp eq i32 %and1.i4.i, 0
  br i1 %tobool12.not5.not.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, i32 noundef %call2.i) #24
  br label %err_unbind.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %i.06.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 100, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %i.06.i, -1
  tail call void @msleep(i32 noundef 10) #21
  %4 = ptrtoint ptr %adapter_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %adapter_state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool12.not.i = icmp ne i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool13.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool12.not.i, i1 true, i1 %tobool13.not.i
  br i1 %or.cond.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %6 = ptrtoint ptr %adapter_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %adapter_state.i, align 4
  %and1.i1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i)
  %tobool16.not.i = icmp eq i32 %and1.i1.i, 0
  br i1 %tobool16.not.i, label %do.end20.i, label %if.end23.i

do.end20.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %cnic.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %handle, i32 0, i32 1
  %8 = ptrtoint ptr %cnic.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cnic.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef %11) #24
  br label %err_unbind.i

if.end23.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #21
  br label %do.body

err_unbind.i:                                     ; preds = %do.end20.i, %do.end7.i
  tail call void @bnx2fc_free_fw_resc(ptr noundef %handle) #21
  tail call void @bnx2fc_free_task_ctx(ptr noundef %handle) #21
  br label %do.body

do.body:                                          ; preds = %err_unbind.i, %if.end23.i, %do.end.i, %entry.do.body_crit_edge
  %12 = load i32, ptr @bnx2fc_debug_level, align 4
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end10_crit_edge, label %do.end, !prof !575

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225) #24
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %interface.034 = load ptr, ptr @if_list, align 4
  %cmp.not35 = icmp eq ptr %interface.034, @if_list
  br i1 %cmp.not35, label %do.end10.for.end_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end10.for.body_crit_edge
  %interface.036 = phi ptr [ %interface.0, %for.inc.for.body_crit_edge ], [ %interface.034, %do.end10.for.body_crit_edge ]
  %hba14 = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface.036, i32 0, i32 2
  %13 = ptrtoint ptr %hba14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hba14, align 4
  %cmp15 = icmp eq ptr %14, %handle
  br i1 %cmp15, label %if.then16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %lp = getelementptr %struct.fcoe_ctlr, ptr %interface.036, i32 -1, i32 2
  %15 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lp, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228) #24
  %tt = getelementptr inbounds %struct.fc_lport, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %tt to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bnx2fc_xmit, ptr %tt, align 4
  tail call fastcc void @bnx2fc_start_disc(ptr noundef %interface.036)
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %interface.036 to i32
  call void @__asan_load4_noabort(i32 %18)
  %interface.0 = load ptr, ptr %interface.036, align 4
  %cmp.not = icmp eq ptr %interface.0, @if_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end10.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2fc_indicate_kcqe(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnx2fc_indicate_netevent(ptr noundef %context, i32 noundef %event, i16 noundef zeroext %vlan_id) #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan_id)
  %cmp.not = icmp eq i16 %vlan_id, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp2.not = icmp eq i32 %event, 6
  %or.cond = or i1 %cmp2.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup206_crit_edge

entry.cleanup206_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup206

if.end:                                           ; preds = %entry
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %event, label %if.end.cleanup206_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 10, label %sw.bb11
    i32 4, label %if.end.sw.epilog_crit_edge
    i32 6, label %sw.bb13
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.end.cleanup206_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup206

sw.bb:                                            ; preds = %if.end
  %adapter_state = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 9
  %1 = ptrtoint ptr %adapter_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %adapter_state, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238) #24
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %adapter_state9 = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %adapter_state9) #21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %adapter_state9) #21
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %adapter_state12 = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %adapter_state12) #21
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  br i1 %cmp.not, label %sw.bb13.cleanup206_crit_edge, label %if.end16

sw.bb13.cleanup206_crit_edge:                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup206

if.end16:                                         ; preds = %sw.bb13
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2fc_dev_lock, i32 noundef 0) #21
  %3 = load ptr, ptr @if_list, align 4
  %cmp22.not279 = icmp eq ptr %3, @if_list
  br i1 %cmp22.not279, label %if.end16.for.end_crit_edge, label %for.body.lr.ph

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %4 = and i16 %vlan_id, 4095
  %and = zext i16 %4 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %interface.0280 = phi ptr [ %3, %for.body.lr.ph ], [ %tmp.0281, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %interface.0280 to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.0281 = load ptr, ptr %interface.0280, align 4
  %hba24 = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface.0280, i32 0, i32 2
  %6 = ptrtoint ptr %hba24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hba24, align 4
  %cmp25 = icmp eq ptr %7, %context
  br i1 %cmp25, label %land.lhs.true27, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

land.lhs.true27:                                  ; preds = %for.body
  %vlan_id28 = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface.0280, i32 0, i32 9
  %8 = ptrtoint ptr %vlan_id28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vlan_id28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and)
  %cmp30 = icmp eq i32 %9, %and
  br i1 %cmp30, label %if.then32, label %land.lhs.true27.for.inc_crit_edge

land.lhs.true27.for.inc_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.then32:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #23
  tail call fastcc void @__bnx2fc_destroy(ptr noundef %interface.0280)
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %land.lhs.true27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp22.not = icmp eq ptr %tmp.0281, @if_list
  br i1 %cmp22.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  br label %cleanup206

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb8, %do.end, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %tobool56.not = phi i1 [ false, %sw.bb.sw.epilog_crit_edge ], [ false, %do.end ], [ false, %if.end.sw.epilog_crit_edge ], [ true, %sw.bb11 ], [ true, %sw.bb8 ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2fc_dev_lock, i32 noundef 0) #21
  %interface.1285 = load ptr, ptr @if_list, align 4
  %cmp44.not286 = icmp eq ptr %interface.1285, @if_list
  br i1 %cmp44.not286, label %for.end129.thread, label %sw.epilog.for.body47_crit_edge

sw.epilog.for.body47_crit_edge:                   ; preds = %sw.epilog
  br label %for.body47

for.end129.thread:                                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  br label %cleanup206

for.body47:                                       ; preds = %for.inc123.for.body47_crit_edge, %sw.epilog.for.body47_crit_edge
  %interface.1290 = phi ptr [ %interface.1, %for.inc123.for.body47_crit_edge ], [ %interface.1285, %sw.epilog.for.body47_crit_edge ]
  %wait_for_upload.0287 = phi i32 [ %wait_for_upload.1, %for.inc123.for.body47_crit_edge ], [ 0, %sw.epilog.for.body47_crit_edge ]
  %hba48 = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface.1290, i32 0, i32 2
  %10 = ptrtoint ptr %hba48 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hba48, align 4
  %cmp49.not = icmp eq ptr %11, %context
  br i1 %cmp49.not, label %if.end52, label %for.body47.for.inc123_crit_edge

for.body47.for.inc123_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc123

if.end52:                                         ; preds = %for.body47
  %add.ptr53 = getelementptr %struct.fcoe_ctlr, ptr %interface.1290, i32 -1
  %lp = getelementptr %struct.fcoe_ctlr, ptr %interface.1290, i32 -1, i32 2
  %12 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lp, align 4
  %netdev = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface.1290, i32 0, i32 3
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @BNX2FC_HBA_DBG(ptr noundef %13, ptr noundef nonnull @.str.240, ptr noundef %15, i32 noundef %event) #21
  %call54 = tail call i32 @fcoe_link_speed_update(ptr noundef %13) #21
  %cdev55 = getelementptr %struct.fcoe_ctlr, ptr %interface.1290, i32 -1, i32 5
  %16 = ptrtoint ptr %cdev55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cdev55, align 4
  br i1 %tobool56.not, label %if.end52.if.else_crit_edge, label %land.lhs.true57

if.end52.if.else_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

land.lhs.true57:                                  ; preds = %if.end52
  %add.ptr.i.i = getelementptr %struct.fc_lport, ptr %13, i32 1
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i, align 4
  %hba1.i = getelementptr inbounds %struct.bnx2fc_interface, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %hba1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hba1.i, align 4
  %phys_dev.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %phys_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phys_dev.i, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true57.bnx2fc_link_ok.exit_crit_edge, label %land.lhs.true.i

land.lhs.true57.bnx2fc_link_ok.exit_crit_edge:    ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_link_ok.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true57
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 6
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %if.then60, label %land.lhs.true.i.bnx2fc_link_ok.exit_crit_edge

land.lhs.true.i.bnx2fc_link_ok.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bnx2fc_link_ok.exit

bnx2fc_link_ok.exit:                              ; preds = %land.lhs.true.i.bnx2fc_link_ok.exit_crit_edge, %land.lhs.true57.bnx2fc_link_ok.exit_crit_edge
  %adapter_state3.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %21, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %adapter_state3.i) #21
  br label %if.else

if.then60:                                        ; preds = %land.lhs.true.i
  %adapter_state.i = getelementptr inbounds %struct.bnx2fc_hba, ptr %21, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %adapter_state.i) #21
  %enabled = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %17, i32 0, i32 11
  %29 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %enabled, align 8
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.264)
  switch i32 %30, label %if.then60.for.inc123_crit_edge [
    i32 1, label %do.end64
    i32 0, label %if.then60.sw.bb67_crit_edge
    i32 2, label %if.then60.sw.bb67_crit_edge296
  ]

if.then60.sw.bb67_crit_edge296:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb67

if.then60.sw.bb67_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb67

if.then60.for.inc123_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc123

do.end64:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #23
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242) #24
  br label %for.inc123

sw.bb67:                                          ; preds = %if.then60.sw.bb67_crit_edge, %if.then60.sw.bb67_crit_edge296
  %call68 = tail call i32 @fc_set_mfs(ptr noundef %13, i32 noundef 2072) #21
  %enabled69 = getelementptr inbounds %struct.bnx2fc_interface, ptr %interface.1290, i32 0, i32 10
  %32 = ptrtoint ptr %enabled69 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %enabled69, align 4, !range !577
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool70.not = icmp eq i8 %33, 0
  br i1 %tobool70.not, label %sw.bb67.for.inc123_crit_edge, label %if.then71

sw.bb67.for.inc123_crit_edge:                     ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc123

if.then71:                                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @fcoe_ctlr_link_up(ptr noundef %add.ptr53) #21
  br label %for.inc123

if.else:                                          ; preds = %bnx2fc_link_ok.exit, %if.end52.if.else_crit_edge
  %call74 = tail call i32 @fcoe_ctlr_link_down(ptr noundef %add.ptr53) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.else.for.inc123_crit_edge, label %if.then76

if.else.for.inc123_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc123

if.then76:                                        ; preds = %if.else
  %enabled77 = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %17, i32 0, i32 11
  %34 = ptrtoint ptr %enabled77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %enabled77, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.265)
  switch i32 %35, label %if.then76.for.inc123_crit_edge [
    i32 1, label %do.end81
    i32 0, label %if.then76.sw.bb84_crit_edge
    i32 2, label %if.then76.sw.bb84_crit_edge297
  ]

if.then76.sw.bb84_crit_edge297:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb84

if.then76.sw.bb84_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb84

if.then76.for.inc123_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc123

do.end81:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #23
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245) #24
  br label %for.inc123

sw.bb84:                                          ; preds = %if.then76.sw.bb84_crit_edge, %if.then76.sw.bb84_crit_edge297
  %lp_mutex = getelementptr inbounds %struct.fc_lport, ptr %13, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #21
  %vports = getelementptr inbounds %struct.fc_lport, ptr %13, i32 0, i32 7
  %37 = ptrtoint ptr %vports to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn282 = load ptr, ptr %vports, align 4
  %cmp92.not283 = icmp eq ptr %.pn282, %vports
  br i1 %cmp92.not283, label %sw.bb84.for.end102_crit_edge, label %sw.bb84.for.body95_crit_edge

sw.bb84.for.body95_crit_edge:                     ; preds = %sw.bb84
  br label %for.body95

sw.bb84.for.end102_crit_edge:                     ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end102

for.body95:                                       ; preds = %for.body95.for.body95_crit_edge, %sw.bb84.for.body95_crit_edge
  %.pn284 = phi ptr [ %.pn, %for.body95.for.body95_crit_edge ], [ %.pn282, %sw.bb84.for.body95_crit_edge ]
  %vport.0 = getelementptr i8, ptr %.pn284, i32 -852
  %38 = ptrtoint ptr %vport.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vport.0, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 51
  %40 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shost_data, align 8
  %port_type = getelementptr inbounds %struct.fc_host_attrs, ptr %41, i32 0, i32 23
  %42 = ptrtoint ptr %port_type to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %port_type, align 4
  %43 = ptrtoint ptr %.pn284 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn = load ptr, ptr %.pn284, align 4
  %cmp92.not = icmp eq ptr %.pn, %vports
  br i1 %cmp92.not, label %for.body95.for.end102_crit_edge, label %for.body95.for.body95_crit_edge

for.body95.for.body95_crit_edge:                  ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body95

for.body95.for.end102_crit_edge:                  ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end102

for.end102:                                       ; preds = %for.body95.for.end102_crit_edge, %sw.bb84.for.end102_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #21
  %44 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %13, align 8
  %shost_data105 = getelementptr inbounds %struct.Scsi_Host, ptr %45, i32 0, i32 51
  %46 = ptrtoint ptr %shost_data105 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %shost_data105, align 8
  %port_type106 = getelementptr inbounds %struct.fc_host_attrs, ptr %47, i32 0, i32 23
  %48 = ptrtoint ptr %port_type106 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %port_type106, align 4
  %stats = getelementptr inbounds %struct.fc_lport, ptr %13, i32 0, i32 16
  %49 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stats, align 8
  %51 = ptrtoint ptr %50 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %55, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !601
  %56 = tail call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i266 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i266 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx, align 4
  %add = add i32 %61, %51
  %62 = inttoptr i32 %add to ptr
  %LinkFailureCount = getelementptr inbounds %struct.fc_stats, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %LinkFailureCount to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %LinkFailureCount, align 8
  %inc = add i64 %64, 1
  store i64 %inc, ptr %LinkFailureCount, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !602
  %65 = tail call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i.i.i264 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i264 to ptr
  %preempt_count.i.i265 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i265 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i265, align 4
  %sub.i = add i32 %68, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i265, align 4
  tail call void @fcoe_clean_pending_queue(ptr noundef %13) #21
  br label %for.inc123

for.inc123:                                       ; preds = %for.end102, %do.end81, %if.then76.for.inc123_crit_edge, %if.else.for.inc123_crit_edge, %if.then71, %sw.bb67.for.inc123_crit_edge, %do.end64, %if.then60.for.inc123_crit_edge, %for.body47.for.inc123_crit_edge
  %wait_for_upload.1 = phi i32 [ %wait_for_upload.0287, %for.body47.for.inc123_crit_edge ], [ %wait_for_upload.0287, %if.then76.for.inc123_crit_edge ], [ 1, %for.end102 ], [ %wait_for_upload.0287, %do.end81 ], [ %wait_for_upload.0287, %if.else.for.inc123_crit_edge ], [ %wait_for_upload.0287, %if.then60.for.inc123_crit_edge ], [ %wait_for_upload.0287, %if.then71 ], [ %wait_for_upload.0287, %sw.bb67.for.inc123_crit_edge ], [ %wait_for_upload.0287, %do.end64 ]
  %69 = ptrtoint ptr %interface.1290 to i32
  call void @__asan_load4_noabort(i32 %69)
  %interface.1 = load ptr, ptr %interface.1290, align 4
  %cmp44.not = icmp eq ptr %interface.1, @if_list
  br i1 %cmp44.not, label %for.end129, label %for.inc123.for.body47_crit_edge

for.inc123.for.body47_crit_edge:                  ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body47

for.end129:                                       ; preds = %for.inc123
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2fc_dev_lock) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_for_upload.1)
  %tobool130.not = icmp eq i32 %wait_for_upload.1, 0
  br i1 %tobool130.not, label %for.end129.cleanup206_crit_edge, label %if.then131

for.end129.cleanup206_crit_edge:                  ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup206

if.then131:                                       ; preds = %for.end129
  %adapter_state132 = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %adapter_state132) #21
  %shutdown_wait = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 39
  tail call void @__init_waitqueue_head(ptr noundef %shutdown_wait, ptr noundef nonnull @.str.203, ptr noundef nonnull @bnx2fc_indicate_netevent.__key) #21
  %70 = load i32, ptr @bnx2fc_debug_level, align 4
  %and137 = and i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.then131.do.end150_crit_edge, label %do.end145, !prof !575

if.then131.do.end150_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end150

do.end145:                                        ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #23
  %num_ofld_sess = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 41
  %71 = ptrtoint ptr %num_ofld_sess to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_ofld_sess, align 4
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, i32 noundef %72) #24
  br label %do.end150

do.end150:                                        ; preds = %do.end145, %if.then131.do.end150_crit_edge
  %wait_for_link_down = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 40
  %73 = ptrtoint ptr %wait_for_link_down to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %wait_for_link_down, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 985) #21
  %num_ofld_sess157 = getelementptr inbounds %struct.bnx2fc_hba, ptr %context, i32 0, i32 41
  %74 = ptrtoint ptr %num_ofld_sess157 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_ofld_sess157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp158 = icmp eq i32 %75, 0
  br i1 %cmp158, label %do.end150.if.end176_crit_edge, label %if.then160

do.end150.if.end176_crit_edge:                    ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end176

if.then160:                                       ; preds = %do.end150
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #21
  %76 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #21
  %call164291 = call i32 @prepare_to_wait_event(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #21
  %77 = ptrtoint ptr %num_ofld_sess157 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_ofld_sess157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp166292 = icmp eq i32 %78, 0
  br i1 %cmp166292, label %if.then160.for.end173_crit_edge, label %if.then160.if.end169_crit_edge

if.then160.if.end169_crit_edge:                   ; preds = %if.then160
  br label %if.end169

if.then160.for.end173_crit_edge:                  ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end173

if.end169:                                        ; preds = %cleanup.if.end169_crit_edge, %if.then160.if.end169_crit_edge
  %call164293 = phi i32 [ %call164, %cleanup.if.end169_crit_edge ], [ %call164291, %if.then160.if.end169_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164293)
  %tobool170.not = icmp eq i32 %call164293, 0
  br i1 %tobool170.not, label %cleanup, label %if.end169.__out_crit_edge

if.end169.__out_crit_edge:                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #23
  br label %__out

cleanup:                                          ; preds = %if.end169
  call void @schedule() #21
  %call164 = call i32 @prepare_to_wait_event(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #21
  %79 = ptrtoint ptr %num_ofld_sess157 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_ofld_sess157, align 4
  %cmp166 = icmp eq i32 %80, 0
  br i1 %cmp166, label %cleanup.for.end173_crit_edge, label %cleanup.if.end169_crit_edge

cleanup.if.end169_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end169

cleanup.for.end173_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end173

for.end173:                                       ; preds = %cleanup.for.end173_crit_edge, %if.then160.for.end173_crit_edge
  call void @finish_wait(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry) #21
  br label %__out

__out:                                            ; preds = %for.end173, %if.end169.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #21
  br label %if.end176

if.end176:                                        ; preds = %__out, %do.end150.if.end176_crit_edge
  %81 = load i32, ptr @bnx2fc_debug_level, align 4
  %and179 = and i32 %81, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.end176.do.end196_crit_edge, label %do.end190, !prof !575

if.end176.do.end196_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end196

do.end190:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #23
  %82 = ptrtoint ptr %num_ofld_sess157 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_ofld_sess157, align 4
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, i32 noundef %83) #24
  br label %do.end196

do.end196:                                        ; preds = %do.end190, %if.end176.do.end196_crit_edge
  %84 = ptrtoint ptr %wait_for_link_down to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %wait_for_link_down, align 8
  %85 = call i32 @llvm.read_register.i32(metadata !565) #21
  %and.i267 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i267 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %stack.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  %93 = and i32 %92, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i268 = icmp eq i32 %93, 0
  br i1 %tobool.not.i268, label %signal_pending.exit, label %do.end196.if.then201_crit_edge, !prof !575

do.end196.if.then201_crit_edge:                   ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then201

signal_pending.exit:                              ; preds = %do.end196
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %90, align 4
  %and1.i.i.i.i.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool200.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool200.not, label %signal_pending.exit.cleanup206_crit_edge, label %signal_pending.exit.if.then201_crit_edge

signal_pending.exit.if.then201_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then201

signal_pending.exit.cleanup206_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup206

if.then201:                                       ; preds = %signal_pending.exit.if.then201_crit_edge, %do.end196.if.then201_crit_edge
  call void @flush_signals(ptr noundef %88) #21
  br label %cleanup206

cleanup206:                                       ; preds = %if.then201, %signal_pending.exit.cleanup206_crit_edge, %for.end129.cleanup206_crit_edge, %for.end129.thread, %for.end, %sw.bb13.cleanup206_crit_edge, %if.end.cleanup206_crit_edge, %entry.cleanup206_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bnx2fc_ulp_get_stats(ptr noundef readonly %handle) #19 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %cnic1 = getelementptr inbounds %struct.bnx2fc_hba, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %cnic1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cnic1, align 8
  %stats_addr2 = getelementptr inbounds %struct.cnic_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %stats_addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats_addr2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %4 = call ptr @memcpy(ptr %3, ptr @str, i32 12)
  %txq_size = getelementptr inbounds %struct.fcoe_stats_info, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %txq_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %txq_size, align 4
  %rxq_size = getelementptr inbounds %struct.fcoe_stats_info, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %rxq_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 272, ptr %rxq_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bnx2fc_cmd_mgr_alloc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_send_fw_fcoe_init_msg(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_setup_task_ctx(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2fc_setup_fw_resc(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #21

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
define internal void @asan.module_ctor() #22 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 274)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #22 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 274)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind }
attributes #22 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #23 = { nomerge }
attributes #24 = { cold nounwind }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { nobuiltin }
attributes #27 = { nounwind allocsize(2) }
attributes #28 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !33, !35, !36, !38, !40, !41, !42, !43, !44, !46, !48, !50, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !93, !94, !95, !96, !98, !99, !101, !102, !103, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !149, !151, !152, !153, !155, !157, !158, !159, !160, !162, !164, !165, !166, !167, !169, !171, !173, !175, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !223, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !252, !254, !255, !257, !259, !260, !262, !264, !265, !267, !269, !271, !272, !274, !275, !276, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !298, !299, !301, !303, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !318, !320, !321, !322, !323, !325, !326, !327, !328, !330, !332, !334, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !347, !349, !350, !351, !353, !354, !356, !358, !359, !361, !363, !365, !366, !367, !368, !370, !371, !372, !374, !376, !378, !379, !381, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !396, !398, !400, !402, !403, !404, !405, !407, !409, !411, !413, !415, !416, !417, !419, !421, !423, !425, !427, !428, !429, !430, !432, !434, !435, !436, !438, !439, !440, !442, !443, !444, !446, !447, !448, !450, !451, !452, !454, !455, !456, !457, !459, !460, !462, !463, !465, !466, !468, !469, !470, !472, !473, !474, !476, !477, !478, !480, !481, !483, !484, !486, !487, !488, !489, !491, !493, !495, !497, !499, !501, !503, !504, !505, !507, !508, !509, !510, !512, !513, !514, !516, !517, !518, !520, !521, !522, !523, !525, !526, !527, !529, !530, !531, !532, !534, !535, !536, !538, !539, !540, !542, !543, !544, !545, !547, !549, !550, !551, !553, !554, !555, !557, !559, !560, !561, !563, !564}
!llvm.named.register.sp = !{!565}
!llvm.module.flags = !{!566, !567, !568, !569, !570, !571, !572, !573}
!llvm.ident = !{!574}

!0 = !{ptr @__UNIQUE_ID_author379, !1, !"__UNIQUE_ID_author379", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_description380, !3, !"__UNIQUE_ID_description380", i1 false, i1 false}
!3 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 38, i32 1}
!4 = !{ptr @__UNIQUE_ID_file381, !5, !"__UNIQUE_ID_file381", i1 false, i1 false}
!5 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 39, i32 1}
!6 = !{ptr @__UNIQUE_ID_license382, !5, !"__UNIQUE_ID_license382", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version383, !8, !"__UNIQUE_ID_version383", i1 false, i1 false}
!8 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 40, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_debug_logging, !14, !"__param_debug_logging", i1 false, i1 false}
!14 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 102, i32 1}
!15 = !{ptr @__UNIQUE_ID_debug_loggingtype384, !14, !"__UNIQUE_ID_debug_loggingtype384", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_debug_logging385, !17, !"__UNIQUE_ID_debug_logging385", i1 false, i1 false}
!17 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 103, i32 1}
!18 = !{ptr @__param_devloss_tmo, !19, !"__param_devloss_tmo", i1 false, i1 false}
!19 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 114, i32 1}
!20 = !{ptr @__UNIQUE_ID_devloss_tmotype386, !19, !"__UNIQUE_ID_devloss_tmotype386", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_devloss_tmo387, !22, !"__UNIQUE_ID_devloss_tmo387", i1 false, i1 false}
!22 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 115, i32 1}
!23 = !{ptr @__param_max_luns, !24, !"__param_max_luns", i1 false, i1 false}
!24 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 119, i32 1}
!25 = !{ptr @__UNIQUE_ID_max_lunstype388, !24, !"__UNIQUE_ID_max_lunstype388", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_max_luns389, !27, !"__UNIQUE_ID_max_luns389", i1 false, i1 false}
!27 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 120, i32 1}
!28 = !{ptr @__param_queue_depth, !29, !"__param_queue_depth", i1 false, i1 false}
!29 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 124, i32 1}
!30 = !{ptr @__UNIQUE_ID_queue_depthtype390, !29, !"__UNIQUE_ID_queue_depthtype390", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_queue_depth391, !32, !"__UNIQUE_ID_queue_depth391", i1 false, i1 false}
!32 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 125, i32 1}
!33 = !{ptr @__param_log_fka, !34, !"__param_log_fka", i1 false, i1 false}
!34 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 129, i32 1}
!35 = !{ptr @__UNIQUE_ID_log_fkatype392, !34, !"__UNIQUE_ID_log_fkatype392", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_log_fka393, !37, !"__UNIQUE_ID_log_fka393", i1 false, i1 false}
!37 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 130, i32 1}
!38 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2782, i32 3}
!40 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @bnx2fc_mod_exit._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @bnx2fc_mod_exit._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__initcall__kmod_bnx2fc__403_2820_bnx2fc_mod_init6, !45, !"__initcall__kmod_bnx2fc__403_2820_bnx2fc_mod_init6", i1 false, i1 false}
!45 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2820, i32 1}
!46 = !{ptr @__exitcall_bnx2fc_mod_exit, !47, !"__exitcall_bnx2fc_mod_exit", i1 false, i1 false}
!47 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2821, i32 1}
!48 = !{ptr @adapter_list, !49, !"adapter_list", i1 false, i1 false}
!49 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 21, i32 25}
!50 = !{ptr @adapter_count, !51, !"adapter_count", i1 false, i1 false}
!51 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 23, i32 12}
!52 = !{ptr @__pcpu_scope_bnx2fc_percpu, !53, !"__pcpu_scope_bnx2fc_percpu", i1 false, i1 false}
!53 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 25, i32 1}
!54 = !{ptr @__pcpu_unique_bnx2fc_percpu, !53, !"__pcpu_unique_bnx2fc_percpu", i1 false, i1 false}
!55 = !{ptr @bnx2fc_percpu, !53, !"bnx2fc_percpu", i1 false, i1 false}
!56 = !{ptr @bnx2fc_wq, !57, !"bnx2fc_wq", i1 false, i1 false}
!57 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 49, i32 26}
!58 = !{ptr @bnx2fc_global, !59, !"bnx2fc_global", i1 false, i1 false}
!59 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 54, i32 22}
!60 = !{ptr @bnx2fc_debug_level, !61, !"bnx2fc_debug_level", i1 false, i1 false}
!61 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 101, i32 14}
!62 = !{ptr @bnx2fc_devloss_tmo, !63, !"bnx2fc_devloss_tmo", i1 false, i1 false}
!63 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 113, i32 13}
!64 = !{ptr @bnx2fc_queue_depth, !65, !"bnx2fc_queue_depth", i1 false, i1 false}
!65 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 123, i32 13}
!66 = !{ptr @bnx2fc_log_fka, !67, !"bnx2fc_log_fka", i1 false, i1 false}
!67 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 128, i32 13}
!68 = !{ptr @bnx2fc_online_state, !69, !"bnx2fc_online_state", i1 false, i1 false}
!69 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2677, i32 25}
!70 = !{ptr @__param_str_debug_logging, !14, !"__param_str_debug_logging", i1 false, i1 false}
!71 = !{ptr @__param_str_devloss_tmo, !19, !"__param_str_devloss_tmo", i1 false, i1 false}
!72 = !{ptr @__param_str_max_luns, !24, !"__param_str_max_luns", i1 false, i1 false}
!73 = !{ptr @bnx2fc_max_luns, !74, !"bnx2fc_max_luns", i1 false, i1 false}
!74 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 118, i32 13}
!75 = !{ptr @__param_str_queue_depth, !29, !"__param_str_queue_depth", i1 false, i1 false}
!76 = !{ptr @__param_str_log_fka, !34, !"__param_str_log_fka", i1 false, i1 false}
!77 = !{ptr @.str.6, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 55, i32 8}
!79 = !{ptr @bnx2fc_global_lock, !78, !"bnx2fc_global_lock", i1 false, i1 false}
!80 = !{ptr @.str.7, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 24, i32 8}
!82 = !{ptr @.str.8, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @bnx2fc_dev_lock, !81, !"bnx2fc_dev_lock", i1 false, i1 false}
!84 = !{ptr @.str.9, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1973, i32 2}
!86 = !{ptr @.str.10, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @bnx2fc_ulp_stop._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @bnx2fc_ulp_stop._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @if_list, !90, !"if_list", i1 false, i1 false}
!90 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 22, i32 25}
!91 = !{ptr @.str.11, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1865, i32 2}
!93 = !{ptr @.str.12, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @bnx2fc_port_shutdown._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @bnx2fc_port_shutdown._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @bnx2fc_fw_destroy.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1941, i32 4}
!98 = !{ptr @.str.13, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.14, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 853, i32 2}
!101 = !{ptr @.str.15, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @bnx2fc_destroy_timer._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @bnx2fc_destroy_timer._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @bnx2fc_transport_template, !105, !"bnx2fc_transport_template", i1 false, i1 false}
!105 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 46, i32 40}
!106 = !{ptr @bnx2fc_vport_xport_template, !107, !"bnx2fc_vport_xport_template", i1 false, i1 false}
!107 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 47, i32 40}
!108 = !{ptr @bnx2fc_transport, !109, !"bnx2fc_transport", i1 false, i1 false}
!109 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2602, i32 30}
!110 = !{ptr @.str.16, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2517, i32 2}
!112 = !{ptr @.str.17, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @bnx2fc_hba_lookup._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @bnx2fc_hba_lookup._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.18, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2315, i32 2}
!117 = !{ptr @.str.19, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @_bnx2fc_create._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @_bnx2fc_create._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.21, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2317, i32 3}
!122 = !{ptr @_bnx2fc_create._entry.20, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @_bnx2fc_create._entry_ptr.22, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.23, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2338, i32 31}
!126 = !{ptr @.str.25, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2339, i32 4}
!128 = !{ptr @_bnx2fc_create._entry.24, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @_bnx2fc_create._entry_ptr.26, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.28, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2344, i32 3}
!132 = !{ptr @_bnx2fc_create._entry.27, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @_bnx2fc_create._entry_ptr.29, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.31, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2353, i32 3}
!136 = !{ptr @_bnx2fc_create._entry.30, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @_bnx2fc_create._entry_ptr.32, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.34, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2364, i32 3}
!140 = !{ptr @_bnx2fc_create._entry.33, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @_bnx2fc_create._entry_ptr.35, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.36, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2380, i32 4}
!144 = !{ptr @.str.37, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.39, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2382, i32 3}
!147 = !{ptr @_bnx2fc_create._entry.38, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @_bnx2fc_create._entry_ptr.40, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.42, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2389, i32 3}
!151 = !{ptr @_bnx2fc_create._entry.41, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @_bnx2fc_create._entry_ptr.43, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.44, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2415, i32 24}
!155 = !{ptr @.str.45, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1457, i32 3}
!157 = !{ptr @.str.46, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @bnx2fc_interface_create._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @bnx2fc_interface_create._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @bnx2fc_fcoe_sysfs_templ, !161, !"bnx2fc_fcoe_sysfs_templ", i1 false, i1 false}
!161 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2823, i32 44}
!162 = !{ptr @.str.47, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2189, i32 4}
!164 = !{ptr @.str.48, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @__bnx2fc_enable._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @__bnx2fc_enable._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.49, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2138, i32 25}
!169 = !{ptr @.str.50, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2145, i32 25}
!171 = !{ptr @.str.51, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2165, i32 7}
!173 = !{ptr @.str.52, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2169, i32 25}
!175 = !{ptr @.str.53, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2174, i32 26}
!177 = !{ptr @.str.54, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2091, i32 4}
!179 = !{ptr @.str.55, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @__bnx2fc_disable._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @__bnx2fc_disable._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.56, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1123, i32 3}
!184 = !{ptr @.str.57, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @bnx2fc_fip_send._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @bnx2fc_fip_send._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = distinct !{null, !188, !"__warned", i1 false, i1 false}
!188 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1251, i32 2}
!189 = !{ptr @.str.58, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.59, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1252, i32 3}
!192 = !{ptr @.str.60, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @bnx2fc_interface_setup._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @bnx2fc_interface_setup._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.62, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1254, i32 3}
!197 = !{ptr @bnx2fc_interface_setup._entry.61, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @bnx2fc_interface_setup._entry_ptr.63, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.65, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1263, i32 4}
!201 = !{ptr @bnx2fc_interface_setup._entry.64, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @bnx2fc_interface_setup._entry_ptr.66, !200, !"_entry_ptr", i1 false, i1 false}
!203 = distinct !{null, !204, !"__warned", i1 false, i1 false}
!204 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!205 = !{ptr @.str.67, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.68, !204, !"<string literal>", i1 false, i1 false}
!207 = distinct !{null, !208, !"__warned", i1 false, i1 false}
!208 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!209 = !{ptr @.str.69, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.70, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 443, i32 3}
!212 = !{ptr @.str.71, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @bnx2fc_rcv._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @bnx2fc_rcv._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.73, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 454, i32 3}
!217 = !{ptr @bnx2fc_rcv._entry.72, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @bnx2fc_rcv._entry_ptr.74, !216, !"_entry_ptr", i1 false, i1 false}
!219 = distinct !{null, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!221 = !{ptr @.str.76, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1510, i32 28}
!223 = !{ptr @.str.77, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1522, i32 3}
!225 = !{ptr @.str.78, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @bnx2fc_if_create._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @bnx2fc_if_create._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.80, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1537, i32 3}
!230 = !{ptr @bnx2fc_if_create._entry.79, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @bnx2fc_if_create._entry_ptr.81, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.83, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1545, i32 3}
!234 = !{ptr @bnx2fc_if_create._entry.82, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @bnx2fc_if_create._entry_ptr.84, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.86, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1551, i32 3}
!238 = !{ptr @bnx2fc_if_create._entry.85, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @bnx2fc_if_create._entry_ptr.87, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.89, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1559, i32 3}
!242 = !{ptr @bnx2fc_if_create._entry.88, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @bnx2fc_if_create._entry_ptr.90, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.92, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1577, i32 3}
!246 = !{ptr @bnx2fc_if_create._entry.91, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @bnx2fc_if_create._entry_ptr.93, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.94, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2961, i32 12}
!250 = !{ptr @bnx2fc_shost_template, !251, !"bnx2fc_shost_template", i1 false, i1 false}
!251 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2959, i32 34}
!252 = !{ptr @bnx2fc_host_groups, !253, !"bnx2fc_host_groups", i1 false, i1 false}
!253 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2954, i32 1}
!254 = !{ptr @bnx2fc_host_group, !253, !"bnx2fc_host_group", i1 false, i1 false}
!255 = !{ptr @bnx2fc_host_attrs, !256, !"bnx2fc_host_attrs", i1 false, i1 false}
!256 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2949, i32 26}
!257 = !{ptr @.str.95, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2946, i32 8}
!259 = !{ptr @dev_attr_tm_timeout, !258, !"dev_attr_tm_timeout", i1 false, i1 false}
!260 = !{ptr @.str.96, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2922, i32 15}
!262 = !{ptr @bnx2fc_net_config.__key, !263, !"__key", i1 false, i1 false}
!263 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 827, i32 2}
!264 = !{ptr @.str.97, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.98, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 835, i32 25}
!267 = !{ptr @.str.99, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 842, i32 25}
!269 = !{ptr @skb_queue_head_init.__key, !270, !"__key", i1 false, i1 false}
!270 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!271 = !{ptr @.str.100, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.101, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 759, i32 3}
!274 = !{ptr @.str.102, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @bnx2fc_shost_config._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @bnx2fc_shost_config._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.103, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 765, i32 4}
!279 = !{ptr @bnx2fc_libfc_fcn_templ, !280, !"bnx2fc_libfc_fcn_templ", i1 false, i1 false}
!280 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2980, i32 39}
!281 = !{ptr @.str.104, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 291, i32 25}
!283 = !{ptr @.str.105, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 298, i32 26}
!285 = !{ptr @.str.106, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 323, i32 25}
!287 = !{ptr @.str.107, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../include/scsi/fc_frame.h", i32 161, i32 2}
!289 = !{ptr @.str.108, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 224, i32 22}
!291 = !{ptr @.str.109, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 245, i32 23}
!293 = !{ptr @.str.110, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 247, i32 23}
!295 = !{ptr @.str.111, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 197, i32 2}
!297 = !{ptr @bnx2fc_cleanup._entry, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @bnx2fc_cleanup._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.112, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 206, i32 25}
!301 = !{ptr @.str.113, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1019, i32 3}
!303 = !{ptr @.str.114, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @bnx2fc_em_config._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @bnx2fc_em_config._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.115, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2003, i32 2}
!308 = !{ptr @bnx2fc_start_disc._entry, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @bnx2fc_start_disc._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.117, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2006, i32 3}
!312 = !{ptr @bnx2fc_start_disc._entry.116, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @bnx2fc_start_disc._entry_ptr.118, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.119, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2011, i32 24}
!316 = !{ptr @.str.120, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2014, i32 25}
!318 = !{ptr @.str.121, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1321, i32 2}
!320 = !{ptr @.str.122, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @bnx2fc_interface_release._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @bnx2fc_interface_release._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.123, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1684, i32 3}
!325 = !{ptr @.str.124, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @bnx2fc_destroy._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @bnx2fc_destroy._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.125, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1703, i32 24}
!330 = !{ptr @__func__.bnx2fc_port_destroy, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1703, i32 61}
!332 = !{ptr @.str.126, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2246, i32 3}
!334 = !{ptr @.str.127, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @bnx2fc_enable._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @bnx2fc_enable._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.128, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2119, i32 3}
!339 = !{ptr @.str.129, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @bnx2fc_disable._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @bnx2fc_disable._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.130, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2693, i32 2}
!344 = !{ptr @.str.131, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @bnx2fc_mod_init._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @bnx2fc_mod_init._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.133, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2698, i32 3}
!349 = !{ptr @bnx2fc_mod_init._entry.132, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @bnx2fc_mod_init._entry_ptr.134, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @bnx2fc_mod_init.__key, !352, !"__key", i1 false, i1 false}
!352 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2705, i32 2}
!353 = !{ptr @.str.135, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.136, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2721, i32 14}
!356 = !{ptr @bnx2fc_mod_init.__key.137, !357, !"__key", i1 false, i1 false}
!357 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2736, i32 3}
!358 = !{ptr @.str.138, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.139, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2739, i32 46}
!361 = !{ptr @version, !362, !"version", i1 false, i1 false}
!362 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 32, i32 13}
!363 = !{ptr @.str.140, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1290, i32 3}
!365 = !{ptr @.str.141, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @bnx2fc_attach_transport._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @bnx2fc_attach_transport._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.143, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1297, i32 3}
!370 = !{ptr @bnx2fc_attach_transport._entry.142, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @bnx2fc_attach_transport._entry_ptr.144, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @bnx2fc_transport_function, !373, !"bnx2fc_transport_function", i1 false, i1 false}
!373 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2836, i32 36}
!374 = !{ptr @.str.146, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 710, i32 25}
!376 = !{ptr @init_completion.__key, !377, !"__key", i1 false, i1 false}
!377 = !{!"../include/linux/completion.h", i32 87, i32 2}
!378 = !{ptr @.str.147, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @.str.148, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1144, i32 3}
!381 = !{ptr @.str.149, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @bnx2fc_vport_create._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @bnx2fc_vport_create._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.151, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1151, i32 3}
!386 = !{ptr @bnx2fc_vport_create._entry.150, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @bnx2fc_vport_create._entry_ptr.152, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.154, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1162, i32 3}
!390 = !{ptr @bnx2fc_vport_create._entry.153, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @bnx2fc_vport_create._entry_ptr.155, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @bnx2fc_vport_xport_function, !393, !"bnx2fc_vport_xport_function", i1 false, i1 false}
!393 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2876, i32 36}
!394 = distinct !{null, !395, !"__already_done", i1 false, i1 false}
!395 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 492, i32 2}
!396 = distinct !{null, !397, !"__already_done", i1 false, i1 false}
!397 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 501, i32 3}
!398 = distinct !{null, !399, !"__already_done", i1 false, i1 false}
!399 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 504, i32 2}
!400 = !{ptr @.str.159, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 530, i32 3}
!402 = !{ptr @.str.160, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @bnx2fc_recv_frame._entry, !401, !"_entry", i1 false, i1 false}
!404 = !{ptr @bnx2fc_recv_frame._entry_ptr, !401, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.161, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 573, i32 25}
!407 = !{ptr @.str.162, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 583, i32 26}
!409 = !{ptr @.str.163, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 590, i32 26}
!411 = !{ptr @.str.164, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 627, i32 25}
!413 = !{ptr @.str.166, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 640, i32 4}
!415 = !{ptr @bnx2fc_recv_frame._entry.165, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @bnx2fc_recv_frame._entry_ptr.167, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.168, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2628, i32 6}
!419 = distinct !{null, !420, !"__already_done", i1 false, i1 false}
!420 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 660, i32 2}
!421 = distinct !{null, !422, !"__already_done", i1 false, i1 false}
!422 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 679, i32 3}
!423 = distinct !{null, !424, !"__already_done", i1 false, i1 false}
!424 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 682, i32 2}
!425 = !{ptr @.str.171, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2645, i32 2}
!427 = !{ptr @.str.172, !426, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @bnx2fc_cpu_offline._entry, !426, !"_entry", i1 false, i1 false}
!429 = !{ptr @bnx2fc_cpu_offline._entry_ptr, !426, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @bnx2fc_cnic_cb, !431, !"bnx2fc_cnic_cb", i1 false, i1 false}
!431 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2993, i32 28}
!432 = !{ptr @.str.173, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2050, i32 2}
!434 = !{ptr @bnx2fc_ulp_init._entry, !433, !"_entry", i1 false, i1 false}
!435 = !{ptr @bnx2fc_ulp_init._entry_ptr, !433, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.175, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2054, i32 3}
!438 = !{ptr @bnx2fc_ulp_init._entry.174, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @bnx2fc_ulp_init._entry_ptr.176, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.178, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2062, i32 3}
!442 = !{ptr @bnx2fc_ulp_init._entry.177, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @bnx2fc_ulp_init._entry_ptr.179, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.181, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2066, i32 2}
!446 = !{ptr @bnx2fc_ulp_init._entry.180, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @bnx2fc_ulp_init._entry_ptr.182, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.184, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2079, i32 3}
!450 = !{ptr @bnx2fc_ulp_init._entry.183, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @bnx2fc_ulp_init._entry_ptr.185, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.186, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1374, i32 3}
!454 = !{ptr @.str.187, !453, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @bnx2fc_hba_create._entry, !453, !"_entry", i1 false, i1 false}
!456 = !{ptr @bnx2fc_hba_create._entry_ptr, !453, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @bnx2fc_hba_create.__key, !458, !"__key", i1 false, i1 false}
!458 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1377, i32 2}
!459 = !{ptr @.str.188, !458, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @bnx2fc_hba_create.__key.189, !461, !"__key", i1 false, i1 false}
!461 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1378, i32 2}
!462 = !{ptr @.str.190, !461, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @bnx2fc_hba_create.__key.191, !464, !"__key", i1 false, i1 false}
!464 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1379, i32 2}
!465 = !{ptr @.str.192, !464, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @.str.194, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1390, i32 3}
!468 = !{ptr @bnx2fc_hba_create._entry.193, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @bnx2fc_hba_create._entry_ptr.195, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.197, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1400, i32 3}
!472 = !{ptr @bnx2fc_hba_create._entry.196, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @bnx2fc_hba_create._entry_ptr.198, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.200, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1408, i32 3}
!476 = !{ptr @bnx2fc_hba_create._entry.199, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @bnx2fc_hba_create._entry_ptr.201, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @bnx2fc_hba_create.__key.202, !479, !"__key", i1 false, i1 false}
!479 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1427, i32 2}
!480 = !{ptr @.str.203, !479, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @bnx2fc_hba_create.__key.204, !482, !"__key", i1 false, i1 false}
!482 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1428, i32 2}
!483 = !{ptr @.str.205, !482, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @.str.206, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1740, i32 3}
!486 = !{ptr @.str.207, !485, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @bnx2fc_bind_pcidev._entry, !485, !"_entry", i1 false, i1 false}
!488 = !{ptr @bnx2fc_bind_pcidev._entry_ptr, !485, !"_entry_ptr", i1 false, i1 false}
!489 = distinct !{null, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1750, i32 26}
!491 = distinct !{null, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1753, i32 26}
!493 = distinct !{null, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1758, i32 26}
!495 = distinct !{null, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1763, i32 26}
!497 = distinct !{null, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1768, i32 26}
!499 = distinct !{null, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1775, i32 26}
!501 = !{ptr @.str.215, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1778, i32 3}
!503 = !{ptr @bnx2fc_bind_pcidev._entry.214, !502, !"_entry", i1 false, i1 false}
!504 = !{ptr @bnx2fc_bind_pcidev._entry_ptr.216, !502, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.217, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2531, i32 2}
!507 = !{ptr @.str.218, !506, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @bnx2fc_ulp_exit._entry, !506, !"_entry", i1 false, i1 false}
!509 = !{ptr @bnx2fc_ulp_exit._entry_ptr, !506, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @.str.220, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2534, i32 3}
!512 = !{ptr @bnx2fc_ulp_exit._entry.219, !511, !"_entry", i1 false, i1 false}
!513 = !{ptr @bnx2fc_ulp_exit._entry_ptr.221, !511, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.223, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 2542, i32 3}
!516 = !{ptr @bnx2fc_ulp_exit._entry.222, !515, !"_entry", i1 false, i1 false}
!517 = !{ptr @bnx2fc_ulp_exit._entry_ptr.224, !515, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.225, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1847, i32 2}
!520 = !{ptr @.str.226, !519, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @bnx2fc_ulp_start._entry, !519, !"_entry", i1 false, i1 false}
!522 = !{ptr @bnx2fc_ulp_start._entry_ptr, !519, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @.str.228, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1854, i32 4}
!525 = !{ptr @bnx2fc_ulp_start._entry.227, !524, !"_entry", i1 false, i1 false}
!526 = !{ptr @bnx2fc_ulp_start._entry_ptr.229, !524, !"_entry_ptr", i1 false, i1 false}
!527 = !{ptr @.str.230, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1900, i32 3}
!529 = !{ptr @.str.231, !528, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @bnx2fc_fw_init._entry, !528, !"_entry", i1 false, i1 false}
!531 = !{ptr @bnx2fc_fw_init._entry_ptr, !528, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @.str.233, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1907, i32 3}
!534 = !{ptr @bnx2fc_fw_init._entry.232, !533, !"_entry", i1 false, i1 false}
!535 = !{ptr @bnx2fc_fw_init._entry_ptr.234, !533, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.236, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 1920, i32 3}
!538 = !{ptr @bnx2fc_fw_init._entry.235, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @bnx2fc_fw_init._entry_ptr.237, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.238, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 887, i32 4}
!542 = !{ptr @.str.239, !541, !"<string literal>", i1 false, i1 false}
!543 = !{ptr @bnx2fc_indicate_netevent._entry, !541, !"_entry", i1 false, i1 false}
!544 = !{ptr @bnx2fc_indicate_netevent._entry_ptr, !541, !"_entry_ptr", i1 false, i1 false}
!545 = !{ptr @.str.240, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 929, i32 25}
!547 = !{ptr @.str.242, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 939, i32 5}
!549 = !{ptr @bnx2fc_indicate_netevent._entry.241, !548, !"_entry", i1 false, i1 false}
!550 = !{ptr @bnx2fc_indicate_netevent._entry_ptr.243, !548, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @.str.245, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 956, i32 5}
!553 = !{ptr @bnx2fc_indicate_netevent._entry.244, !552, !"_entry", i1 false, i1 false}
!554 = !{ptr @bnx2fc_indicate_netevent._entry_ptr.246, !552, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @bnx2fc_indicate_netevent.__key, !556, !"__key", i1 false, i1 false}
!556 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 979, i32 3}
!557 = !{ptr @.str.248, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 980, i32 3}
!559 = !{ptr @bnx2fc_indicate_netevent._entry.247, !558, !"_entry", i1 false, i1 false}
!560 = !{ptr @bnx2fc_indicate_netevent._entry_ptr.249, !558, !"_entry_ptr", i1 false, i1 false}
!561 = !{ptr @.str.251, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/scsi/bnx2fc/bnx2fc_fcoe.c", i32 986, i32 3}
!563 = !{ptr @bnx2fc_indicate_netevent._entry.250, !562, !"_entry", i1 false, i1 false}
!564 = !{ptr @bnx2fc_indicate_netevent._entry_ptr.252, !562, !"_entry_ptr", i1 false, i1 false}
!565 = !{!"sp"}
!566 = !{i32 1, !"wchar_size", i32 2}
!567 = !{i32 1, !"min_enum_size", i32 4}
!568 = !{i32 8, !"branch-target-enforcement", i32 0}
!569 = !{i32 8, !"sign-return-address", i32 0}
!570 = !{i32 8, !"sign-return-address-all", i32 0}
!571 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!572 = !{i32 7, !"uwtable", i32 1}
!573 = !{i32 7, !"frame-pointer", i32 2}
!574 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!575 = !{!"branch_weights", i32 2000, i32 1}
!576 = !{i64 2157576413, i64 2157576912, i64 2157576450, i64 2157576506, i64 2157576540, i64 2157576564, i64 2157576605, i64 2157576626, i64 2157576654, i64 2157576688}
!577 = !{i8 0, i8 2}
!578 = !{i64 836931, i64 836992}
!579 = !{i64 839663}
!580 = !{!"branch_weights", i32 1, i32 2000}
!581 = !{i64 839948}
!582 = !{i64 2149449390}
!583 = !{i64 2149449656}
!584 = !{!"auto-init"}
!585 = !{i64 2148434761, i64 2148434793, i64 2148434822, i64 2148434856, i64 2148434887, i64 2148434910}
!586 = !{i64 2148522786}
!587 = !{i64 2148437226, i64 2148437258, i64 2148437287, i64 2148437321, i64 2148437352, i64 2148437375}
!588 = !{i64 2149398900}
!589 = !{i64 2153996037}
!590 = !{i64 2152657644}
!591 = !{i64 2152657851}
!592 = !{i64 2153998808}
!593 = !{i64 2157372738}
!594 = !{i64 2157372911}
!595 = !{i64 2157382697}
!596 = !{i64 2157394549}
!597 = !{i64 2157394724}
!598 = !{i64 2157397000}
!599 = !{i64 2157397173}
!600 = !{i64 2157403682}
!601 = !{i64 2157443854}
!602 = !{i64 2157444027}
