; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/ipoib/ipoib_cm.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/ipoib/ipoib_cm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.165 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.160 }
%struct.anon.160 = type { i64, i64 }
%union.anon.165 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_send_wr = type { ptr, %union.anon.161, ptr, i32, i32, i32, %union.anon.162 }
%union.anon.161 = type { i64 }
%union.anon.162 = type { i32 }
%struct.ipoib_dev_priv = type { %struct.spinlock, ptr, ptr, %struct.napi_struct, %struct.napi_struct, i32, %struct.rw_semaphore, %struct.mutex, %struct.rb_root, %struct.list_head, %struct.ipoib_neigh_table, ptr, %struct.list_head, %struct.rb_root, ptr, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, ptr, i8, i16, i16, ptr, ptr, ptr, ptr, i32, %union.ib_gid, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, [18 x %struct.ib_sge], %struct.ib_ud_wr, [64 x %struct.ib_wc], %struct.ib_recv_wr, [2 x %struct.ib_sge], [4 x %struct.ib_wc], %struct.list_head, %struct.ib_event_handler, ptr, %struct.list_head, %struct.list_head, i32, %struct.ipoib_cm_dev_priv, %struct.list_head, ptr, ptr, i64, %struct.ipoib_ethtool_st, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ipoib_neigh_table = type { ptr, %struct.atomic_t, %struct.completion, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.ib_wc = type { %union.anon.153, i32, i32, i32, i32, ptr, %union.anon.179, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.153 = type { i64 }
%union.anon.179 = type { i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.163, ptr, i32 }
%union.anon.163 = type { i64 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.ipoib_cm_dev_priv = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.sk_buff_head, %struct.list_head, %struct.list_head, [4 x %struct.ib_wc], [16 x %struct.ib_sge], %struct.ib_recv_wr, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ipoib_ethtool_st = type { i16, i16 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ipoib_cm_rx = type { ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, i32 }
%struct.ipoib_cm_rx_buf = type { ptr, [16 x i64] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.152 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.177, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.177 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ipoib_cm_tx = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.ipoib_tx_buf = type { ptr, [18 x i64] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ipoib_neigh = type { ptr, ptr, [20 x i8], %struct.sk_buff_head, ptr, %struct.list_head, ptr, %struct.callback_head, %struct.refcount_struct, i32 }
%struct.ipoib_cm_data = type { i32, i32 }
%struct.ib_cm_rep_param = type { i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, %struct.rdma_ucm_ece }
%struct.rdma_ucm_ece = type { i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_cm_id = type { ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32 }
%struct.anon.181 = type { %struct.ib_recv_wr, [16 x %struct.ib_sge] }
%struct.ib_cm_event = type { i32, %union.anon.180, ptr }
%union.anon.180 = type { %struct.ib_cm_req_event_param }
%struct.ib_cm_req_event_param = type { ptr, i16, i8, ptr, ptr, ptr, i64, i32, i32, i32, i32, i8, i8, i16, i8, %struct.rdma_ucm_ece }
%struct.ib_srq_init_attr = type { ptr, ptr, %struct.ib_srq_attr, i32, %struct.anon.166 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.anon.166 = type { ptr, %union.anon.167 }
%union.anon.167 = type { %struct.anon.168 }
%struct.anon.168 = type { ptr }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.ib_cm_req_param = type { ptr, ptr, ptr, i64, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.rdma_ucm_ece }
%struct.sa_path_rec = type { %union.ib_gid, %union.ib_gid, i64, i32, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.176, i32 }
%union.anon.176 = type { %struct.sa_path_rec_opa }
%struct.sa_path_rec_opa = type { i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ipoib_path = type { ptr, %struct.sa_path_rec, ptr, %struct.sk_buff_head, %struct.list_head, i32, ptr, %struct.completion, %struct.rb_node, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.109 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ib_event = type { ptr, %union.anon.156, i32 }
%union.anon.156 = type { ptr }

@ipoib_max_conn_qp = dso_local global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_str_max_nonsrq_conn_qp = internal constant [28 x i8] c"ib_ipoib.max_nonsrq_conn_qp\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_max_nonsrq_conn_qp = internal constant %struct.kernel_param { ptr @__param_str_max_nonsrq_conn_qp, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @ipoib_max_conn_qp } }, section "__param", align 4
@__UNIQUE_ID_max_nonsrq_conn_qptype528 = internal constant [41 x i8] c"ib_ipoib.parmtype=max_nonsrq_conn_qp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_nonsrq_conn_qp529 = internal constant [136 x i8] c"ib_ipoib.parm=max_nonsrq_conn_qp:Max number of connected-mode QPs per interface (applied only if shared receive queue is not available)\00", section ".modinfo", align 1
@__param_str_cm_data_debug_level = internal constant [29 x i8] c"ib_ipoib.cm_data_debug_level\00", align 1
@data_debug_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_cm_data_debug_level = internal constant %struct.kernel_param { ptr @__param_str_cm_data_debug_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @data_debug_level } }, section "__param", align 4
@__UNIQUE_ID_cm_data_debug_leveltype530 = internal constant [42 x i8] c"ib_ipoib.parmtype=cm_data_debug_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cm_data_debug_level531 = internal constant [91 x i8] c"ib_ipoib.parm=cm_data_debug_level:Enable data path debug tracing for connected mode if > 0\00", section ".modinfo", align 1
@ipoib_cm_handle_rx_wc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: cm recv completion: id %d, status: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ipoib_cm_handle_rx_wc\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/infiniband/ulp/ipoib/ipoib_cm.c\00", [56 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_rx_wc._entry_ptr = internal global ptr @ipoib_cm_handle_rx_wc._entry, section ".printk_index", align 4
@ipoib_recvq_size = external dso_local local_unnamed_addr global i32, align 4
@ipoib_cm_handle_rx_wc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_rx_wc._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014%s: cm recv completion event with wrid %d (> %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_rx_wc._entry_ptr.6 = internal global ptr @ipoib_cm_handle_rx_wc._entry.4, section ".printk_index", align 4
@ipoib_debug_level = external dso_local local_unnamed_addr global i32, align 4
@ipoib_cm_handle_rx_wc._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: cm recv error (status=%d, wrid=%d vend_err %#x)\0A\00", [41 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_rx_wc._entry_ptr.9 = internal global ptr @ipoib_cm_handle_rx_wc._entry.7, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ipoib_cm_handle_rx_wc._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: failed to allocate receive buffer %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_rx_wc._entry_ptr.12 = internal global ptr @ipoib_cm_handle_rx_wc._entry.10, section ".printk_index", align 4
@ipoib_cm_handle_rx_wc._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: received %d bytes, SLID 0x%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_rx_wc._entry_ptr.15 = internal global ptr @ipoib_cm_handle_rx_wc._entry.13, section ".printk_index", align 4
@ipoib_cm_handle_rx_wc._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_rx_wc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: ipoib_cm_post_receive_srq failed for buf %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_rx_wc._entry_ptr.19 = internal global ptr @ipoib_cm_handle_rx_wc._entry.17, section ".printk_index", align 4
@ipoib_cm_handle_rx_wc._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_rx_wc._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: ipoib_cm_post_receive_nonsrq failed for buf %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_rx_wc._entry_ptr.23 = internal global ptr @ipoib_cm_handle_rx_wc._entry.21, section ".printk_index", align 4
@ipoib_cm_send._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_cm_send = private unnamed_addr constant [14 x i8] c"ipoib_cm_send\00", align 1
@ipoib_cm_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ipoib_cm_send, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014%s: packet len %d (> %d) too long to send, dropping\0A\00", [41 x i8] zeroinitializer }, align 32
@ipoib_cm_send._entry_ptr = internal global ptr @ipoib_cm_send._entry, section ".printk_index", align 4
@ipoib_cm_send._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_send._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.ipoib_cm_send, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: skb could not be linearized\0A\00", [61 x i8] zeroinitializer }, align 32
@ipoib_cm_send._entry_ptr.28 = internal global ptr @ipoib_cm_send._entry.26, section ".printk_index", align 4
@ipoib_cm_send._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_send._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.ipoib_cm_send, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: too many frags after skb linearize\0A\00", [54 x i8] zeroinitializer }, align 32
@ipoib_cm_send._entry_ptr.32 = internal global ptr @ipoib_cm_send._entry.30, section ".printk_index", align 4
@ipoib_cm_send._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.ipoib_cm_send, ptr @.str.2, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: sending packet: head 0x%x length %d connection 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@ipoib_cm_send._entry_ptr.35 = internal global ptr @ipoib_cm_send._entry.33, section ".printk_index", align 4
@ipoib_sendq_size = external dso_local local_unnamed_addr global i32, align 4
@ipoib_cm_send._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @__func__.ipoib_cm_send, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: TX ring 0x%x full, stopping kernel net queue\0A\00", [44 x i8] zeroinitializer }, align 32
@ipoib_cm_send._entry_ptr.38 = internal global ptr @ipoib_cm_send._entry.36, section ".printk_index", align 4
@ipoib_cm_send._rs.39 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_send._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @__func__.ipoib_cm_send, ptr @.str.2, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: IPoIB/CM:request notify on send CQ failed\0A\00", [47 x i8] zeroinitializer }, align 32
@ipoib_cm_send._entry_ptr.42 = internal global ptr @ipoib_cm_send._entry.40, section ".printk_index", align 4
@ipoib_cm_send._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_send._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__.ipoib_cm_send, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: IPoIB/CM:post_send failed, error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ipoib_cm_send._entry_ptr.46 = internal global ptr @ipoib_cm_send._entry.44, section ".printk_index", align 4
@ipoib_cm_handle_tx_wc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: cm send completion: id %d, status: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ipoib_cm_handle_tx_wc\00", [42 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_tx_wc._entry_ptr = internal global ptr @ipoib_cm_handle_tx_wc._entry, section ".printk_index", align 4
@ipoib_cm_handle_tx_wc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_tx_wc._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014%s: cm send completion event with wrid %d (> %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_tx_wc._entry_ptr.51 = internal global ptr @ipoib_cm_handle_tx_wc._entry.49, section ".printk_index", align 4
@ipoib_cm_handle_tx_wc._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: %s: failed cm send event (status=%d, wrid=%d vend_err %#x)\0A\00", [62 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_tx_wc._entry_ptr.54 = internal global ptr @ipoib_cm_handle_tx_wc._entry.52, section ".printk_index", align 4
@ipoib_cm_handle_tx_wc._rs.55 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_tx_wc._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.48, ptr @.str.2, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014%s: %s: failed cm send event (status=%d, wrid=%d vend_err %#x)\0A\00", [62 x i8] zeroinitializer }, align 32
@ipoib_cm_handle_tx_wc._entry_ptr.58 = internal global ptr @ipoib_cm_handle_tx_wc._entry.56, section ".printk_index", align 4
@ipoib_cm_dev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: failed to create CM ID\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipoib_cm_dev_open\00", [46 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_open._entry_ptr = internal global ptr @ipoib_cm_dev_open._entry, section ".printk_index", align 4
@ipoib_cm_dev_open._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: failed to listen on ID 0x%llx\0A\00", [59 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_open._entry_ptr.63 = internal global ptr @ipoib_cm_dev_open._entry.61, section ".printk_index", align 4
@ipoib_cm_err_attr = internal global { %struct.ib_qp_attr, [40 x i8] } { %struct.ib_qp_attr { i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.ib_qp_cap zeroinitializer, %struct.rdma_ah_attr zeroinitializer, %struct.rdma_ah_attr zeroinitializer, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_stop._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_cm_dev_stop = private unnamed_addr constant [18 x i8] c"ipoib_cm_dev_stop\00", align 1
@ipoib_cm_dev_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @__func__.ipoib_cm_dev_stop, ptr @.str.2, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: unable to move qp to error state: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_stop._entry_ptr = internal global ptr @ipoib_cm_dev_stop._entry, section ".printk_index", align 4
@ipoib_cm_dev_stop._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_stop._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @__func__.ipoib_cm_dev_stop, ptr @.str.2, i32 959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: RX drain timing out\0A\00", [37 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_stop._entry_ptr.68 = internal global ptr @ipoib_cm_dev_stop._entry.66, section ".printk_index", align 4
@ipoib_cm_destroy_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Reap connection for gid %pI6\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipoib_cm_destroy_tx\00", [44 x i8] zeroinitializer }, align 32
@ipoib_cm_destroy_tx._entry_ptr = internal global ptr @ipoib_cm_destroy_tx._entry, section ".printk_index", align 4
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mode_show, ptr @mode_store }, [36 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&priv->cm.start_task)\00", [56 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_init.__key.72 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->cm.reap_task)\00", [57 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_init.__key.74 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&priv->cm.skb_task)\00", [58 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_init.__key.76 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&priv->cm.rx_reap_task)\00", [54 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_init.__key.78 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&priv->cm.stale_task)->work)\00", [47 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_init.__key.80 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&priv->cm.stale_task)->timer\00", [33 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: max_srq_sge=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipoib_cm_dev_init\00", [46 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_init._entry_ptr = internal global ptr @ipoib_cm_dev_init._entry, section ".printk_index", align 4
@ipoib_cm_dev_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 1611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: max_cm_mtu = 0x%x, num_frags=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_init._entry_ptr.86 = internal global ptr @ipoib_cm_dev_init._entry.84, section ".printk_index", align 4
@ipoib_cm_dev_init._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_init._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.2, i32 1626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: failed to allocate receive buffer %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_init._entry_ptr.89 = internal global ptr @ipoib_cm_dev_init._entry.87, section ".printk_index", align 4
@ipoib_cm_dev_init._rs.90 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.83, ptr @.str.2, i32 1633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_init._entry_ptr.92 = internal global ptr @ipoib_cm_dev_init._entry.91, section ".printk_index", align 4
@ipoib_cm_dev_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: Cleanup ipoib connected mode.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipoib_cm_dev_cleanup\00", [43 x i8] zeroinitializer }, align 32
@ipoib_cm_dev_cleanup._entry_ptr = internal global ptr @ipoib_cm_dev_cleanup._entry, section ".printk_index", align 4
@ipoib_cm_rx_drain_wr = internal global { %struct.ib_send_wr, [56 x i8] } { %struct.ib_send_wr { ptr null, %union.anon.161 zeroinitializer, ptr null, i32 0, i32 2, i32 0, %union.anon.162 zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@ipoib_cm_start_rx_drain._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_cm_start_rx_drain = private unnamed_addr constant [24 x i8] c"ipoib_cm_start_rx_drain\00", align 1
@ipoib_cm_start_rx_drain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @__func__.ipoib_cm_start_rx_drain, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: failed to post drain wr\0A\00", [33 x i8] zeroinitializer }, align 32
@ipoib_cm_start_rx_drain._entry_ptr = internal global ptr @ipoib_cm_start_rx_drain._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ipoib_cm_post_receive_srq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_cm_post_receive_srq = private unnamed_addr constant [26 x i8] c"ipoib_cm_post_receive_srq\00", align 1
@ipoib_cm_post_receive_srq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @__func__.ipoib_cm_post_receive_srq, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: post srq failed for buf %d (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@ipoib_cm_post_receive_srq._entry_ptr = internal global ptr @ipoib_cm_post_receive_srq._entry, section ".printk_index", align 4
@ipoib_cm_post_receive_nonsrq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_cm_post_receive_nonsrq = private unnamed_addr constant [29 x i8] c"ipoib_cm_post_receive_nonsrq\00", align 1
@ipoib_cm_post_receive_nonsrq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @__func__.ipoib_cm_post_receive_nonsrq, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: post recv failed for buf %d (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@ipoib_cm_post_receive_nonsrq._entry_ptr = internal global ptr @ipoib_cm_post_receive_nonsrq._entry, section ".printk_index", align 4
@ipoib_cm_rx_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_cm_rx_handler = private unnamed_addr constant [20 x i8] c"ipoib_cm_rx_handler\00", align 1
@ipoib_cm_rx_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @__func__.ipoib_cm_rx_handler, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: unable to move qp to error state\0A\00", [56 x i8] zeroinitializer }, align 32
@ipoib_cm_rx_handler._entry_ptr = internal global ptr @ipoib_cm_rx_handler._entry, section ".printk_index", align 4
@ipoib_cm_req_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: REQ arrived\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipoib_cm_req_handler\00", [43 x i8] zeroinitializer }, align 32
@ipoib_cm_req_handler._entry_ptr = internal global ptr @ipoib_cm_req_handler._entry, section ".printk_index", align 4
@ipoib_cm_req_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_req_handler._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: failed to send REP: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ipoib_cm_req_handler._entry_ptr.106 = internal global ptr @ipoib_cm_req_handler._entry.104, section ".printk_index", align 4
@ipoib_cm_req_handler._rs.107 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_req_handler._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.103, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipoib_cm_req_handler._entry_ptr.109 = internal global ptr @ipoib_cm_req_handler._entry.108, section ".printk_index", align 4
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ib_ipoib\00", [23 x i8] zeroinitializer }, align 32
@ipoib_cm_modify_rx_qp._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_cm_modify_rx_qp = private unnamed_addr constant [22 x i8] c"ipoib_cm_modify_rx_qp\00", align 1
@ipoib_cm_modify_rx_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @__func__.ipoib_cm_modify_rx_qp, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: failed to init QP attr for INIT: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@ipoib_cm_modify_rx_qp._entry_ptr = internal global ptr @ipoib_cm_modify_rx_qp._entry, section ".printk_index", align 4
@ipoib_cm_modify_rx_qp._rs.112 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_modify_rx_qp._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @__func__.ipoib_cm_modify_rx_qp, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: failed to modify QP to INIT: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ipoib_cm_modify_rx_qp._entry_ptr.115 = internal global ptr @ipoib_cm_modify_rx_qp._entry.113, section ".printk_index", align 4
@ipoib_cm_modify_rx_qp._rs.116 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_modify_rx_qp._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @__func__.ipoib_cm_modify_rx_qp, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: failed to init QP attr for RTR: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ipoib_cm_modify_rx_qp._entry_ptr.119 = internal global ptr @ipoib_cm_modify_rx_qp._entry.117, section ".printk_index", align 4
@ipoib_cm_modify_rx_qp._rs.120 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_modify_rx_qp._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @__func__.ipoib_cm_modify_rx_qp, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: failed to modify QP to RTR: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ipoib_cm_modify_rx_qp._entry_ptr.123 = internal global ptr @ipoib_cm_modify_rx_qp._entry.121, section ".printk_index", align 4
@ipoib_cm_modify_rx_qp._rs.124 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_modify_rx_qp._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @__func__.ipoib_cm_modify_rx_qp, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: failed to init QP attr for RTS: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ipoib_cm_modify_rx_qp._entry_ptr.127 = internal global ptr @ipoib_cm_modify_rx_qp._entry.125, section ".printk_index", align 4
@ipoib_cm_modify_rx_qp._rs.128 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_modify_rx_qp._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @__func__.ipoib_cm_modify_rx_qp, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: failed to modify QP to RTS: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ipoib_cm_modify_rx_qp._entry_ptr.131 = internal global ptr @ipoib_cm_modify_rx_qp._entry.129, section ".printk_index", align 4
@ipoib_cm_nonsrq_init_rx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_cm_nonsrq_init_rx = private unnamed_addr constant [24 x i8] c"ipoib_cm_nonsrq_init_rx\00", align 1
@ipoib_cm_nonsrq_init_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @__func__.ipoib_cm_nonsrq_init_rx, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipoib_cm_nonsrq_init_rx._entry_ptr = internal global ptr @ipoib_cm_nonsrq_init_rx._entry, section ".printk_index", align 4
@ipoib_cm_nonsrq_init_rx._rs.132 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_nonsrq_init_rx._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.ipoib_cm_nonsrq_init_rx, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipoib_cm_nonsrq_init_rx._entry_ptr.134 = internal global ptr @ipoib_cm_nonsrq_init_rx._entry.133, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"connected\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"datagram\0A\00", [22 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 1368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s ignore not valid path %pI6\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipoib_cm_tx_start\00", [46 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_start._entry_ptr = internal global ptr @ipoib_cm_tx_start._entry, section ".printk_index", align 4
@ipoib_cm_tx_init._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_cm_tx_init = private unnamed_addr constant [17 x i8] c"ipoib_cm_tx_init\00", align 1
@ipoib_cm_tx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @__func__.ipoib_cm_tx_init, ptr @.str.2, i32 1159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: failed to create tx qp: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_init._entry_ptr = internal global ptr @ipoib_cm_tx_init._entry, section ".printk_index", align 4
@ipoib_cm_tx_init._rs.142 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_init._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @__func__.ipoib_cm_tx_init, ptr @.str.2, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: failed to create tx cm id: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_init._entry_ptr.145 = internal global ptr @ipoib_cm_tx_init._entry.143, section ".printk_index", align 4
@ipoib_cm_tx_init._rs.146 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_init._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @__func__.ipoib_cm_tx_init, ptr @.str.2, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: failed to modify tx qp to rtr: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_init._entry_ptr.149 = internal global ptr @ipoib_cm_tx_init._entry.147, section ".printk_index", align 4
@ipoib_cm_tx_init._rs.150 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_init._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @__func__.ipoib_cm_tx_init, ptr @.str.2, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: failed to send cm req: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_init._entry_ptr.153 = internal global ptr @ipoib_cm_tx_init._entry.151, section ".printk_index", align 4
@ipoib_cm_tx_init._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @__func__.ipoib_cm_tx_init, ptr @.str.2, i32 1183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s: Request connection 0x%x for gid %pI6 qpn 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_init._entry_ptr.156 = internal global ptr @ipoib_cm_tx_init._entry.154, section ".printk_index", align 4
@ipoib_cm_tx_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: DREQ received.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipoib_cm_tx_handler\00", [44 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_handler._entry_ptr = internal global ptr @ipoib_cm_tx_handler._entry, section ".printk_index", align 4
@ipoib_cm_tx_handler._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.2, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: REP received.\0A\00", [43 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_handler._entry_ptr.161 = internal global ptr @ipoib_cm_tx_handler._entry.159, section ".printk_index", align 4
@ipoib_cm_tx_handler._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.158, ptr @.str.2, i32 1274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: CM error %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_handler._entry_ptr.164 = internal global ptr @ipoib_cm_tx_handler._entry.162, section ".printk_index", align 4
@ipoib_cm_rep_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_cm_rep_handler = private unnamed_addr constant [21 x i8] c"ipoib_cm_rep_handler\00", align 1
@ipoib_cm_rep_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @__func__.ipoib_cm_rep_handler, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: Rejecting connection: mtu %d <= %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ipoib_cm_rep_handler._entry_ptr = internal global ptr @ipoib_cm_rep_handler._entry, section ".printk_index", align 4
@ipoib_cm_rep_handler._rs.166 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_rep_handler._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @__func__.ipoib_cm_rep_handler, ptr @.str.2, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipoib_cm_rep_handler._entry_ptr.168 = internal global ptr @ipoib_cm_rep_handler._entry.167, section ".printk_index", align 4
@ipoib_cm_rep_handler._rs.169 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_rep_handler._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @__func__.ipoib_cm_rep_handler, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipoib_cm_rep_handler._entry_ptr.171 = internal global ptr @ipoib_cm_rep_handler._entry.170, section ".printk_index", align 4
@ipoib_cm_rep_handler._rs.172 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_rep_handler._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @__func__.ipoib_cm_rep_handler, ptr @.str.2, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipoib_cm_rep_handler._entry_ptr.174 = internal global ptr @ipoib_cm_rep_handler._entry.173, section ".printk_index", align 4
@ipoib_cm_rep_handler._rs.175 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_rep_handler._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @__func__.ipoib_cm_rep_handler, ptr @.str.2, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipoib_cm_rep_handler._entry_ptr.177 = internal global ptr @ipoib_cm_rep_handler._entry.176, section ".printk_index", align 4
@ipoib_cm_rep_handler._rs.178 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_rep_handler._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @__func__.ipoib_cm_rep_handler, ptr @.str.2, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014%s: %s:dev_queue_xmit failed to re-queue packet, ret:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@ipoib_cm_rep_handler._entry_ptr.181 = internal global ptr @ipoib_cm_rep_handler._entry.179, section ".printk_index", align 4
@ipoib_cm_rep_handler._rs.182 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_rep_handler._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @__func__.ipoib_cm_rep_handler, ptr @.str.2, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: failed to send RTU: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ipoib_cm_rep_handler._entry_ptr.185 = internal global ptr @ipoib_cm_rep_handler._entry.183, section ".printk_index", align 4
@ipoib_cm_modify_tx_init._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_cm_modify_tx_init = private unnamed_addr constant [24 x i8] c"ipoib_cm_modify_tx_init\00", align 1
@ipoib_cm_modify_tx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @__func__.ipoib_cm_modify_tx_init, ptr @.str.2, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: failed to modify tx QP to INIT: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ipoib_cm_modify_tx_init._entry_ptr = internal global ptr @ipoib_cm_modify_tx_init._entry, section ".printk_index", align 4
@ipoib_cm_tx_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.2, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017%s: Destroy active connection 0x%x head 0x%x tail 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipoib_cm_tx_destroy\00", [44 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_destroy._entry_ptr = internal global ptr @ipoib_cm_tx_destroy._entry, section ".printk_index", align 4
@ipoib_cm_tx_destroy._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_destroy._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.2, i32 1217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: timing out; %d sends not completed\0A\00", [54 x i8] zeroinitializer }, align 32
@ipoib_cm_tx_destroy._entry_ptr.191 = internal global ptr @ipoib_cm_tx_destroy._entry.189, section ".printk_index", align 4
@ipoib_cm_stale_task._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_cm_stale_task = private unnamed_addr constant [20 x i8] c"ipoib_cm_stale_task\00", align 1
@ipoib_cm_stale_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @__func__.ipoib_cm_stale_task, ptr @.str.2, i32 1496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipoib_cm_stale_task._entry_ptr = internal global ptr @ipoib_cm_stale_task._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.192 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@ipoib_cm_create_srq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.2, i32 1567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: failed to allocate SRQ, error %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipoib_cm_create_srq\00", [44 x i8] zeroinitializer }, align 32
@ipoib_cm_create_srq._entry_ptr = internal global ptr @ipoib_cm_create_srq._entry, section ".printk_index", align 4
@ib_destroy_srq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.195 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Destroy of kernel SRQ shouldn't fail\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 5, i64 12, i64 13]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 11]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.199 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 3, i64 7, i64 9, i64 11]
@___asan_gen_.200 = private unnamed_addr constant [18 x i8] c"ipoib_max_conn_qp\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 46, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"data_debug_level\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 54, i32 12 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 573, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 584, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 597, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 654, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 662, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 682, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 690, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 716, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 725, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 733, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 740, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 761, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 773, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 780, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 802, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 806, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 841, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 845, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 882, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 890, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant [18 x i8] c"ipoib_cm_err_attr\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 70, i32 26 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 948, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 959, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1328, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1595, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1596, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1597, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1598, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1599, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1603, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1610, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1625, i32 5 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1632, i32 5 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1652, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [21 x i8] c"ipoib_cm_rx_drain_wr\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 76, i32 26 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 228, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 326, i32 6 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 106, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 131, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 520, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 451, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 491, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 493, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3722, i32 44 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 284, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 289, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 295, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 301, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 316, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 321, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 387, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 393, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 1011, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1545, i32 8 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1513, i32 26 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1515, i32 26 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1366, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1159, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1166, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1172, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1178, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1182, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1261, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1265, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1274, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 999, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1007, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1014, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1021, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1026, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1045, i32 4 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1051, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1134, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1205, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1216, i32 5 }
@___asan_gen_.779 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1496, i32 4 }
@___asan_gen_.785 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.789 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.789, i32 1984, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.798 = private constant [43 x i8] c"../drivers/infiniband/ulp/ipoib/ipoib_cm.c\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.798, i32 1566, i32 4 }
@___asan_gen_.803 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.804 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.804, i32 3688, i32 2 }
@llvm.compiler.used = appending global [272 x ptr] [ptr @__UNIQUE_ID_cm_data_debug_level531, ptr @__UNIQUE_ID_cm_data_debug_leveltype530, ptr @__UNIQUE_ID_max_nonsrq_conn_qp529, ptr @__UNIQUE_ID_max_nonsrq_conn_qptype528, ptr @__param_cm_data_debug_level, ptr @__param_max_nonsrq_conn_qp, ptr @ipoib_cm_create_srq._entry, ptr @ipoib_cm_create_srq._entry_ptr, ptr @ipoib_cm_destroy_tx._entry, ptr @ipoib_cm_destroy_tx._entry_ptr, ptr @ipoib_cm_dev_cleanup._entry, ptr @ipoib_cm_dev_cleanup._entry_ptr, ptr @ipoib_cm_dev_init._entry, ptr @ipoib_cm_dev_init._entry.84, ptr @ipoib_cm_dev_init._entry.87, ptr @ipoib_cm_dev_init._entry.91, ptr @ipoib_cm_dev_init._entry_ptr, ptr @ipoib_cm_dev_init._entry_ptr.86, ptr @ipoib_cm_dev_init._entry_ptr.89, ptr @ipoib_cm_dev_init._entry_ptr.92, ptr @ipoib_cm_dev_open._entry, ptr @ipoib_cm_dev_open._entry.61, ptr @ipoib_cm_dev_open._entry_ptr, ptr @ipoib_cm_dev_open._entry_ptr.63, ptr @ipoib_cm_dev_stop._entry, ptr @ipoib_cm_dev_stop._entry.66, ptr @ipoib_cm_dev_stop._entry_ptr, ptr @ipoib_cm_dev_stop._entry_ptr.68, ptr @ipoib_cm_handle_rx_wc._entry, ptr @ipoib_cm_handle_rx_wc._entry.10, ptr @ipoib_cm_handle_rx_wc._entry.13, ptr @ipoib_cm_handle_rx_wc._entry.17, ptr @ipoib_cm_handle_rx_wc._entry.21, ptr @ipoib_cm_handle_rx_wc._entry.4, ptr @ipoib_cm_handle_rx_wc._entry.7, ptr @ipoib_cm_handle_rx_wc._entry_ptr, ptr @ipoib_cm_handle_rx_wc._entry_ptr.12, ptr @ipoib_cm_handle_rx_wc._entry_ptr.15, ptr @ipoib_cm_handle_rx_wc._entry_ptr.19, ptr @ipoib_cm_handle_rx_wc._entry_ptr.23, ptr @ipoib_cm_handle_rx_wc._entry_ptr.6, ptr @ipoib_cm_handle_rx_wc._entry_ptr.9, ptr @ipoib_cm_handle_tx_wc._entry, ptr @ipoib_cm_handle_tx_wc._entry.49, ptr @ipoib_cm_handle_tx_wc._entry.52, ptr @ipoib_cm_handle_tx_wc._entry.56, ptr @ipoib_cm_handle_tx_wc._entry_ptr, ptr @ipoib_cm_handle_tx_wc._entry_ptr.51, ptr @ipoib_cm_handle_tx_wc._entry_ptr.54, ptr @ipoib_cm_handle_tx_wc._entry_ptr.58, ptr @ipoib_cm_modify_rx_qp._entry, ptr @ipoib_cm_modify_rx_qp._entry.113, ptr @ipoib_cm_modify_rx_qp._entry.117, ptr @ipoib_cm_modify_rx_qp._entry.121, ptr @ipoib_cm_modify_rx_qp._entry.125, ptr @ipoib_cm_modify_rx_qp._entry.129, ptr @ipoib_cm_modify_rx_qp._entry_ptr, ptr @ipoib_cm_modify_rx_qp._entry_ptr.115, ptr @ipoib_cm_modify_rx_qp._entry_ptr.119, ptr @ipoib_cm_modify_rx_qp._entry_ptr.123, ptr @ipoib_cm_modify_rx_qp._entry_ptr.127, ptr @ipoib_cm_modify_rx_qp._entry_ptr.131, ptr @ipoib_cm_modify_tx_init._entry, ptr @ipoib_cm_modify_tx_init._entry_ptr, ptr @ipoib_cm_nonsrq_init_rx._entry, ptr @ipoib_cm_nonsrq_init_rx._entry.133, ptr @ipoib_cm_nonsrq_init_rx._entry_ptr, ptr @ipoib_cm_nonsrq_init_rx._entry_ptr.134, ptr @ipoib_cm_post_receive_nonsrq._entry, ptr @ipoib_cm_post_receive_nonsrq._entry_ptr, ptr @ipoib_cm_post_receive_srq._entry, ptr @ipoib_cm_post_receive_srq._entry_ptr, ptr @ipoib_cm_rep_handler._entry, ptr @ipoib_cm_rep_handler._entry.167, ptr @ipoib_cm_rep_handler._entry.170, ptr @ipoib_cm_rep_handler._entry.173, ptr @ipoib_cm_rep_handler._entry.176, ptr @ipoib_cm_rep_handler._entry.179, ptr @ipoib_cm_rep_handler._entry.183, ptr @ipoib_cm_rep_handler._entry_ptr, ptr @ipoib_cm_rep_handler._entry_ptr.168, ptr @ipoib_cm_rep_handler._entry_ptr.171, ptr @ipoib_cm_rep_handler._entry_ptr.174, ptr @ipoib_cm_rep_handler._entry_ptr.177, ptr @ipoib_cm_rep_handler._entry_ptr.181, ptr @ipoib_cm_rep_handler._entry_ptr.185, ptr @ipoib_cm_req_handler._entry, ptr @ipoib_cm_req_handler._entry.104, ptr @ipoib_cm_req_handler._entry.108, ptr @ipoib_cm_req_handler._entry_ptr, ptr @ipoib_cm_req_handler._entry_ptr.106, ptr @ipoib_cm_req_handler._entry_ptr.109, ptr @ipoib_cm_rx_handler._entry, ptr @ipoib_cm_rx_handler._entry_ptr, ptr @ipoib_cm_send._entry, ptr @ipoib_cm_send._entry.26, ptr @ipoib_cm_send._entry.30, ptr @ipoib_cm_send._entry.33, ptr @ipoib_cm_send._entry.36, ptr @ipoib_cm_send._entry.40, ptr @ipoib_cm_send._entry.44, ptr @ipoib_cm_send._entry_ptr, ptr @ipoib_cm_send._entry_ptr.28, ptr @ipoib_cm_send._entry_ptr.32, ptr @ipoib_cm_send._entry_ptr.35, ptr @ipoib_cm_send._entry_ptr.38, ptr @ipoib_cm_send._entry_ptr.42, ptr @ipoib_cm_send._entry_ptr.46, ptr @ipoib_cm_stale_task._entry, ptr @ipoib_cm_stale_task._entry_ptr, ptr @ipoib_cm_start_rx_drain._entry, ptr @ipoib_cm_start_rx_drain._entry_ptr, ptr @ipoib_cm_tx_destroy._entry, ptr @ipoib_cm_tx_destroy._entry.189, ptr @ipoib_cm_tx_destroy._entry_ptr, ptr @ipoib_cm_tx_destroy._entry_ptr.191, ptr @ipoib_cm_tx_handler._entry, ptr @ipoib_cm_tx_handler._entry.159, ptr @ipoib_cm_tx_handler._entry.162, ptr @ipoib_cm_tx_handler._entry_ptr, ptr @ipoib_cm_tx_handler._entry_ptr.161, ptr @ipoib_cm_tx_handler._entry_ptr.164, ptr @ipoib_cm_tx_init._entry, ptr @ipoib_cm_tx_init._entry.143, ptr @ipoib_cm_tx_init._entry.147, ptr @ipoib_cm_tx_init._entry.151, ptr @ipoib_cm_tx_init._entry.154, ptr @ipoib_cm_tx_init._entry_ptr, ptr @ipoib_cm_tx_init._entry_ptr.145, ptr @ipoib_cm_tx_init._entry_ptr.149, ptr @ipoib_cm_tx_init._entry_ptr.153, ptr @ipoib_cm_tx_init._entry_ptr.156, ptr @ipoib_cm_tx_start._entry, ptr @ipoib_cm_tx_start._entry_ptr, ptr @ipoib_max_conn_qp, ptr @data_debug_level, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ipoib_cm_handle_rx_wc._rs, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @ipoib_cm_handle_rx_wc._rs.16, ptr @.str.18, ptr @ipoib_cm_handle_rx_wc._rs.20, ptr @.str.22, ptr @ipoib_cm_send._rs, ptr @.str.24, ptr @ipoib_cm_send._rs.25, ptr @.str.27, ptr @ipoib_cm_send._rs.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @ipoib_cm_send._rs.39, ptr @.str.41, ptr @ipoib_cm_send._rs.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @ipoib_cm_handle_tx_wc._rs, ptr @.str.50, ptr @.str.53, ptr @ipoib_cm_handle_tx_wc._rs.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @ipoib_cm_err_attr, ptr @ipoib_cm_dev_stop._rs, ptr @.str.64, ptr @ipoib_cm_dev_stop._rs.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @dev_attr_mode, ptr @ipoib_cm_dev_init.__key, ptr @.str.71, ptr @ipoib_cm_dev_init.__key.72, ptr @.str.73, ptr @ipoib_cm_dev_init.__key.74, ptr @.str.75, ptr @ipoib_cm_dev_init.__key.76, ptr @.str.77, ptr @ipoib_cm_dev_init.__key.78, ptr @.str.79, ptr @ipoib_cm_dev_init.__key.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @ipoib_cm_dev_init._rs, ptr @.str.88, ptr @ipoib_cm_dev_init._rs.90, ptr @.str.93, ptr @.str.94, ptr @ipoib_cm_rx_drain_wr, ptr @ipoib_cm_start_rx_drain._rs, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @ipoib_cm_post_receive_srq._rs, ptr @.str.99, ptr @ipoib_cm_post_receive_nonsrq._rs, ptr @.str.100, ptr @ipoib_cm_rx_handler._rs, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @ipoib_cm_req_handler._rs, ptr @.str.105, ptr @ipoib_cm_req_handler._rs.107, ptr @.str.110, ptr @ipoib_cm_modify_rx_qp._rs, ptr @.str.111, ptr @ipoib_cm_modify_rx_qp._rs.112, ptr @.str.114, ptr @ipoib_cm_modify_rx_qp._rs.116, ptr @.str.118, ptr @ipoib_cm_modify_rx_qp._rs.120, ptr @.str.122, ptr @ipoib_cm_modify_rx_qp._rs.124, ptr @.str.126, ptr @ipoib_cm_modify_rx_qp._rs.128, ptr @.str.130, ptr @ipoib_cm_nonsrq_init_rx._rs, ptr @ipoib_cm_nonsrq_init_rx._rs.132, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @ipoib_cm_tx_init._rs, ptr @.str.141, ptr @ipoib_cm_tx_init._rs.142, ptr @.str.144, ptr @ipoib_cm_tx_init._rs.146, ptr @.str.148, ptr @ipoib_cm_tx_init._rs.150, ptr @.str.152, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.163, ptr @ipoib_cm_rep_handler._rs, ptr @.str.165, ptr @ipoib_cm_rep_handler._rs.166, ptr @ipoib_cm_rep_handler._rs.169, ptr @ipoib_cm_rep_handler._rs.172, ptr @ipoib_cm_rep_handler._rs.175, ptr @ipoib_cm_rep_handler._rs.178, ptr @.str.180, ptr @ipoib_cm_rep_handler._rs.182, ptr @.str.184, ptr @ipoib_cm_modify_tx_init._rs, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @ipoib_cm_tx_destroy._rs, ptr @.str.190, ptr @ipoib_cm_stale_task._rs, ptr @skb_queue_head_init.__key, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196], section "llvm.metadata"
@0 = internal global [202 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_max_conn_qp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_rx_wc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_rx_wc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_rx_wc._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_rx_wc._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_rx_wc._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_rx_wc._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_rx_wc._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_rx_wc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_rx_wc._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_rx_wc._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_send._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_send._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_send._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_send._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_send._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_send._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_send._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_send._rs.39 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_send._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_send._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_send._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_tx_wc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_tx_wc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_tx_wc._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_tx_wc._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_tx_wc._rs.55 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_handle_tx_wc._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_open._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_err_attr to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_stop._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_stop._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_stop._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_destroy_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_init.__key.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_init.__key.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_init.__key.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_init.__key.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_init.__key.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_init._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_init._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_init._rs.90 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_dev_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rx_drain_wr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_start_rx_drain._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_start_rx_drain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_post_receive_srq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_post_receive_srq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_post_receive_nonsrq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_post_receive_nonsrq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rx_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rx_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_req_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_req_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_req_handler._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_req_handler._rs.107 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_req_handler._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_rx_qp._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_rx_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_rx_qp._rs.112 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_rx_qp._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_rx_qp._rs.116 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_rx_qp._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_rx_qp._rs.120 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_rx_qp._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_rx_qp._rs.124 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_rx_qp._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_rx_qp._rs.128 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_rx_qp._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_nonsrq_init_rx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_nonsrq_init_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_nonsrq_init_rx._rs.132 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_nonsrq_init_rx._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_init._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_init._rs.142 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_init._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_init._rs.146 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_init._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_init._rs.150 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_init._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_init._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_handler._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_handler._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._rs.166 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._rs.169 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._rs.172 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._rs.175 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._rs.178 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._rs.182 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_rep_handler._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_tx_init._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_modify_tx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_destroy._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_tx_destroy._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_stale_task._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_stale_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_cm_create_srq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_cm_handle_rx_wc(ptr noundef %dev, ptr nocapture noundef readonly %wc) local_unnamed_addr #0 align 64 {
entry:
  %mapping = alloca [16 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wc, align 8
  %4 = trunc i64 %3 to i32
  %conv = and i32 %4, 1073741823
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %mapping) #9
  %5 = call ptr @memset(ptr %mapping, i32 255, i32 128)
  %6 = load i32, ptr @data_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev3, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8, i32 noundef %conv, i32 noundef %10) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %11 = load i32, ptr @ipoib_recvq_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %11)
  %cmp7.not = icmp ult i32 %conv, %11
  br i1 %cmp7.not, label %if.end45, label %if.then10, !prof !385

if.then10:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %conv)
  %cmp11 = icmp eq i32 %conv, 1073741823
  br i1 %cmp11, label %do.body15, label %do.body29

do.body15:                                        ; preds = %if.then10
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %rx_drain_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 6
  %12 = ptrtoint ptr %rx_drain_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %rx_drain_list, align 4
  %cmp.i.not.i = icmp eq ptr %13, %rx_drain_list
  br i1 %cmp.i.not.i, label %do.body15.list_splice_init.exit_crit_edge, label %if.then.i

do.body15.list_splice_init.exit_crit_edge:        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %rx_reap_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 7
  %14 = ptrtoint ptr %rx_reap_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_reap_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 6, i32 1
  %16 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rx_reap_list, ptr %prev3.i.i, align 4
  store ptr %13, ptr %rx_reap_list, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %15, ptr %17, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev6.i.i, align 4
  %21 = ptrtoint ptr %rx_drain_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %rx_drain_list, ptr %rx_drain_list, align 4
  store ptr %rx_drain_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %do.body15.list_splice_init.exit_crit_edge
  tail call fastcc void @ipoib_cm_start_rx_drain(ptr noundef %1)
  %wq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 14
  %22 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wq, align 4
  %rx_reap_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %rx_reap_task) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call20) #9
  br label %cleanup295

do.body29:                                        ; preds = %if.then10
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_handle_rx_wc._rs, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body29.cleanup295_crit_edge, label %do.end35

do.body29.cleanup295_crit_edge:                   ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup295

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %dev37 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev37, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %26 = load i32, ptr @ipoib_recvq_size, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %25, i32 noundef %conv, i32 noundef %26) #12
  br label %cleanup295

if.end45:                                         ; preds = %do.end6
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %27 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qp_context, align 4
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i.i, align 4
  %cm.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %32, i32 0, i32 55
  %33 = ptrtoint ptr %cm.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cm.i, align 8
  %tobool.i.not = icmp eq ptr %34, null
  %srq_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 1
  %rx_ring49 = getelementptr inbounds %struct.ipoib_cm_rx, ptr %30, i32 0, i32 2
  %cond.in = select i1 %tobool.i.not, ptr %rx_ring49, ptr %srq_ring
  %35 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %cond = load ptr, ptr %cond.in, align 4
  %arrayidx = getelementptr %struct.ipoib_cm_rx_buf, ptr %cond, i32 %conv
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 8
  %status51 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %38 = ptrtoint ptr %status51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp52.not = icmp eq i32 %39, 0
  br i1 %cmp52.not, label %if.end104, label %do.body61, !prof !385

do.body61:                                        ; preds = %if.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %40 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp62 = icmp sgt i32 %40, 0
  br i1 %cmp62, label %do.end67, label %do.body61.do.end76_crit_edge

do.body61.do.end76_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end76

do.end67:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  %dev69 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev69, align 4
  %vendor_err = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %43 = ptrtoint ptr %vendor_err to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vendor_err, align 8
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %42, i32 noundef %39, i32 noundef %conv, i32 noundef %44) #12
  br label %do.end76

do.end76:                                         ; preds = %do.end67, %do.body61.do.end76_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %45 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %46, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br i1 %tobool.i.not, label %if.else79, label %do.end76.if.then237_crit_edge

do.end76.if.then237_crit_edge:                    ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then237

if.else79:                                        ; preds = %do.end76
  %recv_count = getelementptr inbounds %struct.ipoib_cm_rx, ptr %30, i32 0, i32 7
  %47 = ptrtoint ptr %recv_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %recv_count, align 4
  %dec = add i32 %48, -1
  store i32 %dec, ptr %recv_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool80.not = icmp eq i32 %dec, 0
  br i1 %tobool80.not, label %do.body83, label %if.else79.cleanup295_crit_edge

if.else79.cleanup295_crit_edge:                   ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup295

do.body83:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #11
  %call91 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %list = getelementptr inbounds %struct.ipoib_cm_rx, ptr %30, i32 0, i32 3
  %rx_reap_list97 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 7
  tail call fastcc void @list_move(ptr noundef %list, ptr noundef %rx_reap_list97)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call91) #9
  %wq99 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 14
  %49 = ptrtoint ptr %wq99 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wq99, align 4
  %rx_reap_task101 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 11
  %call.i415 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %rx_reap_task101) #9
  br label %cleanup295

if.end104:                                        ; preds = %if.end45
  %and105 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.then115, label %if.end104.if.end143_crit_edge, !prof !386

if.end104.if.end143_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then115:                                       ; preds = %if.end104
  %tobool116.not = icmp eq ptr %30, null
  br i1 %tobool116.not, label %if.then115.if.end143_crit_edge, label %land.lhs.true

if.then115.if.end143_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

land.lhs.true:                                    ; preds = %if.then115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %jiffies = getelementptr inbounds %struct.ipoib_cm_rx, ptr %30, i32 0, i32 5
  %52 = ptrtoint ptr %jiffies to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %jiffies, align 4
  %add.neg = add i32 %51, -25600
  %sub = sub i32 %add.neg, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp117 = icmp sgt i32 %sub, -1
  br i1 %cmp117, label %do.body121, label %land.lhs.true.if.end143_crit_edge

land.lhs.true.if.end143_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

do.body121:                                       ; preds = %land.lhs.true
  %call129 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %55 = ptrtoint ptr %jiffies to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %jiffies, align 4
  %state = getelementptr inbounds %struct.ipoib_cm_rx, ptr %30, i32 0, i32 6
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp135 = icmp eq i32 %57, 0
  br i1 %cmp135, label %if.then137, label %do.body121.if.end140_crit_edge

do.body121.if.end140_crit_edge:                   ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then137:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  %list138 = getelementptr inbounds %struct.ipoib_cm_rx, ptr %30, i32 0, i32 3
  %passive_ids = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 3
  tail call fastcc void @list_move(ptr noundef %list138, ptr noundef %passive_ids)
  br label %if.end140

if.end140:                                        ; preds = %if.then137, %do.body121.if.end140_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call129) #9
  br label %if.end143

if.end143:                                        ; preds = %if.end140, %land.lhs.true.if.end143_crit_edge, %if.then115.if.end143_crit_edge, %if.end104.if.end143_crit_edge
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %58 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %byte_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %59)
  %cmp144 = icmp ult i32 %59, 256
  br i1 %cmp144, label %if.then146, label %if.end143.if.end161_crit_edge

if.end143.if.end161_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

if.then146:                                       ; preds = %if.end143
  %add148 = add nuw nsw i32 %59, 28
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add148, i32 noundef 2592) #9
  %tobool150.not = icmp eq ptr %call.i.i, null
  br i1 %tobool150.not, label %if.then146.if.end161_crit_edge, label %cleanup

if.then146.if.end161_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

cleanup:                                          ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %61, i32 28
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %62 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %63, i32 28
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %64 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ca, align 8
  %mapping153 = getelementptr %struct.ipoib_cm_rx_buf, ptr %cond, i32 %conv, i32 1
  %66 = ptrtoint ptr %mapping153 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %mapping153, align 8
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %65, align 8
  %conv.i = trunc i64 %67 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %69, i32 noundef %conv.i, i32 noundef %59, i32 noundef 2) #9
  %70 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i, align 4
  %data.i416 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 19
  %72 = ptrtoint ptr %data.i416 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i416, align 4
  %74 = call ptr @memcpy(ptr %71, ptr %73, i32 %59)
  %75 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ca, align 8
  %77 = ptrtoint ptr %mapping153 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %mapping153, align 8
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %76, align 8
  %conv.i417 = trunc i64 %78 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %80, i32 noundef %conv.i417, i32 noundef %59, i32 noundef 2) #9
  %call159 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %59) #9
  br label %copied

if.end161:                                        ; preds = %if.then146.if.end161_crit_edge, %if.end143.if.end161_crit_edge
  %81 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %byte_len, align 4
  %83 = tail call i32 @llvm.usub.sat.i32(i32 %82, i32 4084)
  %add172 = add i32 %83, 4095
  %div414 = lshr i32 %add172, 12
  %call175 = call fastcc ptr @ipoib_cm_alloc_rx_skb(ptr noundef %dev, ptr noundef %cond, i32 noundef %conv, i32 noundef %div414, ptr noundef nonnull %mapping, i32 noundef 2592)
  %tobool176.not = icmp eq ptr %call175, null
  br i1 %tobool176.not, label %do.body186, label %if.end204, !prof !386

do.body186:                                       ; preds = %if.end161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %84 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp187 = icmp sgt i32 %84, 0
  br i1 %cmp187, label %do.end192, label %do.body186.do.end200_crit_edge

do.body186.do.end200_crit_edge:                   ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end200

do.end192:                                        ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #11
  %dev194 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %85 = ptrtoint ptr %dev194 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev194, align 4
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %86, i32 noundef %conv) #12
  br label %do.end200

do.end200:                                        ; preds = %do.end192, %do.body186.do.end200_crit_edge
  %rx_dropped202 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %87 = ptrtoint ptr %rx_dropped202 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_dropped202, align 8
  %inc203 = add i32 %88, 1
  store i32 %inc203, ptr %rx_dropped202, align 8
  br label %repost

if.end204:                                        ; preds = %if.end161
  %mapping206 = getelementptr %struct.ipoib_cm_rx_buf, ptr %cond, i32 %conv, i32 1
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %89 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ca.i, align 8
  %91 = ptrtoint ptr %mapping206 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %mapping206, align 8
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %90, align 8
  %conv.i.i = trunc i64 %92 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %94, i32 noundef %conv.i.i, i32 noundef 4084, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add172)
  %cmp8.i.not = icmp ult i32 %add172, 4096
  br i1 %cmp8.i.not, label %if.end204.ipoib_cm_dma_unmap_rx.exit_crit_edge, label %if.end204.for.body.i_crit_edge

if.end204.for.body.i_crit_edge:                   ; preds = %if.end204
  br label %for.body.i

if.end204.ipoib_cm_dma_unmap_rx.exit_crit_edge:   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_dma_unmap_rx.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end204.for.body.i_crit_edge
  %i.09.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end204.for.body.i_crit_edge ]
  %95 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ca.i, align 8
  %add.i = add nuw nsw i32 %i.09.i, 1
  %arrayidx2.i = getelementptr i64, ptr %mapping206, i32 %add.i
  %97 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx2.i, align 8
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %96, align 8
  %conv.i7.i = trunc i64 %98 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %100, i32 noundef %conv.i7.i, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #9
  %exitcond.not.i = icmp eq i32 %add.i, %div414
  br i1 %exitcond.not.i, label %for.body.i.ipoib_cm_dma_unmap_rx.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.ipoib_cm_dma_unmap_rx.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_dma_unmap_rx.exit

ipoib_cm_dma_unmap_rx.exit:                       ; preds = %for.body.i.ipoib_cm_dma_unmap_rx.exit_crit_edge, %if.end204.ipoib_cm_dma_unmap_rx.exit_crit_edge
  %add212 = shl nuw nsw i32 %div414, 3
  %mul = add nuw nsw i32 %add212, 8
  %101 = call ptr @memcpy(ptr %mapping206, ptr %mapping, i32 %mul)
  %102 = load i32, ptr @data_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp214 = icmp sgt i32 %102, 0
  br i1 %cmp214, label %do.end219, label %ipoib_cm_dma_unmap_rx.exit.do.end228_crit_edge

ipoib_cm_dma_unmap_rx.exit.do.end228_crit_edge:   ; preds = %ipoib_cm_dma_unmap_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end228

do.end219:                                        ; preds = %ipoib_cm_dma_unmap_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev221 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %103 = ptrtoint ptr %dev221 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev221, align 4
  %105 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %byte_len, align 4
  %slid = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 8
  %107 = ptrtoint ptr %slid to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %slid, align 4
  %call225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %104, i32 noundef %106, i32 noundef %108) #12
  br label %do.end228

do.end228:                                        ; preds = %do.end219, %ipoib_cm_dma_unmap_rx.exit.do.end228_crit_edge
  %109 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %byte_len, align 4
  %111 = tail call i32 @llvm.umin.i32(i32 %110, i32 4084) #9
  %tail.i418 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 16
  %112 = ptrtoint ptr %tail.i418 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tail.i418, align 8
  %add.ptr.i419 = getelementptr i8, ptr %113, i32 %111
  store ptr %add.ptr.i419, ptr %tail.i418, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 6
  %114 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len.i, align 4
  %add.i420 = add i32 %115, %111
  store i32 %add.i420, ptr %len.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 17
  %116 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %nr_frags.i, align 2
  %conv.i421 = zext i8 %119 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp13.not.i = icmp eq i8 %119, 0
  br i1 %cmp13.not.i, label %do.end228.copied_crit_edge, label %for.body.lr.ph.i

do.end228.copied_crit_edge:                       ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #11
  br label %copied

for.body.lr.ph.i:                                 ; preds = %do.end228
  %sub.i = sub i32 %110, %111
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 7
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 20
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call175, i32 0, i32 17
  %pfmemalloc.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call175, i32 0, i32 12
  br label %for.body.i422

for.body.i422:                                    ; preds = %if.end.i.for.body.i422_crit_edge, %for.body.lr.ph.i
  %length.addr.06.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %length.addr.1.i, %if.end.i.for.body.i422_crit_edge ]
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i422_crit_edge ]
  %120 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.06.i)
  %cmp4.i = icmp eq i32 %length.addr.06.i, 0
  br i1 %cmp4.i, label %if.then.i423, label %if.else.i

if.then.i423:                                     ; preds = %for.body.i422
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %121, i32 0, i32 12, i32 %i.04.i
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i, align 4
  %124 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %end.i.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.skb_shared_info, ptr %125, i32 0, i32 12, i32 %i.04.i
  %126 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %123, ptr %arrayidx.i.i.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %125, i32 0, i32 12, i32 %i.04.i, i32 2
  %127 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %bv_offset.i.i.i, align 4
  %bv_len.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %125, i32 0, i32 12, i32 %i.04.i, i32 1
  %128 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 4096, ptr %bv_len.i.i.i.i, align 4
  %129 = getelementptr inbounds %struct.page, ptr %123, i32 0, i32 1
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %129, align 4
  %and.i.i.i.i = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !385

if.then.i.i.i.i:                                  ; preds = %if.then.i423
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i = add i32 %131, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i423
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %123 to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %132, %if.end.i.i.i.i ]
  %133 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %134 = getelementptr inbounds %struct.page, ptr %133, i32 0, i32 1
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %137 = ptrtoint ptr %136 to i32
  %and.i1.i.i.i = and i32 %137, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i1.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge, label %if.then.i.i.i

_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge: ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_fill_page_desc.exit.i

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %pfmemalloc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %bf.load.i.i.i = load i8, ptr %pfmemalloc.i.i.i, align 2
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, 2
  store i8 %bf.set.i.i.i, ptr %pfmemalloc.i.i.i, align 2
  br label %skb_fill_page_desc.exit.i

skb_fill_page_desc.exit.i:                        ; preds = %if.then.i.i.i, %_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge
  %139 = trunc i32 %i.04.i to i8
  %conv.i.i424 = add i8 %139, 1
  %140 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %end.i.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv.i.i424, ptr %nr_frags.i.i, align 2
  %143 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %end.i.i, align 4
  %nr_frags8.i = getelementptr inbounds %struct.skb_shared_info, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %nr_frags8.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %nr_frags8.i, align 2
  %dec.i = add i8 %146, -1
  store i8 %dec.i, ptr %nr_frags8.i, align 2
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i422
  call void @__sanitizer_cov_trace_pc() #11
  %147 = tail call i32 @llvm.umin.i32(i32 %length.addr.06.i, i32 4096) #9
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %121, i32 0, i32 12, i32 %i.04.i, i32 1
  %148 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %bv_len.i.i, align 4
  %149 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %data_len.i, align 8
  %add16.i = add i32 %150, %147
  store i32 %add16.i, ptr %data_len.i, align 8
  %151 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %truesize.i, align 8
  %add17.i = add i32 %152, %147
  store i32 %add17.i, ptr %truesize.i, align 8
  %153 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %len.i, align 4
  %add19.i = add i32 %154, %147
  store i32 %add19.i, ptr %len.i, align 4
  %sub20.i = sub i32 %length.addr.06.i, %147
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %skb_fill_page_desc.exit.i
  %length.addr.1.i = phi i32 [ 0, %skb_fill_page_desc.exit.i ], [ %sub20.i, %if.else.i ]
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i425 = icmp eq i32 %inc.i, %conv.i421
  br i1 %exitcond.not.i425, label %if.end.i.copied_crit_edge, label %if.end.i.for.body.i422_crit_edge

if.end.i.for.body.i422_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i422

if.end.i.copied_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copied

copied:                                           ; preds = %if.end.i.copied_crit_edge, %do.end228.copied_crit_edge, %cleanup
  %skb.2 = phi ptr [ %call.i.i, %cleanup ], [ %37, %do.end228.copied_crit_edge ], [ %37, %if.end.i.copied_crit_edge ]
  %data230 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 19
  %155 = ptrtoint ptr %data230 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %data230, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %156, align 2
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 15, i32 0, i32 18
  %159 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %protocol, align 8
  %call.i426 = tail call ptr @skb_push(ptr noundef %skb.2, i32 noundef 20) #9
  %160 = call ptr @memset(ptr %call.i426, i32 0, i32 20)
  %161 = ptrtoint ptr %data230 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %data230, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 18
  %163 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %162 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %164 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i427 = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 15, i32 0, i32 21
  %165 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv.i.i427, ptr %mac_header.i.i, align 2
  %call1.i = tail call ptr @skb_pull(ptr noundef %skb.2, i32 noundef 24) #9
  %stats231 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %166 = ptrtoint ptr %stats231 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %stats231, align 8
  %inc232 = add i32 %167, 1
  store i32 %inc232, ptr %stats231, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 6
  %168 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %len, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %170 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rx_bytes, align 8
  %add234 = add i32 %171, %169
  store i32 %add234, ptr %rx_bytes, align 8
  %172 = getelementptr inbounds %struct.anon.51, ptr %skb.2, i32 0, i32 2
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %dev, ptr %172, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 15
  %174 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %174)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  store i16 %bf.clear, ptr %pkt_type, align 8
  %call235 = tail call i32 @netif_receive_skb(ptr noundef %skb.2) #9
  br label %repost

repost:                                           ; preds = %copied, %do.end200
  br i1 %tobool.i.not, label %if.else263, label %repost.if.then237_crit_edge

repost.if.then237_crit_edge:                      ; preds = %repost
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then237

if.then237:                                       ; preds = %repost.if.then237_crit_edge, %do.end76.if.then237_crit_edge
  %call238 = tail call fastcc i32 @ipoib_cm_post_receive_srq(ptr noundef %dev, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.then237.cleanup295_crit_edge, label %do.body247, !prof !385

if.then237.cleanup295_crit_edge:                  ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup295

do.body247:                                       ; preds = %if.then237
  %call248 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_handle_rx_wc._rs.16, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %do.body247.cleanup295_crit_edge, label %do.end253

do.body247.cleanup295_crit_edge:                  ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup295

do.end253:                                        ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #11
  %dev255 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %175 = ptrtoint ptr %dev255 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev255, align 4
  %call258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %176, i32 noundef %conv) #12
  br label %cleanup295

if.else263:                                       ; preds = %repost
  %rx_wr = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 18
  %rx_sge = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 17
  %call267 = tail call fastcc i32 @ipoib_cm_post_receive_nonsrq(ptr noundef %dev, ptr noundef %30, ptr noundef %rx_wr, ptr noundef %rx_sge, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %if.else263.cleanup295_crit_edge, label %if.then275, !prof !385

if.else263.cleanup295_crit_edge:                  ; preds = %if.else263
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup295

if.then275:                                       ; preds = %if.else263
  %recv_count276 = getelementptr inbounds %struct.ipoib_cm_rx, ptr %30, i32 0, i32 7
  %177 = ptrtoint ptr %recv_count276 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %recv_count276, align 4
  %dec277 = add i32 %178, -1
  store i32 %dec277, ptr %recv_count276, align 4
  %call279 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_handle_rx_wc._rs.20, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %if.then275.cleanup295_crit_edge, label %do.end284

if.then275.cleanup295_crit_edge:                  ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup295

do.end284:                                        ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #11
  %dev286 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %179 = ptrtoint ptr %dev286 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev286, align 4
  %call289 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %180, i32 noundef %conv) #12
  br label %cleanup295

cleanup295:                                       ; preds = %do.end284, %if.then275.cleanup295_crit_edge, %if.else263.cleanup295_crit_edge, %do.end253, %do.body247.cleanup295_crit_edge, %if.then237.cleanup295_crit_edge, %do.body83, %if.else79.cleanup295_crit_edge, %do.end35, %do.body29.cleanup295_crit_edge, %list_splice_init.exit
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %mapping) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipoib_cm_start_rx_drain(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_flush_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 55, i32 5
  %0 = ptrtoint ptr %rx_flush_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_flush_list, align 4
  %cmp.i.not = icmp eq ptr %1, %rx_flush_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_drain_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 55, i32 6
  %2 = ptrtoint ptr %rx_drain_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_drain_list, align 4
  %cmp.i28.not = icmp eq ptr %3, %rx_drain_list
  br i1 %cmp.i28.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i64 4294967295, ptr getelementptr inbounds (%struct.ib_send_wr, ptr @ipoib_cm_rx_drain_wr, i32 0, i32 1), align 8
  %qp = getelementptr i8, ptr %1, i32 -8
  %4 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #9
  %6 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !387
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 1, i32 6
  %9 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %10(ptr noundef %5, ptr noundef nonnull @ipoib_cm_rx_drain_wr, ptr noundef nonnull %dummy.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end.if.end18_crit_edge, label %do.body

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.body:                                          ; preds = %if.end
  %call9 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_start_rx_drain._rs, ptr noundef nonnull @__func__.ipoib_cm_start_rx_drain) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body.if.end18_crit_edge, label %do.end

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %12) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end, %do.body.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %13 = ptrtoint ptr %rx_flush_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %rx_flush_list, align 4
  %cmp.i.not.i = icmp eq ptr %14, %rx_flush_list
  br i1 %cmp.i.not.i, label %if.end18.cleanup_crit_edge, label %if.then.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %rx_drain_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_drain_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 55, i32 5, i32 1
  %17 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rx_drain_list, ptr %prev3.i.i, align 4
  store ptr %14, ptr %rx_drain_list, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %16, ptr %18, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev6.i.i, align 4
  %22 = ptrtoint ptr %rx_flush_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %rx_flush_list, ptr %rx_flush_list, align 4
  store ptr %rx_flush_list, ptr %prev2.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end18.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move(ptr noundef %list, ptr noundef %head) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %head, ptr noundef %7) #9
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add.exit_crit_edge

__list_del_entry.exit.list_add.exit_crit_edge:    ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %head, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %__list_del_entry.exit.list_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ipoib_cm_alloc_rx_skb(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %rx_ring, i32 noundef %id, i32 noundef %frags, ptr nocapture noundef %mapping, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 4112, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup49_crit_edge, label %if.end, !prof !386

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup49

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %5, i32 28
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ca, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %call.i.i78 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i) #9
  br i1 %call.i.i78, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !385

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %9) #9
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %13, %if.end.i.i.i ], [ %11, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.97, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %9, ptr noundef %add.ptr.i, i32 noundef 4084) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  %sub.i.i = add i32 %15, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i79 = getelementptr %struct.page, ptr %14, i32 %shr.i.i
  %and.i.i = and i32 %15, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef %add.ptr.i.i79, i32 noundef %and.i.i, i32 noundef 4084, i32 noundef 2, i32 noundef 0) #9
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %conv2.i = zext i32 %retval.0.i.i to i64
  %16 = ptrtoint ptr %mapping to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv2.i, ptr %mapping, align 8
  %17 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ca, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %20, i32 noundef %retval.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then16, label %for.cond.preheader

for.cond.preheader:                               ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frags)
  %cmp91 = icmp sgt i32 %frags, 0
  br i1 %cmp91, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 12
  br label %for.body

if.then16:                                        ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #9
  br label %cleanup49

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %tobool19.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool19.not, label %for.body.partial_error_crit_edge, label %if.end21

for.body.partial_error_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %partial_error

if.end21:                                         ; preds = %for.body
  %21 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %22, i32 0, i32 12, i32 %i.092
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call38.i.i.i, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %22, i32 0, i32 12, i32 %i.092, i32 2
  %24 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %bv_offset.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %22, i32 0, i32 12, i32 %i.092, i32 1
  %25 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4096, ptr %bv_len.i.i.i, align 4
  %26 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i80 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i80, label %if.end.i.i.i81, label %if.then.i.i.i, !prof !385

if.then.i.i.i:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %28, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i81:                                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i81, %if.then.i.i.i
  %retval.0.i.i.i82 = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %29, %if.end.i.i.i81 ]
  %30 = inttoptr i32 %retval.0.i.i.i82 to ptr
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i1.i.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i1.i.i, 0
  br i1 %tobool.i.not.i.i, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i83

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_fill_page_desc.exit

if.then.i.i83:                                    ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i83, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %36 = trunc i32 %i.092 to i8
  %conv.i = add i8 %36, 1
  %37 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i, ptr %nr_frags.i, align 2
  %40 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ca, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %43, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #9
  %conv3.i = zext i32 %call2.i to i64
  %add = add nuw nsw i32 %i.092, 1
  %arrayidx24 = getelementptr i64, ptr %mapping, i32 %add
  %44 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv3.i, ptr %arrayidx24, align 8
  %45 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ca, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %48, i32 noundef %call2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i.i84.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i.i84.not, label %skb_fill_page_desc.exit.partial_error_crit_edge, label %for.inc

skb_fill_page_desc.exit.partial_error_crit_edge:  ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %partial_error

for.inc:                                          ; preds = %skb_fill_page_desc.exit
  %exitcond.not = icmp eq i32 %add, %frags
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %arrayidx38 = getelementptr %struct.ipoib_cm_rx_buf, ptr %rx_ring, i32 %id
  %49 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i, ptr %arrayidx38, align 8
  br label %cleanup49

partial_error:                                    ; preds = %skb_fill_page_desc.exit.partial_error_crit_edge, %for.body.partial_error_crit_edge
  %50 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ca, align 8
  %52 = ptrtoint ptr %mapping to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %mapping, align 8
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 8
  %conv.i86 = trunc i64 %53 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %55, i32 noundef %conv.i86, i32 noundef 4084, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.092)
  %cmp4393.not = icmp eq i32 %i.092, 0
  br i1 %cmp4393.not, label %partial_error.for.end48_crit_edge, label %partial_error.for.body44_crit_edge

partial_error.for.body44_crit_edge:               ; preds = %partial_error
  br label %for.body44

partial_error.for.end48_crit_edge:                ; preds = %partial_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %partial_error.for.body44_crit_edge
  %i.194 = phi i32 [ %dec, %for.body44.for.body44_crit_edge ], [ %i.092, %partial_error.for.body44_crit_edge ]
  %56 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ca, align 8
  %arrayidx46 = getelementptr i64, ptr %mapping, i32 %i.194
  %58 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx46, align 8
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 8
  %conv.i87 = trunc i64 %59 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %61, i32 noundef %conv.i87, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #9
  %dec = add nsw i32 %i.194, -1
  %cmp43 = icmp sgt i32 %i.194, 1
  br i1 %cmp43, label %for.body44.for.body44_crit_edge, label %for.body44.for.end48_crit_edge

for.body44.for.end48_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body44

for.end48:                                        ; preds = %for.body44.for.end48_crit_edge, %partial_error.for.end48_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #9
  br label %cleanup49

cleanup49:                                        ; preds = %for.end48, %for.end, %if.then16, %entry.cleanup49_crit_edge
  %retval.0 = phi ptr [ null, %if.then16 ], [ null, %for.end48 ], [ %call.i.i, %for.end ], [ null, %entry.cleanup49_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipoib_cm_dma_unmap_rx(ptr nocapture noundef readonly %priv, i32 noundef %frags, ptr nocapture noundef readonly %mapping) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 23
  %0 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca, align 8
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mapping, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %conv.i = trunc i64 %3 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %conv.i, i32 noundef 4084, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frags)
  %cmp8 = icmp sgt i32 %frags, 0
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ca, align 8
  %add = add nuw nsw i32 %i.09, 1
  %arrayidx2 = getelementptr i64, ptr %mapping, i32 %add
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx2, align 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %conv.i7 = trunc i64 %9 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %conv.i7, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #9
  %exitcond.not = icmp eq i32 %add, %frags
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipoib_cm_post_receive_srq(ptr nocapture noundef readonly %dev, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %or1 = or i32 %id, -1073741824
  %conv = zext i32 %or1 to i64
  %cm = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55
  %rx_wr = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 18
  %2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 18, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %2, align 8
  %num_frags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 21
  %4 = ptrtoint ptr %num_frags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_frags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp58 = icmp sgt i32 %5, 0
  br i1 %cmp58, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %srq_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %srq_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %srq_ring, align 4
  %arrayidx5 = getelementptr %struct.ipoib_cm_rx_buf, ptr %7, i32 %id, i32 1, i32 %i.059
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 17, i32 %i.059
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx7, align 8
  %inc = add nuw nsw i32 %i.059, 1
  %11 = ptrtoint ptr %num_frags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_frags, align 8
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %13 = ptrtoint ptr %cm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cm, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #9
  %15 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !387
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %14, align 4
  %post_srq_recv.i = getelementptr inbounds %struct.ib_device, ptr %17, i32 0, i32 1, i32 13
  %18 = ptrtoint ptr %post_srq_recv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %post_srq_recv.i, align 4
  %call.i = call i32 %19(ptr noundef %14, ptr noundef %rx_wr, ptr noundef nonnull %dummy.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.end.if.end36_crit_edge, label %do.body, !prof !385

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.body:                                          ; preds = %for.end
  %call14 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_post_receive_srq._rs, ptr noundef nonnull @__func__.ipoib_cm_post_receive_srq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body.do.end21_crit_edge, label %do.end

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev18 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev18, align 4
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %21, i32 noundef %id, i32 noundef %call.i) #12
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body.do.end21_crit_edge
  %22 = ptrtoint ptr %num_frags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_frags, align 8
  %sub = add i32 %23, -1
  %srq_ring25 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 1
  %24 = ptrtoint ptr %srq_ring25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %srq_ring25, align 4
  %mapping27 = getelementptr %struct.ipoib_cm_rx_buf, ptr %25, i32 %id, i32 1
  call fastcc void @ipoib_cm_dma_unmap_rx(ptr noundef %1, i32 noundef %sub, ptr noundef %mapping27)
  %26 = ptrtoint ptr %srq_ring25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %srq_ring25, align 4
  %arrayidx31 = getelementptr %struct.ipoib_cm_rx_buf, ptr %27, i32 %id
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx31, align 8
  call void @__dev_kfree_skb_any(ptr noundef %29, i32 noundef 1) #9
  %30 = ptrtoint ptr %srq_ring25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %srq_ring25, align 4
  %arrayidx34 = getelementptr %struct.ipoib_cm_rx_buf, ptr %31, i32 %id
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx34, align 8
  br label %if.end36

if.end36:                                         ; preds = %do.end21, %for.end.if.end36_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipoib_cm_post_receive_nonsrq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %rx, ptr noundef %wr, ptr nocapture noundef writeonly %sge, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %or1 = or i32 %id, -1073741824
  %conv = zext i32 %or1 to i64
  %2 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %2, align 8
  %rx_ring = getelementptr inbounds %struct.ipoib_cm_rx, ptr %rx, i32 0, i32 2
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 4
  %arrayidx3 = getelementptr %struct.ipoib_cm_rx_buf, ptr %5, i32 %id, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx3, align 8
  %8 = ptrtoint ptr %sge to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %sge, align 8
  %9 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.1 = getelementptr %struct.ipoib_cm_rx_buf, ptr %9, i32 %id, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx3.1, align 8
  %arrayidx4.1 = getelementptr %struct.ib_sge, ptr %sge, i32 1
  %12 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx4.1, align 8
  %13 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.2 = getelementptr %struct.ipoib_cm_rx_buf, ptr %13, i32 %id, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx3.2, align 8
  %arrayidx4.2 = getelementptr %struct.ib_sge, ptr %sge, i32 2
  %16 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx4.2, align 8
  %17 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.3 = getelementptr %struct.ipoib_cm_rx_buf, ptr %17, i32 %id, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx3.3, align 8
  %arrayidx4.3 = getelementptr %struct.ib_sge, ptr %sge, i32 3
  %20 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx4.3, align 8
  %21 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.4 = getelementptr %struct.ipoib_cm_rx_buf, ptr %21, i32 %id, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx3.4, align 8
  %arrayidx4.4 = getelementptr %struct.ib_sge, ptr %sge, i32 4
  %24 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx4.4, align 8
  %25 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.5 = getelementptr %struct.ipoib_cm_rx_buf, ptr %25, i32 %id, i32 1, i32 5
  %26 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx3.5, align 8
  %arrayidx4.5 = getelementptr %struct.ib_sge, ptr %sge, i32 5
  %28 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx4.5, align 8
  %29 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.6 = getelementptr %struct.ipoib_cm_rx_buf, ptr %29, i32 %id, i32 1, i32 6
  %30 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx3.6, align 8
  %arrayidx4.6 = getelementptr %struct.ib_sge, ptr %sge, i32 6
  %32 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx4.6, align 8
  %33 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.7 = getelementptr %struct.ipoib_cm_rx_buf, ptr %33, i32 %id, i32 1, i32 7
  %34 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx3.7, align 8
  %arrayidx4.7 = getelementptr %struct.ib_sge, ptr %sge, i32 7
  %36 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx4.7, align 8
  %37 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.8 = getelementptr %struct.ipoib_cm_rx_buf, ptr %37, i32 %id, i32 1, i32 8
  %38 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx3.8, align 8
  %arrayidx4.8 = getelementptr %struct.ib_sge, ptr %sge, i32 8
  %40 = ptrtoint ptr %arrayidx4.8 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx4.8, align 8
  %41 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.9 = getelementptr %struct.ipoib_cm_rx_buf, ptr %41, i32 %id, i32 1, i32 9
  %42 = ptrtoint ptr %arrayidx3.9 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx3.9, align 8
  %arrayidx4.9 = getelementptr %struct.ib_sge, ptr %sge, i32 9
  %44 = ptrtoint ptr %arrayidx4.9 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx4.9, align 8
  %45 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.10 = getelementptr %struct.ipoib_cm_rx_buf, ptr %45, i32 %id, i32 1, i32 10
  %46 = ptrtoint ptr %arrayidx3.10 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx3.10, align 8
  %arrayidx4.10 = getelementptr %struct.ib_sge, ptr %sge, i32 10
  %48 = ptrtoint ptr %arrayidx4.10 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx4.10, align 8
  %49 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.11 = getelementptr %struct.ipoib_cm_rx_buf, ptr %49, i32 %id, i32 1, i32 11
  %50 = ptrtoint ptr %arrayidx3.11 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx3.11, align 8
  %arrayidx4.11 = getelementptr %struct.ib_sge, ptr %sge, i32 11
  %52 = ptrtoint ptr %arrayidx4.11 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx4.11, align 8
  %53 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.12 = getelementptr %struct.ipoib_cm_rx_buf, ptr %53, i32 %id, i32 1, i32 12
  %54 = ptrtoint ptr %arrayidx3.12 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx3.12, align 8
  %arrayidx4.12 = getelementptr %struct.ib_sge, ptr %sge, i32 12
  %56 = ptrtoint ptr %arrayidx4.12 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx4.12, align 8
  %57 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.13 = getelementptr %struct.ipoib_cm_rx_buf, ptr %57, i32 %id, i32 1, i32 13
  %58 = ptrtoint ptr %arrayidx3.13 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx3.13, align 8
  %arrayidx4.13 = getelementptr %struct.ib_sge, ptr %sge, i32 13
  %60 = ptrtoint ptr %arrayidx4.13 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %arrayidx4.13, align 8
  %61 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.14 = getelementptr %struct.ipoib_cm_rx_buf, ptr %61, i32 %id, i32 1, i32 14
  %62 = ptrtoint ptr %arrayidx3.14 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx3.14, align 8
  %arrayidx4.14 = getelementptr %struct.ib_sge, ptr %sge, i32 14
  %64 = ptrtoint ptr %arrayidx4.14 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %arrayidx4.14, align 8
  %65 = load ptr, ptr %rx_ring, align 4
  %arrayidx3.15 = getelementptr %struct.ipoib_cm_rx_buf, ptr %65, i32 %id, i32 1, i32 15
  %66 = ptrtoint ptr %arrayidx3.15 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx3.15, align 8
  %arrayidx4.15 = getelementptr %struct.ib_sge, ptr %sge, i32 15
  %68 = ptrtoint ptr %arrayidx4.15 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx4.15, align 8
  %qp = getelementptr inbounds %struct.ipoib_cm_rx, ptr %rx, i32 0, i32 1
  %69 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #9
  %71 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !387
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %70, align 4
  %post_recv.i = getelementptr inbounds %struct.ib_device, ptr %73, i32 0, i32 1, i32 7
  %74 = ptrtoint ptr %post_recv.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %post_recv.i, align 4
  %call.i = call i32 %75(ptr noundef %70, ptr noundef %wr, ptr noundef nonnull %dummy.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %do.body, !prof !385

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body:                                          ; preds = %entry
  %call8 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_post_receive_nonsrq._rs, ptr noundef nonnull @__func__.ipoib_cm_post_receive_nonsrq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.do.end15_crit_edge, label %do.end

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %76 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev12, align 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %77, i32 noundef %id, i32 noundef %call.i) #12
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body.do.end15_crit_edge
  %78 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_ring, align 4
  %mapping18 = getelementptr %struct.ipoib_cm_rx_buf, ptr %79, i32 %id, i32 1
  call fastcc void @ipoib_cm_dma_unmap_rx(ptr noundef %1, i32 noundef 15, ptr noundef %mapping18)
  %80 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rx_ring, align 4
  %arrayidx21 = getelementptr %struct.ipoib_cm_rx_buf, ptr %81, i32 %id
  %82 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx21, align 8
  call void @__dev_kfree_skb_any(ptr noundef %83, i32 noundef 1) #9
  %84 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx_ring, align 4
  %arrayidx23 = getelementptr %struct.ipoib_cm_rx_buf, ptr %85, i32 %id
  %86 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %arrayidx23, align 8
  br label %if.end25

if.end25:                                         ; preds = %do.end15, %entry.if.end25_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_cm_send(ptr nocapture noundef %dev, ptr noundef %skb, ptr nocapture noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %max_send_sge = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 10
  %2 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_send_sge, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %tobool = icmp ne i32 %5, %7
  %lnot.ext.neg = sext i1 %tobool to i32
  %sub = add i32 %3, %lnot.ext.neg
  %mtu = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 9
  %8 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp = icmp ugt i32 %5, %9
  br i1 %cmp, label %do.body, label %if.end22, !prof !386

do.body:                                          ; preds = %entry
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_send._rs, ptr noundef nonnull @__func__.ipoib_cm_send) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.do.end17_crit_edge, label %do.end

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev12, align 4
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %14 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %11, i32 noundef %13, i32 noundef %15) #12
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %16 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %18 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_errors, align 4
  %inc19 = add i32 %19, 1
  store i32 %inc19, ptr %tx_errors, align 4
  %20 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mtu, align 4
  %sub21 = add i32 %21, -4
  tail call void @ipoib_cm_skb_too_long(ptr noundef %dev, ptr noundef %skb, i32 noundef %sub21)
  br label %cleanup

if.end22:                                         ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp24 = icmp ult i32 %sub, %conv
  br i1 %cmp24, label %if.then26, label %if.end22.do.body82_crit_edge

if.end22.do.body82_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %if.then26.if.end52_crit_edge, label %cond.true.i

if.then26.if.end52_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

cond.true.i:                                      ; preds = %if.then26
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %7) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body31, label %cond.true.i.if.end52_crit_edge

cond.true.i.if.end52_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.body31:                                        ; preds = %cond.true.i
  %call32 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_send._rs.25, ptr noundef nonnull @__func__.ipoib_cm_send) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body31.do.end45_crit_edge, label %do.end37

do.body31.do.end45_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %dev39 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev39, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %27) #12
  br label %do.end45

do.end45:                                         ; preds = %do.end37, %do.body31.do.end45_crit_edge
  %tx_dropped47 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %28 = ptrtoint ptr %tx_dropped47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_dropped47, align 4
  %inc48 = add i32 %29, 1
  store i32 %inc48, ptr %tx_dropped47, align 4
  %tx_errors50 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %30 = ptrtoint ptr %tx_errors50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_errors50, align 4
  %inc51 = add i32 %31, 1
  store i32 %inc51, ptr %tx_errors50, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

if.end52:                                         ; preds = %cond.true.i.if.end52_crit_edge, %if.then26.if.end52_crit_edge
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %end.i, align 4
  %nr_frags54 = getelementptr inbounds %struct.skb_shared_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %nr_frags54 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %nr_frags54, align 2
  %conv55 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv55)
  %cmp56 = icmp ult i32 %sub, %conv55
  br i1 %cmp56, label %do.body59, label %if.end52.do.body82_crit_edge

if.end52.do.body82_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

do.body59:                                        ; preds = %if.end52
  %call60 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_send._rs.29, ptr noundef nonnull @__func__.ipoib_cm_send) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.body59.do.end73_crit_edge, label %do.end65

do.body59.do.end73_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

do.end65:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  %dev67 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev67, align 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %37) #12
  br label %do.end73

do.end73:                                         ; preds = %do.end65, %do.body59.do.end73_crit_edge
  %tx_dropped75 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %38 = ptrtoint ptr %tx_dropped75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_dropped75, align 4
  %inc76 = add i32 %39, 1
  store i32 %inc76, ptr %tx_dropped75, align 4
  %tx_errors78 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %40 = ptrtoint ptr %tx_errors78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_errors78, align 4
  %inc79 = add i32 %41, 1
  store i32 %inc79, ptr %tx_errors78, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

do.body82:                                        ; preds = %if.end52.do.body82_crit_edge, %if.end22.do.body82_crit_edge
  %42 = load i32, ptr @data_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp83 = icmp sgt i32 %42, 0
  br i1 %cmp83, label %do.end88, label %do.body82.do.end97_crit_edge

do.body82.do.end97_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end97

do.end88:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %dev90 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev90, align 4
  %tx_head = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 6
  %45 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_head, align 4
  %47 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len.i, align 4
  %qp = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 1
  %49 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %qp, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %50, i32 0, i32 19
  %51 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qp_num, align 4
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %52) #12
  br label %do.end97

do.end97:                                         ; preds = %do.end88, %do.body82.do.end97_crit_edge
  %tx_ring = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 5
  %53 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_ring, align 4
  %tx_head98 = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 6
  %55 = ptrtoint ptr %tx_head98 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_head98, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %57 = load i32, ptr @ipoib_sendq_size, align 4
  %sub99 = add i32 %57, -1
  %and = and i32 %sub99, %56
  %arrayidx = getelementptr %struct.ipoib_tx_buf, ptr %54, i32 %and
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %skb, ptr %arrayidx, align 8
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %59 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ca, align 8
  %call101 = tail call i32 @ipoib_dma_map_tx(ptr noundef %60, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end113, label %if.then109, !prof !385

if.then109:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #11
  %tx_errors111 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %61 = ptrtoint ptr %tx_errors111 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_errors111, align 4
  %inc112 = add i32 %62, 1
  store i32 %inc112, ptr %tx_errors111, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

if.end113:                                        ; preds = %do.end97
  %global_tx_head = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 41
  %63 = ptrtoint ptr %global_tx_head to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %global_tx_head, align 8
  %global_tx_tail = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 42
  %65 = ptrtoint ptr %global_tx_tail to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %global_tx_tail, align 4
  %sub114 = sub i32 %64, %66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %67 = load i32, ptr @ipoib_sendq_size, align 4
  %sub115 = add i32 %67, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub114, i32 %sub115)
  %cmp116 = icmp eq i32 %sub114, %sub115
  br i1 %cmp116, label %do.body119, label %if.end113.if.end136_crit_edge

if.end113.if.end136_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

do.body119:                                       ; preds = %if.end113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %68 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp120 = icmp sgt i32 %68, 0
  br i1 %cmp120, label %do.end125, label %do.body119.do.end135_crit_edge

do.body119.do.end135_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end135

do.end125:                                        ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  %dev127 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %69 = ptrtoint ptr %dev127 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev127, align 4
  %qp130 = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 1
  %71 = ptrtoint ptr %qp130 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %qp130, align 4
  %qp_num131 = getelementptr inbounds %struct.ib_qp, ptr %72, i32 0, i32 19
  %73 = ptrtoint ptr %qp_num131 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qp_num131, align 4
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %70, i32 noundef %74) #12
  br label %do.end135

do.end135:                                        ; preds = %do.end125, %do.body119.do.end135_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %75 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %76, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %if.end136

if.end136:                                        ; preds = %do.end135, %if.end113.if.end136_crit_edge
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %77 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %78, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %78(ptr noundef %skb) #9
  %79 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %destructor.i, align 4
  %80 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %80, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.end136
  %82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %tobool3.not.i = icmp eq ptr %84, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !385

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !388
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i272 = icmp eq i32 %87, 0
  br i1 %tobool.not.i272, label %skb_orphan.exit.skb_dst_drop.exit_crit_edge, label %if.then.i274

skb_orphan.exit.skb_dst_drop.exit_crit_edge:      ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst_drop.exit

if.then.i274:                                     ; preds = %skb_orphan.exit
  %and.i.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i273 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i273, label %if.then.i.i, label %if.then.i274.refdst_drop.exit.i_crit_edge

if.then.i274.refdst_drop.exit.i_crit_edge:        ; preds = %if.then.i274
  call void @__sanitizer_cov_trace_pc() #11
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i274
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i.i = and i32 %87, -2
  %88 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %88) #9
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i274.refdst_drop.exit.i_crit_edge
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %85, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %skb_orphan.exit.skb_dst_drop.exit_crit_edge
  %_tx.i.i275 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %90 = ptrtoint ptr %_tx.i.i275 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %_tx.i.i275, align 128
  %state.i.i276 = getelementptr inbounds %struct.netdev_queue, ptr %91, i32 0, i32 13
  %92 = ptrtoint ptr %state.i.i276 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %state.i.i276, align 4
  %and1.i.i.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %skb_dst_drop.exit.if.end168_crit_edge, label %if.then138

skb_dst_drop.exit.if.end168_crit_edge:            ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.then138:                                       ; preds = %skb_dst_drop.exit
  %send_cq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 29
  %94 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %send_cq, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %97, i32 0, i32 1, i32 12
  %98 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = tail call i32 %99(ptr noundef %95, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp140 = icmp slt i32 %call.i, 0
  br i1 %cmp140, label %do.body149, label %if.else, !prof !386

do.body149:                                       ; preds = %if.then138
  %call150 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_send._rs.39, ptr noundef nonnull @__func__.ipoib_cm_send) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %do.body149.if.end168_crit_edge, label %do.end155

do.body149.if.end168_crit_edge:                   ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

do.end155:                                        ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  %dev157 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %100 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev157, align 4
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %101) #12
  br label %if.end168

if.else:                                          ; preds = %if.then138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool164.not = icmp eq i32 %call.i, 0
  br i1 %tobool164.not, label %if.else.if.end168_crit_edge, label %if.then165

if.else.if.end168_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.then165:                                       ; preds = %if.else
  %send_napi = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 3
  %call.i277 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %send_napi) #9
  br i1 %call.i277, label %if.then.i278, label %if.then165.if.end168_crit_edge

if.then165.if.end168_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.then.i278:                                     ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef %send_napi) #9
  br label %if.end168

if.end168:                                        ; preds = %if.then.i278, %if.then165.if.end168_crit_edge, %if.else.if.end168_crit_edge, %do.end155, %do.body149.if.end168_crit_edge, %skb_dst_drop.exit.if.end168_crit_edge
  %102 = ptrtoint ptr %tx_head98 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_head98, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %104 = load i32, ptr @ipoib_sendq_size, align 4
  %sub170 = add i32 %104, -1
  %and171 = and i32 %sub170, %103
  %105 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %106, i32 0, i32 17
  %107 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %end.i.i.i, align 4
  %frags2.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %108, i32 0, i32 12
  %nr_frags4.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %nr_frags4.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %nr_frags4.i.i, align 2
  %conv.i.i = zext i8 %110 to i32
  %mapping5.i.i = getelementptr %struct.ipoib_tx_buf, ptr %54, i32 %and, i32 1
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %106, i32 0, i32 6
  %111 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %106, i32 0, i32 7
  %113 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %tobool.not.i.i279 = icmp eq i32 %112, %114
  br i1 %tobool.not.i.i279, label %if.end168.if.end.i.i_crit_edge, label %if.then.i.i280

if.end168.if.end.i.i_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i280:                                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %mapping5.i.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %mapping5.i.i, align 8
  %tx_sge.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43
  %117 = ptrtoint ptr %tx_sge.i.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %tx_sge.i.i, align 8
  %118 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len.i.i.i, align 4
  %120 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i46.i.i = sub i32 %119, %121
  %length.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 0, i32 1
  %122 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %sub.i46.i.i, ptr %length.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i280, %if.end168.if.end.i.i_crit_edge
  %off.0.i.i = phi i32 [ 1, %if.then.i.i280 ], [ 0, %if.end168.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp47.not.i.i = icmp eq i8 %110, 0
  br i1 %cmp47.not.i.i, label %if.end.i.i.post_send.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.post_send.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %post_send.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.048.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.048.i.i, %off.0.i.i
  %arrayidx13.i.i = getelementptr i64, ptr %mapping5.i.i, i32 %add.i.i
  %123 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %arrayidx13.i.i, align 8
  %arrayidx16.i.i = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 %add.i.i
  %125 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %arrayidx16.i.i, align 8
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %frags2.i.i, i32 %i.048.i.i, i32 1
  %126 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %bv_len.i.i.i, align 4
  %length23.i.i = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 %add.i.i, i32 1
  %128 = ptrtoint ptr %length23.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %length23.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.048.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.post_send.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.post_send.exit_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %post_send.exit

post_send.exit:                                   ; preds = %for.body.i.i.post_send.exit_crit_edge, %if.end.i.i.post_send.exit_crit_edge
  %add24.i.i = add nuw nsw i32 %off.0.i.i, %conv.i.i
  %num_sge.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 0, i32 3
  %129 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add24.i.i, ptr %num_sge.i.i, align 4
  %or.i = or i32 %and171, 1073741824
  %conv.i = zext i32 %or.i to i64
  %tx_wr.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44
  %130 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 0, i32 1
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %conv.i, ptr %130, align 8
  %qp.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 1
  %132 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %qp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #9
  %134 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !387
  %135 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %133, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %136, i32 0, i32 1, i32 6
  %137 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i281 = call i32 %138(ptr noundef %133, ptr noundef %tx_wr.i, ptr noundef nonnull %dummy.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i281)
  %tobool173.not = icmp eq i32 %call.i.i281, 0
  br i1 %tobool173.not, label %if.else202, label %do.body181, !prof !385

do.body181:                                       ; preds = %post_send.exit
  %call182 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_send._rs.43, ptr noundef nonnull @__func__.ipoib_cm_send) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %do.body181.do.end195_crit_edge, label %do.end187

do.body181.do.end195_crit_edge:                   ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end195

do.end187:                                        ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #11
  %dev189 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %139 = ptrtoint ptr %dev189 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev189, align 4
  %call192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %140, i32 noundef %call.i.i281) #12
  br label %do.end195

do.end195:                                        ; preds = %do.end187, %do.body181.do.end195_crit_edge
  %tx_errors197 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %141 = ptrtoint ptr %tx_errors197 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %tx_errors197, align 4
  %inc198 = add i32 %142, 1
  store i32 %inc198, ptr %tx_errors197, align 4
  call void @ipoib_dma_unmap_tx(ptr noundef %1, ptr noundef %arrayidx) #9
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  %143 = ptrtoint ptr %_tx.i.i275 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %_tx.i.i275, align 128
  %state.i.i283 = getelementptr inbounds %struct.netdev_queue, ptr %144, i32 0, i32 13
  %145 = ptrtoint ptr %state.i.i283 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %state.i.i283, align 4
  %and1.i.i.i284 = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i284)
  %tobool.i.i285.not = icmp eq i32 %and1.i.i.i284, 0
  br i1 %tobool.i.i285.not, label %do.end195.cleanup_crit_edge, label %if.then200

do.end195.cleanup_crit_edge:                      ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then200:                                       ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_tx_wake_queue(ptr noundef %144) #9
  br label %cleanup

if.else202:                                       ; preds = %post_send.exit
  %147 = ptrtoint ptr %_tx.i.i275 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %_tx.i.i275, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %149 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %148, i32 0, i32 12
  %150 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %149)
  %cmp.not.i.i = icmp eq i32 %151, %149
  br i1 %cmp.not.i.i, label %if.else202.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.else202.netif_trans_update.exit_crit_edge:     ; preds = %if.else202
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.else202
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile i32 %149, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.else202.netif_trans_update.exit_crit_edge
  %153 = ptrtoint ptr %tx_head98 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tx_head98, align 4
  %inc204 = add i32 %154, 1
  store i32 %inc204, ptr %tx_head98, align 4
  %155 = ptrtoint ptr %global_tx_head to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %global_tx_head, align 8
  %inc206 = add i32 %156, 1
  store i32 %inc206, ptr %global_tx_head, align 8
  br label %cleanup

cleanup:                                          ; preds = %netif_trans_update.exit, %if.then200, %do.end195.cleanup_crit_edge, %if.then109, %do.end73, %do.end45, %do.end17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_cm_skb_too_long(ptr nocapture noundef readonly %dev, ptr noundef %skb, i32 noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %skb_queue = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 13
  %2 = ptrtoint ptr %skb_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb_queue, align 4
  %cmp.i.not = icmp eq ptr %3, %skb_queue
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

entry.skb_dst.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !386

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.135, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %entry.skb_dst.exit.i_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  %and25.i.i = and i32 %8, -2
  %9 = inttoptr i32 %and25.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i, label %skb_dst.exit.i.skb_dst_update_pmtu.exit_crit_edge, label %land.lhs.true.i

skb_dst.exit.i.skb_dst_update_pmtu.exit_crit_edge: ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst_update_pmtu.exit

land.lhs.true.i:                                  ; preds = %skb_dst.exit.i
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %update_pmtu.i = getelementptr inbounds %struct.dst_ops, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %update_pmtu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %update_pmtu.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.skb_dst_update_pmtu.exit_crit_edge, label %if.then.i

land.lhs.true.i.skb_dst_update_pmtu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst_update_pmtu.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef nonnull %9, ptr noundef null, ptr noundef %skb, i32 noundef %mtu, i1 noundef zeroext true) #9
  br label %skb_dst_update_pmtu.exit

skb_dst_update_pmtu.exit:                         ; preds = %if.then.i, %land.lhs.true.i.skb_dst_update_pmtu.exit_crit_edge, %skb_dst.exit.i.skb_dst_update_pmtu.exit_crit_edge
  tail call void @skb_queue_tail(ptr noundef %skb_queue, ptr noundef %skb) #9
  br i1 %cmp.i.not, label %if.then, label %skb_dst_update_pmtu.exit.if.end_crit_edge

skb_dst_update_pmtu.exit.if.end_crit_edge:        ; preds = %skb_dst_update_pmtu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %skb_dst_update_pmtu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %wq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wq, align 4
  %skb_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %skb_task) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %skb_dst_update_pmtu.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_dma_map_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_dma_unmap_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_cm_handle_tx_wc(ptr noundef %dev, ptr nocapture noundef readonly %wc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp_context, align 4
  %6 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wc, align 8
  %8 = trunc i64 %7 to i32
  %conv = and i32 %8, -1073741825
  %9 = load i32, ptr @data_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %11, i32 noundef %conv, i32 noundef %13) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %14 = load i32, ptr @ipoib_sendq_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %14)
  %cmp7.not = icmp ult i32 %conv, %14
  br i1 %cmp7.not, label %if.end26, label %do.body11, !prof !385

do.body11:                                        ; preds = %do.end6
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_handle_tx_wc._rs, ptr noundef nonnull @.str.48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body11.cleanup_crit_edge, label %do.end17

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %dev19 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev19, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %17 = load i32, ptr @ipoib_sendq_size, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %16, i32 noundef %conv, i32 noundef %17) #12
  br label %cleanup

if.end26:                                         ; preds = %do.end6
  %tx_ring = getelementptr inbounds %struct.ipoib_cm_tx, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.ipoib_tx_buf, ptr %19, i32 %conv
  tail call void @ipoib_dma_unmap_tx(ptr noundef %1, ptr noundef %arrayidx) #9
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %20 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %tx_packets, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %26 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %27, %25
  store i32 %add, ptr %tx_bytes, align 4
  %28 = load ptr, ptr %arrayidx, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %28, i32 noundef 1) #9
  tail call void @netif_tx_lock(ptr noundef %dev) #9
  %tx_tail = getelementptr inbounds %struct.ipoib_cm_tx, ptr %5, i32 0, i32 7
  %29 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_tail, align 4
  %inc29 = add i32 %30, 1
  store i32 %inc29, ptr %tx_tail, align 4
  %global_tx_tail = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 42
  %31 = ptrtoint ptr %global_tx_tail to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %global_tx_tail, align 4
  %inc30 = add i32 %32, 1
  store i32 %inc30, ptr %global_tx_tail, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %33 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end26.if.end46_crit_edge, label %land.lhs.true

if.end26.if.end46_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end26
  %global_tx_head = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 41
  %37 = ptrtoint ptr %global_tx_head to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %global_tx_head, align 8
  %sub = sub i32 %38, %inc30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %39 = load i32, ptr @ipoib_sendq_size, align 4
  %shr = ashr i32 %39, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %shr)
  %cmp34.not = icmp ugt i32 %sub, %shr
  br i1 %cmp34.not, label %land.lhs.true.if.end46_crit_edge, label %land.rhs

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

land.rhs:                                         ; preds = %land.lhs.true
  %flags36 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flags36, align 4
  %42 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool38.not = icmp eq i32 %42, 0
  br i1 %tobool38.not, label %land.rhs.if.end46_crit_edge, label %if.then45, !prof !385

land.rhs.if.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then45:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_tx_wake_queue(ptr noundef %34) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %land.rhs.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.end26.if.end46_crit_edge
  %status47 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %43 = ptrtoint ptr %status47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %status47, align 8
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %44, label %do.body78 [
    i32 0, label %if.end46.if.end122_crit_edge
    i32 5, label %if.end46.if.end122_crit_edge174
    i32 13, label %if.end46.do.body62_crit_edge
    i32 12, label %if.end46.do.body62_crit_edge175
  ]

if.end46.do.body62_crit_edge175:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body62

if.end46.do.body62_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body62

if.end46.if.end122_crit_edge174:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.end46.if.end122_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

do.body62:                                        ; preds = %if.end46.do.body62_crit_edge, %if.end46.do.body62_crit_edge175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %46 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp63 = icmp sgt i32 %46, 0
  br i1 %cmp63, label %do.end68, label %do.body62.do.body97_crit_edge

do.body62.do.body97_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body97

do.end68:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #11
  %dev70 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev70, align 4
  %vendor_err = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %49 = ptrtoint ptr %vendor_err to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vendor_err, align 8
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %48, ptr noundef nonnull @.str.48, i32 noundef %44, i32 noundef %conv, i32 noundef %50) #12
  br label %do.body97

do.body78:                                        ; preds = %if.end46
  %call79 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_handle_tx_wc._rs.55, ptr noundef nonnull @.str.48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.body78.do.body97_crit_edge, label %do.end84

do.body78.do.body97_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body97

do.end84:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %dev86 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev86, align 4
  %53 = ptrtoint ptr %status47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %status47, align 8
  %vendor_err90 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %55 = ptrtoint ptr %vendor_err90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vendor_err90, align 8
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %52, ptr noundef nonnull @.str.48, i32 noundef %54, i32 noundef %conv, i32 noundef %56) #12
  br label %do.body97

do.body97:                                        ; preds = %do.end84, %do.body78.do.body97_crit_edge, %do.end68, %do.body62.do.body97_crit_edge
  %call102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %neigh107 = getelementptr inbounds %struct.ipoib_cm_tx, ptr %5, i32 0, i32 4
  %57 = ptrtoint ptr %neigh107 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %neigh107, align 4
  %tobool108.not = icmp eq ptr %58, null
  br i1 %tobool108.not, label %do.body97.if.end111_crit_edge, label %if.then109

do.body97.if.end111_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  %cm = getelementptr inbounds %struct.ipoib_neigh, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %cm to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %cm, align 4
  tail call void @ipoib_neigh_free(ptr noundef nonnull %58) #9
  %60 = ptrtoint ptr %neigh107 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %neigh107, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %do.body97.if.end111_crit_edge
  %flags112 = getelementptr inbounds %struct.ipoib_cm_tx, ptr %5, i32 0, i32 8
  %call113 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags112) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end111.if.end119_crit_edge, label %if.then115

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then115:                                       ; preds = %if.end111
  %list = getelementptr inbounds %struct.ipoib_cm_tx, ptr %5, i32 0, i32 2
  %reap_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then115.__list_del_entry.exit.i_crit_edge

if.then115.__list_del_entry.exit.i_crit_edge:     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %5, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then115.__list_del_entry.exit.i_crit_edge
  %67 = ptrtoint ptr %reap_list to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reap_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %reap_list, ptr noundef %68) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %list, ptr %prev1.i.i2.i, align 4
  %70 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %68, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %5, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %reap_list, ptr %prev3.i.i.i, align 4
  %72 = ptrtoint ptr %reap_list to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %list, ptr %reap_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %wq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 14
  %73 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wq, align 4
  %reap_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 9
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %74, ptr noundef %reap_task) #9
  br label %if.end119

if.end119:                                        ; preds = %list_move.exit, %if.end111.if.end119_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags112) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call102) #9
  br label %if.end122

if.end122:                                        ; preds = %if.end119, %if.end46.if.end122_crit_edge, %if.end46.if.end122_crit_edge174
  tail call void @netif_tx_unlock(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %do.end17, %do.body11.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_neigh_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_cm_dev_open(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool.not = icmp sgt i8 %5, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ca, align 8
  %call1 = tail call ptr @ib_create_cm_id(ptr noundef %7, ptr noundef nonnull @ipoib_cm_rx_handler, ptr noundef %dev) #9
  %id = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %id, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ca, align 8
  %name = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 2
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name) #12
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %id, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %err_cm

if.end11:                                         ; preds = %if.end
  %qp = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 30
  %14 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qp, align 8
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qp_num, align 4
  %conv14 = zext i32 %17 to i64
  %or = or i64 %conv14, 1152921504606846976
  %call15 = tail call i32 @ib_cm_listen(ptr noundef %call1, i64 noundef %or, i64 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end11.cleanup_crit_edge, label %do.end20

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ca, align 8
  %name23 = getelementptr inbounds %struct.ib_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qp, align 8
  %qp_num26 = getelementptr inbounds %struct.ib_qp, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %qp_num26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qp_num26, align 4
  %conv27 = zext i32 %23 to i64
  %or28 = or i64 %conv27, 1152921504606846976
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name23, i64 noundef %or28) #12
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %id, align 8
  tail call void @ib_destroy_cm_id(ptr noundef %25) #9
  br label %err_cm

err_cm:                                           ; preds = %do.end20, %do.end
  %ret.0 = phi i32 [ %13, %do.end ], [ %call15, %do.end20 ]
  %26 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %id, align 8
  br label %cleanup

cleanup:                                          ; preds = %err_cm, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_cm ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_cm_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_cm_rx_handler(ptr noundef %cm_id, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  %data.i.i = alloca %struct.ipoib_cm_data, align 8
  %rep.i.i = alloca %struct.ib_cm_rep_param, align 4
  %qp_attr.i.i = alloca %struct.ib_qp_attr, align 8
  %qp_attr_mask.i.i = alloca i32, align 4
  %attr.i.i = alloca %struct.ib_qp_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb2
    i32 11, label %entry.sw.bb4_crit_edge
  ]

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %context.i = getelementptr inbounds %struct.ib_cm_id, ptr %cm_id, i32 0, i32 1
  %3 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 2304
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %7 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp sgt i32 %7, 0
  br i1 %cmp.i, label %do.end.i, label %sw.bb.do.end5.i_crit_edge

sw.bb.do.end5.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %dev2.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %9) #12
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %sw.bb.do.end5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 36) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end5.i.cleanup_crit_edge, label %if.end8.i

do.end5.i.cleanup_crit_edge:                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %do.end5.i
  %dev9.i = getelementptr inbounds %struct.ipoib_cm_rx, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %dev9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %4, ptr %dev9.i, align 4
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cm_id, ptr %call7.i.i.i, align 8
  %13 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %context.i, align 4
  %state.i = getelementptr inbounds %struct.ipoib_cm_rx, ptr %call7.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %state.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %jiffies.i = getelementptr inbounds %struct.ipoib_cm_rx, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %jiffies.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %jiffies.i, align 8
  %list.i = getelementptr inbounds %struct.ipoib_cm_rx, ptr %call7.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ipoib_cm_rx, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list.i, ptr %prev.i.i, align 8
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr.i.i) #9
  %21 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ipoib_cm_rx_event_handler, ptr %attr.i.i, align 4
  %qp_context.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %qp_context.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i, ptr %qp_context.i.i, align 4
  %send_cq.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 2
  %recv_cq.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %20, i32 0, i32 28
  %23 = ptrtoint ptr %recv_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %recv_cq.i.i, align 8
  %25 = ptrtoint ptr %send_cq.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %send_cq.i.i, align 4
  %recv_cq1.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %recv_cq1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %recv_cq1.i.i, align 4
  %srq.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 4
  %cm.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %20, i32 0, i32 55
  %27 = ptrtoint ptr %cm.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cm.i.i, align 8
  %29 = ptrtoint ptr %srq.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %srq.i.i, align 4
  %xrcd.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %xrcd.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %xrcd.i.i, align 4
  %cap.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %cap.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %cap.i.i, align 4
  %max_recv_wr.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %max_recv_wr.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %max_recv_wr.i.i, align 4
  %max_send_sge.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 6, i32 2
  %33 = ptrtoint ptr %max_send_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %max_send_sge.i.i, align 4
  %max_recv_sge.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 6, i32 3
  %qp_type.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 8
  %34 = call ptr @memset(ptr %max_recv_sge.i.i, i32 0, i32 16)
  %35 = ptrtoint ptr %qp_type.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %qp_type.i.i, align 4
  %create_flags.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 9
  %tobool.i.not.i.i = icmp eq ptr %28, null
  %36 = call ptr @memset(ptr %create_flags.i.i, i32 0, i32 16)
  br i1 %tobool.i.not.i.i, label %if.then.i.i, label %if.end8.i.ipoib_cm_create_rx_qp.exit.i_crit_edge

if.end8.i.ipoib_cm_create_rx_qp.exit.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_create_rx_qp.exit.i

if.then.i.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %37 = load i32, ptr @ipoib_recvq_size, align 4
  %38 = ptrtoint ptr %max_recv_wr.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %max_recv_wr.i.i, align 4
  %39 = ptrtoint ptr %max_recv_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16, ptr %max_recv_sge.i.i, align 4
  br label %ipoib_cm_create_rx_qp.exit.i

ipoib_cm_create_rx_qp.exit.i:                     ; preds = %if.then.i.i, %if.end8.i.ipoib_cm_create_rx_qp.exit.i_crit_edge
  %pd.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %20, i32 0, i32 27
  %40 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pd.i.i, align 4
  %call.i.i.i = call ptr @ib_create_qp_kernel(ptr noundef %41, ptr noundef nonnull %attr.i.i, ptr noundef nonnull @.str.110) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr.i.i) #9
  %qp.i = getelementptr inbounds %struct.ipoib_cm_rx, ptr %call7.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %qp.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i.i, ptr %qp.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then14.i, label %if.end17.i

if.then14.i:                                      ; preds = %ipoib_cm_create_rx_qp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %call.i.i.i to i32
  br label %err_qp.i

if.end17.i:                                       ; preds = %ipoib_cm_create_rx_qp.exit.i
  %call18.i = call i32 @prandom_u32() #9
  %and.i = and i32 %call18.i, 16777215
  %44 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %qp.i, align 4
  %46 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr.i.i) #9
  %48 = call ptr @memset(ptr %qp_attr.i.i, i32 255, i32 216)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qp_attr_mask.i.i) #9
  %49 = ptrtoint ptr %qp_attr_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %qp_attr_mask.i.i, align 4, !annotation !387
  %50 = ptrtoint ptr %qp_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %qp_attr.i.i, align 8
  %call1.i.i = call i32 @ib_cm_init_qp_attr(ptr noundef %cm_id, ptr noundef nonnull %qp_attr.i.i, ptr noundef nonnull %qp_attr_mask.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end10.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end17.i
  %call2.i.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_modify_rx_qp._rs, ptr noundef nonnull @__func__.ipoib_cm_modify_rx_qp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.body.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge, label %do.end.i.i

do.body.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_modify_rx_qp.exit.thread.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev6.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %47, i32 0, i32 1
  %51 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev6.i.i, align 4
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %52, i32 noundef %call1.i.i) #12
  br label %ipoib_cm_modify_rx_qp.exit.thread.i

if.end10.i.i:                                     ; preds = %if.end17.i
  %53 = ptrtoint ptr %qp_attr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qp_attr_mask.i.i, align 4
  %call11.i.i = call i32 @ib_modify_qp(ptr noundef %45, ptr noundef nonnull %qp_attr.i.i, i32 noundef %54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end29.i.i, label %do.body14.i.i

do.body14.i.i:                                    ; preds = %if.end10.i.i
  %call15.i.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_modify_rx_qp._rs.112, ptr noundef nonnull @__func__.ipoib_cm_modify_rx_qp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %do.body14.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge, label %do.end20.i.i

do.body14.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge: ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_modify_rx_qp.exit.thread.i

do.end20.i.i:                                     ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev22.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %47, i32 0, i32 1
  %55 = ptrtoint ptr %dev22.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev22.i.i, align 4
  %call25.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %56, i32 noundef %call11.i.i) #12
  br label %ipoib_cm_modify_rx_qp.exit.thread.i

if.end29.i.i:                                     ; preds = %if.end10.i.i
  %57 = ptrtoint ptr %qp_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %qp_attr.i.i, align 8
  %call31.i.i = call i32 @ib_cm_init_qp_attr(ptr noundef %cm_id, ptr noundef nonnull %qp_attr.i.i, ptr noundef nonnull %qp_attr_mask.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end49.i.i, label %do.body34.i.i

do.body34.i.i:                                    ; preds = %if.end29.i.i
  %call35.i.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_modify_rx_qp._rs.116, ptr noundef nonnull @__func__.ipoib_cm_modify_rx_qp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %tobool36.not.i.i = icmp eq i32 %call35.i.i, 0
  br i1 %tobool36.not.i.i, label %do.body34.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge, label %do.end40.i.i

do.body34.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge: ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_modify_rx_qp.exit.thread.i

do.end40.i.i:                                     ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev42.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %47, i32 0, i32 1
  %58 = ptrtoint ptr %dev42.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev42.i.i, align 4
  %call45.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %59, i32 noundef %call31.i.i) #12
  br label %ipoib_cm_modify_rx_qp.exit.thread.i

if.end49.i.i:                                     ; preds = %if.end29.i.i
  %rq_psn.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i.i, i32 0, i32 5
  %60 = ptrtoint ptr %rq_psn.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and.i, ptr %rq_psn.i.i, align 4
  %61 = ptrtoint ptr %qp_attr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qp_attr_mask.i.i, align 4
  %call50.i.i = call i32 @ib_modify_qp(ptr noundef %45, ptr noundef nonnull %qp_attr.i.i, i32 noundef %62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %if.end68.i.i, label %do.body53.i.i

do.body53.i.i:                                    ; preds = %if.end49.i.i
  %call54.i.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_modify_rx_qp._rs.120, ptr noundef nonnull @__func__.ipoib_cm_modify_rx_qp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %tobool55.not.i.i = icmp eq i32 %call54.i.i, 0
  br i1 %tobool55.not.i.i, label %do.body53.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge, label %do.end59.i.i

do.body53.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge: ; preds = %do.body53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_modify_rx_qp.exit.thread.i

do.end59.i.i:                                     ; preds = %do.body53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev61.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %47, i32 0, i32 1
  %63 = ptrtoint ptr %dev61.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev61.i.i, align 4
  %call64.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %64, i32 noundef %call50.i.i) #12
  br label %ipoib_cm_modify_rx_qp.exit.thread.i

if.end68.i.i:                                     ; preds = %if.end49.i.i
  %65 = ptrtoint ptr %qp_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3, ptr %qp_attr.i.i, align 8
  %call70.i.i = call i32 @ib_cm_init_qp_attr(ptr noundef %cm_id, ptr noundef nonnull %qp_attr.i.i, ptr noundef nonnull %qp_attr_mask.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i.i)
  %tobool71.not.i.i = icmp eq i32 %call70.i.i, 0
  br i1 %tobool71.not.i.i, label %if.end88.i.i, label %do.body73.i.i

do.body73.i.i:                                    ; preds = %if.end68.i.i
  %call74.i.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_modify_rx_qp._rs.124, ptr noundef nonnull @__func__.ipoib_cm_modify_rx_qp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i)
  %tobool75.not.i.i = icmp eq i32 %call74.i.i, 0
  br i1 %tobool75.not.i.i, label %do.body73.i.i.if.end23.i_crit_edge, label %do.end79.i.i

do.body73.i.i.if.end23.i_crit_edge:               ; preds = %do.body73.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

do.end79.i.i:                                     ; preds = %do.body73.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev81.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %47, i32 0, i32 1
  %66 = ptrtoint ptr %dev81.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev81.i.i, align 4
  %call84.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %67, i32 noundef %call70.i.i) #12
  br label %if.end23.i

if.end88.i.i:                                     ; preds = %if.end68.i.i
  %68 = ptrtoint ptr %qp_attr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %qp_attr_mask.i.i, align 4
  %call89.i.i = call i32 @ib_modify_qp(ptr noundef %45, ptr noundef nonnull %qp_attr.i.i, i32 noundef %69) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i.i)
  %tobool90.not.i.i = icmp eq i32 %call89.i.i, 0
  br i1 %tobool90.not.i.i, label %if.end88.i.i.if.end23.i_crit_edge, label %do.body92.i.i

if.end88.i.i.if.end23.i_crit_edge:                ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

do.body92.i.i:                                    ; preds = %if.end88.i.i
  %call93.i.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_modify_rx_qp._rs.128, ptr noundef nonnull @__func__.ipoib_cm_modify_rx_qp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i.i)
  %tobool94.not.i.i = icmp eq i32 %call93.i.i, 0
  br i1 %tobool94.not.i.i, label %do.body92.i.i.if.end23.i_crit_edge, label %do.end98.i.i

do.body92.i.i.if.end23.i_crit_edge:               ; preds = %do.body92.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

do.end98.i.i:                                     ; preds = %do.body92.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev100.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %47, i32 0, i32 1
  %70 = ptrtoint ptr %dev100.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev100.i.i, align 4
  %call103.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %71, i32 noundef %call89.i.i) #12
  br label %if.end23.i

ipoib_cm_modify_rx_qp.exit.thread.i:              ; preds = %do.end59.i.i, %do.body53.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge, %do.end40.i.i, %do.body34.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge, %do.end20.i.i, %do.body14.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge, %do.end.i.i, %do.body.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call50.i.i, %do.body53.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge ], [ %call50.i.i, %do.end59.i.i ], [ %call31.i.i, %do.body34.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge ], [ %call31.i.i, %do.end40.i.i ], [ %call11.i.i, %do.body14.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge ], [ %call11.i.i, %do.end20.i.i ], [ %call1.i.i, %do.body.i.i.ipoib_cm_modify_rx_qp.exit.thread.i_crit_edge ], [ %call1.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qp_attr_mask.i.i) #9
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i.i) #9
  br label %err_modify.i

if.end23.i:                                       ; preds = %do.end98.i.i, %do.body92.i.i.if.end23.i_crit_edge, %if.end88.i.i.if.end23.i_crit_edge, %do.end79.i.i, %do.body73.i.i.if.end23.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qp_attr_mask.i.i) #9
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i.i) #9
  %72 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i.i.i, align 4
  %cm.i131.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %73, i32 0, i32 55
  %74 = ptrtoint ptr %cm.i131.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cm.i131.i, align 8
  %tobool.i.not.i = icmp eq ptr %75, null
  br i1 %tobool.i.not.i, label %if.then26.i, label %if.end23.i.if.end31.i_crit_edge

if.end23.i.if.end31.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %76 = load i32, ptr @ipoib_recvq_size, align 4
  %77 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %76, i32 136) #9
  %78 = extractvalue { i32, i1 } %77, 1
  %79 = extractvalue { i32, i1 } %77, 0
  %retval.0.i.i.i = select i1 %78, i32 -1, i32 %79
  %call2.i133.i = call noalias ptr @vzalloc(i32 noundef %retval.0.i.i.i) #14
  %rx_ring.i.i = getelementptr inbounds %struct.ipoib_cm_rx, ptr %call7.i.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call2.i133.i, ptr %rx_ring.i.i, align 8
  %tobool.not.i134.i = icmp eq ptr %call2.i133.i, null
  br i1 %tobool.not.i134.i, label %if.then26.i.err_modify.i_crit_edge, label %if.end.i.i

if.then26.i.err_modify.i_crit_edge:               ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_modify.i

if.end.i.i:                                       ; preds = %if.then26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i135.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3264, i32 noundef 280) #13
  %tobool5.not.i.i = icmp eq ptr %call7.i.i135.i, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.err_free_1.i.i_crit_edge, label %if.end7.i.i

if.end.i.i.err_free_1.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_1.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %sge.i.i = getelementptr inbounds %struct.anon.181, ptr %call7.i.i135.i, i32 0, i32 1
  %82 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr.i.i.i, align 4
  %num_frags.i.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %83, i32 0, i32 55, i32 21
  %84 = ptrtoint ptr %num_frags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_frags.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp27.i.i.i = icmp sgt i32 %85, 0
  br i1 %cmp27.i.i.i, label %for.body.lr.ph.i.i.i, label %if.end7.i.i.for.end.i.i.i_crit_edge

if.end7.i.i.for.end.i.i.i_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end7.i.i
  %pd.i.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %83, i32 0, i32 27
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.028.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %86 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pd.i.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %lkey.i.i.i = getelementptr %struct.ib_sge, ptr %sge.i.i, i32 %i.028.i.i.i, i32 2
  %90 = ptrtoint ptr %lkey.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %lkey.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.028.i.i.i, 1
  %91 = ptrtoint ptr %num_frags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_frags.i.i.i, align 8
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %92
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.for.end.i.i.i_crit_edge

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %if.end7.i.i.for.end.i.i.i_crit_edge
  %length.i.i.i = getelementptr inbounds %struct.anon.181, ptr %call7.i.i135.i, i32 0, i32 1, i32 0, i32 1
  %93 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 4084, ptr %length.i.i.i, align 8
  %94 = ptrtoint ptr %num_frags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_frags.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp529.i.i.i = icmp sgt i32 %95, 1
  br i1 %cmp529.i.i.i, label %for.end.i.i.i.for.body6.i.i.i_crit_edge, label %for.end.i.i.i.ipoib_cm_init_rx_wr.exit.i.i_crit_edge

for.end.i.i.i.ipoib_cm_init_rx_wr.exit.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_init_rx_wr.exit.i.i

for.end.i.i.i.for.body6.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  br label %for.body6.i.i.i

for.body6.i.i.i:                                  ; preds = %for.body6.i.i.i.for.body6.i.i.i_crit_edge, %for.end.i.i.i.for.body6.i.i.i_crit_edge
  %i.130.i.i.i = phi i32 [ %inc10.i.i.i, %for.body6.i.i.i.for.body6.i.i.i_crit_edge ], [ 1, %for.end.i.i.i.for.body6.i.i.i_crit_edge ]
  %length8.i.i.i = getelementptr %struct.ib_sge, ptr %sge.i.i, i32 %i.130.i.i.i, i32 1
  %96 = ptrtoint ptr %length8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 4096, ptr %length8.i.i.i, align 8
  %inc10.i.i.i = add nuw nsw i32 %i.130.i.i.i, 1
  %97 = ptrtoint ptr %num_frags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_frags.i.i.i, align 8
  %cmp5.i.i.i = icmp slt i32 %inc10.i.i.i, %98
  br i1 %cmp5.i.i.i, label %for.body6.i.i.i.for.body6.i.i.i_crit_edge, label %for.body6.i.i.i.ipoib_cm_init_rx_wr.exit.i.i_crit_edge

for.body6.i.i.i.ipoib_cm_init_rx_wr.exit.i.i_crit_edge: ; preds = %for.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_init_rx_wr.exit.i.i

for.body6.i.i.i.for.body6.i.i.i_crit_edge:        ; preds = %for.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6.i.i.i

ipoib_cm_init_rx_wr.exit.i.i:                     ; preds = %for.body6.i.i.i.ipoib_cm_init_rx_wr.exit.i.i_crit_edge, %for.end.i.i.i.ipoib_cm_init_rx_wr.exit.i.i_crit_edge
  %99 = ptrtoint ptr %call7.i.i135.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %call7.i.i135.i, align 8
  %sg_list.i.i.i = getelementptr inbounds %struct.ib_recv_wr, ptr %call7.i.i135.i, i32 0, i32 2
  %100 = ptrtoint ptr %sg_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %sge.i.i, ptr %sg_list.i.i.i, align 8
  %101 = ptrtoint ptr %num_frags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_frags.i.i.i, align 8
  %num_sge.i.i.i = getelementptr inbounds %struct.ib_recv_wr, ptr %call7.i.i135.i, i32 0, i32 3
  %103 = ptrtoint ptr %num_sge.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %num_sge.i.i.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %73) #9
  %nonsrq_conn_qp.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %73, i32 0, i32 55, i32 19
  %104 = ptrtoint ptr %nonsrq_conn_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %nonsrq_conn_qp.i.i, align 8
  %106 = load i32, ptr @ipoib_max_conn_qp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %106)
  %cmp.not.i.i = icmp slt i32 %105, %106
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %ipoib_cm_init_rx_wr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irq(ptr noundef %73) #9
  %call10.i.i = call i32 @ib_send_cm_rej(ptr noundef %cm_id, i32 noundef 1, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0) #9
  br label %err_free.i.i

if.else.i.i:                                      ; preds = %ipoib_cm_init_rx_wr.exit.i.i
  %inc.i.i = add nsw i32 %105, 1
  %107 = ptrtoint ptr %nonsrq_conn_qp.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %inc.i.i, ptr %nonsrq_conn_qp.i.i, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %73) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %108 = load i32, ptr @ipoib_recvq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp15101.i.i = icmp sgt i32 %108, 0
  br i1 %cmp15101.i.i, label %if.else.i.i.for.body.i.i_crit_edge, label %if.else.i.i.ipoib_cm_nonsrq_init_rx.exit.i_crit_edge

if.else.i.i.ipoib_cm_nonsrq_init_rx.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_nonsrq_init_rx.exit.i

if.else.i.i.for.body.i.i_crit_edge:               ; preds = %if.else.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else.i.i.for.body.i.i_crit_edge
  %i.0102.i.i = phi i32 [ %inc55.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i.i.for.body.i.i_crit_edge ]
  %109 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rx_ring.i.i, align 8
  %mapping.i.i = getelementptr %struct.ipoib_cm_rx_buf, ptr %110, i32 %i.0102.i.i, i32 1
  %call19.i.i = call fastcc ptr @ipoib_cm_alloc_rx_skb(ptr noundef %4, ptr noundef %110, i32 noundef %i.0102.i.i, i32 noundef 15, ptr noundef %mapping.i.i, i32 noundef 3264) #9
  %tobool20.not.i.i = icmp eq ptr %call19.i.i, null
  br i1 %tobool20.not.i.i, label %do.body.i136.i, label %if.end32.i.i

do.body.i136.i:                                   ; preds = %for.body.i.i
  %call22.i.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_nonsrq_init_rx._rs, ptr noundef nonnull @__func__.ipoib_cm_nonsrq_init_rx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %do.body.i136.i.err_count.i.i_crit_edge, label %do.body.i136.i.err_count.i.i.sink.split_crit_edge

do.body.i136.i.err_count.i.i.sink.split_crit_edge: ; preds = %do.body.i136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_count.i.i.sink.split

do.body.i136.i.err_count.i.i_crit_edge:           ; preds = %do.body.i136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_count.i.i

if.end32.i.i:                                     ; preds = %for.body.i.i
  %call36.i.i = call fastcc i32 @ipoib_cm_post_receive_nonsrq(ptr noundef %4, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i135.i, ptr noundef %sge.i.i, i32 noundef %i.0102.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %tobool37.not.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %tobool37.not.i.i, label %for.inc.i.i, label %do.body39.i.i

do.body39.i.i:                                    ; preds = %if.end32.i.i
  %call40.i.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_nonsrq_init_rx._rs.132, ptr noundef nonnull @__func__.ipoib_cm_nonsrq_init_rx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %do.body39.i.i.err_count.i.i_crit_edge, label %do.body39.i.i.err_count.i.i.sink.split_crit_edge

do.body39.i.i.err_count.i.i.sink.split_crit_edge: ; preds = %do.body39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_count.i.i.sink.split

do.body39.i.i.err_count.i.i_crit_edge:            ; preds = %do.body39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_count.i.i

for.inc.i.i:                                      ; preds = %if.end32.i.i
  %inc55.i.i = add nuw nsw i32 %i.0102.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %111 = load i32, ptr @ipoib_recvq_size, align 4
  %cmp15.i.i = icmp slt i32 %inc55.i.i, %111
  br i1 %cmp15.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.ipoib_cm_nonsrq_init_rx.exit.i_crit_edge

for.inc.i.i.ipoib_cm_nonsrq_init_rx.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_nonsrq_init_rx.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

err_count.i.i.sink.split:                         ; preds = %do.body39.i.i.err_count.i.i.sink.split_crit_edge, %do.body.i136.i.err_count.i.i.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.88, %do.body.i136.i.err_count.i.i.sink.split_crit_edge ], [ @.str.22, %do.body39.i.i.err_count.i.i.sink.split_crit_edge ]
  %ret.0.i.i.ph = phi i32 [ -12, %do.body.i136.i.err_count.i.i.sink.split_crit_edge ], [ -5, %do.body39.i.i.err_count.i.i.sink.split_crit_edge ]
  %dev47.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %73, i32 0, i32 1
  %112 = ptrtoint ptr %dev47.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev47.i.i, align 4
  %call50.i138.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22.sink, ptr noundef %113, i32 noundef %i.0102.i.i) #12
  br label %err_count.i.i

err_count.i.i:                                    ; preds = %err_count.i.i.sink.split, %do.body39.i.i.err_count.i.i_crit_edge, %do.body.i136.i.err_count.i.i_crit_edge
  %ret.0.i.i = phi i32 [ -12, %do.body.i136.i.err_count.i.i_crit_edge ], [ -5, %do.body39.i.i.err_count.i.i_crit_edge ], [ %ret.0.i.i.ph, %err_count.i.i.sink.split ]
  call void @_raw_spin_lock_irq(ptr noundef %73) #9
  %114 = ptrtoint ptr %nonsrq_conn_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %nonsrq_conn_qp.i.i, align 8
  %dec.i.i = add i32 %115, -1
  store i32 %dec.i.i, ptr %nonsrq_conn_qp.i.i, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %73) #9
  br label %err_free.i.i

err_free.i.i:                                     ; preds = %err_count.i.i, %if.then8.i.i
  %ret.1.i.i = phi i32 [ -22, %if.then8.i.i ], [ %ret.0.i.i, %err_count.i.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i135.i) #9
  br label %err_free_1.i.i

err_free_1.i.i:                                   ; preds = %err_free.i.i, %if.end.i.i.err_free_1.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %ret.1.i.i, %err_free.i.i ], [ -12, %if.end.i.i.err_free_1.i.i_crit_edge ]
  %116 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rx_ring.i.i, align 8
  call fastcc void @ipoib_cm_free_rx_ring(ptr noundef %4, ptr noundef %117) #9
  br label %err_modify.i

ipoib_cm_nonsrq_init_rx.exit.i:                   ; preds = %for.inc.i.i.ipoib_cm_nonsrq_init_rx.exit.i_crit_edge, %if.else.i.i.ipoib_cm_nonsrq_init_rx.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %108, %if.else.i.i.ipoib_cm_nonsrq_init_rx.exit.i_crit_edge ], [ %111, %for.inc.i.i.ipoib_cm_nonsrq_init_rx.exit.i_crit_edge ]
  %recv_count.i.i = getelementptr inbounds %struct.ipoib_cm_rx, ptr %call7.i.i.i, i32 0, i32 7
  %118 = ptrtoint ptr %recv_count.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %.lcssa.i.i, ptr %recv_count.i.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i135.i) #9
  br label %if.end31.i

if.end31.i:                                       ; preds = %ipoib_cm_nonsrq_init_rx.exit.i, %if.end23.i.if.end31.i_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %6) #9
  %wq.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %6, i32 0, i32 14
  %119 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %wq.i, align 4
  %stale_task.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %6, i32 0, i32 55, i32 12
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %120, ptr noundef %stale_task.i, i32 noundef 76800) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %121 = load volatile i32, ptr @jiffies, align 128
  %122 = ptrtoint ptr %jiffies.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %jiffies.i, align 8
  %123 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp35.i = icmp eq i32 %124, 0
  br i1 %cmp35.i, label %if.then36.i, label %if.end31.i.if.end39.i_crit_edge

if.end31.i.if.end39.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then36.i:                                      ; preds = %if.end31.i
  %passive_ids.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %6, i32 0, i32 55, i32 3
  %call.i.i140.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #9
  br i1 %call.i.i140.i, label %if.end.i.i.i, label %if.then36.i.__list_del_entry.exit.i.i_crit_edge

if.then36.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %prev.i.i, align 8
  %127 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %126, ptr %prev1.i.i.i.i, align 4
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %128, ptr %126, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then36.i.__list_del_entry.exit.i.i_crit_edge
  %131 = ptrtoint ptr %passive_ids.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %passive_ids.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %passive_ids.i, ptr noundef %132) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.if.end39.i_crit_edge

__list_del_entry.exit.i.i.if.end39.i_crit_edge:   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %list.i, ptr %prev1.i.i2.i.i, align 4
  %134 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %132, ptr %list.i, align 4
  %135 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %passive_ids.i, ptr %prev.i.i, align 8
  %136 = ptrtoint ptr %passive_ids.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %list.i, ptr %passive_ids.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.if.end39.i_crit_edge, %if.end31.i.if.end39.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %6) #9
  %137 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %qp.i, align 4
  %139 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i.i) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rep.i.i) #9
  %141 = getelementptr inbounds i8, ptr %rep.i.i, i32 12
  %142 = call ptr @memset(ptr %141, i32 0, i32 16)
  %qp1.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %140, i32 0, i32 30
  %143 = ptrtoint ptr %qp1.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %qp1.i.i, align 8
  %qp_num.i.i = getelementptr inbounds %struct.ib_qp, ptr %144, i32 0, i32 19
  %145 = ptrtoint ptr %qp_num.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %qp_num.i.i, align 4
  %147 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %data.i.i, align 8
  %mtu.i.i = getelementptr inbounds %struct.ipoib_cm_data, ptr %data.i.i, i32 0, i32 1
  %148 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 65524, ptr %mtu.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ib_cm_rep_param, ptr %rep.i.i, i32 0, i32 2
  %149 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %data.i.i, ptr %private_data.i.i, align 4
  %150 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 8, ptr %141, align 4
  %rnr_retry_count.i.i = getelementptr inbounds %struct.ib_cm_event, ptr %event, i32 0, i32 1, i32 0, i32 14
  %151 = ptrtoint ptr %rnr_retry_count.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %bf.load.i.i = load i8, ptr %rnr_retry_count.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 5
  %rnr_retry_count2.i.i = getelementptr inbounds %struct.ib_cm_rep_param, ptr %rep.i.i, i32 0, i32 8
  %152 = ptrtoint ptr %rnr_retry_count2.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %bf.lshr.i.i, ptr %rnr_retry_count2.i.i, align 1
  %cm.i.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %140, i32 0, i32 55
  %153 = ptrtoint ptr %cm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cm.i.i.i, align 8
  %tobool.i.i.i = icmp ne ptr %154, null
  %conv4.i.i = zext i1 %tobool.i.i.i to i8
  %srq.i142.i = getelementptr inbounds %struct.ib_cm_rep_param, ptr %rep.i.i, i32 0, i32 9
  %155 = ptrtoint ptr %srq.i142.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv4.i.i, ptr %srq.i142.i, align 2
  %qp_num5.i.i = getelementptr inbounds %struct.ib_qp, ptr %138, i32 0, i32 19
  %156 = ptrtoint ptr %qp_num5.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %qp_num5.i.i, align 4
  %158 = ptrtoint ptr %rep.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %rep.i.i, align 4
  %starting_psn.i.i = getelementptr inbounds %struct.ib_cm_rep_param, ptr %rep.i.i, i32 0, i32 1
  %159 = ptrtoint ptr %starting_psn.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %and.i, ptr %starting_psn.i.i, align 4
  %call7.i143.i = call i32 @ib_send_cm_rep(ptr noundef %cm_id, ptr noundef nonnull %rep.i.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rep.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i143.i)
  %tobool43.not.i = icmp eq i32 %call7.i143.i, 0
  br i1 %tobool43.not.i, label %if.end39.i.cleanup_crit_edge, label %do.body45.i

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body45.i:                                      ; preds = %if.end39.i
  %call46.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_req_handler._rs, ptr noundef nonnull @.str.103) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %do.body45.i.do.end59.i_crit_edge, label %do.end51.i

do.body45.i.do.end59.i_crit_edge:                 ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59.i

do.end51.i:                                       ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev53.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %6, i32 0, i32 1
  %160 = ptrtoint ptr %dev53.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev53.i, align 4
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %161, i32 noundef %call7.i143.i) #12
  br label %do.end59.i

do.end59.i:                                       ; preds = %do.end51.i, %do.body45.i.do.end59.i_crit_edge
  %162 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %qp.i, align 4
  %call61.i = call i32 @ib_modify_qp(ptr noundef %163, ptr noundef nonnull @ipoib_cm_err_attr, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %do.end59.i.cleanup_crit_edge, label %do.body64.i

do.end59.i.cleanup_crit_edge:                     ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body64.i:                                      ; preds = %do.end59.i
  %call65.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_req_handler._rs.107, ptr noundef nonnull @.str.103) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %do.body64.i.cleanup_crit_edge, label %do.end70.i

do.body64.i.cleanup_crit_edge:                    ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end70.i:                                       ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev72.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %6, i32 0, i32 1
  %164 = ptrtoint ptr %dev72.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev72.i, align 4
  %call75.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %165) #12
  br label %cleanup

err_modify.i:                                     ; preds = %err_free_1.i.i, %if.then26.i.err_modify.i_crit_edge, %ipoib_cm_modify_rx_qp.exit.thread.i
  %ret.0.i = phi i32 [ %retval.0.i.ph.i, %ipoib_cm_modify_rx_qp.exit.thread.i ], [ -12, %if.then26.i.err_modify.i_crit_edge ], [ %ret.2.i.i, %err_free_1.i.i ]
  %166 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %qp.i, align 4
  %call.i144.i = call i32 @ib_destroy_qp_user(ptr noundef %167, ptr noundef null) #9
  br label %err_qp.i

err_qp.i:                                         ; preds = %err_modify.i, %if.then14.i
  %ret.1.i = phi i32 [ %43, %if.then14.i ], [ %ret.0.i, %err_modify.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @ib_send_cm_drep(ptr noundef %cm_id, ptr noundef null, i8 noundef zeroext 0) #9
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb2, %entry.sw.bb4_crit_edge
  %context = getelementptr inbounds %struct.ib_cm_id, ptr %cm_id, i32 0, i32 1
  %168 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %context, align 4
  %dev = getelementptr inbounds %struct.ipoib_cm_rx, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %171, i32 2304
  %172 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %add.ptr.i.i, align 4
  %qp = getelementptr inbounds %struct.ipoib_cm_rx, ptr %169, i32 0, i32 1
  %174 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %qp, align 4
  %call6 = tail call i32 @ib_modify_qp(ptr noundef %175, ptr noundef nonnull @ipoib_cm_err_attr, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %sw.bb4.cleanup_crit_edge, label %do.body

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %sw.bb4
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_rx_handler._rs, ptr noundef nonnull @__func__.ipoib_cm_rx_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev11 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %173, i32 0, i32 1
  %176 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev11, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %177) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %err_qp.i, %do.end70.i, %do.body64.i.cleanup_crit_edge, %do.end59.i.cleanup_crit_edge, %if.end39.i.cleanup_crit_edge, %do.end5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb4.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.1.i, %err_qp.i ], [ -12, %do.end5.i.cleanup_crit_edge ], [ 0, %do.end59.i.cleanup_crit_edge ], [ 0, %do.end70.i ], [ 0, %do.body64.i.cleanup_crit_edge ], [ 0, %if.end39.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_cm_listen(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_destroy_cm_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_cm_dev_stop(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool.not = icmp sgt i8 %5, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %id, align 8
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @ib_destroy_cm_id(ptr noundef nonnull %7) #9
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %id, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #9
  %passive_ids = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 3
  %9 = ptrtoint ptr %passive_ids to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %passive_ids, align 4
  %cmp.i.not129 = icmp eq ptr %10, %passive_ids
  br i1 %cmp.i.not129, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %rx_error_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 4
  %dev21 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %while.body.lr.ph
  %11 = phi ptr [ %10, %while.body.lr.ph ], [ %30, %if.end26.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %while.body.__list_del_entry.exit.i_crit_edge
  %18 = ptrtoint ptr %rx_error_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_error_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %11, ptr noundef %rx_error_list, ptr noundef %19) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %11, ptr %prev1.i.i2.i, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %11, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rx_error_list, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %rx_error_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %11, ptr %rx_error_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %state = getelementptr i8, ptr %11, i32 16
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #9
  %qp = getelementptr i8, ptr %11, i32 -8
  %25 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qp, align 4
  %call13 = tail call i32 @ib_modify_qp(ptr noundef %26, ptr noundef nonnull @ipoib_cm_err_attr, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %list_move.exit.if.end26_crit_edge, label %do.body

list_move.exit.if.end26_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.body:                                          ; preds = %list_move.exit
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_dev_stop._rs, ptr noundef nonnull @__func__.ipoib_cm_dev_stop) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body.if.end26_crit_edge, label %do.end

do.body.if.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev21, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %28, i32 noundef %call13) #12
  br label %if.end26

if.end26:                                         ; preds = %do.end, %do.body.if.end26_crit_edge, %list_move.exit.if.end26_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #9
  %29 = ptrtoint ptr %passive_ids to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %passive_ids, align 4
  %cmp.i.not = icmp eq ptr %30, %passive_ids
  br i1 %cmp.i.not, label %if.end26.while.end_crit_edge, label %if.end26.while.body_crit_edge

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end26.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %rx_error_list30 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 4
  %rx_flush_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 5
  %rx_drain_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 6
  %add = add i32 %31, 500
  br label %while.cond28

while.cond28:                                     ; preds = %if.end70, %while.end
  %32 = ptrtoint ptr %rx_error_list30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %rx_error_list30, align 4
  %cmp.i110.not = icmp eq ptr %33, %rx_error_list30
  br i1 %cmp.i110.not, label %lor.lhs.false33, label %while.cond28.while.body41_crit_edge

while.cond28.while.body41_crit_edge:              ; preds = %while.cond28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body41

lor.lhs.false33:                                  ; preds = %while.cond28
  %34 = ptrtoint ptr %rx_flush_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %rx_flush_list, align 4
  %cmp.i112.not = icmp eq ptr %35, %rx_flush_list
  br i1 %cmp.i112.not, label %lor.rhs, label %lor.lhs.false33.while.body41_crit_edge

lor.lhs.false33.while.body41_crit_edge:           ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body41

lor.rhs:                                          ; preds = %lor.lhs.false33
  %36 = ptrtoint ptr %rx_drain_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %rx_drain_list, align 4
  %cmp.i114.not = icmp eq ptr %37, %rx_drain_list
  br i1 %cmp.i114.not, label %lor.rhs.while.end73_crit_edge, label %lor.rhs.while.body41_crit_edge

lor.rhs.while.body41_crit_edge:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body41

lor.rhs.while.end73_crit_edge:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end73

while.body41:                                     ; preds = %lor.rhs.while.body41_crit_edge, %lor.lhs.false33.while.body41_crit_edge, %while.cond28.while.body41_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %38
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body44, label %if.end70

do.body44:                                        ; preds = %while.body41
  %call45 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_dev_stop._rs.65, ptr noundef nonnull @__func__.ipoib_cm_dev_stop) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body44.do.end58_crit_edge, label %do.end50

do.body44.do.end58_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %dev52 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev52, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %40) #12
  br label %do.end58

do.end58:                                         ; preds = %do.end50, %do.body44.do.end58_crit_edge
  %rx_reap_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 7
  %41 = ptrtoint ptr %rx_flush_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %rx_flush_list, align 4
  %cmp.i.not.i = icmp eq ptr %42, %rx_flush_list
  br i1 %cmp.i.not.i, label %do.end58.list_splice_init.exit_crit_edge, label %if.then.i

do.end58.list_splice_init.exit_crit_edge:         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %rx_reap_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_reap_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 5, i32 1
  %45 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %rx_reap_list, ptr %prev3.i.i, align 4
  store ptr %42, ptr %rx_reap_list, align 4
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %44, ptr %46, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev6.i.i, align 4
  %50 = ptrtoint ptr %rx_flush_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %rx_flush_list, ptr %rx_flush_list, align 4
  store ptr %rx_flush_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %do.end58.list_splice_init.exit_crit_edge
  %51 = ptrtoint ptr %rx_error_list30 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %rx_error_list30, align 4
  %cmp.i.not.i116 = icmp eq ptr %52, %rx_error_list30
  br i1 %cmp.i.not.i116, label %list_splice_init.exit.list_splice_init.exit121_crit_edge, label %if.then.i120

list_splice_init.exit.list_splice_init.exit121_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_init.exit121

if.then.i120:                                     ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %rx_reap_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_reap_list, align 4
  %prev2.i.i117 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 4, i32 1
  %55 = ptrtoint ptr %prev2.i.i117 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev2.i.i117, align 4
  %prev3.i.i118 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i118 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %rx_reap_list, ptr %prev3.i.i118, align 4
  store ptr %52, ptr %rx_reap_list, align 4
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %54, ptr %56, align 4
  %prev6.i.i119 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev6.i.i119 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev6.i.i119, align 4
  %60 = ptrtoint ptr %rx_error_list30 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %rx_error_list30, ptr %rx_error_list30, align 4
  store ptr %rx_error_list30, ptr %prev2.i.i117, align 4
  br label %list_splice_init.exit121

list_splice_init.exit121:                         ; preds = %if.then.i120, %list_splice_init.exit.list_splice_init.exit121_crit_edge
  %61 = ptrtoint ptr %rx_drain_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %rx_drain_list, align 4
  %cmp.i.not.i122 = icmp eq ptr %62, %rx_drain_list
  br i1 %cmp.i.not.i122, label %list_splice_init.exit121.while.end73_crit_edge, label %if.then.i126

list_splice_init.exit121.while.end73_crit_edge:   ; preds = %list_splice_init.exit121
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end73

if.then.i126:                                     ; preds = %list_splice_init.exit121
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %rx_reap_list to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rx_reap_list, align 4
  %prev2.i.i123 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 6, i32 1
  %65 = ptrtoint ptr %prev2.i.i123 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev2.i.i123, align 4
  %prev3.i.i124 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i124 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %rx_reap_list, ptr %prev3.i.i124, align 4
  store ptr %62, ptr %rx_reap_list, align 4
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %64, ptr %66, align 4
  %prev6.i.i125 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %prev6.i.i125 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev6.i.i125, align 4
  %70 = ptrtoint ptr %rx_drain_list to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %rx_drain_list, ptr %rx_drain_list, align 4
  store ptr %rx_drain_list, ptr %prev2.i.i123, align 4
  br label %while.end73

if.end70:                                         ; preds = %while.body41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  tail call void @ipoib_drain_cq(ptr noundef %dev) #9
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #9
  br label %while.cond28

while.end73:                                      ; preds = %if.then.i126, %list_splice_init.exit121.while.end73_crit_edge, %lor.rhs.while.end73_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #9
  tail call fastcc void @ipoib_cm_free_rx_reap_list(ptr noundef %dev)
  %stale_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 12
  %call76 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %stale_task) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end73, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_qp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_drain_cq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipoib_cm_free_rx_reap_list(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %2, align 4
  call void @_raw_spin_lock_irq(ptr noundef %1) #9
  %rx_reap_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 7
  %5 = ptrtoint ptr %rx_reap_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %rx_reap_list, align 4
  %cmp.i.not.i = icmp eq ptr %6, %rx_reap_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 7, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %6, ptr %list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %10, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev6.i.i, align 4
  %14 = ptrtoint ptr %rx_reap_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %rx_reap_list, ptr %rx_reap_list, align 4
  store ptr %rx_reap_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %1) #9
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %cmp.not36 = icmp eq ptr %16, %list
  br i1 %cmp.not36, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %dev11 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %nonsrq_conn_qp = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 19
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %.pn.in37 = phi ptr [ %16, %for.body.lr.ph ], [ %.pn39, %if.end.for.body_crit_edge ]
  %rx.038 = getelementptr i8, ptr %.pn.in37, i32 -12
  %17 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn39 = load ptr, ptr %.pn.in37, align 4
  %18 = ptrtoint ptr %rx.038 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx.038, align 4
  call void @ib_destroy_cm_id(ptr noundef %19) #9
  %qp = getelementptr i8, ptr %.pn.in37, i32 -8
  %20 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qp, align 4
  %call.i = call i32 @ib_destroy_qp_user(ptr noundef %21, ptr noundef null) #9
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i, align 4
  %cm.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %23, i32 0, i32 55
  %24 = ptrtoint ptr %cm.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cm.i, align 8
  %tobool.i.not = icmp eq ptr %25, null
  br i1 %tobool.i.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev11, align 4
  %rx_ring = getelementptr i8, ptr %.pn.in37, i32 -4
  %28 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_ring, align 4
  call fastcc void @ipoib_cm_free_rx_ring(ptr noundef %27, ptr noundef %29)
  call void @_raw_spin_lock_irq(ptr noundef %1) #9
  %30 = ptrtoint ptr %nonsrq_conn_qp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nonsrq_conn_qp, align 8
  %dec = add i32 %31, -1
  store i32 %dec, ptr %nonsrq_conn_qp, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  call void @kfree(ptr noundef %rx.038) #9
  %cmp.not = icmp eq ptr %.pn39, %list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipoib_cm_create_tx(ptr noundef %dev, ptr nocapture noundef readnone %path, ptr noundef %neigh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 48) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cm = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh, i32 0, i32 1
  %3 = ptrtoint ptr %cm to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %cm, align 4
  %neigh2 = getelementptr inbounds %struct.ipoib_cm_tx, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %neigh2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %neigh, ptr %neigh2, align 4
  %dev3 = getelementptr inbounds %struct.ipoib_cm_tx, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev3, align 8
  %list = getelementptr inbounds %struct.ipoib_cm_tx, ptr %call7.i.i, i32 0, i32 2
  %start_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 14
  %6 = ptrtoint ptr %start_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %start_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %start_list, ptr noundef %7) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %start_list, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %start_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %start_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %flags = getelementptr inbounds %struct.ipoib_cm_tx, ptr %call7.i.i, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #9
  %wq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wq, align 4
  %start_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %start_task) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_cm_destroy_tx(ptr noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %flags1 = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 8
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %do.body3

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body3:                                         ; preds = %entry
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %list = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 2
  %reap_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 55, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body3.__list_del_entry.exit.i_crit_edge

do.body3.__list_del_entry.exit.i_crit_edge:       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %do.body3.__list_del_entry.exit.i_crit_edge
  %10 = ptrtoint ptr %reap_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reap_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %reap_list, ptr noundef %11) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %prev1.i.i2.i, align 4
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reap_list, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %reap_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list, ptr %reap_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %wq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wq, align 4
  %reap_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 55, i32 9
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %reap_task) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %18 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp11 = icmp sgt i32 %18, 0
  br i1 %cmp11, label %do.end16, label %list_move.exit.do.end22_crit_edge

list_move.exit.do.end22_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

do.end16:                                         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev18 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev18, align 4
  %neigh = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 4
  %21 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %neigh, align 4
  %add.ptr = getelementptr %struct.ipoib_neigh, ptr %22, i32 0, i32 2, i32 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %20, ptr noundef %add.ptr) #12
  br label %do.end22

do.end22:                                         ; preds = %do.end16, %list_move.exit.do.end22_crit_edge
  %neigh23 = getelementptr inbounds %struct.ipoib_cm_tx, ptr %tx, i32 0, i32 4
  %23 = ptrtoint ptr %neigh23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %neigh23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call5) #9
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_cm_add_mode_attr(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %call = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_mode) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_cm_dev_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %srq_init_attr.i = alloca %struct.ib_srq_init_attr, align 4
  %addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #9
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %addr, align 1, !annotation !387
  %passive_ids = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 3
  %3 = ptrtoint ptr %passive_ids to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %passive_ids, ptr %passive_ids, align 4
  %prev.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %passive_ids, ptr %prev.i, align 4
  %reap_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 15
  %5 = ptrtoint ptr %reap_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %reap_list, ptr %reap_list, align 4
  %prev.i268 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 15, i32 1
  %6 = ptrtoint ptr %prev.i268 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %reap_list, ptr %prev.i268, align 4
  %start_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 14
  %7 = ptrtoint ptr %start_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %start_list, ptr %start_list, align 4
  %prev.i269 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 14, i32 1
  %8 = ptrtoint ptr %prev.i269 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %start_list, ptr %prev.i269, align 4
  %rx_error_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 4
  %9 = ptrtoint ptr %rx_error_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %rx_error_list, ptr %rx_error_list, align 4
  %prev.i270 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i270 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rx_error_list, ptr %prev.i270, align 4
  %rx_flush_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 5
  %11 = ptrtoint ptr %rx_flush_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %rx_flush_list, ptr %rx_flush_list, align 4
  %prev.i271 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 5, i32 1
  %12 = ptrtoint ptr %prev.i271 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rx_flush_list, ptr %prev.i271, align 4
  %rx_drain_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 6
  %13 = ptrtoint ptr %rx_drain_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %rx_drain_list, ptr %rx_drain_list, align 4
  %prev.i272 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 6, i32 1
  %14 = ptrtoint ptr %prev.i272 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rx_drain_list, ptr %prev.i272, align 4
  %rx_reap_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 7
  %15 = ptrtoint ptr %rx_reap_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %rx_reap_list, ptr %rx_reap_list, align 4
  %prev.i273 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 7, i32 1
  %16 = ptrtoint ptr %prev.i273 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rx_reap_list, ptr %prev.i273, align 4
  %start_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 8
  tail call void @__init_work(ptr noundef %start_task, i32 noundef 0) #9
  %17 = ptrtoint ptr %start_task to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %start_task, align 4
  %lockdep_map = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.71, ptr noundef nonnull @ipoib_cm_dev_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry14 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 8, i32 1
  %18 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i274 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 8, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i274 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry14, ptr %prev.i274, align 4
  %func = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 8, i32 2
  %20 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ipoib_cm_tx_start, ptr %func, align 4
  %reap_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 9
  tail call void @__init_work(ptr noundef %reap_task, i32 noundef 0) #9
  %21 = ptrtoint ptr %reap_task to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %reap_task, align 8
  %lockdep_map26 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map26, ptr noundef nonnull @.str.73, ptr noundef nonnull @ipoib_cm_dev_init.__key.72, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry29 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 9, i32 1
  %22 = ptrtoint ptr %entry29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry29, ptr %entry29, align 4
  %prev.i275 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 9, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i275 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry29, ptr %prev.i275, align 4
  %func32 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 9, i32 2
  %24 = ptrtoint ptr %func32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ipoib_cm_tx_reap, ptr %func32, align 4
  %skb_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 10
  tail call void @__init_work(ptr noundef %skb_task, i32 noundef 0) #9
  %25 = ptrtoint ptr %skb_task to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %skb_task, align 4
  %lockdep_map44 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map44, ptr noundef nonnull @.str.75, ptr noundef nonnull @ipoib_cm_dev_init.__key.74, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry47 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 10, i32 1
  %26 = ptrtoint ptr %entry47 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry47, ptr %entry47, align 4
  %prev.i276 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 10, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i276 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry47, ptr %prev.i276, align 4
  %func50 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 10, i32 2
  %28 = ptrtoint ptr %func50 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ipoib_cm_skb_reap, ptr %func50, align 4
  %rx_reap_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 11
  tail call void @__init_work(ptr noundef %rx_reap_task, i32 noundef 0) #9
  %29 = ptrtoint ptr %rx_reap_task to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %rx_reap_task, align 8
  %lockdep_map62 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map62, ptr noundef nonnull @.str.77, ptr noundef nonnull @ipoib_cm_dev_init.__key.76, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry65 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 11, i32 1
  %30 = ptrtoint ptr %entry65 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry65, ptr %entry65, align 4
  %prev.i277 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 11, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i277 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry65, ptr %prev.i277, align 4
  %func68 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 11, i32 2
  %32 = ptrtoint ptr %func68 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ipoib_cm_rx_reap, ptr %func68, align 4
  %stale_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 12
  tail call void @__init_work(ptr noundef %stale_task, i32 noundef 0) #9
  %33 = ptrtoint ptr %stale_task to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %stale_task, align 4
  %lockdep_map83 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 12, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map83, ptr noundef nonnull @.str.79, ptr noundef nonnull @ipoib_cm_dev_init.__key.78, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry87 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 12, i32 0, i32 1
  %34 = ptrtoint ptr %entry87 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry87, ptr %entry87, align 4
  %prev.i278 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 12, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i278 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry87, ptr %prev.i278, align 4
  %func91 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 12, i32 0, i32 2
  %36 = ptrtoint ptr %func91 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ipoib_cm_stale_task, ptr %func91, align 4
  %timer = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 12, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.81, ptr noundef nonnull @ipoib_cm_dev_init.__key.80) #9
  %skb_queue = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 13
  %lock.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 13, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.192, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %37 = ptrtoint ptr %skb_queue to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %skb_queue, ptr %skb_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 13, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %skb_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 13, i32 1
  %39 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %qlen.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %40 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp = icmp sgt i32 %40, 0
  br i1 %cmp, label %do.end105, label %entry.do.end110_crit_edge

entry.do.end110_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end110

do.end105:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev106 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev106, align 4
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %43 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ca, align 8
  %max_srq_sge107 = getelementptr inbounds %struct.ib_device, ptr %44, i32 0, i32 22, i32 35
  %45 = ptrtoint ptr %max_srq_sge107 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_srq_sge107, align 4
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %42, i32 noundef %46) #12
  br label %do.end110

do.end110:                                        ; preds = %do.end105, %entry.do.end110_crit_edge
  %ca111 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %47 = ptrtoint ptr %ca111 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ca111, align 8
  %max_srq_sge113 = getelementptr inbounds %struct.ib_device, ptr %48, i32 0, i32 22, i32 35
  %49 = ptrtoint ptr %max_srq_sge113 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_srq_sge113, align 4
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 16)
  %52 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %srq_init_attr.i) #9
  %54 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_init_attr.i, i32 0, i32 1
  %55 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_init_attr.i, i32 0, i32 2
  %56 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_init_attr.i, i32 0, i32 2, i32 1
  %57 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_init_attr.i, i32 0, i32 2, i32 2
  %58 = ptrtoint ptr %srq_init_attr.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %srq_init_attr.i, align 4
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %54, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %60 = load i32, ptr @ipoib_recvq_size, align 4
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %55, align 4
  %62 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %51, ptr %56, align 4
  %pd.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %53, i32 0, i32 27
  %63 = call ptr @memset(ptr %57, i32 0, i32 16)
  %64 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pd.i, align 4
  %device.i.i = getelementptr inbounds %struct.ib_pd, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device.i.i, align 4
  %create_srq.i.i = getelementptr inbounds %struct.ib_device, ptr %67, i32 0, i32 1, i32 42
  %68 = ptrtoint ptr %create_srq.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %create_srq.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i, label %if.then.thread.i, label %ib_create_srq.exit.i

if.then.thread.i:                                 ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #11
  %cm42.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %53, i32 0, i32 55
  br label %cleanup.sink.split.i

ib_create_srq.exit.i:                             ; preds = %do.end110
  %call1.i.i = call ptr @ib_create_srq_user(ptr noundef %65, ptr noundef nonnull %srq_init_attr.i, ptr noundef null, ptr noundef null) #9
  %cm.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %53, i32 0, i32 55
  %70 = ptrtoint ptr %cm.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call1.i.i, ptr %cm.i, align 8
  %cmp.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end16.i

if.then.i:                                        ; preds = %ib_create_srq.exit.i
  %cmp.not.i = icmp eq ptr %call1.i.i, inttoptr (i32 -95 to ptr)
  br i1 %cmp.not.i, label %if.then.i.cleanup.sink.split.i_crit_edge, label %do.end.i

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %call1.i.i to i32
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %53, i32 0, i32 23
  %72 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ca.i, align 8
  %name.i = getelementptr inbounds %struct.ib_device, ptr %73, i32 0, i32 2
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef %name.i, i32 noundef %71) #12
  br label %cleanup.sink.split.i

if.end16.i:                                       ; preds = %ib_create_srq.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %74 = load i32, ptr @ipoib_recvq_size, align 4
  %75 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %74, i32 136) #9
  %76 = extractvalue { i32, i1 } %75, 1
  %77 = extractvalue { i32, i1 } %75, 0
  %retval.0.i39.i = select i1 %76, i32 -1, i32 %77
  %call18.i = call noalias ptr @vzalloc(i32 noundef %retval.0.i39.i) #14
  %srq_ring.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %53, i32 0, i32 55, i32 1
  %78 = ptrtoint ptr %srq_ring.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call18.i, ptr %srq_ring.i, align 4
  %tobool.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool.not.i, label %if.then22.i, label %if.end16.i.ipoib_cm_create_srq.exit_crit_edge

if.end16.i.ipoib_cm_create_srq.exit_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_create_srq.exit

if.then22.i:                                      ; preds = %if.end16.i
  %79 = ptrtoint ptr %cm.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cm.i, align 8
  %call.i.i = call i32 @ib_destroy_srq_user(ptr noundef %80, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i40.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i40.i, label %if.then22.i.cleanup.sink.split.i_crit_edge, label %land.rhs.i.i

if.then22.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

land.rhs.i.i:                                     ; preds = %if.then22.i
  %.b38.i.i = load i1, ptr @ib_destroy_srq.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.cleanup.sink.split.i_crit_edge, label %if.then.i.i, !prof !385

land.rhs.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_destroy_srq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.195, i32 noundef 3688, i32 noundef 9, ptr noundef nonnull @.str.196) #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then.i.i, %land.rhs.i.i.cleanup.sink.split.i_crit_edge, %if.then22.i.cleanup.sink.split.i_crit_edge, %do.end.i, %if.then.i.cleanup.sink.split.i_crit_edge, %if.then.thread.i
  %cm.sink.i = phi ptr [ %cm42.i, %if.then.thread.i ], [ %cm.i, %do.end.i ], [ %cm.i, %if.then.i.cleanup.sink.split.i_crit_edge ], [ %cm.i, %if.then22.i.cleanup.sink.split.i_crit_edge ], [ %cm.i, %land.rhs.i.i.cleanup.sink.split.i_crit_edge ], [ %cm.i, %if.then.i.i ]
  %81 = ptrtoint ptr %cm.sink.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %cm.sink.i, align 8
  br label %ipoib_cm_create_srq.exit

ipoib_cm_create_srq.exit:                         ; preds = %cleanup.sink.split.i, %if.end16.i.ipoib_cm_create_srq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %srq_init_attr.i) #9
  %82 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr.i.i, align 4
  %cm.i280 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %83, i32 0, i32 55
  %84 = ptrtoint ptr %cm.i280 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cm.i280, align 8
  %tobool.i.not = icmp eq ptr %85, null
  br i1 %tobool.i.not, label %if.else, label %if.then117

if.then117:                                       ; preds = %ipoib_cm_create_srq.exit
  %mul = shl i32 %51, 12
  %sub = add i32 %mul, -16
  %max_cm_mtu = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 20
  %86 = ptrtoint ptr %max_cm_mtu to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub, ptr %max_cm_mtu, align 4
  %num_frags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 21
  %87 = ptrtoint ptr %num_frags to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %51, ptr %num_frags, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %88 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp121 = icmp sgt i32 %88, 0
  br i1 %cmp121, label %do.end125, label %if.then117.if.end142_crit_edge

if.then117.if.end142_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

do.end125:                                        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  %dev127 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %89 = ptrtoint ptr %dev127 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev127, align 4
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %90, i32 noundef %sub, i32 noundef %51) #12
  br label %if.end142

if.else:                                          ; preds = %ipoib_cm_create_srq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %max_cm_mtu139 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 20
  %91 = ptrtoint ptr %max_cm_mtu139 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 65520, ptr %max_cm_mtu139, align 4
  %num_frags141 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 21
  %92 = ptrtoint ptr %num_frags141 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 16, ptr %num_frags141, align 8
  br label %if.end142

if.end142:                                        ; preds = %if.else, %do.end125, %if.then117.if.end142_crit_edge
  %rx_wr = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 18
  %rx_sge = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 17
  %93 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i.i, align 4
  %num_frags.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %94, i32 0, i32 55, i32 21
  %95 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_frags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp27.i = icmp sgt i32 %96, 0
  br i1 %cmp27.i, label %for.body.lr.ph.i, label %if.end142.for.end.i_crit_edge

if.end142.for.end.i_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end142
  %pd.i282 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %94, i32 0, i32 27
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %97 = ptrtoint ptr %pd.i282 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pd.i282, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %lkey.i = getelementptr %struct.ib_sge, ptr %rx_sge, i32 %i.028.i, i32 2
  %101 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %lkey.i, align 4
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %102 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_frags.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %103
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end142.for.end.i_crit_edge
  %length.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 17, i32 0, i32 1
  %104 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 4084, ptr %length.i, align 8
  %105 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_frags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp529.i = icmp sgt i32 %106, 1
  br i1 %cmp529.i, label %for.end.i.for.body6.i_crit_edge, label %for.end.i.ipoib_cm_init_rx_wr.exit_crit_edge

for.end.i.ipoib_cm_init_rx_wr.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_init_rx_wr.exit

for.end.i.for.body6.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.end.i.for.body6.i_crit_edge
  %i.130.i = phi i32 [ %inc10.i, %for.body6.i.for.body6.i_crit_edge ], [ 1, %for.end.i.for.body6.i_crit_edge ]
  %length8.i = getelementptr %struct.ib_sge, ptr %rx_sge, i32 %i.130.i, i32 1
  %107 = ptrtoint ptr %length8.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 4096, ptr %length8.i, align 8
  %inc10.i = add nuw nsw i32 %i.130.i, 1
  %108 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_frags.i, align 8
  %cmp5.i = icmp slt i32 %inc10.i, %109
  br i1 %cmp5.i, label %for.body6.i.for.body6.i_crit_edge, label %for.body6.i.ipoib_cm_init_rx_wr.exit_crit_edge

for.body6.i.ipoib_cm_init_rx_wr.exit_crit_edge:   ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_init_rx_wr.exit

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6.i

ipoib_cm_init_rx_wr.exit:                         ; preds = %for.body6.i.ipoib_cm_init_rx_wr.exit_crit_edge, %for.end.i.ipoib_cm_init_rx_wr.exit_crit_edge
  %110 = ptrtoint ptr %rx_wr to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %rx_wr, align 8
  %sg_list.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 18, i32 2
  %111 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %rx_sge, ptr %sg_list.i, align 8
  %112 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_frags.i, align 8
  %num_sge.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 18, i32 3
  %114 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %num_sge.i, align 4
  %115 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr.i.i, align 4
  %cm.i284 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %116, i32 0, i32 55
  %117 = ptrtoint ptr %cm.i284 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cm.i284, align 8
  %tobool.i285.not = icmp eq ptr %118, null
  br i1 %tobool.i285.not, label %ipoib_cm_init_rx_wr.exit.if.end195_crit_edge, label %for.cond.preheader

ipoib_cm_init_rx_wr.exit.if.end195_crit_edge:     ; preds = %ipoib_cm_init_rx_wr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end195

for.cond.preheader:                               ; preds = %ipoib_cm_init_rx_wr.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %119 = load i32, ptr @ipoib_recvq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp149289 = icmp sgt i32 %119, 0
  br i1 %cmp149289, label %for.body.lr.ph, label %for.cond.preheader.if.end195_crit_edge

for.cond.preheader.if.end195_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end195

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %srq_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 1
  %num_frags152 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0290 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %120 = ptrtoint ptr %srq_ring to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %srq_ring, align 4
  %122 = ptrtoint ptr %num_frags152 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_frags152, align 8
  %sub153 = add i32 %123, -1
  %mapping = getelementptr %struct.ipoib_cm_rx_buf, ptr %121, i32 %i.0290, i32 1
  %call157 = call fastcc ptr @ipoib_cm_alloc_rx_skb(ptr noundef %dev, ptr noundef %121, i32 noundef %i.0290, i32 noundef %sub153, ptr noundef %mapping, i32 noundef 3264)
  %tobool158.not = icmp eq ptr %call157, null
  br i1 %tobool158.not, label %do.body160, label %if.end175

do.body160:                                       ; preds = %for.body
  %call161 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_dev_init._rs, ptr noundef nonnull @.str.83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %do.body160.do.end174_crit_edge, label %do.end166

do.body160.do.end174_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end174

do.end166:                                        ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #11
  %dev168 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %124 = ptrtoint ptr %dev168 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev168, align 4
  %call171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %125, i32 noundef %i.0290) #12
  br label %do.end174

do.end174:                                        ; preds = %do.end166, %do.body160.do.end174_crit_edge
  call void @ipoib_cm_dev_cleanup(ptr noundef %dev)
  br label %cleanup

if.end175:                                        ; preds = %for.body
  %call176 = call fastcc i32 @ipoib_cm_post_receive_srq(ptr noundef %dev, i32 noundef %i.0290)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %for.inc, label %do.body179

do.body179:                                       ; preds = %if.end175
  %call180 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_dev_init._rs.90, ptr noundef nonnull @.str.83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %do.body179.do.end193_crit_edge, label %do.end185

do.body179.do.end193_crit_edge:                   ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end193

do.end185:                                        ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #11
  %dev187 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %126 = ptrtoint ptr %dev187 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev187, align 4
  %call190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %127, i32 noundef %i.0290) #12
  br label %do.end193

do.end193:                                        ; preds = %do.end185, %do.body179.do.end193_crit_edge
  call void @ipoib_cm_dev_cleanup(ptr noundef %dev)
  br label %cleanup

for.inc:                                          ; preds = %if.end175
  %inc = add nuw nsw i32 %i.0290, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %128 = load i32, ptr @ipoib_recvq_size, align 4
  %cmp149 = icmp slt i32 %inc, %128
  br i1 %cmp149, label %for.inc.for.body_crit_edge, label %for.inc.if.end195_crit_edge

for.inc.if.end195_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end195

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end195:                                        ; preds = %for.inc.if.end195_crit_edge, %for.cond.preheader.if.end195_crit_edge, %ipoib_cm_init_rx_wr.exit.if.end195_crit_edge
  %129 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -128, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end195, %do.end193, %do.end174
  %retval.0 = phi i32 [ -5, %do.end193 ], [ -12, %do.end174 ], [ 0, %if.end195 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_cm_tx_start(ptr noundef %work) #0 align 64 {
entry:
  %data.i.i = alloca %struct.ipoib_cm_data, align 8
  %req.i.i = alloca %struct.ib_cm_req_param, align 8
  %qp_attr.i.i = alloca %struct.ib_qp_attr, align 8
  %attr.i.i = alloca %struct.ib_qp_init_attr, align 4
  %pathrec = alloca %struct.sa_path_rec, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -6324
  %dev1 = getelementptr i8, ptr %work, i32 -6280
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %pathrec) #9
  %2 = call ptr @memset(ptr %pathrec, i32 255, i32 80)
  tail call fastcc void @local_bh_disable() #9
  tail call void @netif_tx_lock(ptr noundef %1) #9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %start_list = getelementptr i8, ptr %work, i32 332
  %3 = ptrtoint ptr %start_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %start_list, align 4
  %cmp.i.not83 = icmp eq ptr %4, %start_list
  br i1 %cmp.i.not83, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %qp_context.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 1
  %send_cq.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 2
  %recv_cq.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 3
  %srq.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 4
  %xrcd.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 5
  %cap.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 6
  %max_recv_wr.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 6, i32 1
  %max_send_sge.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 6, i32 2
  %max_recv_sge.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 6, i32 3
  %qp_type.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 8
  %create_flags.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 9
  %pkey_index1.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i.i, i32 0, i32 12
  %qp_access_flags.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i.i, i32 0, i32 8
  %port_num.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i.i, i32 0, i32 19
  %5 = getelementptr inbounds i8, ptr %req.i.i, i32 8
  %mtu.i.i = getelementptr inbounds %struct.ipoib_cm_data, ptr %data.i.i, i32 0, i32 1
  %alternate_path.i.i = getelementptr inbounds %struct.ib_cm_req_param, ptr %req.i.i, i32 0, i32 1
  %service_id.i.i = getelementptr inbounds %struct.ib_cm_req_param, ptr %req.i.i, i32 0, i32 3
  %qp_num4.i.i = getelementptr inbounds %struct.ib_cm_req_param, ptr %req.i.i, i32 0, i32 4
  %qp_type5.i.i = getelementptr inbounds %struct.ib_cm_req_param, ptr %req.i.i, i32 0, i32 5
  %private_data.i.i = getelementptr inbounds %struct.ib_cm_req_param, ptr %req.i.i, i32 0, i32 7
  %private_data_len.i.i = getelementptr inbounds %struct.ib_cm_req_param, ptr %req.i.i, i32 0, i32 8
  %responder_resources.i.i = getelementptr inbounds %struct.ib_cm_req_param, ptr %req.i.i, i32 0, i32 9
  %remote_cm_response_timeout.i.i = getelementptr inbounds %struct.ib_cm_req_param, ptr %req.i.i, i32 0, i32 11
  %local_cm_response_timeout.i.i = getelementptr inbounds %struct.ib_cm_req_param, ptr %req.i.i, i32 0, i32 13
  %max_cm_retries.i.i = getelementptr inbounds %struct.ib_cm_req_param, ptr %req.i.i, i32 0, i32 16
  %srq.i166.i = getelementptr inbounds %struct.ib_cm_req_param, ptr %req.i.i, i32 0, i32 17
  br label %while.body

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %4, %while.body.lr.ph ], [ %176, %if.end53.while.body_crit_edge ]
  %flags.084 = phi i32 [ %call4, %while.body.lr.ph ], [ %flags.2, %if.end53.while.body_crit_edge ]
  %add.ptr12 = getelementptr i8, ptr %6, i32 -8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %prev.i3.i, align 4
  %neigh13 = getelementptr i8, ptr %6, i32 12
  %15 = ptrtoint ptr %neigh13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %neigh13, align 4
  %daddr = getelementptr inbounds %struct.ipoib_neigh, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %daddr, align 4
  %add.ptr17 = getelementptr %struct.ipoib_neigh, ptr %16, i32 0, i32 2, i32 4
  %call18 = call ptr @__path_find(ptr noundef %1, ptr noundef %add.ptr17) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end22, label %if.end

do.end22:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.140, ptr noundef %add.ptr17) #12
  br label %free_neigh

if.end:                                           ; preds = %list_del_init.exit
  %and = and i32 %18, 16777215
  %pathrec28 = getelementptr inbounds %struct.ipoib_path, ptr %call18, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %pathrec, ptr %pathrec28, i32 80)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %flags.084) #9
  call void @netif_tx_unlock(ptr noundef %1) #9
  call fastcc void @local_bh_enable() #9
  %dev.i = getelementptr i8, ptr %6, i32 8
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 2304
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !375) #9
  %and.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %29, 524288
  %or.i.i = or i32 %29, 524288
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %30 = load i32, ptr @ipoib_sendq_size, align 4
  %31 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 152) #9
  %32 = extractvalue { i32, i1 } %31, 1
  %33 = extractvalue { i32, i1 } %31, 0
  %retval.0.i.i = select i1 %32, i32 -1, i32 %33
  %call3.i = call noalias ptr @vzalloc(i32 noundef %retval.0.i.i) #14
  %tx_ring.i = getelementptr i8, ptr %6, i32 16
  %34 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call3.i, ptr %tx_ring.i, align 4
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %35 = call i32 @llvm.read_register.i32(metadata !375) #9
  %and.i.i148.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i148.i to ptr
  %task.i149.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i149.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i149.i, align 8
  %flags1.i150.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %flags1.i150.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags1.i150.i, align 4
  %and.i151.i = and i32 %40, -524289
  %or.i152.i = or i32 %and.i151.i, %and.i.i
  store i32 %or.i152.i, ptr %flags1.i150.i, align 4
  br label %ipoib_cm_tx_init.exit

if.end.i:                                         ; preds = %if.end
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %42, i32 2304
  %43 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr.i.i) #9
  %45 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %attr.i.i, align 4
  %46 = ptrtoint ptr %qp_context.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr12, ptr %qp_context.i.i, align 4
  %send_cq1.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %44, i32 0, i32 29
  %47 = ptrtoint ptr %send_cq1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %send_cq1.i.i, align 4
  %49 = ptrtoint ptr %send_cq.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %send_cq.i.i, align 4
  %recv_cq2.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %44, i32 0, i32 28
  %50 = ptrtoint ptr %recv_cq2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %recv_cq2.i.i, align 8
  %52 = ptrtoint ptr %recv_cq.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %recv_cq.i.i, align 4
  %cm.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %44, i32 0, i32 55
  %53 = ptrtoint ptr %cm.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cm.i.i, align 8
  %55 = ptrtoint ptr %srq.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %srq.i.i, align 4
  %56 = ptrtoint ptr %xrcd.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %xrcd.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %57 = load i32, ptr @ipoib_sendq_size, align 4
  %58 = ptrtoint ptr %cap.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %cap.i.i, align 4
  %59 = ptrtoint ptr %max_recv_wr.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %max_recv_wr.i.i, align 4
  %60 = ptrtoint ptr %max_send_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %max_send_sge.i.i, align 4
  %61 = call ptr @memset(ptr %max_recv_sge.i.i, i32 0, i32 16)
  %62 = ptrtoint ptr %qp_type.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %qp_type.i.i, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 23
  %63 = call ptr @memset(ptr %create_flags.i.i, i32 0, i32 16)
  %64 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %features.i.i, align 16
  %and.i153.i = and i64 %65, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i153.i)
  %tobool.not.i.i = icmp eq i64 %and.i153.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.ipoib_cm_create_tx_qp.exit.i_crit_edge, label %if.then.i.i

if.end.i.ipoib_cm_create_tx_qp.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_create_tx_qp.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ca.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %44, i32 0, i32 23
  %66 = ptrtoint ptr %ca.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ca.i.i, align 8
  %max_send_sge4.i.i = getelementptr inbounds %struct.ib_device, ptr %67, i32 0, i32 22, i32 10
  %68 = ptrtoint ptr %max_send_sge4.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_send_sge4.i.i, align 8
  %70 = call i32 @llvm.umin.i32(i32 %69, i32 18) #9
  %71 = ptrtoint ptr %max_send_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %max_send_sge.i.i, align 4
  br label %ipoib_cm_create_tx_qp.exit.i

ipoib_cm_create_tx_qp.exit.i:                     ; preds = %if.then.i.i, %if.end.i.ipoib_cm_create_tx_qp.exit.i_crit_edge
  %pd.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %44, i32 0, i32 27
  %72 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pd.i.i, align 4
  %call.i.i.i = call ptr @ib_create_qp_kernel(ptr noundef %73, ptr noundef nonnull %attr.i.i, ptr noundef nonnull @.str.110) #9
  %74 = ptrtoint ptr %max_send_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_send_sge.i.i, align 4
  %max_send_sge10.i.i = getelementptr i8, ptr %6, i32 36
  %76 = ptrtoint ptr %max_send_sge10.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %max_send_sge10.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr.i.i) #9
  %qp.i = getelementptr i8, ptr %6, i32 -4
  %77 = ptrtoint ptr %qp.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i.i.i, ptr %qp.i, align 4
  %78 = call i32 @llvm.read_register.i32(metadata !375) #9
  %and.i.i154.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i154.i to ptr
  %task.i155.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %task.i155.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task.i155.i, align 8
  %flags1.i156.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %flags1.i156.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags1.i156.i, align 4
  %and.i157.i = and i32 %83, -524289
  %or.i158.i = or i32 %and.i157.i, %and.i.i
  store i32 %or.i158.i, ptr %flags1.i156.i, align 4
  %84 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %qp.i, align 4
  %cmp.i.i = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then9.i, label %if.end21.i

if.then9.i:                                       ; preds = %ipoib_cm_create_tx_qp.exit.i
  %86 = ptrtoint ptr %85 to i32
  %call12.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_tx_init._rs, ptr noundef nonnull @__func__.ipoib_cm_tx_init) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then9.i.err_qp.i_crit_edge, label %do.end.i

if.then9.i.err_qp.i_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_qp.i

do.end.i:                                         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev16.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %23, i32 0, i32 1
  %87 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev16.i, align 4
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %88, i32 noundef %86) #12
  br label %err_qp.i

if.end21.i:                                       ; preds = %ipoib_cm_create_tx_qp.exit.i
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %23, i32 0, i32 23
  %89 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ca.i, align 8
  %call22.i = call ptr @ib_create_cm_id(ptr noundef %90, ptr noundef nonnull @ipoib_cm_tx_handler, ptr noundef %add.ptr12) #9
  %91 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call22.i, ptr %add.ptr12, align 4
  %cmp.i159.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159.i, label %if.then25.i, label %if.end43.i

if.then25.i:                                      ; preds = %if.end21.i
  %92 = ptrtoint ptr %call22.i to i32
  %call29.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_tx_init._rs.142, ptr noundef nonnull @__func__.ipoib_cm_tx_init) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then25.i.err_id.i_crit_edge, label %do.end34.i

if.then25.i.err_id.i_crit_edge:                   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_id.i

do.end34.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev36.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %23, i32 0, i32 1
  %93 = ptrtoint ptr %dev36.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev36.i, align 4
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %94, i32 noundef %92) #12
  br label %err_id.i

if.end43.i:                                       ; preds = %if.end21.i
  %95 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i, align 4
  %97 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %qp.i, align 4
  %add.ptr.i.i.i160.i = getelementptr i8, ptr %96, i32 2304
  %99 = ptrtoint ptr %add.ptr.i.i.i160.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %add.ptr.i.i.i160.i, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr.i.i) #9
  %101 = call ptr @memset(ptr %qp_attr.i.i, i32 255, i32 216)
  %pkey_index.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %100, i32 0, i32 26
  %102 = ptrtoint ptr %pkey_index.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %pkey_index.i.i, align 8
  %104 = ptrtoint ptr %pkey_index1.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %pkey_index1.i.i, align 8
  %105 = ptrtoint ptr %qp_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %qp_attr.i.i, align 8
  %106 = ptrtoint ptr %qp_access_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %qp_access_flags.i.i, align 8
  %port.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %100, i32 0, i32 24
  %107 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %port.i.i, align 4
  %conv.i.i = zext i8 %108 to i32
  %109 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv.i.i, ptr %port_num.i.i, align 4
  %call2.i.i = call i32 @ib_modify_qp(ptr noundef %98, ptr noundef nonnull %qp_attr.i.i, i32 noundef 57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i161.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i161.i, label %if.end65.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end43.i
  %call3.i.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_modify_tx_init._rs, ptr noundef nonnull @__func__.ipoib_cm_modify_tx_init) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.do.body50.i_crit_edge, label %do.end.i.i

do.body.i.i.do.body50.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev7.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %100, i32 0, i32 1
  %110 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev7.i.i, align 4
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef %111, i32 noundef %call2.i.i) #12
  br label %do.body50.i

do.body50.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.body50.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i.i) #9
  %call51.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_tx_init._rs.146, ptr noundef nonnull @__func__.ipoib_cm_tx_init) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %do.body50.i.err_modify_send.i_crit_edge, label %do.end56.i

do.body50.i.err_modify_send.i_crit_edge:          ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_modify_send.i

do.end56.i:                                       ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev58.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %23, i32 0, i32 1
  %112 = ptrtoint ptr %dev58.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev58.i, align 4
  %call61.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %113, i32 noundef %call2.i.i) #12
  br label %err_modify_send.i

if.end65.i:                                       ; preds = %if.end43.i
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i.i) #9
  %114 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i, align 4
  %116 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %add.ptr12, align 4
  %118 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %qp.i, align 4
  %add.ptr.i.i.i162.i = getelementptr i8, ptr %115, i32 2304
  %120 = ptrtoint ptr %add.ptr.i.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr.i.i.i162.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i.i) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req.i.i) #9
  %122 = call ptr @memset(ptr %5, i32 0, i32 56)
  %qp1.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %121, i32 0, i32 30
  %123 = ptrtoint ptr %qp1.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %qp1.i.i, align 8
  %qp_num.i.i = getelementptr inbounds %struct.ib_qp, ptr %124, i32 0, i32 19
  %125 = ptrtoint ptr %qp_num.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %qp_num.i.i, align 4
  %127 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %data.i.i, align 8
  %128 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 65524, ptr %mtu.i.i, align 4
  %129 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %pathrec, ptr %req.i.i, align 8
  %130 = ptrtoint ptr %alternate_path.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %alternate_path.i.i, align 4
  %conv.i163.i = zext i32 %and to i64
  %or.i164.i = or i64 %conv.i163.i, 1152921504606846976
  %131 = ptrtoint ptr %service_id.i.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %or.i164.i, ptr %service_id.i.i, align 8
  %qp_num3.i.i = getelementptr inbounds %struct.ib_qp, ptr %119, i32 0, i32 19
  %132 = ptrtoint ptr %qp_num3.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %qp_num3.i.i, align 4
  %134 = ptrtoint ptr %qp_num4.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %qp_num4.i.i, align 8
  %qp_type.i165.i = getelementptr inbounds %struct.ib_qp, ptr %119, i32 0, i32 22
  %135 = ptrtoint ptr %qp_type.i165.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %qp_type.i165.i, align 4
  %137 = ptrtoint ptr %qp_type5.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %qp_type5.i.i, align 4
  %138 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %data.i.i, ptr %private_data.i.i, align 4
  %139 = ptrtoint ptr %private_data_len.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 8, ptr %private_data_len.i.i, align 8
  %140 = ptrtoint ptr %responder_resources.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 4, ptr %responder_resources.i.i, align 1
  %141 = ptrtoint ptr %remote_cm_response_timeout.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 20, ptr %remote_cm_response_timeout.i.i, align 1
  %142 = ptrtoint ptr %local_cm_response_timeout.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 20, ptr %local_cm_response_timeout.i.i, align 1
  %143 = ptrtoint ptr %max_cm_retries.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 15, ptr %max_cm_retries.i.i, align 8
  %cm.i.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %121, i32 0, i32 55
  %144 = ptrtoint ptr %cm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cm.i.i.i, align 8
  %tobool.i.i.i = icmp ne ptr %145, null
  %conv7.i.i = zext i1 %tobool.i.i.i to i8
  %146 = ptrtoint ptr %srq.i166.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv7.i.i, ptr %srq.i166.i, align 1
  %call8.i167.i = call i32 @ib_send_cm_req(ptr noundef %117, ptr noundef nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i167.i)
  %tobool70.not.i = icmp eq i32 %call8.i167.i, 0
  br i1 %tobool70.not.i, label %do.body88.i, label %do.body72.i

do.body72.i:                                      ; preds = %if.end65.i
  %call73.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_tx_init._rs.150, ptr noundef nonnull @__func__.ipoib_cm_tx_init) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %do.body72.i.err_modify_send.i_crit_edge, label %do.end78.i

do.body72.i.err_modify_send.i_crit_edge:          ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_modify_send.i

do.end78.i:                                       ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev80.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %23, i32 0, i32 1
  %147 = ptrtoint ptr %dev80.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev80.i, align 4
  %call83.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %148, i32 noundef %call8.i167.i) #12
  br label %err_modify_send.i

do.body88.i:                                      ; preds = %if.end65.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %149 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp.i77 = icmp sgt i32 %149, 0
  br i1 %cmp.i77, label %do.end92.i, label %do.body88.i.ipoib_cm_tx_init.exit_crit_edge

do.body88.i.ipoib_cm_tx_init.exit_crit_edge:      ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_tx_init.exit

do.end92.i:                                       ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev94.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %23, i32 0, i32 1
  %150 = ptrtoint ptr %dev94.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev94.i, align 4
  %152 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %qp.i, align 4
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %153, i32 0, i32 19
  %154 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %qp_num.i, align 4
  %call99.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %151, i32 noundef %155, ptr noundef nonnull %pathrec, i32 noundef %and) #12
  br label %ipoib_cm_tx_init.exit

err_modify_send.i:                                ; preds = %do.end78.i, %do.body72.i.err_modify_send.i_crit_edge, %do.end56.i, %do.body50.i.err_modify_send.i_crit_edge
  %ret.0.i = phi i32 [ %call2.i.i, %do.end56.i ], [ %call2.i.i, %do.body50.i.err_modify_send.i_crit_edge ], [ %call8.i167.i, %do.end78.i ], [ %call8.i167.i, %do.body72.i.err_modify_send.i_crit_edge ]
  %156 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %add.ptr12, align 4
  call void @ib_destroy_cm_id(ptr noundef %157) #9
  br label %err_id.i

err_id.i:                                         ; preds = %err_modify_send.i, %do.end34.i, %if.then25.i.err_id.i_crit_edge
  %ret.1.i = phi i32 [ %92, %do.end34.i ], [ %92, %if.then25.i.err_id.i_crit_edge ], [ %ret.0.i, %err_modify_send.i ]
  %158 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %add.ptr12, align 4
  %159 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %qp.i, align 4
  %call.i.i78 = call i32 @ib_destroy_qp_user(ptr noundef %160, ptr noundef null) #9
  br label %err_qp.i

err_qp.i:                                         ; preds = %err_id.i, %do.end.i, %if.then9.i.err_qp.i_crit_edge
  %ret.2.i = phi i32 [ %86, %do.end.i ], [ %86, %if.then9.i.err_qp.i_crit_edge ], [ %ret.1.i, %err_id.i ]
  %161 = ptrtoint ptr %qp.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %qp.i, align 4
  %162 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %tx_ring.i, align 4
  call void @vfree(ptr noundef %163) #9
  br label %ipoib_cm_tx_init.exit

ipoib_cm_tx_init.exit:                            ; preds = %err_qp.i, %do.end92.i, %do.body88.i.ipoib_cm_tx_init.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ 0, %do.end92.i ], [ 0, %do.body88.i.ipoib_cm_tx_init.exit_crit_edge ], [ %ret.2.i, %err_qp.i ], [ -12, %if.then.i ]
  call fastcc void @local_bh_disable() #9
  call void @netif_tx_lock(ptr noundef %1) #9
  %call40 = call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool45.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool45.not, label %ipoib_cm_tx_init.exit.if.end53_crit_edge, label %ipoib_cm_tx_init.exit.free_neigh_crit_edge

ipoib_cm_tx_init.exit.free_neigh_crit_edge:       ; preds = %ipoib_cm_tx_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_neigh

ipoib_cm_tx_init.exit.if.end53_crit_edge:         ; preds = %ipoib_cm_tx_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

free_neigh:                                       ; preds = %ipoib_cm_tx_init.exit.free_neigh_crit_edge, %do.end22
  %flags.1 = phi i32 [ %call40, %ipoib_cm_tx_init.exit.free_neigh_crit_edge ], [ %flags.084, %do.end22 ]
  %164 = ptrtoint ptr %neigh13 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %neigh13, align 4
  %tobool48.not = icmp eq ptr %165, null
  br i1 %tobool48.not, label %free_neigh.if.end51_crit_edge, label %if.then49

free_neigh.if.end51_crit_edge:                    ; preds = %free_neigh
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then49:                                        ; preds = %free_neigh
  call void @__sanitizer_cov_trace_pc() #11
  %cm50 = getelementptr inbounds %struct.ipoib_neigh, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %cm50 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %cm50, align 4
  call void @ipoib_neigh_free(ptr noundef nonnull %165) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %free_neigh.if.end51_crit_edge
  %call.i.i79 = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #9
  br i1 %call.i.i79, label %if.end.i.i82, label %if.end51.list_del.exit_crit_edge

if.end51.list_del.exit_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i82:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %167 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %prev.i3.i, align 4
  %169 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %6, align 4
  %prev1.i.i.i81 = getelementptr inbounds %struct.list_head, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %prev1.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %168, ptr %prev1.i.i.i81, align 4
  %172 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %170, ptr %168, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i82, %if.end51.list_del.exit_crit_edge
  %173 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %174 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i3.i, align 4
  call void @kfree(ptr noundef %add.ptr12) #9
  br label %if.end53

if.end53:                                         ; preds = %list_del.exit, %ipoib_cm_tx_init.exit.if.end53_crit_edge
  %flags.2 = phi i32 [ %flags.1, %list_del.exit ], [ %call40, %ipoib_cm_tx_init.exit.if.end53_crit_edge ]
  %175 = ptrtoint ptr %start_list to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile ptr, ptr %start_list, align 4
  %cmp.i.not = icmp eq ptr %176, %start_list
  br i1 %cmp.i.not, label %if.end53.while.end_crit_edge, label %if.end53.while.body_crit_edge

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end53.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call4, %entry.while.end_crit_edge ], [ %flags.2, %if.end53.while.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %flags.0.lcssa) #9
  call void @netif_tx_unlock(ptr noundef %1) #9
  call fastcc void @local_bh_enable() #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %pathrec) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_cm_tx_reap(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -6368
  %dev1 = getelementptr i8, ptr %work, i32 -6324
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call fastcc void @local_bh_disable() #9
  tail call void @netif_tx_lock(ptr noundef %1) #9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %reap_list = getelementptr i8, ptr %work, i32 296
  %2 = ptrtoint ptr %reap_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %reap_list, align 4
  %cmp.i.not42 = icmp eq ptr %3, %reap_list
  br i1 %cmp.i.not42, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %ipoib_cm_tx_destroy.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %87, %ipoib_cm_tx_destroy.exit.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %flags.043 = phi i32 [ %call23, %ipoib_cm_tx_destroy.exit.while.body_crit_edge ], [ %call4, %entry.while.body_crit_edge ]
  %add.ptr12 = getelementptr i8, ptr %4, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %4, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %flags.043) #9
  tail call void @netif_tx_unlock(ptr noundef %1) #9
  tail call fastcc void @local_bh_enable() #9
  %dev.i = getelementptr i8, ptr %4, i32 8
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 2304
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %17 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i40 = icmp sgt i32 %17, 0
  br i1 %cmp.i40, label %do.end.i, label %list_del_init.exit.do.end6.i_crit_edge

list_del_init.exit.do.end6.i_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6.i

do.end.i:                                         ; preds = %list_del_init.exit
  %dev2.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2.i, align 4
  %qp.i = getelementptr i8, ptr %4, i32 -4
  %20 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qp.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qp_num.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %23, %cond.true.i ], [ 0, %do.end.i.cond.end.i_crit_edge ]
  %tx_head.i = getelementptr i8, ptr %4, i32 20
  %24 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_head.i, align 4
  %tx_tail.i = getelementptr i8, ptr %4, i32 24
  %26 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_tail.i, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef %19, i32 noundef %cond.i, i32 noundef %25, i32 noundef %27) #12
  br label %do.end6.i

do.end6.i:                                        ; preds = %cond.end.i, %list_del_init.exit.do.end6.i_crit_edge
  %28 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr12, align 4
  %tobool7.not.i = icmp eq ptr %29, null
  br i1 %tobool7.not.i, label %do.end6.i.if.end10.i_crit_edge, label %if.then8.i

do.end6.i.if.end10.i_crit_edge:                   ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then8.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ib_destroy_cm_id(ptr noundef nonnull %29) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %do.end6.i.if.end10.i_crit_edge
  %tx_ring.i = getelementptr i8, ptr %4, i32 16
  %30 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_ring.i, align 4
  %tobool11.not.i = icmp eq ptr %31, null
  br i1 %tobool11.not.i, label %if.end10.i.timeout.i_crit_edge, label %if.then12.i

if.end10.i.timeout.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %timeout.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %tx_tail13.i = getelementptr i8, ptr %4, i32 24
  %tx_head14.i = getelementptr i8, ptr %4, i32 20
  %33 = ptrtoint ptr %tx_tail13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_tail13.i, align 4
  %35 = ptrtoint ptr %tx_head14.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_head14.i, align 4
  %sub109.i = sub i32 %34, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub109.i)
  %cmp15110.i = icmp slt i32 %sub109.i, 0
  br i1 %cmp15110.i, label %while.body.lr.ph.i, label %if.then12.i.timeout.i_crit_edge

if.then12.i.timeout.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %timeout.i

while.body.lr.ph.i:                               ; preds = %if.then12.i
  %add.i = add i32 %32, 500
  br label %while.body.i

while.body.i:                                     ; preds = %if.end37.i.while.body.i_crit_edge, %while.body.lr.ph.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub16.i = sub i32 %add.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16.i)
  %cmp17.i = icmp slt i32 %sub16.i, 0
  br i1 %cmp17.i, label %do.body19.i, label %if.end37.i

do.body19.i:                                      ; preds = %while.body.i
  %call20.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_tx_destroy._rs, ptr noundef nonnull @.str.188) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %do.body19.i.timeout.i_crit_edge, label %do.end25.i

do.body19.i.timeout.i_crit_edge:                  ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %timeout.i

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev27.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 1
  %38 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev27.i, align 4
  %40 = ptrtoint ptr %tx_head14.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_head14.i, align 4
  %42 = ptrtoint ptr %tx_tail13.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_tail13.i, align 4
  %sub32.i = sub i32 %41, %43
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %39, i32 noundef %sub32.i) #12
  br label %timeout.i

if.end37.i:                                       ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %44 = ptrtoint ptr %tx_tail13.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_tail13.i, align 4
  %46 = ptrtoint ptr %tx_head14.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_head14.i, align 4
  %sub.i = sub i32 %45, %47
  %cmp15.i = icmp slt i32 %sub.i, 0
  br i1 %cmp15.i, label %if.end37.i.while.body.i_crit_edge, label %if.end37.i.timeout.i_crit_edge

if.end37.i.timeout.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %timeout.i

if.end37.i.while.body.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

timeout.i:                                        ; preds = %if.end37.i.timeout.i_crit_edge, %do.end25.i, %do.body19.i.timeout.i_crit_edge, %if.then12.i.timeout.i_crit_edge, %if.end10.i.timeout.i_crit_edge
  %tx_tail40.i = getelementptr i8, ptr %4, i32 24
  %tx_head41.i = getelementptr i8, ptr %4, i32 20
  %48 = ptrtoint ptr %tx_tail40.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_tail40.i, align 4
  %50 = ptrtoint ptr %tx_head41.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_head41.i, align 4
  %sub42111.i = sub i32 %49, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub42111.i)
  %cmp43112.i = icmp slt i32 %sub42111.i, 0
  br i1 %cmp43112.i, label %while.body44.lr.ph.i, label %timeout.i.while.end65.i_crit_edge

timeout.i.while.end65.i_crit_edge:                ; preds = %timeout.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end65.i

while.body44.lr.ph.i:                             ; preds = %timeout.i
  %global_tx_tail.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 42
  %global_tx_head.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 41
  %flags.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 5
  br label %while.body44.i

while.body44.i:                                   ; preds = %if.end63.i.while.body44.i_crit_edge, %while.body44.lr.ph.i
  %52 = phi i32 [ %49, %while.body44.lr.ph.i ], [ %79, %if.end63.i.while.body44.i_crit_edge ]
  %53 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_ring.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %55 = load i32, ptr @ipoib_sendq_size, align 4
  %sub47.i = add i32 %55, -1
  %and.i = and i32 %sub47.i, %52
  %arrayidx.i = getelementptr %struct.ipoib_tx_buf, ptr %54, i32 %and.i
  tail call void @ipoib_dma_unmap_tx(ptr noundef %16, ptr noundef %arrayidx.i) #9
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %57, i32 noundef 1) #9
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @local_bh_disable() #9
  tail call void @netif_tx_lock(ptr noundef %59) #9
  %60 = ptrtoint ptr %tx_tail40.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_tail40.i, align 4
  %inc.i = add i32 %61, 1
  store i32 %inc.i, ptr %tx_tail40.i, align 4
  %62 = ptrtoint ptr %global_tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %global_tx_tail.i, align 4
  %inc50.i = add i32 %63, 1
  store i32 %inc50.i, ptr %global_tx_tail.i, align 4
  %64 = ptrtoint ptr %global_tx_head.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %global_tx_head.i, align 8
  %sub52.i = sub i32 %65, %inc50.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %66 = load i32, ptr @ipoib_sendq_size, align 4
  %shr.i = ashr i32 %66, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub52.i, i32 %shr.i)
  %cmp53.not.i = icmp ugt i32 %sub52.i, %shr.i
  br i1 %cmp53.not.i, label %while.body44.i.if.end63.i_crit_edge, label %land.lhs.true.i, !prof !385

while.body44.i.if.end63.i_crit_edge:              ; preds = %while.body44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

land.lhs.true.i:                                  ; preds = %while.body44.i
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 103
  %69 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %70, i32 0, i32 13
  %71 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %land.lhs.true.i.if.end63.i_crit_edge, label %land.lhs.true58.i

land.lhs.true.i.if.end63.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

land.lhs.true58.i:                                ; preds = %land.lhs.true.i
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flags.i, align 4
  %75 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool60.not.i = icmp eq i32 %75, 0
  br i1 %tobool60.not.i, label %land.lhs.true58.i.if.end63.i_crit_edge, label %if.then61.i

land.lhs.true58.i.if.end63.i_crit_edge:           ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

if.then61.i:                                      ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_tx_wake_queue(ptr noundef %70) #9
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %land.lhs.true58.i.if.end63.i_crit_edge, %land.lhs.true.i.if.end63.i_crit_edge, %while.body44.i.if.end63.i_crit_edge
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 4
  tail call void @netif_tx_unlock(ptr noundef %77) #9
  tail call fastcc void @local_bh_enable() #9
  %78 = ptrtoint ptr %tx_tail40.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tx_tail40.i, align 4
  %80 = ptrtoint ptr %tx_head41.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_head41.i, align 4
  %sub42.i = sub i32 %79, %81
  %cmp43.i = icmp slt i32 %sub42.i, 0
  br i1 %cmp43.i, label %if.end63.i.while.body44.i_crit_edge, label %if.end63.i.while.end65.i_crit_edge

if.end63.i.while.end65.i_crit_edge:               ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end65.i

if.end63.i.while.body44.i_crit_edge:              ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body44.i

while.end65.i:                                    ; preds = %if.end63.i.while.end65.i_crit_edge, %timeout.i.while.end65.i_crit_edge
  %qp66.i = getelementptr i8, ptr %4, i32 -4
  %82 = ptrtoint ptr %qp66.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %qp66.i, align 4
  %tobool67.not.i = icmp eq ptr %83, null
  br i1 %tobool67.not.i, label %while.end65.i.ipoib_cm_tx_destroy.exit_crit_edge, label %if.then68.i

while.end65.i.ipoib_cm_tx_destroy.exit_crit_edge: ; preds = %while.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_tx_destroy.exit

if.then68.i:                                      ; preds = %while.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i41 = tail call i32 @ib_destroy_qp_user(ptr noundef nonnull %83, ptr noundef null) #9
  br label %ipoib_cm_tx_destroy.exit

ipoib_cm_tx_destroy.exit:                         ; preds = %if.then68.i, %while.end65.i.ipoib_cm_tx_destroy.exit_crit_edge
  %84 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tx_ring.i, align 4
  tail call void @vfree(ptr noundef %85) #9
  tail call void @kfree(ptr noundef %add.ptr12) #9
  tail call fastcc void @local_bh_disable() #9
  tail call void @netif_tx_lock(ptr noundef %1) #9
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %86 = ptrtoint ptr %reap_list to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %reap_list, align 4
  %cmp.i.not = icmp eq ptr %87, %reap_list
  br i1 %cmp.i.not, label %ipoib_cm_tx_destroy.exit.while.end_crit_edge, label %ipoib_cm_tx_destroy.exit.while.body_crit_edge

ipoib_cm_tx_destroy.exit.while.body_crit_edge:    ; preds = %ipoib_cm_tx_destroy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

ipoib_cm_tx_destroy.exit.while.end_crit_edge:     ; preds = %ipoib_cm_tx_destroy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %ipoib_cm_tx_destroy.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call4, %entry.while.end_crit_edge ], [ %call23, %ipoib_cm_tx_destroy.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %flags.0.lcssa) #9
  tail call void @netif_tx_unlock(ptr noundef %1) #9
  tail call fastcc void @local_bh_enable() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_cm_skb_reap(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -6412
  %dev1 = getelementptr i8, ptr %work, i32 -6368
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %mcast_mtu = getelementptr i8, ptr %work, i32 -4988
  %2 = ptrtoint ptr %mcast_mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mcast_mtu, align 8
  tail call fastcc void @local_bh_disable() #9
  tail call void @netif_tx_lock(ptr noundef %1) #9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %skb_queue = getelementptr i8, ptr %work, i32 188
  %call752 = tail call ptr @skb_dequeue(ptr noundef %skb_queue) #9
  %tobool.not53 = icmp eq ptr %call752, null
  br i1 %tobool.not53, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %entry.while.body_crit_edge
  %call755 = phi ptr [ %call7, %if.end19.while.body_crit_edge ], [ %call752, %entry.while.body_crit_edge ]
  %flags.054 = phi i32 [ %call29, %if.end19.while.body_crit_edge ], [ %call4, %entry.while.body_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %flags.054) #9
  tail call void @netif_tx_unlock(ptr noundef %1) #9
  tail call fastcc void @local_bh_enable() #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call755, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.198)
  switch i16 %5, label %while.body.if.end19_crit_edge [
    i16 2048, label %if.then
    i16 -31011, label %if.then16
  ]

while.body.if.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call755, i32 0, i32 3
  %7 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %call755, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef nonnull %call755, i32 noundef 3, i32 noundef 4, i32 noundef %3, ptr noundef %opt.i) #9
  br label %if.end19

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %cb17 = getelementptr inbounds %struct.sk_buff, ptr %call755, i32 0, i32 3
  %8 = call ptr @memset(ptr %cb17, i32 0, i32 24)
  tail call void @icmp6_send(ptr noundef nonnull %call755, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %3, ptr noundef null, ptr noundef %cb17) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then, %while.body.if.end19_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call755, i32 noundef 1) #9
  tail call fastcc void @local_bh_disable() #9
  tail call void @netif_tx_lock(ptr noundef %1) #9
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #9
  %call7 = tail call ptr @skb_dequeue(ptr noundef %skb_queue) #9
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end19.while.end_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call4, %entry.while.end_crit_edge ], [ %call29, %if.end19.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %flags.0.lcssa) #9
  tail call void @netif_tx_unlock(ptr noundef %1) #9
  tail call fastcc void @local_bh_enable() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_cm_rx_reap(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %work, i32 -6412
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call fastcc void @ipoib_cm_free_rx_reap_list(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_cm_stale_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -6500
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr) #9
  %prev = getelementptr i8, ptr %work, i32 -212
  %passive_ids = getelementptr i8, ptr %work, i32 -216
  %0 = ptrtoint ptr %passive_ids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %passive_ids, align 4
  %cmp.i.not47 = icmp eq ptr %1, %passive_ids
  br i1 %cmp.i.not47, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rx_error_list = getelementptr i8, ptr %work, i32 -208
  %dev = getelementptr i8, ptr %work, i32 -6456
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %jiffies = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %jiffies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jiffies, align 4
  %add = add i32 %5, 51200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %13 = ptrtoint ptr %rx_error_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_error_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %rx_error_list, ptr noundef %14) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %prev1.i.i2.i, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %3, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rx_error_list, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %rx_error_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %3, ptr %rx_error_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %state = getelementptr i8, ptr %3, i32 16
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #9
  %qp = getelementptr i8, ptr %3, i32 -8
  %20 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qp, align 4
  %call8 = tail call i32 @ib_modify_qp(ptr noundef %21, ptr noundef nonnull @ipoib_cm_err_attr, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %list_move.exit.if.end20_crit_edge, label %do.body

list_move.exit.if.end20_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.body:                                          ; preds = %list_move.exit
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_stale_task._rs, ptr noundef nonnull @__func__.ipoib_cm_stale_task) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body.if.end20_crit_edge, label %do.end

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %23, i32 noundef %call8) #12
  br label %if.end20

if.end20:                                         ; preds = %do.end, %do.body.if.end20_crit_edge, %list_move.exit.if.end20_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr) #9
  %24 = ptrtoint ptr %passive_ids to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %passive_ids, align 4
  %cmp.i.not = icmp eq ptr %25, %passive_ids
  br i1 %cmp.i.not, label %if.end20.while.end_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end20.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %26 = ptrtoint ptr %passive_ids to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %passive_ids, align 4
  %cmp.i45.not = icmp eq ptr %27, %passive_ids
  br i1 %cmp.i45.not, label %while.end.if.end29_crit_edge, label %if.then26

while.end.if.end29_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then26:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %wq = getelementptr i8, ptr %work, i32 -5656
  %28 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %work, i32 noundef 76800) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %while.end.if.end29_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_cm_dev_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %cm = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %cm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %4 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev3, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %6) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %7 = ptrtoint ptr %cm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cm, align 8
  %call.i = tail call i32 @ib_destroy_srq_user(ptr noundef %8, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end7.ib_destroy_srq.exit_crit_edge, label %land.rhs.i

do.end7.ib_destroy_srq.exit_crit_edge:            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_destroy_srq.exit

land.rhs.i:                                       ; preds = %do.end7
  %.b38.i = load i1, ptr @ib_destroy_srq.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.ib_destroy_srq.exit_crit_edge, label %if.then.i, !prof !385

land.rhs.i.ib_destroy_srq.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_destroy_srq.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_destroy_srq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.195, i32 noundef 3688, i32 noundef 9, ptr noundef nonnull @.str.196) #9
  br label %ib_destroy_srq.exit

ib_destroy_srq.exit:                              ; preds = %if.then.i, %land.rhs.i.ib_destroy_srq.exit_crit_edge, %do.end7.ib_destroy_srq.exit_crit_edge
  %9 = ptrtoint ptr %cm to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cm, align 8
  %srq_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 1
  %10 = ptrtoint ptr %srq_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %srq_ring, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %ib_destroy_srq.exit.cleanup_crit_edge, label %if.end15

ib_destroy_srq.exit.cleanup_crit_edge:            ; preds = %ib_destroy_srq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %ib_destroy_srq.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ipoib_cm_free_rx_ring(ptr noundef %dev, ptr noundef nonnull %11)
  %12 = ptrtoint ptr %srq_ring to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %srq_ring, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %ib_destroy_srq.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipoib_cm_free_rx_ring(ptr nocapture noundef readonly %dev, ptr noundef %rx_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %0 = load i32, ptr @ipoib_recvq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp11 = icmp sgt i32 %0, 0
  br i1 %cmp11, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 4
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %2, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ipoib_cm_rx_buf, ptr %rx_ring, i32 %i.012
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  %mapping = getelementptr %struct.ipoib_cm_rx_buf, ptr %rx_ring, i32 %i.012, i32 1
  %5 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ca.i, align 8
  %7 = ptrtoint ptr %mapping to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %mapping, align 8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %conv.i.i = trunc i64 %8 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %conv.i.i, i32 noundef 4084, i32 noundef 2, i32 noundef 0) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.09.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then ]
  %11 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ca.i, align 8
  %add.i = add nuw nsw i32 %i.09.i, 1
  %arrayidx2.i = getelementptr i64, ptr %mapping, i32 %add.i
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx2.i, align 8
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 8
  %conv.i7.i = trunc i64 %14 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %conv.i7.i, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #9
  %exitcond.not.i = icmp eq i32 %add.i, 15
  br i1 %exitcond.not.i, label %ipoib_cm_dma_unmap_rx.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ipoib_cm_dma_unmap_rx.exit:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %18, i32 noundef 1) #9
  br label %for.inc

for.inc:                                          ; preds = %ipoib_cm_dma_unmap_rx.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %19 = load i32, ptr @ipoib_recvq_size, align 4
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @vfree(ptr noundef %rx_ring) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_send_cm_drep(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_cm_rx_event_handler(ptr nocapture noundef readonly %event, ptr noundef %ctx) #0 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ipoib_cm_rx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %event1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %4 = ptrtoint ptr %event1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp.not = icmp eq i32 %5, 16
  br i1 %cmp.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %list = getelementptr inbounds %struct.ipoib_cm_rx, ptr %ctx, i32 0, i32 3
  %rx_flush_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 55, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body2.__list_del_entry.exit.i_crit_edge

do.body2.__list_del_entry.exit.i_crit_edge:       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ipoib_cm_rx, ptr %ctx, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %do.body2.__list_del_entry.exit.i_crit_edge
  %12 = ptrtoint ptr %rx_flush_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_flush_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %rx_flush_list, ptr noundef %13) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev1.i.i2.i, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ipoib_cm_rx, ptr %ctx, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rx_flush_list, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %rx_flush_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list, ptr %rx_flush_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %state = getelementptr inbounds %struct.ipoib_cm_rx, ptr %ctx, i32 0, i32 6
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %state, align 4
  %19 = ptrtoint ptr %rx_flush_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %rx_flush_list, align 4
  %cmp.i.not.i = icmp eq ptr %20, %rx_flush_list
  br i1 %cmp.i.not.i, label %list_move.exit.ipoib_cm_start_rx_drain.exit_crit_edge, label %lor.lhs.false.i

list_move.exit.ipoib_cm_start_rx_drain.exit_crit_edge: ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_start_rx_drain.exit

lor.lhs.false.i:                                  ; preds = %list_move.exit
  %rx_drain_list.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 55, i32 6
  %21 = ptrtoint ptr %rx_drain_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %rx_drain_list.i, align 4
  %cmp.i28.not.i = icmp eq ptr %22, %rx_drain_list.i
  br i1 %cmp.i28.not.i, label %if.end.i, label %lor.lhs.false.i.ipoib_cm_start_rx_drain.exit_crit_edge

lor.lhs.false.i.ipoib_cm_start_rx_drain.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_start_rx_drain.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  store i64 4294967295, ptr getelementptr inbounds (%struct.ib_send_wr, ptr @ipoib_cm_rx_drain_wr, i32 0, i32 1), align 8
  %qp.i = getelementptr i8, ptr %20, i32 -8
  %23 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #9
  %25 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !387
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %24, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %27, i32 0, i32 1, i32 6
  %28 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i16 = call i32 %29(ptr noundef %24, ptr noundef nonnull @ipoib_cm_rx_drain_wr, ptr noundef nonnull %dummy.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16)
  %tobool7.not.i = icmp eq i32 %call.i.i16, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end18.i_crit_edge, label %do.body.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

do.body.i:                                        ; preds = %if.end.i
  %call9.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_start_rx_drain._rs, ptr noundef nonnull @__func__.ipoib_cm_start_rx_drain) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %do.body.i.if.end18.i_crit_edge, label %do.end.i

do.body.i.if.end18.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %31) #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %do.body.i.if.end18.i_crit_edge, %if.end.i.if.end18.i_crit_edge
  %32 = ptrtoint ptr %rx_flush_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %rx_flush_list, align 4
  %cmp.i.not.i.i = icmp eq ptr %33, %rx_flush_list
  br i1 %cmp.i.not.i.i, label %if.end18.i.ipoib_cm_start_rx_drain.exit_crit_edge, label %if.then.i.i

if.end18.i.ipoib_cm_start_rx_drain.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipoib_cm_start_rx_drain.exit

if.then.i.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %rx_drain_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_drain_list.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 55, i32 5, i32 1
  %36 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i17 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %rx_drain_list.i, ptr %prev3.i.i.i17, align 4
  store ptr %33, ptr %rx_drain_list.i, align 4
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %35, ptr %37, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev6.i.i.i, align 4
  %41 = ptrtoint ptr %rx_flush_list to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %rx_flush_list, ptr %rx_flush_list, align 4
  store ptr %rx_flush_list, ptr %prev2.i.i.i, align 4
  br label %ipoib_cm_start_rx_drain.exit

ipoib_cm_start_rx_drain.exit:                     ; preds = %if.then.i.i, %if.end18.i.ipoib_cm_start_rx_drain.exit_crit_edge, %lor.lhs.false.i.ipoib_cm_start_rx_drain.exit_crit_edge, %list_move.exit.ipoib_cm_start_rx_drain.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %ipoib_cm_start_rx_drain.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_qp_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_cm_init_qp_attr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_send_cm_rej(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_send_cm_rep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %.str.138..str.137 = select i1 %tobool.not, ptr @.str.138, ptr @.str.137
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull %.str.138..str.137) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_store(ptr noundef %d, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %d, i32 -1104
  %call = tail call i32 @rtnl_trylock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !375) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_state = getelementptr i8, ptr %d, i32 -44
  %6 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp.not = icmp eq i8 %bf.load, 1
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtnl_unlock() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @ipoib_set_mode(ptr noundef %add.ptr, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call4)
  %cond = icmp eq i32 %call4, -16
  br i1 %cond, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtnl_unlock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cond15 = icmp eq i32 %call4, 0
  %spec.select = select i1 %cond15, i32 %count, i32 %call4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end3.cleanup_crit_edge, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then2 ], [ -513, %if.then ], [ %count, %if.end3.cleanup_crit_edge ], [ %spec.select, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_set_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__path_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_cm_tx_handler(ptr noundef %cm_id, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  %skqueue.i = alloca %struct.sk_buff_head, align 4
  %qp_attr.i = alloca %struct.ib_qp_attr, align 8
  %qp_attr_mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.ib_cm_id, ptr %cm_id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev = getelementptr inbounds %struct.ipoib_cm_tx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 4
  %dev2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %8 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %9, label %entry.sw.epilog_crit_edge [
    i32 7, label %do.body
    i32 3, label %do.body11
    i32 0, label %entry.do.body30_crit_edge
    i32 11, label %entry.do.body30_crit_edge91
    i32 9, label %entry.do.body30_crit_edge92
  ]

entry.do.body30_crit_edge92:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body30

entry.do.body30_crit_edge91:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body30

entry.do.body30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body30

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %11 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %do.end, label %do.body.do.end8_crit_edge

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef %7) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %call9 = tail call i32 @ib_send_cm_drep(ptr noundef %cm_id, ptr noundef null, i8 noundef zeroext 0) #9
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %12 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12 = icmp sgt i32 %12, 0
  br i1 %cmp12, label %do.end16, label %do.body11.do.end24_crit_edge

do.body11.do.end24_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef %7) #12
  br label %do.end24

do.end24:                                         ; preds = %do.end16, %do.body11.do.end24_crit_edge
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context, align 4
  %dev.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 2304
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i.i, align 4
  %private_data.i = getelementptr inbounds %struct.ib_cm_event, ptr %event, i32 0, i32 2
  %19 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %skqueue.i) #9
  %21 = call ptr @memset(ptr %skqueue.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr.i) #9
  %22 = call ptr @memset(ptr %qp_attr.i, i32 255, i32 216)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qp_attr_mask.i) #9
  %23 = ptrtoint ptr %qp_attr_mask.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %qp_attr_mask.i, align 4, !annotation !387
  %mtu.i = getelementptr inbounds %struct.ipoib_cm_data, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtu.i, align 4
  %mtu1.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %14, i32 0, i32 9
  %26 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mtu1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp.i = icmp ult i32 %25, 5
  br i1 %cmp.i, label %do.body.i, label %if.end11.i

do.body.i:                                        ; preds = %do.end24
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_rep_handler._rs, ptr noundef nonnull @__func__.ipoib_cm_rep_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.then26_crit_edge, label %do.end.i

do.body.i.if.then26_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev6.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev6.i, align 4
  %29 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mtu1.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef %28, i32 noundef %30, i32 noundef 4) #12
  br label %if.then26

if.end11.i:                                       ; preds = %do.end24
  %31 = ptrtoint ptr %qp_attr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %qp_attr.i, align 8
  %call12.i = call i32 @ib_cm_init_qp_attr(ptr noundef %cm_id, ptr noundef nonnull %qp_attr.i, ptr noundef nonnull %qp_attr_mask.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end30.i, label %do.body15.i

do.body15.i:                                      ; preds = %if.end11.i
  %call16.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_rep_handler._rs.166, ptr noundef nonnull @__func__.ipoib_cm_rep_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %do.body15.i.if.then26_crit_edge, label %do.end21.i

do.body15.i.if.then26_crit_edge:                  ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

do.end21.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev23.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %18, i32 0, i32 1
  %32 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev23.i, align 4
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %33, i32 noundef %call12.i) #12
  br label %if.then26

if.end30.i:                                       ; preds = %if.end11.i
  %rq_psn.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i, i32 0, i32 5
  %34 = ptrtoint ptr %rq_psn.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %rq_psn.i, align 4
  %qp.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %14, i32 0, i32 1
  %35 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %qp.i, align 4
  %37 = ptrtoint ptr %qp_attr_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qp_attr_mask.i, align 4
  %call31.i = call i32 @ib_modify_qp(ptr noundef %36, ptr noundef nonnull %qp_attr.i, i32 noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end49.i, label %do.body34.i

do.body34.i:                                      ; preds = %if.end30.i
  %call35.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_rep_handler._rs.169, ptr noundef nonnull @__func__.ipoib_cm_rep_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %do.body34.i.if.then26_crit_edge, label %do.end40.i

do.body34.i.if.then26_crit_edge:                  ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

do.end40.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev42.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %18, i32 0, i32 1
  %39 = ptrtoint ptr %dev42.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev42.i, align 4
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %40, i32 noundef %call31.i) #12
  br label %if.then26

if.end49.i:                                       ; preds = %if.end30.i
  %41 = ptrtoint ptr %qp_attr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %qp_attr.i, align 8
  %call51.i = call i32 @ib_cm_init_qp_attr(ptr noundef %cm_id, ptr noundef nonnull %qp_attr.i, ptr noundef nonnull %qp_attr_mask.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end69.i, label %do.body54.i

do.body54.i:                                      ; preds = %if.end49.i
  %call55.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_rep_handler._rs.172, ptr noundef nonnull @__func__.ipoib_cm_rep_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %do.body54.i.if.then26_crit_edge, label %do.end60.i

do.body54.i.if.then26_crit_edge:                  ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

do.end60.i:                                       ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev62.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %18, i32 0, i32 1
  %42 = ptrtoint ptr %dev62.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev62.i, align 4
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %43, i32 noundef %call51.i) #12
  br label %if.then26

if.end69.i:                                       ; preds = %if.end49.i
  %44 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %qp.i, align 4
  %46 = ptrtoint ptr %qp_attr_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qp_attr_mask.i, align 4
  %call71.i = call i32 @ib_modify_qp(ptr noundef %45, ptr noundef nonnull %qp_attr.i, i32 noundef %47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end89.i, label %do.body74.i

do.body74.i:                                      ; preds = %if.end69.i
  %call75.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_rep_handler._rs.175, ptr noundef nonnull @__func__.ipoib_cm_rep_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %do.body74.i.if.then26_crit_edge, label %do.end80.i

do.body74.i.if.then26_crit_edge:                  ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

do.end80.i:                                       ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev82.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %18, i32 0, i32 1
  %48 = ptrtoint ptr %dev82.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev82.i, align 4
  %call85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %49, i32 noundef %call71.i) #12
  br label %if.then26

if.end89.i:                                       ; preds = %if.end69.i
  %lock.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %skqueue.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.192, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %50 = ptrtoint ptr %skqueue.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %skqueue.i, ptr %skqueue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon.79, ptr %skqueue.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %skqueue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %skqueue.i, i32 0, i32 1
  %52 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %qlen.i.i.i, align 4
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  call fastcc void @local_bh_disable() #9
  call void @netif_tx_lock(ptr noundef %54) #9
  call void @_raw_spin_lock_irq(ptr noundef %18) #9
  %flags.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %14, i32 0, i32 8
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #9
  %neigh.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %14, i32 0, i32 4
  %55 = ptrtoint ptr %neigh.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %neigh.i, align 4
  %tobool91.not.i = icmp eq ptr %56, null
  br i1 %tobool91.not.i, label %if.end89.i.if.end96.i_crit_edge, label %while.cond.preheader.i

if.end89.i.if.end96.i_crit_edge:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.i

while.cond.preheader.i:                           ; preds = %if.end89.i
  %queue203.i = getelementptr inbounds %struct.ipoib_neigh, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %queue203.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %queue203.i, align 4
  %cmp.i.i204.i = icmp eq ptr %58, %queue203.i
  %tobool.not.i201205.i = icmp eq ptr %58, null
  %tobool.not.i206.i = or i1 %cmp.i.i204.i, %tobool.not.i201205.i
  br i1 %tobool.not.i206.i, label %while.cond.preheader.i.if.end96.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end96.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %59 = phi ptr [ %77, %while.body.i.while.body.i_crit_edge ], [ %58, %while.cond.preheader.i.while.body.i_crit_edge ]
  %60 = phi ptr [ %75, %while.body.i.while.body.i_crit_edge ], [ %56, %while.cond.preheader.i.while.body.i_crit_edge ]
  %qlen.i.i190.i = getelementptr inbounds %struct.ipoib_neigh, ptr %60, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %qlen.i.i190.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qlen.i.i190.i, align 4
  %sub.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i190.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %59, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %59, i32 0, i32 1
  %65 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %59, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %66, ptr %prev17.i.i.i, align 4
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %64, ptr %66, align 8
  %69 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i.i, align 4
  store volatile ptr %skqueue.i, ptr %59, align 8
  store volatile ptr %70, ptr %prev9.i.i.i, align 4
  store volatile ptr %59, ptr %prev.i.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %59, ptr %70, align 4
  %72 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i.i = add i32 %73, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i, align 4
  %74 = ptrtoint ptr %neigh.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %neigh.i, align 4
  %queue.i = getelementptr inbounds %struct.ipoib_neigh, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %queue.i, align 4
  %cmp.i.i.i = icmp eq ptr %77, %queue.i
  %tobool.not.i201.i = icmp eq ptr %77, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i201.i
  br i1 %tobool.not.i.i, label %while.body.i.if.end96.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.if.end96.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.i

if.end96.i:                                       ; preds = %while.body.i.if.end96.i_crit_edge, %while.cond.preheader.i.if.end96.i_crit_edge, %if.end89.i.if.end96.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %18) #9
  %78 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i, align 4
  call void @netif_tx_unlock(ptr noundef %79) #9
  call fastcc void @local_bh_enable() #9
  %80 = ptrtoint ptr %skqueue.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skqueue.i, align 4
  %cmp.i.i192207.i = icmp eq ptr %81, %skqueue.i
  %tobool.not.i194202208.i = icmp eq ptr %81, null
  %tobool.not.i194209.i = or i1 %cmp.i.i192207.i, %tobool.not.i194202208.i
  br i1 %tobool.not.i194209.i, label %if.end96.i.while.end123.i_crit_edge, label %while.body102.lr.ph.i

if.end96.i.while.end123.i_crit_edge:              ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end123.i

while.body102.lr.ph.i:                            ; preds = %if.end96.i
  %dev115.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %18, i32 0, i32 1
  br label %while.body102.i

while.body102.i:                                  ; preds = %if.end122.i.while.body102.i_crit_edge, %while.body102.lr.ph.i
  %82 = phi ptr [ %81, %while.body102.lr.ph.i ], [ %98, %if.end122.i.while.body102.i_crit_edge ]
  %83 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i196.i = add i32 %84, -1
  store volatile i32 %sub.i.i196.i, ptr %qlen.i.i.i, align 4
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %82, align 8
  %prev9.i.i197.i = getelementptr inbounds %struct.anon.51, ptr %82, i32 0, i32 1
  %87 = ptrtoint ptr %prev9.i.i197.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev9.i.i197.i, align 4
  store ptr null, ptr %prev9.i.i197.i, align 4
  store ptr null, ptr %82, align 8
  %prev17.i.i198.i = getelementptr inbounds %struct.anon.51, ptr %86, i32 0, i32 1
  %89 = ptrtoint ptr %prev17.i.i198.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %88, ptr %prev17.i.i198.i, align 4
  %90 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %86, ptr %88, align 8
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 4
  %93 = getelementptr inbounds %struct.anon.51, ptr %82, i32 0, i32 2
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %92, ptr %93, align 8
  %call104.i = call i32 @dev_queue_xmit(ptr noundef nonnull %82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %tobool105.not.i = icmp eq i32 %call104.i, 0
  br i1 %tobool105.not.i, label %while.body102.i.if.end122.i_crit_edge, label %do.body107.i

while.body102.i.if.end122.i_crit_edge:            ; preds = %while.body102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.i

do.body107.i:                                     ; preds = %while.body102.i
  %call108.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_rep_handler._rs.178, ptr noundef nonnull @__func__.ipoib_cm_rep_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %do.body107.i.if.end122.i_crit_edge, label %do.end113.i

do.body107.i.if.end122.i_crit_edge:               ; preds = %do.body107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.i

do.end113.i:                                      ; preds = %do.body107.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %dev115.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev115.i, align 4
  %call118.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %96, ptr noundef nonnull @__func__.ipoib_cm_rep_handler, i32 noundef %call104.i) #12
  br label %if.end122.i

if.end122.i:                                      ; preds = %do.end113.i, %do.body107.i.if.end122.i_crit_edge, %while.body102.i.if.end122.i_crit_edge
  %97 = ptrtoint ptr %skqueue.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %skqueue.i, align 4
  %cmp.i.i192.i = icmp eq ptr %98, %skqueue.i
  %tobool.not.i194202.i = icmp eq ptr %98, null
  %tobool.not.i194.i = or i1 %cmp.i.i192.i, %tobool.not.i194202.i
  br i1 %tobool.not.i194.i, label %if.end122.i.while.end123.i_crit_edge, label %if.end122.i.while.body102.i_crit_edge

if.end122.i.while.body102.i_crit_edge:            ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body102.i

if.end122.i.while.end123.i_crit_edge:             ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end123.i

while.end123.i:                                   ; preds = %if.end122.i.while.end123.i_crit_edge, %if.end96.i.while.end123.i_crit_edge
  %call124.i = call i32 @ib_send_cm_rtu(ptr noundef %cm_id, ptr noundef null, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %tobool125.not.i = icmp eq i32 %call124.i, 0
  br i1 %tobool125.not.i, label %ipoib_cm_rep_handler.exit, label %do.body127.i

do.body127.i:                                     ; preds = %while.end123.i
  %call128.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_cm_rep_handler._rs.182, ptr noundef nonnull @__func__.ipoib_cm_rep_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i)
  %tobool129.not.i = icmp eq i32 %call128.i, 0
  br i1 %tobool129.not.i, label %do.body127.i.if.then26_crit_edge, label %do.end133.i

do.body127.i.if.then26_crit_edge:                 ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

do.end133.i:                                      ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev135.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %18, i32 0, i32 1
  %99 = ptrtoint ptr %dev135.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev135.i, align 4
  %call138.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %100, i32 noundef %call124.i) #12
  br label %if.then26

ipoib_cm_rep_handler.exit:                        ; preds = %while.end123.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qp_attr_mask.i) #9
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %skqueue.i) #9
  br label %sw.epilog

if.then26:                                        ; preds = %do.end133.i, %do.body127.i.if.then26_crit_edge, %do.end80.i, %do.body74.i.if.then26_crit_edge, %do.end60.i, %do.body54.i.if.then26_crit_edge, %do.end40.i, %do.body34.i.if.then26_crit_edge, %do.end21.i, %do.body15.i.if.then26_crit_edge, %do.end.i, %do.body.i.if.then26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qp_attr_mask.i) #9
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %skqueue.i) #9
  %call27 = call i32 @ib_send_cm_rej(ptr noundef %cm_id, i32 noundef 28, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0) #9
  br label %sw.epilog

do.body30:                                        ; preds = %entry.do.body30_crit_edge, %entry.do.body30_crit_edge91, %entry.do.body30_crit_edge92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %101 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp31 = icmp sgt i32 %101, 0
  br i1 %cmp31, label %do.end35, label %do.body30.do.end44_crit_edge

do.body30.do.end44_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

do.end35:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef %7, i32 noundef %9) #12
  br label %do.end44

do.end44:                                         ; preds = %do.end35, %do.body30.do.end44_crit_edge
  tail call fastcc void @local_bh_disable() #9
  tail call void @netif_tx_lock(ptr noundef %7) #9
  %call50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %neigh55 = getelementptr inbounds %struct.ipoib_cm_tx, ptr %1, i32 0, i32 4
  %102 = ptrtoint ptr %neigh55 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %neigh55, align 4
  %tobool56.not = icmp eq ptr %103, null
  br i1 %tobool56.not, label %do.end44.if.end59_crit_edge, label %if.then57

do.end44.if.end59_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then57:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  %cm = getelementptr inbounds %struct.ipoib_neigh, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %cm to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %cm, align 4
  tail call void @ipoib_neigh_free(ptr noundef nonnull %103) #9
  %105 = ptrtoint ptr %neigh55 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %neigh55, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %do.end44.if.end59_crit_edge
  %flags60 = getelementptr inbounds %struct.ipoib_cm_tx, ptr %1, i32 0, i32 8
  %call61 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end59.if.end67_crit_edge, label %if.then63

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then63:                                        ; preds = %if.end59
  %list = getelementptr inbounds %struct.ipoib_cm_tx, ptr %1, i32 0, i32 2
  %reap_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 55, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then63.__list_del_entry.exit.i_crit_edge

if.then63.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %1, i32 0, i32 2, i32 1
  %106 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i, align 4
  %108 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev1.i.i.i, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %107, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then63.__list_del_entry.exit.i_crit_edge
  %112 = ptrtoint ptr %reap_list to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reap_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %reap_list, ptr noundef %113) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %list, ptr %prev1.i.i2.i, align 4
  %115 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %113, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %1, i32 0, i32 2, i32 1
  %116 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %reap_list, ptr %prev3.i.i.i, align 4
  %117 = ptrtoint ptr %reap_list to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %list, ptr %reap_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %wq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 14
  %118 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wq, align 4
  %reap_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 55, i32 9
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %119, ptr noundef %reap_task) #9
  br label %if.end67

if.end67:                                         ; preds = %list_move.exit, %if.end59.if.end67_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call50) #9
  tail call void @netif_tx_unlock(ptr noundef %7) #9
  tail call fastcc void @local_bh_enable() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end67, %if.then26, %ipoib_cm_rep_handler.exit, %do.end8, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_send_cm_rtu(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_send_cm_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_srq_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_srq_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 202)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 202)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !174, !176, !178, !179, !180, !182, !184, !185, !186, !187, !188, !190, !191, !192, !193, !194, !196, !197, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !218, !219, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !242, !244, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !258, !260, !262, !263, !265, !267, !269, !270, !271, !272, !274, !275, !276, !277, !278, !280, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !347, !348, !350, !351, !352, !353, !355, !356, !357, !358, !360, !361, !362, !363, !365, !366, !368, !369, !370, !371, !373, !374}
!llvm.named.register.sp = !{!375}
!llvm.module.flags = !{!376, !377, !378, !379, !380, !381, !382, !383}
!llvm.ident = !{!384}

!0 = !{ptr @ipoib_max_conn_qp, !1, !"ipoib_max_conn_qp", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 46, i32 5}
!2 = !{ptr @__param_max_nonsrq_conn_qp, !3, !"__param_max_nonsrq_conn_qp", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 48, i32 1}
!4 = !{ptr @__UNIQUE_ID_max_nonsrq_conn_qptype528, !3, !"__UNIQUE_ID_max_nonsrq_conn_qptype528", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_max_nonsrq_conn_qp529, !6, !"__UNIQUE_ID_max_nonsrq_conn_qp529", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 49, i32 1}
!7 = !{ptr @__param_cm_data_debug_level, !8, !"__param_cm_data_debug_level", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 56, i32 1}
!9 = !{ptr @__UNIQUE_ID_cm_data_debug_leveltype530, !8, !"__UNIQUE_ID_cm_data_debug_leveltype530", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_cm_data_debug_level531, !11, !"__UNIQUE_ID_cm_data_debug_level531", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 57, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 573, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ipoib_cm_handle_rx_wc._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @ipoib_cm_handle_rx_wc._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 584, i32 4}
!20 = !{ptr @ipoib_cm_handle_rx_wc._rs, !19, !"_rs", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ipoib_cm_handle_rx_wc._entry.4, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @ipoib_cm_handle_rx_wc._entry_ptr.6, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 597, i32 3}
!26 = !{ptr @ipoib_cm_handle_rx_wc._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ipoib_cm_handle_rx_wc._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 654, i32 3}
!30 = !{ptr @ipoib_cm_handle_rx_wc._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ipoib_cm_handle_rx_wc._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 662, i32 2}
!34 = !{ptr @ipoib_cm_handle_rx_wc._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ipoib_cm_handle_rx_wc._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ipoib_cm_handle_rx_wc._rs.16, !37, !"_rs", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 682, i32 4}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ipoib_cm_handle_rx_wc._entry.17, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ipoib_cm_handle_rx_wc._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @ipoib_cm_handle_rx_wc._rs.20, !42, !"_rs", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 690, i32 4}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ipoib_cm_handle_rx_wc._entry.21, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ipoib_cm_handle_rx_wc._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @ipoib_cm_send._rs, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 716, i32 3}
!48 = !{ptr @__func__.ipoib_cm_send, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ipoib_cm_send._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @ipoib_cm_send._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @ipoib_cm_send._rs.25, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 725, i32 4}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ipoib_cm_send._entry.26, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ipoib_cm_send._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @ipoib_cm_send._rs.29, !58, !"_rs", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 733, i32 4}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ipoib_cm_send._entry.30, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ipoib_cm_send._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 740, i32 2}
!64 = !{ptr @ipoib_cm_send._entry.33, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ipoib_cm_send._entry_ptr.35, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 761, i32 3}
!68 = !{ptr @ipoib_cm_send._entry.36, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ipoib_cm_send._entry_ptr.38, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @ipoib_cm_send._rs.39, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 773, i32 4}
!72 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ipoib_cm_send._entry.40, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ipoib_cm_send._entry_ptr.42, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @ipoib_cm_send._rs.43, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 780, i32 3}
!77 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ipoib_cm_send._entry.44, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @ipoib_cm_send._entry_ptr.46, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 802, i32 2}
!82 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ipoib_cm_handle_tx_wc._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @ipoib_cm_handle_tx_wc._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @ipoib_cm_handle_tx_wc._rs, !86, !"_rs", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 806, i32 3}
!87 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ipoib_cm_handle_tx_wc._entry.49, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @ipoib_cm_handle_tx_wc._entry_ptr.51, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 841, i32 4}
!92 = !{ptr @ipoib_cm_handle_tx_wc._entry.52, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ipoib_cm_handle_tx_wc._entry_ptr.54, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @ipoib_cm_handle_tx_wc._rs.55, !95, !"_rs", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 845, i32 4}
!96 = !{ptr @.str.57, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ipoib_cm_handle_tx_wc._entry.56, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @ipoib_cm_handle_tx_wc._entry_ptr.58, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.59, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 882, i32 3}
!101 = !{ptr @.str.60, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ipoib_cm_dev_open._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @ipoib_cm_dev_open._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 890, i32 3}
!106 = !{ptr @ipoib_cm_dev_open._entry.61, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ipoib_cm_dev_open._entry_ptr.63, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @ipoib_cm_dev_stop._rs, !109, !"_rs", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 948, i32 4}
!110 = !{ptr @__func__.ipoib_cm_dev_stop, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ipoib_cm_dev_stop._entry, !109, !"_entry", i1 false, i1 false}
!113 = !{ptr @ipoib_cm_dev_stop._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @ipoib_cm_dev_stop._rs.65, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 959, i32 4}
!116 = !{ptr @.str.67, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ipoib_cm_dev_stop._entry.66, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @ipoib_cm_dev_stop._entry_ptr.68, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.69, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1328, i32 3}
!121 = !{ptr @.str.70, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ipoib_cm_destroy_tx._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @ipoib_cm_destroy_tx._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @ipoib_cm_dev_init.__key, !125, !"__key", i1 false, i1 false}
!125 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1595, i32 2}
!126 = !{ptr @.str.71, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ipoib_cm_dev_init.__key.72, !128, !"__key", i1 false, i1 false}
!128 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1596, i32 2}
!129 = !{ptr @.str.73, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ipoib_cm_dev_init.__key.74, !131, !"__key", i1 false, i1 false}
!131 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1597, i32 2}
!132 = !{ptr @.str.75, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ipoib_cm_dev_init.__key.76, !134, !"__key", i1 false, i1 false}
!134 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1598, i32 2}
!135 = !{ptr @.str.77, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ipoib_cm_dev_init.__key.78, !137, !"__key", i1 false, i1 false}
!137 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1599, i32 2}
!138 = !{ptr @.str.79, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ipoib_cm_dev_init.__key.80, !137, !"__key", i1 false, i1 false}
!140 = !{ptr @.str.81, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.82, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1603, i32 2}
!143 = !{ptr @.str.83, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @ipoib_cm_dev_init._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @ipoib_cm_dev_init._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.85, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1610, i32 3}
!148 = !{ptr @ipoib_cm_dev_init._entry.84, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ipoib_cm_dev_init._entry_ptr.86, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @ipoib_cm_dev_init._rs, !151, !"_rs", i1 false, i1 false}
!151 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1625, i32 5}
!152 = !{ptr @.str.88, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @ipoib_cm_dev_init._entry.87, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @ipoib_cm_dev_init._entry_ptr.89, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @ipoib_cm_dev_init._rs.90, !156, !"_rs", i1 false, i1 false}
!156 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1632, i32 5}
!157 = !{ptr @ipoib_cm_dev_init._entry.91, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @ipoib_cm_dev_init._entry_ptr.92, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.93, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1652, i32 2}
!161 = !{ptr @.str.94, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @ipoib_cm_dev_cleanup._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @ipoib_cm_dev_cleanup._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @data_debug_level, !165, !"data_debug_level", i1 false, i1 false}
!165 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 54, i32 12}
!166 = !{ptr @__param_str_max_nonsrq_conn_qp, !3, !"__param_str_max_nonsrq_conn_qp", i1 false, i1 false}
!167 = !{ptr @__param_str_cm_data_debug_level, !8, !"__param_str_cm_data_debug_level", i1 false, i1 false}
!168 = !{ptr @ipoib_cm_start_rx_drain._rs, !169, !"_rs", i1 false, i1 false}
!169 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 228, i32 3}
!170 = !{ptr @__func__.ipoib_cm_start_rx_drain, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.95, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @ipoib_cm_start_rx_drain._entry, !169, !"_entry", i1 false, i1 false}
!173 = !{ptr @ipoib_cm_start_rx_drain._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @ipoib_cm_rx_drain_wr, !175, !"ipoib_cm_rx_drain_wr", i1 false, i1 false}
!175 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 76, i32 26}
!176 = distinct !{null, !177, !"__already_done", i1 false, i1 false}
!177 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!178 = !{ptr @.str.96, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.97, !177, !"<string literal>", i1 false, i1 false}
!180 = distinct !{null, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!182 = !{ptr @ipoib_cm_post_receive_srq._rs, !183, !"_rs", i1 false, i1 false}
!183 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 106, i32 3}
!184 = !{ptr @__func__.ipoib_cm_post_receive_srq, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @ipoib_cm_post_receive_srq._entry, !183, !"_entry", i1 false, i1 false}
!187 = !{ptr @ipoib_cm_post_receive_srq._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @ipoib_cm_post_receive_nonsrq._rs, !189, !"_rs", i1 false, i1 false}
!189 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 131, i32 3}
!190 = !{ptr @__func__.ipoib_cm_post_receive_nonsrq, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.100, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @ipoib_cm_post_receive_nonsrq._entry, !189, !"_entry", i1 false, i1 false}
!193 = !{ptr @ipoib_cm_post_receive_nonsrq._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @ipoib_cm_rx_handler._rs, !195, !"_rs", i1 false, i1 false}
!195 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 520, i32 4}
!196 = !{ptr @__func__.ipoib_cm_rx_handler, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.101, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @ipoib_cm_rx_handler._entry, !195, !"_entry", i1 false, i1 false}
!199 = !{ptr @ipoib_cm_rx_handler._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.102, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 451, i32 2}
!202 = !{ptr @.str.103, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @ipoib_cm_req_handler._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @ipoib_cm_req_handler._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @ipoib_cm_req_handler._rs, !206, !"_rs", i1 false, i1 false}
!206 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 491, i32 3}
!207 = !{ptr @.str.105, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @ipoib_cm_req_handler._entry.104, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @ipoib_cm_req_handler._entry_ptr.106, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @ipoib_cm_req_handler._rs.107, !211, !"_rs", i1 false, i1 false}
!211 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 493, i32 4}
!212 = !{ptr @ipoib_cm_req_handler._entry.108, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @ipoib_cm_req_handler._entry_ptr.109, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../include/rdma/ib_verbs.h", i32 3722, i32 44}
!216 = !{ptr @ipoib_cm_modify_rx_qp._rs, !217, !"_rs", i1 false, i1 false}
!217 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 284, i32 3}
!218 = !{ptr @__func__.ipoib_cm_modify_rx_qp, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.111, !217, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @ipoib_cm_modify_rx_qp._entry, !217, !"_entry", i1 false, i1 false}
!221 = !{ptr @ipoib_cm_modify_rx_qp._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @ipoib_cm_modify_rx_qp._rs.112, !223, !"_rs", i1 false, i1 false}
!223 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 289, i32 3}
!224 = !{ptr @.str.114, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @ipoib_cm_modify_rx_qp._entry.113, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @ipoib_cm_modify_rx_qp._entry_ptr.115, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @ipoib_cm_modify_rx_qp._rs.116, !228, !"_rs", i1 false, i1 false}
!228 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 295, i32 3}
!229 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @ipoib_cm_modify_rx_qp._entry.117, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @ipoib_cm_modify_rx_qp._entry_ptr.119, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @ipoib_cm_modify_rx_qp._rs.120, !233, !"_rs", i1 false, i1 false}
!233 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 301, i32 3}
!234 = !{ptr @.str.122, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @ipoib_cm_modify_rx_qp._entry.121, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @ipoib_cm_modify_rx_qp._entry_ptr.123, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @ipoib_cm_modify_rx_qp._rs.124, !238, !"_rs", i1 false, i1 false}
!238 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 316, i32 3}
!239 = !{ptr @.str.126, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @ipoib_cm_modify_rx_qp._entry.125, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @ipoib_cm_modify_rx_qp._entry_ptr.127, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @ipoib_cm_modify_rx_qp._rs.128, !243, !"_rs", i1 false, i1 false}
!243 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 321, i32 3}
!244 = !{ptr @.str.130, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @ipoib_cm_modify_rx_qp._entry.129, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @ipoib_cm_modify_rx_qp._entry_ptr.131, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @ipoib_cm_nonsrq_init_rx._rs, !248, !"_rs", i1 false, i1 false}
!248 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 387, i32 4}
!249 = !{ptr @__func__.ipoib_cm_nonsrq_init_rx, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @ipoib_cm_nonsrq_init_rx._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @ipoib_cm_nonsrq_init_rx._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @ipoib_cm_nonsrq_init_rx._rs.132, !253, !"_rs", i1 false, i1 false}
!253 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 393, i32 4}
!254 = !{ptr @ipoib_cm_nonsrq_init_rx._entry.133, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @ipoib_cm_nonsrq_init_rx._entry_ptr.134, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @ipoib_cm_err_attr, !257, !"ipoib_cm_err_attr", i1 false, i1 false}
!257 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 70, i32 26}
!258 = !{ptr @.str.135, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!260 = !{ptr @.str.136, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1545, i32 8}
!262 = !{ptr @dev_attr_mode, !261, !"dev_attr_mode", i1 false, i1 false}
!263 = !{ptr @.str.137, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1513, i32 26}
!265 = !{ptr @.str.138, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1515, i32 26}
!267 = !{ptr @.str.139, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1366, i32 4}
!269 = !{ptr @.str.140, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @ipoib_cm_tx_start._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @ipoib_cm_tx_start._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @ipoib_cm_tx_init._rs, !273, !"_rs", i1 false, i1 false}
!273 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1159, i32 3}
!274 = !{ptr @__func__.ipoib_cm_tx_init, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.141, !273, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @ipoib_cm_tx_init._entry, !273, !"_entry", i1 false, i1 false}
!277 = !{ptr @ipoib_cm_tx_init._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @ipoib_cm_tx_init._rs.142, !279, !"_rs", i1 false, i1 false}
!279 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1166, i32 3}
!280 = !{ptr @.str.144, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @ipoib_cm_tx_init._entry.143, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @ipoib_cm_tx_init._entry_ptr.145, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @ipoib_cm_tx_init._rs.146, !284, !"_rs", i1 false, i1 false}
!284 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1172, i32 3}
!285 = !{ptr @.str.148, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @ipoib_cm_tx_init._entry.147, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @ipoib_cm_tx_init._entry_ptr.149, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @ipoib_cm_tx_init._rs.150, !289, !"_rs", i1 false, i1 false}
!289 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1178, i32 3}
!290 = !{ptr @.str.152, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @ipoib_cm_tx_init._entry.151, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @ipoib_cm_tx_init._entry_ptr.153, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.155, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1182, i32 2}
!295 = !{ptr @ipoib_cm_tx_init._entry.154, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @ipoib_cm_tx_init._entry_ptr.156, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.157, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1261, i32 3}
!299 = !{ptr @.str.158, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @ipoib_cm_tx_handler._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @ipoib_cm_tx_handler._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.160, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1265, i32 3}
!304 = !{ptr @ipoib_cm_tx_handler._entry.159, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @ipoib_cm_tx_handler._entry_ptr.161, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.163, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1274, i32 3}
!308 = !{ptr @ipoib_cm_tx_handler._entry.162, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @ipoib_cm_tx_handler._entry_ptr.164, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @ipoib_cm_rep_handler._rs, !311, !"_rs", i1 false, i1 false}
!311 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 999, i32 3}
!312 = !{ptr @__func__.ipoib_cm_rep_handler, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.165, !311, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @ipoib_cm_rep_handler._entry, !311, !"_entry", i1 false, i1 false}
!315 = !{ptr @ipoib_cm_rep_handler._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @ipoib_cm_rep_handler._rs.166, !317, !"_rs", i1 false, i1 false}
!317 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1007, i32 3}
!318 = !{ptr @ipoib_cm_rep_handler._entry.167, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @ipoib_cm_rep_handler._entry_ptr.168, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @ipoib_cm_rep_handler._rs.169, !321, !"_rs", i1 false, i1 false}
!321 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1014, i32 3}
!322 = !{ptr @ipoib_cm_rep_handler._entry.170, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @ipoib_cm_rep_handler._entry_ptr.171, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @ipoib_cm_rep_handler._rs.172, !325, !"_rs", i1 false, i1 false}
!325 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1021, i32 3}
!326 = !{ptr @ipoib_cm_rep_handler._entry.173, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @ipoib_cm_rep_handler._entry_ptr.174, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @ipoib_cm_rep_handler._rs.175, !329, !"_rs", i1 false, i1 false}
!329 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1026, i32 3}
!330 = !{ptr @ipoib_cm_rep_handler._entry.176, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @ipoib_cm_rep_handler._entry_ptr.177, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @ipoib_cm_rep_handler._rs.178, !333, !"_rs", i1 false, i1 false}
!333 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1045, i32 4}
!334 = !{ptr @.str.180, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @ipoib_cm_rep_handler._entry.179, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @ipoib_cm_rep_handler._entry_ptr.181, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @ipoib_cm_rep_handler._rs.182, !338, !"_rs", i1 false, i1 false}
!338 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1051, i32 3}
!339 = !{ptr @.str.184, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @ipoib_cm_rep_handler._entry.183, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @ipoib_cm_rep_handler._entry_ptr.185, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @ipoib_cm_modify_tx_init._rs, !343, !"_rs", i1 false, i1 false}
!343 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1134, i32 3}
!344 = !{ptr @__func__.ipoib_cm_modify_tx_init, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @.str.186, !343, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @ipoib_cm_modify_tx_init._entry, !343, !"_entry", i1 false, i1 false}
!347 = !{ptr @ipoib_cm_modify_tx_init._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.187, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1205, i32 2}
!350 = !{ptr @.str.188, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @ipoib_cm_tx_destroy._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @ipoib_cm_tx_destroy._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @ipoib_cm_tx_destroy._rs, !354, !"_rs", i1 false, i1 false}
!354 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1216, i32 5}
!355 = !{ptr @.str.190, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @ipoib_cm_tx_destroy._entry.189, !354, !"_entry", i1 false, i1 false}
!357 = !{ptr @ipoib_cm_tx_destroy._entry_ptr.191, !354, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @ipoib_cm_stale_task._rs, !359, !"_rs", i1 false, i1 false}
!359 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1496, i32 4}
!360 = !{ptr @__func__.ipoib_cm_stale_task, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @ipoib_cm_stale_task._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @ipoib_cm_stale_task._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @skb_queue_head_init.__key, !364, !"__key", i1 false, i1 false}
!364 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!365 = !{ptr @.str.192, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.193, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_cm.c", i32 1566, i32 4}
!368 = !{ptr @.str.194, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @ipoib_cm_create_srq._entry, !367, !"_entry", i1 false, i1 false}
!370 = !{ptr @ipoib_cm_create_srq._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!371 = distinct !{null, !372, !"__already_done", i1 false, i1 false}
!372 = !{!"../include/rdma/ib_verbs.h", i32 3688, i32 2}
!373 = !{ptr @.str.195, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.196, !372, !"<string literal>", i1 false, i1 false}
!375 = !{!"sp"}
!376 = !{i32 1, !"wchar_size", i32 2}
!377 = !{i32 1, !"min_enum_size", i32 4}
!378 = !{i32 8, !"branch-target-enforcement", i32 0}
!379 = !{i32 8, !"sign-return-address", i32 0}
!380 = !{i32 8, !"sign-return-address-all", i32 0}
!381 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!382 = !{i32 7, !"uwtable", i32 1}
!383 = !{i32 7, !"frame-pointer", i32 2}
!384 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!385 = !{!"branch_weights", i32 2000, i32 1}
!386 = !{!"branch_weights", i32 1, i32 2000}
!387 = !{!"auto-init"}
!388 = !{i64 2154902315, i64 2154902803, i64 2154902352, i64 2154902408, i64 2154902442, i64 2154902466, i64 2154902507, i64 2154902528, i64 2154902556, i64 2154902590}
