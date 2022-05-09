; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/ipoib/ipoib_main.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/ipoib/ipoib_main.c"
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
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ib_client = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ib_sa_client = type { %struct.atomic_t, %struct.completion }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ipoib_dev_priv = type { %struct.spinlock, ptr, ptr, %struct.napi_struct, %struct.napi_struct, i32, %struct.rw_semaphore, %struct.mutex, %struct.rb_root, %struct.list_head, %struct.ipoib_neigh_table, ptr, %struct.list_head, %struct.rb_root, ptr, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, ptr, i8, i16, i16, ptr, ptr, ptr, ptr, i32, %union.ib_gid, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, [18 x %struct.ib_sge], %struct.ib_ud_wr, [64 x %struct.ib_wc], %struct.ib_recv_wr, [2 x %struct.ib_sge], [4 x %struct.ib_wc], %struct.list_head, %struct.ib_event_handler, ptr, %struct.list_head, %struct.list_head, i32, %struct.ipoib_cm_dev_priv, %struct.list_head, ptr, ptr, i64, %struct.ipoib_ethtool_st, i32, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ipoib_neigh_table = type { ptr, %struct.atomic_t, %struct.completion, %struct.completion }
%struct.rb_root = type { ptr }
%union.ib_gid = type { %struct.anon.162 }
%struct.anon.162 = type { i64, i64 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.163, ptr, i32, i32, i32, %union.anon.164 }
%union.anon.163 = type { i64 }
%union.anon.164 = type { i32 }
%struct.ib_wc = type { %union.anon.159, i32, i32, i32, i32, ptr, %union.anon.160, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.165, ptr, i32 }
%union.anon.165 = type { i64 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.ipoib_cm_dev_priv = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.sk_buff_head, %struct.list_head, %struct.list_head, [4 x %struct.ib_wc], [16 x %struct.ib_sge], %struct.ib_recv_wr, i32, i32, i32 }
%struct.ipoib_ethtool_st = type { i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.152 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%struct.ipoib_ah = type { ptr, ptr, %struct.list_head, %struct.kref, i32, i32 }
%struct.ipoib_path_iter = type { ptr, %struct.ipoib_path }
%struct.ipoib_path = type { ptr, %struct.sa_path_rec, ptr, %struct.sk_buff_head, %struct.list_head, i32, ptr, %struct.completion, %struct.rb_node, %struct.list_head }
%struct.sa_path_rec = type { %union.ib_gid, %union.ib_gid, i64, i32, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.176, i32 }
%union.anon.176 = type { %struct.sa_path_rec_opa }
%struct.sa_path_rec_opa = type { i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ipoib_neigh_hash = type { ptr, ptr, %struct.callback_head, i32, i32 }
%struct.ipoib_neigh = type { ptr, ptr, [20 x i8], %struct.sk_buff_head, ptr, %struct.list_head, ptr, %struct.callback_head, %struct.refcount_struct, i32 }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.166 }
%struct.anon.166 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ipoib_header = type { i16, i16 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
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
%struct.ib_sa_mcmember_rec = type { %union.ib_gid, %union.ib_gid, i32, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.ipoib_cm_tx = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.167 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.167 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.anon.178 = type { i16, [126 x i8] }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.rdma_netdev_alloc_params = type { i32, i32, i32, ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.netdev_nested_priv = type { i8, ptr }
%struct.ipoib_walk_data = type { ptr, ptr }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }

@__UNIQUE_ID_author526 = internal constant [30 x i8] c"ib_ipoib.author=Roland Dreier\00", section ".modinfo", align 1
@__UNIQUE_ID_description527 = internal constant [51 x i8] c"ib_ipoib.description=IP-over-InfiniBand net driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file528 = internal constant [52 x i8] c"ib_ipoib.file=drivers/infiniband/ulp/ipoib/ib_ipoib\00", section ".modinfo", align 1
@__UNIQUE_ID_license529 = internal constant [30 x i8] c"ib_ipoib.license=Dual BSD/GPL\00", section ".modinfo", align 1
@ipoib_sendq_size = dso_local global i32 128, section ".data..read_mostly", align 4
@ipoib_recvq_size = dso_local global i32 256, section ".data..read_mostly", align 4
@__param_str_send_queue_size = internal constant [25 x i8] c"ib_ipoib.send_queue_size\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_send_queue_size = internal constant %struct.kernel_param { ptr @__param_str_send_queue_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @ipoib_sendq_size } }, section "__param", align 4
@__UNIQUE_ID_send_queue_sizetype530 = internal constant [38 x i8] c"ib_ipoib.parmtype=send_queue_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_send_queue_size531 = internal constant [66 x i8] c"ib_ipoib.parm=send_queue_size:Number of descriptors in send queue\00", section ".modinfo", align 1
@__param_str_recv_queue_size = internal constant [25 x i8] c"ib_ipoib.recv_queue_size\00", align 1
@__param_recv_queue_size = internal constant %struct.kernel_param { ptr @__param_str_recv_queue_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @ipoib_recvq_size } }, section "__param", align 4
@__UNIQUE_ID_recv_queue_sizetype532 = internal constant [38 x i8] c"ib_ipoib.parmtype=recv_queue_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_recv_queue_size533 = internal constant [69 x i8] c"ib_ipoib.parm=recv_queue_size:Number of descriptors in receive queue\00", section ".modinfo", align 1
@__param_str_debug_level = internal constant [21 x i8] c"ib_ipoib.debug_level\00", align 1
@ipoib_debug_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @ipoib_debug_level } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype534 = internal constant [34 x i8] c"ib_ipoib.parmtype=debug_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level535 = internal constant [54 x i8] c"ib_ipoib.parm=debug_level:Enable debug tracing if > 0\00", section ".modinfo", align 1
@ipoib_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: bringing up interface\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipoib_open\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/infiniband/ulp/ipoib/ipoib_main.c\00", [54 x i8] zeroinitializer }, align 32
@ipoib_open._entry_ptr = internal global ptr @ipoib_open._entry, section ".printk_index", align 4
@ipoib_open._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017%s: parent device %s is not up, so child device may be not functioning.\0A\00", [53 x i8] zeroinitializer }, align 32
@ipoib_open._entry_ptr.5 = internal global ptr @ipoib_open._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"connected\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"datagram\0A\00", [22 x i8] zeroinitializer }, align 32
@ipoib_set_mode._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ipoib_set_mode = private unnamed_addr constant [15 x i8] c"ipoib_set_mode\00", align 1
@ipoib_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.ipoib_set_mode, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014%s: enabling connected mode will cause multicast packet drops\0A\00", [63 x i8] zeroinitializer }, align 32
@ipoib_set_mode._entry_ptr = internal global ptr @ipoib_set_mode._entry, section ".printk_index", align 4
@ipoib_mark_paths_invalid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: mark path LID 0x%08x GID %pI6 invalid\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ipoib_mark_paths_invalid\00", [39 x i8] zeroinitializer }, align 32
@ipoib_mark_paths_invalid._entry_ptr = internal global ptr @ipoib_mark_paths_invalid._entry, section ".printk_index", align 4
@ipoib_neigh_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ipoib_neigh_get.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ipoib_neigh_get.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipoib_neigh_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ipoib_neigh_alloc.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipoib_neigh_alloc.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipoib_neigh_alloc.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipoib_neigh_dtor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: neigh free for %06x %pI6\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipoib_neigh_dtor\00", [47 x i8] zeroinitializer }, align 32
@ipoib_neigh_dtor._entry_ptr = internal global ptr @ipoib_neigh_dtor._entry, section ".printk_index", align 4
@ipoib_neigh_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipoib_neigh_free.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipoib_neigh_free.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipoib_neigh_free.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipoib_del_neighs_by_gid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipoib_del_neighs_by_gid.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipoib_del_neighs_by_gid.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipoib_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @ipoib_hard_header, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipoib_netdev_default_pf = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @ipoib_dev_init_default, ptr @ipoib_dev_uninit_default, ptr @ipoib_ib_dev_open_default, ptr @ipoib_ib_dev_stop_default, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ipv4_bcast_addr = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\00\FF\FF\FF\FF\12@\1B\00\00\00\00\00\00\00\00\FF\FF\FF\FF", [44 x i8] zeroinitializer }, align 32
@ipoib_netdev_ops_vf = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @ipoib_ndo_init, ptr @ipoib_ndo_uninit, ptr @ipoib_open, ptr @ipoib_stop, ptr @ipoib_start_xmit, ptr null, ptr null, ptr null, ptr @ipoib_set_mcast_list, ptr null, ptr null, ptr null, ptr @ipoib_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @ipoib_change_mtu, ptr null, ptr @ipoib_timeout, ptr @ipoib_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipoib_fix_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipoib_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ipoib_netdev_ops_pf = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @ipoib_ndo_init, ptr @ipoib_ndo_uninit, ptr @ipoib_open, ptr @ipoib_stop, ptr @ipoib_start_xmit, ptr null, ptr null, ptr null, ptr @ipoib_set_mcast_list, ptr @ipoib_set_mac, ptr null, ptr null, ptr @ipoib_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @ipoib_change_mtu, ptr null, ptr @ipoib_timeout, ptr @ipoib_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipoib_get_vf_config, ptr @ipoib_set_vf_link_state, ptr @ipoib_get_vf_stats, ptr null, ptr null, ptr @ipoib_get_vf_guid, ptr @ipoib_set_vf_guid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipoib_fix_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipoib_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ipoib_set_umcast._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_set_umcast = private unnamed_addr constant [17 x i8] c"ipoib_set_umcast\00", align 1
@ipoib_set_umcast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.ipoib_set_umcast, ptr @.str.2, i32 2299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014%s: ignoring multicast groups joined directly by userspace\0A\00", [34 x i8] zeroinitializer }, align 32
@ipoib_set_umcast._entry_ptr = internal global ptr @ipoib_set_umcast._entry, section ".printk_index", align 4
@dev_attr_umcast = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @umcast_show, ptr @umcast_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pkey = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pkey_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@ipoib_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ipoib_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ipoib_client = internal global { %struct.ib_client, [32 x i8] } { %struct.ib_client { ptr @.str.139, ptr @ipoib_add_one, ptr @ipoib_remove_one, ptr null, ptr null, ptr null, ptr @ipoib_get_net_dev_by_params, %struct.refcount_struct zeroinitializer, %struct.completion zeroinitializer, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@ipoib_sa_client = dso_local global { %struct.ib_sa_client, [36 x i8] } zeroinitializer, align 32
@ipoib_workqueue = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_ib_ipoib__583_2686_ipoib_init_module6 = internal global ptr @ipoib_init_module, section ".initcall6.init", align 4
@__exitcall_ipoib_cleanup_module = internal global ptr @ipoib_cleanup_module, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@path_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"path_free\00", [22 x i8] zeroinitializer }, align 32
@path_free._entry_ptr = internal global ptr @path_free._entry, section ".printk_index", align 4
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@ipoib_dev_init_default._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: failed to allocate TX ring (%d entries)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipoib_dev_init_default\00", [41 x i8] zeroinitializer }, align 32
@ipoib_dev_init_default._entry_ptr = internal global ptr @ipoib_dev_init_default._entry, section ".printk_index", align 4
@ipoib_dev_init_default._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 1722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: ipoib_transport_dev_init failed\0A\00", [57 x i8] zeroinitializer }, align 32
@ipoib_dev_init_default._entry_ptr.37 = internal global ptr @ipoib_dev_init_default._entry.35, section ".printk_index", align 4
@ipoib_ndo_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: failed to initialize device: %s port %d (ret = %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipoib_ndo_init\00", [17 x i8] zeroinitializer }, align 32
@ipoib_ndo_init._entry_ptr = internal global ptr @ipoib_ndo_init._entry, section ".printk_index", align 4
@ipoib_parent_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: ib_query_port %d failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipoib_parent_init\00", [46 x i8] zeroinitializer }, align 32
@ipoib_parent_init._entry_ptr = internal global ptr @ipoib_parent_init._entry, section ".printk_index", align 4
@ipoib_parent_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 1881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: ib_query_pkey port %d failed (ret = %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@ipoib_parent_init._entry_ptr.44 = internal global ptr @ipoib_parent_init._entry.42, section ".printk_index", align 4
@ipoib_parent_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 1888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014%s: rdma_query_gid port %d failed (ret = %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@ipoib_parent_init._entry_ptr.47 = internal global ptr @ipoib_parent_init._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipoib_wq\00", [23 x i8] zeroinitializer }, align 32
@ipoib_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: failed to allocate device WQ\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipoib_dev_init\00", [17 x i8] zeroinitializer }, align 32
@ipoib_dev_init._entry_ptr = internal global ptr @ipoib_dev_init._entry, section ".printk_index", align 4
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ib_ipoib\00", [23 x i8] zeroinitializer }, align 32
@ipoib_dev_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.2, i32 1776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: failed to allocate PD\0A\00", [35 x i8] zeroinitializer }, align 32
@ipoib_dev_init._entry_ptr.54 = internal global ptr @ipoib_dev_init._entry.52, section ".printk_index", align 4
@ipoib_dev_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.2, i32 1782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s failed to init HW resource\0A\00", [63 x i8] zeroinitializer }, align 32
@ipoib_dev_init._entry_ptr.57 = internal global ptr @ipoib_dev_init._entry.55, section ".printk_index", align 4
@ipoib_dev_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.50, ptr @.str.2, i32 1788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s failed to init neigh hash\0A\00", [32 x i8] zeroinitializer }, align 32
@ipoib_dev_init._entry_ptr.60 = internal global ptr @ipoib_dev_init._entry.58, section ".printk_index", align 4
@ipoib_dev_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.50, ptr @.str.2, i32 1794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s failed to open device\0A\00", [36 x i8] zeroinitializer }, align 32
@ipoib_dev_init._entry_ptr.63 = internal global ptr @ipoib_dev_init._entry.61, section ".printk_index", align 4
@arp_tbl = external dso_local local_unnamed_addr global %struct.neigh_table, align 4
@ipoib_neigh_hash_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.64, ptr @.str.2, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipoib_neigh_hash_uninit\00", [40 x i8] zeroinitializer }, align 32
@ipoib_neigh_hash_uninit._entry_ptr = internal global ptr @ipoib_neigh_hash_uninit._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ipoib_flush_neighs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipoib_flush_neighs.__warned.66 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipoib_flush_neighs.__warned.67 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ipoib_ndo_uninit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ipoib_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: stopping interface\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipoib_stop\00", [21 x i8] zeroinitializer }, align 32
@ipoib_stop._entry_ptr = internal global ptr @ipoib_stop._entry, section ".printk_index", align 4
@neigh_add_path._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.neigh_add_path = private unnamed_addr constant [15 x i8] c"neigh_add_path\00", align 1
@neigh_add_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @__func__.neigh_add_path, ptr @.str.2, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: queue length limit %d. Packet drop.\0A\00", [53 x i8] zeroinitializer }, align 32
@neigh_add_path._entry_ptr = internal global ptr @neigh_add_path._entry, section ".printk_index", align 4
@path_rec_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Start path record lookup for %pI6\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"path_rec_start\00", [17 x i8] zeroinitializer }, align 32
@path_rec_start._entry_ptr = internal global ptr @path_rec_start._entry, section ".printk_index", align 4
@path_rec_start._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@path_rec_start._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: ib_sa_path_rec_get failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@path_rec_start._entry_ptr.78 = internal global ptr @path_rec_start._entry.76, section ".printk_index", align 4
@path_rec_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: PathRec LID 0x%04x for GID %pI6\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"path_rec_completion\00", [44 x i8] zeroinitializer }, align 32
@path_rec_completion._entry_ptr = internal global ptr @path_rec_completion._entry, section ".printk_index", align 4
@path_rec_completion._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: PathRec status %d for GID %pI6\0A\00", [58 x i8] zeroinitializer }, align 32
@path_rec_completion._entry_ptr.83 = internal global ptr @path_rec_completion._entry.81, section ".printk_index", align 4
@path_rec_completion._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: %s got PathRec for gid %pI6 while asked for %pI6\0A\00", [40 x i8] zeroinitializer }, align 32
@path_rec_completion._entry_ptr.86 = internal global ptr @path_rec_completion._entry.84, section ".printk_index", align 4
@path_rec_completion._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: created address handle %p for LID 0x%04x, SL %d\0A\00", [41 x i8] zeroinitializer }, align 32
@path_rec_completion._entry_ptr.89 = internal global ptr @path_rec_completion._entry.87, section ".printk_index", align 4
@path_rec_completion._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@path_rec_completion._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014%s: %s: dev_queue_xmit failed to re-queue packet, ret:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@path_rec_completion._entry_ptr.92 = internal global ptr @path_rec_completion._entry.90, section ".printk_index", align 4
@unicast_arp_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Send unicast ARP to %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unicast_arp_send\00", [47 x i8] zeroinitializer }, align 32
@unicast_arp_send._entry_ptr = internal global ptr @unicast_arp_send._entry, section ".printk_index", align 4
@ipoib_set_mcast_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: IPOIB_FLAG_OPER_UP not set\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipoib_set_mcast_list\00", [43 x i8] zeroinitializer }, align 32
@ipoib_set_mcast_list._entry_ptr = internal global ptr @ipoib_set_mcast_list._entry, section ".printk_index", align 4
@ipoib_change_mtu._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_change_mtu = private unnamed_addr constant [17 x i8] c"ipoib_change_mtu\00", align 1
@ipoib_change_mtu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @__func__.ipoib_change_mtu, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: mtu > %d will cause multicast packet drops.\0A\00", [45 x i8] zeroinitializer }, align 32
@ipoib_change_mtu._entry_ptr = internal global ptr @ipoib_change_mtu._entry, section ".printk_index", align 4
@ipoib_change_mtu._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @__func__.ipoib_change_mtu, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017%s: MTU must be smaller than the underlying link layer MTU - 4 (%u)\0A\00", [57 x i8] zeroinitializer }, align 32
@ipoib_change_mtu._entry_ptr.100 = internal global ptr @ipoib_change_mtu._entry.98, section ".printk_index", align 4
@ipoib_timeout._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_timeout = private unnamed_addr constant [14 x i8] c"ipoib_timeout\00", align 1
@ipoib_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @__func__.ipoib_timeout, ptr @.str.2, i32 1197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: transmit timeout: latency %d msecs\0A\00", [54 x i8] zeroinitializer }, align 32
@ipoib_timeout._entry_ptr = internal global ptr @ipoib_timeout._entry, section ".printk_index", align 4
@ipoib_timeout._rs.102 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_timeout._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @__func__.ipoib_timeout, ptr @.str.2, i32 1201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014%s: queue stopped %d, tx_head %u, tx_tail %u, global_tx_head %u, global_tx_tail %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ipoib_timeout._entry_ptr.105 = internal global ptr @ipoib_timeout._entry.103, section ".printk_index", align 4
@ipoib_build_priv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@ipoib_build_priv.__key.107 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->vlan_rwsem\00", [46 x i8] zeroinitializer }, align 32
@ipoib_build_priv.__key.109 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->mcast_mutex\00", [45 x i8] zeroinitializer }, align 32
@ipoib_build_priv.__key.111 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&priv->mcast_task)->work)\00", [50 x i8] zeroinitializer }, align 32
@ipoib_build_priv.__key.113 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&priv->mcast_task)->timer\00", [36 x i8] zeroinitializer }, align 32
@ipoib_build_priv.__key.115 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.116 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&priv->carrier_on_task)\00", [54 x i8] zeroinitializer }, align 32
@ipoib_build_priv.__key.117 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.118 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&priv->flush_light)\00", [58 x i8] zeroinitializer }, align 32
@ipoib_build_priv.__key.119 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.120 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->flush_normal)\00", [57 x i8] zeroinitializer }, align 32
@ipoib_build_priv.__key.121 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.122 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&priv->flush_heavy)\00", [58 x i8] zeroinitializer }, align 32
@ipoib_build_priv.__key.123 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.124 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->restart_task)\00", [57 x i8] zeroinitializer }, align 32
@ipoib_build_priv.__key.125 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.126 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&priv->ah_reap_task)->work)\00", [48 x i8] zeroinitializer }, align 32
@ipoib_build_priv.__key.127 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.128 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&priv->ah_reap_task)->timer\00", [34 x i8] zeroinitializer }, align 32
@ipoib_build_priv.__key.129 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.130 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&priv->neigh_reap_task)->work)\00", [45 x i8] zeroinitializer }, align 32
@ipoib_build_priv.__key.131 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.132 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&priv->neigh_reap_task)->timer\00", [63 x i8] zeroinitializer }, align 32
@__ipoib_reap_neigh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ipoib_reap_neigh.__warned.133 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ipoib_reap_neigh.__warned.134 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.135 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"umcast\00", [25 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pkey\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ipoib\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ib%d\00", [27 x i8] zeroinitializer }, align 32
@ipoib_add_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 2480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s, %d: ipoib_intf_alloc failed %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipoib_add_port\00", [17 x i8] zeroinitializer }, align 32
@ipoib_add_port._entry_ptr = internal global ptr @ipoib_add_port._entry, section ".printk_index", align 4
@ipoib_add_port._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.2, i32 2497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: couldn't register ipoib port %d; error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ipoib_add_port._entry_ptr.145 = internal global ptr @ipoib_add_port._entry.143, section ".printk_index", align 4
@dev_attr_create_child = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @create_child_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_delete_child = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @delete_child_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dev_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dev_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dev_id\00", [25 x i8] zeroinitializer }, align 32
@dev_id_show.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.147 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\22%s\22 wants to know my dev_id. Should it look at dev_port instead? See Documentation/ABI/testing/sysfs-class-net for more info.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"create_child\00", [19 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%i\00", [29 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"delete_child\00", [19 x i8] zeroinitializer }, align 32
@ipoib_get_net_dev_by_params._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_get_net_dev_by_params = private unnamed_addr constant [28 x i8] c"ipoib_get_net_dev_by_params\00", align 1
@ipoib_get_net_dev_by_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @__func__.ipoib_get_net_dev_by_params, ptr @.str.2, i32 511, ptr @.str.154, ptr @.str.155 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"duplicate IP address detected\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipoib_get_net_dev_by_params._entry_ptr = internal global ptr @ipoib_get_net_dev_by_params._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.156 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.157 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.158 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@ipoib_max_conn_qp = external dso_local local_unnamed_addr global i32, align 4
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipoib_flush\00", [20 x i8] zeroinitializer }, align 32
@switch.table.ipoib_ndo_init = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 256, i32 512, i32 1024, i32 2048, i32 4096], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.161 = internal global [7 x i64] [i64 5, i64 16, i64 2048, i64 2054, i64 32821, i64 34525, i64 35018]
@__sancov_gen_cov_switch_values.162 = internal global [7 x i64] [i64 5, i64 16, i64 2048, i64 2054, i64 32821, i64 34525, i64 35018]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.166 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 11]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"ipoib_debug_level\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 68, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 138, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 171, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 523, i32 20 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 525, i32 20 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 532, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 695, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1280, i32 9 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1400, i32 9 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1461, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"ipoib_header_ops\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2059, i32 32 }
@___asan_gen_.236 = private unnamed_addr constant [24 x i8] c"ipoib_netdev_default_pf\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2099, i32 36 }
@___asan_gen_.239 = private unnamed_addr constant [16 x i8] c"ipv4_bcast_addr\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 79, i32 17 }
@___asan_gen_.242 = private unnamed_addr constant [20 x i8] c"ipoib_netdev_ops_vf\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2084, i32 36 }
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c"ipoib_netdev_ops_pf\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2063, i32 36 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2298, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant [16 x i8] c"dev_attr_umcast\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [14 x i8] c"dev_attr_pkey\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [22 x i8] c"ipoib_netdev_notifier\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2601, i32 30 }
@___asan_gen_.266 = private unnamed_addr constant [13 x i8] c"ipoib_client\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 100, i32 25 }
@___asan_gen_.269 = private unnamed_addr constant [16 x i8] c"ipoib_sa_client\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 87, i32 21 }
@___asan_gen_.272 = private unnamed_addr constant [16 x i8] c"ipoib_workqueue\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 85, i32 26 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 618, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 749, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 760, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1984, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1713, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1721, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1955, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1872, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1880, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1887, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1767, i32 13 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1769, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1774, i32 13 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1776, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1782, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1788, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1794, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1653, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 87, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 3498, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1977, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 188, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1001, i32 5 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 904, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 921, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 758, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 762, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 787, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 801, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 856, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1083, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1235, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 238, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 252, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1196, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 1198, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2140, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2141, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2142, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2149, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2150, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2151, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2152, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2153, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2154, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2155, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2156, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2313, i32 8 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2288, i32 25 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2280, i32 8 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2278, i32 25 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 101, i32 12 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2560, i32 24 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2479, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2496, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant [22 x i8] c"dev_attr_create_child\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [22 x i8] c"dev_attr_delete_child\00", align 1
@___asan_gen_.650 = private unnamed_addr constant [16 x i8] c"dev_attr_dev_id\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2460, i32 8 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2454, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2458, i32 25 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2401, i32 8 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2391, i32 18 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2421, i32 8 }
@___asan_gen_.674 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.677 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 510, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 695, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.693, i32 723, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 232, i32 9 }
@___asan_gen_.698 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.699 = private constant [45 x i8] c"../drivers/infiniband/ulp/ipoib/ipoib_main.c\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.699, i32 2640, i32 20 }
@___asan_gen_.701 = private unnamed_addr constant [28 x i8] c"switch.table.ipoib_ndo_init\00", align 1
@llvm.compiler.used = appending global [231 x ptr] [ptr @__UNIQUE_ID_author526, ptr @__UNIQUE_ID_debug_level535, ptr @__UNIQUE_ID_debug_leveltype534, ptr @__UNIQUE_ID_description527, ptr @__UNIQUE_ID_file528, ptr @__UNIQUE_ID_license529, ptr @__UNIQUE_ID_recv_queue_size533, ptr @__UNIQUE_ID_recv_queue_sizetype532, ptr @__UNIQUE_ID_send_queue_size531, ptr @__UNIQUE_ID_send_queue_sizetype530, ptr @__exitcall_ipoib_cleanup_module, ptr @__initcall__kmod_ib_ipoib__583_2686_ipoib_init_module6, ptr @__param_debug_level, ptr @__param_recv_queue_size, ptr @__param_send_queue_size, ptr @ipoib_add_port._entry, ptr @ipoib_add_port._entry.143, ptr @ipoib_add_port._entry_ptr, ptr @ipoib_add_port._entry_ptr.145, ptr @ipoib_change_mtu._entry, ptr @ipoib_change_mtu._entry.98, ptr @ipoib_change_mtu._entry_ptr, ptr @ipoib_change_mtu._entry_ptr.100, ptr @ipoib_cleanup_module, ptr @ipoib_dev_init._entry, ptr @ipoib_dev_init._entry.52, ptr @ipoib_dev_init._entry.55, ptr @ipoib_dev_init._entry.58, ptr @ipoib_dev_init._entry.61, ptr @ipoib_dev_init._entry_ptr, ptr @ipoib_dev_init._entry_ptr.54, ptr @ipoib_dev_init._entry_ptr.57, ptr @ipoib_dev_init._entry_ptr.60, ptr @ipoib_dev_init._entry_ptr.63, ptr @ipoib_dev_init_default._entry, ptr @ipoib_dev_init_default._entry.35, ptr @ipoib_dev_init_default._entry_ptr, ptr @ipoib_dev_init_default._entry_ptr.37, ptr @ipoib_get_net_dev_by_params._entry, ptr @ipoib_get_net_dev_by_params._entry_ptr, ptr @ipoib_mark_paths_invalid._entry, ptr @ipoib_mark_paths_invalid._entry_ptr, ptr @ipoib_ndo_init._entry, ptr @ipoib_ndo_init._entry_ptr, ptr @ipoib_neigh_dtor._entry, ptr @ipoib_neigh_dtor._entry_ptr, ptr @ipoib_neigh_hash_uninit._entry, ptr @ipoib_neigh_hash_uninit._entry_ptr, ptr @ipoib_open._entry, ptr @ipoib_open._entry.3, ptr @ipoib_open._entry_ptr, ptr @ipoib_open._entry_ptr.5, ptr @ipoib_parent_init._entry, ptr @ipoib_parent_init._entry.42, ptr @ipoib_parent_init._entry.45, ptr @ipoib_parent_init._entry_ptr, ptr @ipoib_parent_init._entry_ptr.44, ptr @ipoib_parent_init._entry_ptr.47, ptr @ipoib_set_mcast_list._entry, ptr @ipoib_set_mcast_list._entry_ptr, ptr @ipoib_set_mode._entry, ptr @ipoib_set_mode._entry_ptr, ptr @ipoib_set_umcast._entry, ptr @ipoib_set_umcast._entry_ptr, ptr @ipoib_stop._entry, ptr @ipoib_stop._entry_ptr, ptr @ipoib_timeout._entry, ptr @ipoib_timeout._entry.103, ptr @ipoib_timeout._entry_ptr, ptr @ipoib_timeout._entry_ptr.105, ptr @neigh_add_path._entry, ptr @neigh_add_path._entry_ptr, ptr @path_free._entry, ptr @path_free._entry_ptr, ptr @path_rec_completion._entry, ptr @path_rec_completion._entry.81, ptr @path_rec_completion._entry.84, ptr @path_rec_completion._entry.87, ptr @path_rec_completion._entry.90, ptr @path_rec_completion._entry_ptr, ptr @path_rec_completion._entry_ptr.83, ptr @path_rec_completion._entry_ptr.86, ptr @path_rec_completion._entry_ptr.89, ptr @path_rec_completion._entry_ptr.92, ptr @path_rec_start._entry, ptr @path_rec_start._entry.76, ptr @path_rec_start._entry_ptr, ptr @path_rec_start._entry_ptr.78, ptr @unicast_arp_send._entry, ptr @unicast_arp_send._entry_ptr, ptr @ipoib_debug_level, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @ipoib_set_mode._rs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.19, ptr @.str.20, ptr @ipoib_header_ops, ptr @ipoib_netdev_default_pf, ptr @ipv4_bcast_addr, ptr @ipoib_netdev_ops_vf, ptr @ipoib_netdev_ops_pf, ptr @ipoib_set_umcast._rs, ptr @.str.26, ptr @dev_attr_umcast, ptr @dev_attr_pkey, ptr @ipoib_netdev_notifier, ptr @ipoib_client, ptr @ipoib_sa_client, ptr @ipoib_workqueue, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @skb_queue_head_init.__key, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @init_completion.__key, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @neigh_add_path._rs, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @path_rec_start._rs, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @path_rec_completion._rs, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @ipoib_change_mtu._rs, ptr @.str.97, ptr @.str.99, ptr @ipoib_timeout._rs, ptr @.str.101, ptr @ipoib_timeout._rs.102, ptr @.str.104, ptr @ipoib_build_priv.__key, ptr @.str.106, ptr @ipoib_build_priv.__key.107, ptr @.str.108, ptr @ipoib_build_priv.__key.109, ptr @.str.110, ptr @ipoib_build_priv.__key.111, ptr @.str.112, ptr @ipoib_build_priv.__key.113, ptr @.str.114, ptr @ipoib_build_priv.__key.115, ptr @.str.116, ptr @ipoib_build_priv.__key.117, ptr @.str.118, ptr @ipoib_build_priv.__key.119, ptr @.str.120, ptr @ipoib_build_priv.__key.121, ptr @.str.122, ptr @ipoib_build_priv.__key.123, ptr @.str.124, ptr @ipoib_build_priv.__key.125, ptr @.str.126, ptr @ipoib_build_priv.__key.127, ptr @.str.128, ptr @ipoib_build_priv.__key.129, ptr @.str.130, ptr @ipoib_build_priv.__key.131, ptr @.str.132, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @dev_attr_create_child, ptr @dev_attr_delete_child, ptr @dev_attr_dev_id, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @ipoib_get_net_dev_by_params._rs, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @switch.table.ipoib_ndo_init], section "llvm.metadata"
@0 = internal global [178 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_open._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_set_mode._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mark_paths_invalid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_neigh_dtor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_netdev_default_pf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv4_bcast_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_netdev_ops_vf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_netdev_ops_pf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_set_umcast._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_set_umcast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_umcast to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pkey to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_client to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_sa_client to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_dev_init_default._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_dev_init_default._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ndo_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_parent_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_parent_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_parent_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_dev_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_dev_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_dev_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_dev_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_neigh_hash_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neigh_add_path._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neigh_add_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_rec_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_rec_start._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_rec_start._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_rec_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_rec_completion._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_rec_completion._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_rec_completion._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_rec_completion._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_rec_completion._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unicast_arp_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_set_mcast_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_change_mtu._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_change_mtu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_change_mtu._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_timeout._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_timeout._rs.102 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_timeout._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_build_priv.__key.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_add_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_add_port._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_create_child to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_delete_child to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dev_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_get_net_dev_by_params._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_get_net_dev_by_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipoib_ndo_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %4) #20
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @netif_carrier_off(ptr noundef %dev) #17
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #17
  %call6 = tail call i32 @ipoib_ib_dev_open(ptr noundef %dev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end13, label %if.then7

if.then7:                                         ; preds = %do.end5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.then7.cleanup64_crit_edge, label %err_disable

if.then7.cleanup64_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup64

if.end13:                                         ; preds = %do.end5
  tail call void @ipoib_ib_dev_up(ptr noundef %dev) #17
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not = icmp eq i32 %10, 0
  br i1 %tobool16.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  %vlan_rwsem = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 6
  tail call void @down_read(ptr noundef %vlan_rwsem) #17
  %child_intfs = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 52
  %11 = ptrtoint ptr %child_intfs to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn90 = load ptr, ptr %child_intfs, align 4
  %cmp20.not91 = icmp eq ptr %.pn90, %child_intfs
  br i1 %cmp20.not91, label %if.then17.for.end_crit_edge, label %if.then17.for.body_crit_edge

if.then17.for.body_crit_edge:                     ; preds = %if.then17
  br label %for.body

if.then17.for.end_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.then17.for.body_crit_edge
  %.pn92 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn90, %if.then17.for.body_crit_edge ]
  %dev22 = getelementptr i8, ptr %.pn92, i32 -6216
  %12 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev22, align 4
  %flags23 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags23, align 8
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end26, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end26:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %15, 1
  %call28 = tail call i32 @dev_change_flags(ptr noundef %13, i32 noundef %or, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %for.body.cleanup_crit_edge
  %16 = ptrtoint ptr %.pn92 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn92, align 4
  %cmp20.not = icmp eq ptr %.pn, %child_intfs
  br i1 %cmp20.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then17.for.end_crit_edge
  tail call void @up_read(ptr noundef %vlan_rwsem) #17
  br label %if.end62

if.else:                                          ; preds = %if.end13
  %parent = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 51
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 8
  %tobool35.not = icmp eq ptr %18, null
  br i1 %tobool35.not, label %if.else.if.end62_crit_edge, label %if.then36

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end62

if.then36:                                        ; preds = %if.else
  %add.ptr.i.i89 = getelementptr i8, ptr %18, i32 2304
  %19 = ptrtoint ptr %add.ptr.i.i89 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i89, align 4
  %flags39 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags39, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool41.not = icmp eq i32 %23, 0
  br i1 %tobool41.not, label %do.body43, label %if.then36.if.end62_crit_edge

if.then36.if.end62_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end62

do.body43:                                        ; preds = %if.then36
  %24 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp44 = icmp sgt i32 %24, 0
  br i1 %cmp44, label %do.end48, label %do.body43.if.end62_crit_edge

do.body43.if.end62_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end62

do.end48:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #19
  %dev50 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev50, align 4
  %dev53 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %20, i32 0, i32 1
  %27 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev53, align 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %26, ptr noundef %28) #20
  br label %if.end62

if.end62:                                         ; preds = %do.end48, %do.body43.if.end62_crit_edge, %if.then36.if.end62_crit_edge, %if.else.if.end62_crit_edge, %for.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  br label %cleanup64

err_disable:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #17
  br label %cleanup64

cleanup64:                                        ; preds = %err_disable, %if.end62, %if.then7.cleanup64_crit_edge
  %retval.0 = phi i32 [ -22, %err_disable ], [ 0, %if.end62 ], [ 0, %if.then7.cleanup64_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_ib_dev_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_ib_dev_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_set_mode(ptr noundef %dev, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
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
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(11) @.str.6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %lor.lhs.false
  %call8 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(10) @.str.7) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool10.not = icmp sgt i8 %11, -1
  br i1 %tobool10.not, label %if.end.if.end31_crit_edge, label %land.lhs.true11

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

land.lhs.true11:                                  ; preds = %if.end
  %call12 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(11) @.str.6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true11.if.end31_crit_edge

land.lhs.true11.if.end31_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then14:                                        ; preds = %land.lhs.true11
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags) #17
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_set_mode._rs, ptr noundef nonnull @__func__.ipoib_set_mode) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then14.do.end24_crit_edge, label %do.end

if.then14.do.end24_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end24

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  %dev20 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev20, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %13) #20
  br label %do.end24

do.end24:                                         ; preds = %do.end, %if.then14.do.end24_crit_edge
  tail call void @netdev_update_features(ptr noundef %dev) #17
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 4
  %max_cm_mtu.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %15, i32 0, i32 55, i32 20
  %16 = ptrtoint ptr %max_cm_mtu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_cm_mtu.i, align 4
  %call26 = tail call i32 @dev_set_mtu(ptr noundef %dev, i32 noundef %17) #17
  %call27 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %dev, i32 noundef 1) #17
  tail call void @rtnl_unlock() #17
  %send_flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 0, i32 5
  %18 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %send_flags, align 4
  %and28 = and i32 %19, -17
  store i32 %and28, ptr %send_flags, align 4
  br label %cleanup.sink.split

if.end31:                                         ; preds = %land.lhs.true11.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %call32 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(10) @.str.7) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %flags) #17
  tail call void @netdev_update_features(ptr noundef %dev) #17
  %mcast_mtu = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 35
  %20 = ptrtoint ptr %mcast_mtu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mcast_mtu, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %22 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mtu, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %21, i32 %23)
  %call39 = tail call i32 @dev_set_mtu(ptr noundef %dev, i32 noundef %24) #17
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %25 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_tx_queues, align 4
  %call40 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %dev, i32 noundef %26) #17
  tail call void @rtnl_unlock() #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then34, %do.end24
  tail call void @ipoib_flush_paths(ptr noundef %dev)
  %call41 = tail call i32 @rtnl_trylock() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  %cond44 = select i1 %tobool42.not, i32 -16, i32 0
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end31.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true7.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ], [ %cond44, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_flush_paths(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %remove_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %remove_list) #17
  %2 = getelementptr inbounds %struct.list_head, ptr %remove_list, i32 0, i32 1
  %3 = ptrtoint ptr %remove_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %remove_list, ptr %remove_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %remove_list, ptr %2, align 4
  call fastcc void @local_bh_disable() #17
  call void @netif_tx_lock(ptr noundef %dev) #17
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #17
  %path_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %path_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %path_list, align 4
  %cmp.i.not.i = icmp eq ptr %6, %path_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %remove_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remove_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %remove_list, ptr %prev3.i.i, align 4
  store ptr %6, ptr %remove_list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %10, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev6.i.i, align 4
  %14 = ptrtoint ptr %path_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %path_list, ptr %path_list, align 4
  store ptr %path_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %15 = ptrtoint ptr %remove_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn77 = load ptr, ptr %remove_list, align 4
  %cmp8.not78 = icmp eq ptr %.pn77, %remove_list
  br i1 %cmp8.not78, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %path_tree = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn79 = phi ptr [ %.pn77, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %rb_node = getelementptr i8, ptr %.pn79, i32 -12
  call void @rb_erase(ptr noundef %rb_node, ptr noundef %path_tree) #17
  %16 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn79, align 4
  %cmp8.not = icmp eq ptr %.pn, %remove_list
  br i1 %cmp8.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  %17 = ptrtoint ptr %remove_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remove_list, align 4
  %cmp26.not82 = icmp eq ptr %18, %remove_list
  br i1 %cmp26.not82, label %for.end.for.end52_crit_edge, label %for.end.for.body29_crit_edge

for.end.for.body29_crit_edge:                     ; preds = %for.end
  br label %for.body29

for.end.for.end52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end52

for.body29:                                       ; preds = %path_free.exit.for.body29_crit_edge, %for.end.for.body29_crit_edge
  %.pn75.in84 = phi ptr [ %.pn7586, %path_free.exit.for.body29_crit_edge ], [ %18, %for.end.for.body29_crit_edge ]
  %flags.083 = phi i32 [ %call41, %path_free.exit.for.body29_crit_edge ], [ %call3, %for.end.for.body29_crit_edge ]
  %path.185 = getelementptr i8, ptr %.pn75.in84, i32 -232
  %19 = ptrtoint ptr %.pn75.in84 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn7586 = load ptr, ptr %.pn75.in84, align 8
  %query = getelementptr i8, ptr %.pn75.in84, i32 -72
  %20 = ptrtoint ptr %query to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %query, align 8
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %for.body29.if.end_crit_edge, label %if.then

for.body29.if.end_crit_edge:                      ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #19
  %query_id = getelementptr i8, ptr %.pn75.in84, i32 -76
  %22 = ptrtoint ptr %query_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %query_id, align 4
  call void @ib_sa_cancel_query(i32 noundef %23, ptr noundef nonnull %21) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body29.if.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %flags.083) #17
  call void @netif_tx_unlock(ptr noundef %dev) #17
  call fastcc void @local_bh_enable() #17
  %done = getelementptr i8, ptr %.pn75.in84, i32 -68
  call void @wait_for_completion(ptr noundef %done) #17
  %queue.i = getelementptr i8, ptr %.pn75.in84, i32 -140
  %24 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %queue.i, align 4
  %cmp.i.i18.i = icmp eq ptr %25, %queue.i
  %tobool.not.i1719.i = icmp eq ptr %25, null
  %tobool.not.i20.i = or i1 %cmp.i.i18.i, %tobool.not.i1719.i
  br i1 %tobool.not.i20.i, label %if.end.do.body.i_crit_edge, label %while.body.lr.ph.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

while.body.lr.ph.i:                               ; preds = %if.end
  %qlen.i.i.i = getelementptr i8, ptr %.pn75.in84, i32 -132
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %26 = phi ptr [ %25, %while.body.lr.ph.i ], [ %36, %while.body.i.while.body.i_crit_edge ]
  %27 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %26, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %32, ptr %prev17.i.i.i, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %30, ptr %32, align 8
  call void @__dev_kfree_skb_irq(ptr noundef nonnull %26, i32 noundef 1) #17
  %35 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue.i, align 4
  %cmp.i.i.i = icmp eq ptr %36, %queue.i
  %tobool.not.i17.i = icmp eq ptr %36, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i17.i
  br i1 %tobool.not.i.i, label %while.body.i.do.body.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.body.i.do.body.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

do.body.i:                                        ; preds = %while.body.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  %37 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i = icmp sgt i32 %37, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.end6.i_crit_edge

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i.i, align 4
  %dev3.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev3.i, align 4
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %41, ptr noundef nonnull @.str.28) #20
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.body.i.do.end6.i_crit_edge
  %pathrec.i = getelementptr i8, ptr %.pn75.in84, i32 -224
  call void @ipoib_del_neighs_by_gid(ptr noundef %dev, ptr noundef %pathrec.i) #17
  %ah.i = getelementptr i8, ptr %.pn75.in84, i32 -144
  %42 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ah.i, align 8
  %tobool8.not.i = icmp eq ptr %43, null
  br i1 %tobool8.not.i, label %do.end6.i.path_free.exit_crit_edge, label %if.then9.i

do.end6.i.path_free.exit_crit_edge:               ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %path_free.exit

if.then9.i:                                       ; preds = %do.end6.i
  %ref.i.i = getelementptr inbounds %struct.ipoib_ah, ptr %43, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !395
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #17
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #17, !srcloc !396
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.path_free.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !397

if.end5.i.i.i.i.i.i.path_free.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %path_free.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #17
  br label %path_free.exit

if.then.i.i.i:                                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !398
  call void @ipoib_free_ah(ptr noundef %ref.i.i) #17
  br label %path_free.exit

path_free.exit:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.path_free.exit_crit_edge, %do.end6.i.path_free.exit_crit_edge
  call void @kfree(ptr noundef %path.185) #17
  call fastcc void @local_bh_disable() #17
  call void @netif_tx_lock(ptr noundef %dev) #17
  %call41 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #17
  %cmp26.not = icmp eq ptr %.pn7586, %remove_list
  br i1 %cmp26.not, label %path_free.exit.for.end52_crit_edge, label %path_free.exit.for.body29_crit_edge

path_free.exit.for.body29_crit_edge:              ; preds = %path_free.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body29

path_free.exit.for.end52_crit_edge:               ; preds = %path_free.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end52

for.end52:                                        ; preds = %path_free.exit.for.end52_crit_edge, %for.end.for.end52_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %for.end.for.end52_crit_edge ], [ %call41, %path_free.exit.for.end52_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %flags.0.lcssa) #17
  call void @netif_tx_unlock(ptr noundef %dev) #17
  call fastcc void @local_bh_enable() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %remove_list) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__path_find(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %gid) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %path_tree = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %path_tree to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.016 = load ptr, ptr %path_tree, align 4
  %tobool.not17 = icmp eq ptr %n.016, null
  br i1 %tobool.not17, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %entry.while.body_crit_edge
  %n.018 = phi ptr [ %n.0, %if.end5.while.body_crit_edge ], [ %n.016, %entry.while.body_crit_edge ]
  %pathrec = getelementptr i8, ptr %n.018, i32 -212
  %call1 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %gid, ptr noundef dereferenceable(16) %pathrec, i32 noundef 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %n.018, i32 0, i32 2
  br label %if.end5

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %cleanup.split.loop.exit14, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %n.018, i32 0, i32 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then
  %n.1.in = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then3 ]
  %3 = ptrtoint ptr %n.1.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %n.0 = load ptr, ptr %n.1.in, align 4
  %tobool.not = icmp eq ptr %n.0, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup.split.loop.exit14:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.le = getelementptr i8, ptr %n.018, i32 -220
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit14, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr.le, %cleanup.split.loop.exit14 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipoib_path_iter_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 248) #22
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i, align 8
  %pathrec = getelementptr inbounds %struct.ipoib_path_iter, ptr %call7.i, i32 0, i32 1, i32 1
  %2 = call ptr @memset(ptr %pathrec, i32 0, i32 16)
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #17
  %path_tree.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %4, i32 0, i32 8
  %call1.i = tail call ptr @rb_first(ptr noundef %path_tree.i) #17
  %tobool.not18.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not18.i, label %if.end.if.then4_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %n.019.i = phi ptr [ %call8.i, %if.end.i.while.body.i_crit_edge ], [ %call1.i, %if.end.while.body.i_crit_edge ]
  %pathrec3.i = getelementptr i8, ptr %n.019.i, i32 -212
  %call6.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %pathrec, ptr noundef dereferenceable(16) %pathrec3.i, i32 noundef 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %ipoib_path_iter_next.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %call8.i = tail call ptr @rb_next(ptr noundef nonnull %n.019.i) #17
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then4_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

ipoib_path_iter_next.exit:                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %n.019.i, i32 -220
  %path2.i = getelementptr inbounds %struct.ipoib_path_iter, ptr %call7.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %path2.i, ptr %add.ptr.i, i32 240)
  tail call void @_raw_spin_unlock_irq(ptr noundef %4) #17
  br label %cleanup

if.then4:                                         ; preds = %if.end.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %4) #17
  tail call void @kfree(ptr noundef nonnull %call7.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %ipoib_path_iter_next.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i, %ipoib_path_iter_next.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_path_iter_next(ptr nocapture noundef %iter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iter, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #17
  %path_tree = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 8
  %call1 = tail call ptr @rb_first(ptr noundef %path_tree) #17
  %tobool.not18 = icmp eq ptr %call1, null
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pathrec = getelementptr inbounds %struct.ipoib_path_iter, ptr %iter, i32 0, i32 1, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %n.019 = phi ptr [ %call1, %while.body.lr.ph ], [ %call8, %if.end.while.body_crit_edge ]
  %pathrec3 = getelementptr i8, ptr %n.019, i32 -212
  %call6 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %pathrec, ptr noundef dereferenceable(16) %pathrec3, i32 noundef 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr = getelementptr i8, ptr %n.019, i32 -220
  %path2 = getelementptr inbounds %struct.ipoib_path_iter, ptr %iter, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %path2, ptr %add.ptr, i32 240)
  br label %while.end

if.end:                                           ; preds = %while.body
  %call8 = tail call ptr @rb_next(ptr noundef nonnull %n.019) #17
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.then, %entry.while.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ 1, %entry.while.end_crit_edge ], [ 1, %if.end.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #17
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ipoib_path_iter_read(ptr nocapture noundef readonly %iter, ptr nocapture noundef writeonly %path) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %path1 = getelementptr inbounds %struct.ipoib_path_iter, ptr %iter, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %path, ptr %path1, i32 240)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_mark_paths_invalid(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #17
  %path_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %path_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path_list, align 4
  %cmp.not38 = icmp eq ptr %3, %path_list
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %dev10 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %.pn.in39 = phi ptr [ %3, %do.body.lr.ph ], [ %.pn42, %for.inc.do.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn42 = load ptr, ptr %.pn.in39, align 8
  %5 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7 = icmp sgt i32 %5, 0
  br i1 %cmp7, label %do.end, label %do.body.do.end16_crit_edge

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end16

do.end:                                           ; preds = %do.body
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  %pathrec = getelementptr i8, ptr %.pn.in39, i32 -224
  %rec_type.i = getelementptr i8, ptr %.pn.in39, i32 -148
  %8 = ptrtoint ptr %rec_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rec_type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end.sa_path_get_dlid.exit_crit_edge [
    i32 0, label %if.then.i
    i32 3, label %if.then4.i
  ]

do.end.sa_path_get_dlid.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sa_path_get_dlid.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %11 = getelementptr i8, ptr %.pn.in39, i32 -164
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 4
  %conv.i = zext i16 %13 to i32
  br label %sa_path_get_dlid.exit

if.then4.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %14 = getelementptr i8, ptr %.pn.in39, i32 -164
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  br label %sa_path_get_dlid.exit

sa_path_get_dlid.exit:                            ; preds = %if.then4.i, %if.then.i, %do.end.sa_path_get_dlid.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %16, %if.then4.i ], [ 0, %do.end.sa_path_get_dlid.exit_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %7, i32 noundef %retval.0.i, ptr noundef %pathrec) #20
  br label %do.end16

do.end16:                                         ; preds = %sa_path_get_dlid.exit, %do.body.do.end16_crit_edge
  %ah = getelementptr i8, ptr %.pn.in39, i32 -144
  %17 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ah, align 8
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %do.end16.for.inc_crit_edge, label %if.then17

do.end16.for.inc_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then17:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #19
  %valid = getelementptr inbounds %struct.ipoib_ah, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %valid, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %do.end16.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn42, %path_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_sa_cancel_query(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipoib_neigh_get(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %daddr) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %ntbl1 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 10
  tail call fastcc void @local_bh_disable() #17
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 750, ptr noundef nonnull @.str.30) #17
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %ntbl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ntbl1, align 4
  %call4 = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end10_crit_edge

rcu_read_lock_bh.exit.do.end10_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b77 = load i1, ptr @ipoib_neigh_get.__warned, align 1
  br i1 %.b77, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_neigh_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1280, ptr noundef nonnull @.str.12) #17
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock_bh.exit.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %3, null
  br i1 %tobool12.not, label %do.end10.out_unlock_crit_edge, label %if.end14

do.end10.out_unlock_crit_edge:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end14:                                         ; preds = %do.end10
  %arrayidx.i = getelementptr i32, ptr %daddr, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr i32, ptr %daddr, i32 4
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i, align 4
  %8 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %daddr, align 4
  %and.i = and i32 %9, 16777215
  %add.i.i.i = add i32 %5, -559038725
  %add1.i.i.i = add i32 %7, -559038725
  %add2.i.i.i = add nuw nsw i32 %and.i, -559038725
  %xor.i.i.i = xor i32 %add2.i.i.i, %add1.i.i.i
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #17
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #17
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #17
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #17
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #17
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #17
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #17
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %mask.i = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i, align 4
  %and3.i = and i32 %sub20.i.i.i, %11
  %buckets = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buckets, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %and3.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx, align 4
  %call21 = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %if.end14.do.end31_crit_edge

if.end14.do.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31

land.lhs.true23:                                  ; preds = %if.end14
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true23.do.end31_crit_edge, label %land.lhs.true26

land.lhs.true23.do.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %.b7376 = load i1, ptr @ipoib_neigh_get.__warned.13, align 1
  br i1 %.b7376, label %land.lhs.true26.do.end31_crit_edge, label %if.then28

land.lhs.true26.do.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_neigh_get.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1286, ptr noundef nonnull @.str.12) #17
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %land.lhs.true26.do.end31_crit_edge, %land.lhs.true23.do.end31_crit_edge, %if.end14.do.end31_crit_edge
  %cmp.not87 = icmp eq ptr %15, null
  br i1 %cmp.not87, label %do.end31.out_unlock_crit_edge, label %do.end31.for.body_crit_edge

do.end31.for.body_crit_edge:                      ; preds = %do.end31
  br label %for.body

do.end31.out_unlock_crit_edge:                    ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

for.body:                                         ; preds = %do.end62.for.body_crit_edge, %do.end31.for.body_crit_edge
  %neigh.088 = phi ptr [ %33, %do.end62.for.body_crit_edge ], [ %15, %do.end31.for.body_crit_edge ]
  %daddr33 = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.088, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(20) %daddr, ptr noundef dereferenceable(20) %daddr33, i32 20) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp35 = icmp eq i32 %bcmp, 0
  br i1 %cmp35, label %if.then36, label %for.inc

if.then36:                                        ; preds = %for.body
  %refcnt = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.088, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #17
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #17
  %16 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then36
  %18 = phi i32 [ %17, %if.then36 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i78 = add i32 %18, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #17
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #17
  %20 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %21, i32 %add.i.i.i78, ptr elementtype(i32) %refcnt) #17, !srcloc !399
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !397

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %23 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %24, 1
  %25 = or i32 %add5.i.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !397

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #17
  %26 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %27 = phi i32 [ %24, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.i.i.i.not = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #17
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.out_unlock_crit_edge, label %if.end39

refcount_inc_not_zero.exit.out_unlock_crit_edge:  ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end39:                                         ; preds = %refcount_inc_not_zero.exit
  %qlen.i = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.088, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp41 = icmp ult i32 %29, 3
  br i1 %cmp41, label %if.then44, label %if.end39.out_unlock_crit_edge, !prof !397

if.end39.out_unlock_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %alive = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.088, i32 0, i32 9
  %31 = ptrtoint ptr %alive to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %alive, align 4
  br label %out_unlock

for.inc:                                          ; preds = %for.body
  %hnext = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.088, i32 0, i32 6
  %32 = ptrtoint ptr %hnext to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hnext, align 4
  %call52 = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true54, label %for.inc.do.end62_crit_edge

for.inc.do.end62_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end62

land.lhs.true54:                                  ; preds = %for.inc
  %call55 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true54.do.end62_crit_edge, label %land.lhs.true57

land.lhs.true54.do.end62_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end62

land.lhs.true57:                                  ; preds = %land.lhs.true54
  %.b7475 = load i1, ptr @ipoib_neigh_get.__warned.14, align 1
  br i1 %.b7475, label %land.lhs.true57.do.end62_crit_edge, label %if.then59

land.lhs.true57.do.end62_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end62

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_neigh_get.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1288, ptr noundef nonnull @.str.12) #17
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %land.lhs.true57.do.end62_crit_edge, %land.lhs.true54.do.end62_crit_edge, %for.inc.do.end62_crit_edge
  %cmp.not = icmp eq ptr %33, null
  br i1 %cmp.not, label %do.end62.out_unlock_crit_edge, label %do.end62.for.body_crit_edge

do.end62.for.body_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.end62.out_unlock_crit_edge:                    ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

out_unlock:                                       ; preds = %do.end62.out_unlock_crit_edge, %if.then44, %if.end39.out_unlock_crit_edge, %refcount_inc_not_zero.exit.out_unlock_crit_edge, %do.end31.out_unlock_crit_edge, %do.end10.out_unlock_crit_edge
  %neigh.1 = phi ptr [ %neigh.088, %if.then44 ], [ %neigh.088, %if.end39.out_unlock_crit_edge ], [ null, %do.end10.out_unlock_crit_edge ], [ null, %refcount_inc_not_zero.exit.out_unlock_crit_edge ], [ null, %do.end31.out_unlock_crit_edge ], [ null, %do.end62.out_unlock_crit_edge ]
  %call.i79 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i79, label %out_unlock.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i82

out_unlock.rcu_read_unlock_bh.exit_crit_edge:     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i82:                                ; preds = %out_unlock
  %call1.i80 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool.not.i81 = icmp eq i32 %call1.i80, 0
  br i1 %tobool.not.i81, label %land.lhs.true.i82.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i84

land.lhs.true.i82.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i84:                               ; preds = %land.lhs.true.i82
  %.b4.i83 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i83, label %land.lhs.true2.i84.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i85

land.lhs.true2.i84.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock_bh.exit

if.then.i85:                                      ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 761, ptr noundef nonnull @.str.31) #17
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i85, %land.lhs.true2.i84.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i82.rcu_read_unlock_bh.exit_crit_edge, %out_unlock.rcu_read_unlock_bh.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #17
  call fastcc void @local_bh_enable() #17
  ret ptr %neigh.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipoib_neigh_alloc(ptr nocapture noundef readonly %daddr, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %ntbl1 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 10
  %dep_map = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b170 = load i1, ptr @ipoib_neigh_alloc.__warned, align 1
  br i1 %.b170, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_neigh_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1401, ptr noundef nonnull @.str.15) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = ptrtoint ptr %ntbl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ntbl1, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %do.end.out_unlock_crit_edge, label %if.end10

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end10:                                         ; preds = %do.end
  %arrayidx.i = getelementptr i32, ptr %daddr, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr i32, ptr %daddr, i32 4
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i, align 4
  %8 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %daddr, align 4
  %and.i = and i32 %9, 16777215
  %add.i.i.i = add i32 %5, -559038725
  %add1.i.i.i = add i32 %7, -559038725
  %add2.i.i.i = add nuw nsw i32 %and.i, -559038725
  %xor.i.i.i = xor i32 %add2.i.i.i, %add1.i.i.i
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #17
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #17
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #17
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #17
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #17
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #17
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #17
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %mask.i = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i, align 4
  %and3.i = and i32 %sub20.i.i.i, %11
  %call.i171 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool16.not = icmp eq i32 %call.i171, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %if.end10.do.end25_crit_edge

if.end10.do.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end25

land.lhs.true17:                                  ; preds = %if.end10
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true17.do.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %.b164169 = load i1, ptr @ipoib_neigh_alloc.__warned.16, align 1
  br i1 %.b164169, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_neigh_alloc.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1412, ptr noundef nonnull @.str.15) #17
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true17.do.end25_crit_edge, %if.end10.do.end25_crit_edge
  %buckets = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buckets, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %and3.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %neigh.0179 = load ptr, ptr %arrayidx, align 4
  %cmp.not180 = icmp eq ptr %neigh.0179, null
  br i1 %cmp.not180, label %do.end25.for.end_crit_edge, label %do.end25.for.body_crit_edge

do.end25.for.body_crit_edge:                      ; preds = %do.end25
  br label %for.body

do.end25.for.end_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %do.end48.for.body_crit_edge, %do.end25.for.body_crit_edge
  %neigh.0181 = phi ptr [ %neigh.0, %do.end48.for.body_crit_edge ], [ %neigh.0179, %do.end25.for.body_crit_edge ]
  %daddr27 = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.0181, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(20) %daddr, ptr noundef dereferenceable(20) %daddr27, i32 20) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp29 = icmp eq i32 %bcmp, 0
  br i1 %cmp29, label %if.then30, label %do.body35

if.then30:                                        ; preds = %for.body
  %refcnt = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.0181, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #17
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #17
  %15 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then30
  %17 = phi i32 [ %16, %if.then30 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i172 = add i32 %17, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #17
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #17
  %19 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %21 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %20, i32 %add.i.i.i172, ptr elementtype(i32) %refcnt) #17, !srcloc !399
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %20
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !397

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %22 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %23, 1
  %24 = or i32 %add5.i.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !397

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #17
  %25 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %26 = phi i32 [ %23, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool12.i.i.i.not = icmp eq i32 %26, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #17
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.end_crit_edge, label %if.end33

refcount_inc_not_zero.exit.for.end_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end33:                                         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %alive = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.0181, i32 0, i32 9
  %28 = ptrtoint ptr %alive to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %alive, align 4
  br label %out_unlock

do.body35:                                        ; preds = %for.body
  %call.i173 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool39.not = icmp eq i32 %call.i173, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %do.body35.do.end48_crit_edge

do.body35.do.end48_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end48

land.lhs.true40:                                  ; preds = %do.body35
  %call41 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.do.end48_crit_edge, label %land.lhs.true43

land.lhs.true40.do.end48_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end48

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %.b165168 = load i1, ptr @ipoib_neigh_alloc.__warned.17, align 1
  br i1 %.b165168, label %land.lhs.true43.do.end48_crit_edge, label %if.then45

land.lhs.true43.do.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_neigh_alloc.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1415, ptr noundef nonnull @.str.15) #17
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %land.lhs.true43.do.end48_crit_edge, %land.lhs.true40.do.end48_crit_edge, %do.body35.do.end48_crit_edge
  %hnext = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.0181, i32 0, i32 6
  %29 = ptrtoint ptr %hnext to i32
  call void @__asan_load4_noabort(i32 %29)
  %neigh.0 = load ptr, ptr %hnext, align 4
  %cmp.not = icmp eq ptr %neigh.0, null
  br i1 %cmp.not, label %do.end48.for.end_crit_edge, label %do.end48.for.body_crit_edge

do.end48.for.body_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.end48.for.end_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %do.end48.for.end_crit_edge, %refcount_inc_not_zero.exit.for.end_crit_edge, %do.end25.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 2848, i32 noundef 116) #22
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.end.out_unlock_crit_edge, label %if.end53

for.end.out_unlock_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end53:                                         ; preds = %for.end
  %dev1.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7.i.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev, ptr %dev1.i, align 4
  %daddr2.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7.i.i.i, i32 0, i32 2
  %32 = call ptr @memcpy(ptr %daddr2.i, ptr %daddr, i32 20)
  %queue.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7.i.i.i, i32 0, i32 3
  %lock.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %33 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %queue.i, ptr %queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %queue.i, ptr %prev.i.i.i, align 8
  %qlen.i.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %qlen.i.i.i, align 4
  %list.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7.i.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %list.i, ptr %prev.i.i, align 4
  %cm.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %cm.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %cm.i.i, align 4
  %refcnt.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7.i.i.i, i32 0, i32 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #17
  %39 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 1, ptr %refcnt.i, align 4
  %call.i.i.i.i.i174 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #17
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #17, !srcloc !400
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end53.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !401

if.end53.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end53
  %add.i.i.i175 = add i32 %asmresult.i.i.i.i.i, 1
  %41 = or i32 %add.i.i.i175, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %.not.i.i.i176 = icmp sgt i32 %41, -1
  br i1 %.not.i.i.i176, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !397

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end53.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end53.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i) #17
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %alive55 = getelementptr inbounds %struct.ipoib_neigh, ptr %call7.i.i.i, i32 0, i32 9
  %43 = ptrtoint ptr %alive55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %alive55, align 8
  %call.i177 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool61.not = icmp eq i32 %call.i177, 0
  br i1 %tobool61.not, label %land.lhs.true62, label %refcount_inc.exit.do.end70_crit_edge

refcount_inc.exit.do.end70_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end70

land.lhs.true62:                                  ; preds = %refcount_inc.exit
  %call63 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true62.do.end70_crit_edge, label %land.lhs.true65

land.lhs.true62.do.end70_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end70

land.lhs.true65:                                  ; preds = %land.lhs.true62
  %.b166167 = load i1, ptr @ipoib_neigh_alloc.__warned.18, align 1
  br i1 %.b166167, label %land.lhs.true65.do.end70_crit_edge, label %if.then67

land.lhs.true65.do.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end70

if.then67:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_neigh_alloc.__warned.18, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1438, ptr noundef nonnull @.str.15) #17
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %land.lhs.true65.do.end70_crit_edge, %land.lhs.true62.do.end70_crit_edge, %refcount_inc.exit.do.end70_crit_edge
  %44 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buckets, align 4
  %arrayidx73 = getelementptr ptr, ptr %45, i32 %and3.i
  %46 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx73, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !402
  %hnext87 = getelementptr inbounds %struct.ipoib_neigh, ptr %call7.i.i.i, i32 0, i32 6
  %48 = ptrtoint ptr %hnext87 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %47, ptr %hnext87, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !403
  %49 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buckets, align 4
  %arrayidx128 = getelementptr ptr, ptr %50, i32 %and3.i
  %51 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %call7.i.i.i, ptr %arrayidx128, align 4
  %entries = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 10, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %entries, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %entries, i32 1, i32 3, i32 1) #17
  %52 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %entries, ptr %entries, i32 1, ptr elementtype(i32) %entries) #17, !srcloc !404
  br label %out_unlock

out_unlock:                                       ; preds = %do.end70, %for.end.out_unlock_crit_edge, %if.end33, %do.end.out_unlock_crit_edge
  %neigh.1 = phi ptr [ %neigh.0181, %if.end33 ], [ %call7.i.i.i, %do.end70 ], [ null, %do.end.out_unlock_crit_edge ], [ null, %for.end.out_unlock_crit_edge ]
  ret ptr %neigh.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_neigh_dtor(ptr noundef %neigh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %4 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %neigh, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %ref.i = getelementptr inbounds %struct.ipoib_ah, ptr %5, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !395
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #17
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #17, !srcloc !396
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !397

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #17
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !398
  tail call void @ipoib_free_ah(ptr noundef %ref.i) #17
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %queue = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh, i32 0, i32 3
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue, align 4
  %cmp.i.i4246 = icmp eq ptr %8, %queue
  %tobool.not.i4547 = icmp eq ptr %8, null
  %tobool.not.i48 = or i1 %cmp.i.i4246, %tobool.not.i4547
  br i1 %tobool.not.i48, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %qlen.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh, i32 0, i32 3, i32 1
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %9 = phi ptr [ %8, %while.body.lr.ph ], [ %21, %while.body.while.body_crit_edge ]
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %9, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %prev17.i.i, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %13, ptr %15, align 8
  %18 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #17
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue, align 4
  %cmp.i.i42 = icmp eq ptr %21, %queue
  %tobool.not.i45 = icmp eq ptr %21, null
  %tobool.not.i = or i1 %cmp.i.i42, %tobool.not.i45
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %cm.i = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh, i32 0, i32 1
  %22 = ptrtoint ptr %cm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cm.i, align 4
  %tobool6.not = icmp eq ptr %23, null
  br i1 %tobool6.not, label %while.end.do.body_crit_edge, label %if.then7

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

if.then7:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ipoib_cm_destroy_tx(ptr noundef nonnull %23) #17
  br label %do.body

do.body:                                          ; preds = %if.then7, %while.end.do.body_crit_edge
  %24 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp sgt i32 %24, 0
  br i1 %cmp, label %do.end, label %do.body.do.end21_crit_edge

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i.i, align 4
  %dev13 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev13, align 4
  %daddr = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh, i32 0, i32 2
  %29 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %daddr, align 4
  %and = and i32 %30, 16777215
  %add.ptr = getelementptr %struct.ipoib_neigh, ptr %neigh, i32 0, i32 2, i32 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %28, i32 noundef %and, ptr noundef %add.ptr) #20
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body.do.end21_crit_edge
  tail call void @kfree(ptr noundef %neigh) #17
  %entries = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 10, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %entries, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !405
  tail call void @llvm.prefetch.p0(ptr %entries, i32 1, i32 3, i32 1) #17
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %entries, ptr %entries, i32 1, ptr elementtype(i32) %entries) #17, !srcloc !406
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !407
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then23, label %do.end21.if.end29_crit_edge

do.end21.if.end29_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then23:                                        ; preds = %do.end21
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 5
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags, align 4
  %34 = and i32 %33, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool25.not = icmp eq i32 %34, 0
  br i1 %tobool25.not, label %if.then23.if.end29_crit_edge, label %if.then26

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  %flushed = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 10, i32 2
  tail call void @complete(ptr noundef %flushed) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then23.if.end29_crit_edge, %do.end21.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_cm_destroy_tx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_neigh_free(ptr noundef %neigh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %ntbl2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 10
  %dep_map = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b113 = load i1, ptr @ipoib_neigh_free.__warned, align 1
  br i1 %.b113, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_neigh_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1491, ptr noundef nonnull @.str.15) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %ntbl2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ntbl2, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %daddr = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.ipoib_neigh, ptr %neigh, i32 0, i32 2, i32 12
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.ipoib_neigh, ptr %neigh, i32 0, i32 2, i32 16
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i, align 4
  %10 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %daddr, align 4
  %and.i = and i32 %11, 16777215
  %add.i.i.i = add i32 %7, -559038725
  %add1.i.i.i = add i32 %9, -559038725
  %add2.i.i.i = add nuw nsw i32 %and.i, -559038725
  %xor.i.i.i = xor i32 %add2.i.i.i, %add1.i.i.i
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #17
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #17
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #17
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #17
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #17
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #17
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #17
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %mask.i = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask.i, align 4
  %and3.i = and i32 %sub20.i.i.i, %13
  %buckets = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buckets, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %and3.i
  %call.i114 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool17.not = icmp eq i32 %call.i114, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %if.end11.do.end26_crit_edge

if.end11.do.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

land.lhs.true18:                                  ; preds = %if.end11
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.do.end26_crit_edge, label %land.lhs.true21

land.lhs.true18.do.end26_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %.b107112 = load i1, ptr @ipoib_neigh_free.__warned.21, align 1
  br i1 %.b107112, label %land.lhs.true21.do.end26_crit_edge, label %if.then23

land.lhs.true21.do.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_neigh_free.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1498, ptr noundef nonnull @.str.15) #17
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %land.lhs.true21.do.end26_crit_edge, %land.lhs.true18.do.end26_crit_edge, %if.end11.do.end26_crit_edge
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %n.0118 = load ptr, ptr %arrayidx, align 4
  %cmp.not119 = icmp eq ptr %n.0118, null
  br i1 %cmp.not119, label %do.end26.cleanup_crit_edge, label %for.body.preheader

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.preheader:                               ; preds = %do.end26
  %cmp28125 = icmp eq ptr %n.0118, %neigh
  br i1 %cmp28125, label %for.body.preheader.do.body30_crit_edge, label %for.body.preheader.if.else_crit_edge

for.body.preheader.if.else_crit_edge:             ; preds = %for.body.preheader
  br label %if.else

for.body.preheader.do.body30_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body30

for.body:                                         ; preds = %do.end84
  %cmp28 = icmp eq ptr %n.0, %neigh
  br i1 %cmp28, label %for.body.do.body30_crit_edge, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

for.body.do.body30_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body30

do.body30:                                        ; preds = %for.body.do.body30_crit_edge, %for.body.preheader.do.body30_crit_edge
  %np.0120.lcssa = phi ptr [ %arrayidx, %for.body.preheader.do.body30_crit_edge ], [ %hnext69, %for.body.do.body30_crit_edge ]
  %call.i115 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool35.not = icmp eq i32 %call.i115, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %do.body30.do.end44_crit_edge

do.body30.do.end44_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end44

land.lhs.true36:                                  ; preds = %do.body30
  %call37 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.do.end44_crit_edge, label %land.lhs.true39

land.lhs.true36.do.end44_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end44

land.lhs.true39:                                  ; preds = %land.lhs.true36
  %.b108111 = load i1, ptr @ipoib_neigh_free.__warned.22, align 1
  br i1 %.b108111, label %land.lhs.true39.do.end44_crit_edge, label %if.then41

land.lhs.true39.do.end44_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end44

if.then41:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_neigh_free.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1506, ptr noundef nonnull @.str.15) #17
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %land.lhs.true39.do.end44_crit_edge, %land.lhs.true36.do.end44_crit_edge, %do.body30.do.end44_crit_edge
  %hnext = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh, i32 0, i32 6
  %17 = ptrtoint ptr %hnext to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hnext, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !408
  %19 = ptrtoint ptr %np.0120.lcssa to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %18, ptr %np.0120.lcssa, align 4
  %list = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #17
  br i1 %call.i.i, label %if.end.i.i, label %do.end44.list_del_init.exit_crit_edge

do.end44.list_del_init.exit_crit_edge:            ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end44.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list, ptr %prev.i3.i, align 4
  %rcu = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh, i32 0, i32 7
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @ipoib_neigh_reclaim) #17
  br label %cleanup

if.else:                                          ; preds = %for.body.if.else_crit_edge, %for.body.preheader.if.else_crit_edge
  %n.0121126 = phi ptr [ %n.0, %for.body.if.else_crit_edge ], [ %n.0118, %for.body.preheader.if.else_crit_edge ]
  %hnext69 = getelementptr inbounds %struct.ipoib_neigh, ptr %n.0121126, i32 0, i32 6
  %call.i116 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool75.not = icmp eq i32 %call.i116, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %if.else.do.end84_crit_edge

if.else.do.end84_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end84

land.lhs.true76:                                  ; preds = %if.else
  %call77 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true76.do.end84_crit_edge, label %land.lhs.true79

land.lhs.true76.do.end84_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end84

land.lhs.true79:                                  ; preds = %land.lhs.true76
  %.b109110 = load i1, ptr @ipoib_neigh_free.__warned.23, align 1
  br i1 %.b109110, label %land.lhs.true79.do.end84_crit_edge, label %if.then81

land.lhs.true79.do.end84_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end84

if.then81:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_neigh_free.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1501, ptr noundef nonnull @.str.15) #17
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %land.lhs.true79.do.end84_crit_edge, %land.lhs.true76.do.end84_crit_edge, %if.else.do.end84_crit_edge
  %28 = ptrtoint ptr %hnext69 to i32
  call void @__asan_load4_noabort(i32 %28)
  %n.0 = load ptr, ptr %hnext69, align 4
  %cmp.not = icmp eq ptr %n.0, null
  br i1 %cmp.not, label %do.end84.cleanup_crit_edge, label %for.body

do.end84.cleanup_crit_edge:                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %do.end84.cleanup_crit_edge, %list_del_init.exit, %do.end26.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_neigh_reclaim(ptr noundef %rp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt.i = getelementptr i8, ptr %rp, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !395
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #17, !srcloc !396
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ipoib_neigh_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !397

if.end5.i.i.i.i.ipoib_neigh_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_neigh_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #17
  br label %ipoib_neigh_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr = getelementptr i8, ptr %rp, i32 -100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !398
  tail call void @ipoib_neigh_dtor(ptr noundef %add.ptr) #17
  br label %ipoib_neigh_put.exit

ipoib_neigh_put.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ipoib_neigh_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_del_neighs_by_gid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %gid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %ntbl1 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #17
  %dep_map = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end15

land.lhs.true:                                    ; preds = %entry
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true12

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end15

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b104 = load i1, ptr @ipoib_del_neighs_by_gid.__warned, align 1
  br i1 %.b104, label %land.lhs.true12.do.end15_crit_edge, label %if.then

land.lhs.true12.do.end15_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end15

if.then:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_del_neighs_by_gid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1574, ptr noundef nonnull @.str.15) #17
  br label %do.end15

do.end15:                                         ; preds = %if.then, %land.lhs.true12.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %entry.do.end15_crit_edge
  %2 = ptrtoint ptr %ntbl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ntbl1, align 4
  %tobool18.not = icmp eq ptr %3, null
  br i1 %tobool18.not, label %do.end15.out_unlock_crit_edge, label %for.cond.preheader

do.end15.out_unlock_crit_edge:                    ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

for.cond.preheader:                               ; preds = %do.end15
  %size = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21107.not = icmp eq i32 %5, 0
  br i1 %cmp21107.not, label %for.cond.preheader.out_unlock_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_unlock_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %buckets = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %i.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %while.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buckets, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.0108
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.else, %for.body
  %np.0.ph = phi ptr [ %hnext82, %if.else ], [ %arrayidx, %for.body ]
  br label %while.cond

while.cond:                                       ; preds = %list_del_init.exit, %while.cond.outer
  %call.i105 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool27.not = icmp eq i32 %call.i105, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %while.cond.do.end36_crit_edge

while.cond.do.end36_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end36

land.lhs.true28:                                  ; preds = %while.cond
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b100103 = load i1, ptr @ipoib_del_neighs_by_gid.__warned.24, align 1
  br i1 %.b100103, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_del_neighs_by_gid.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1584, ptr noundef nonnull @.str.15) #17
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %while.cond.do.end36_crit_edge
  %8 = ptrtoint ptr %np.0.ph to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %np.0.ph, align 4
  %cmp38.not = icmp eq ptr %9, null
  br i1 %cmp38.not, label %while.end, label %while.body

while.body:                                       ; preds = %do.end36
  %add.ptr = getelementptr %struct.ipoib_neigh, ptr %9, i32 0, i32 2, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %gid, ptr noundef dereferenceable(16) %add.ptr, i32 16) #21
  %tobool41.not = icmp eq i32 %bcmp, 0
  br i1 %tobool41.not, label %do.body43, label %if.else

do.body43:                                        ; preds = %while.body
  %call.i106 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool48.not = icmp eq i32 %call.i106, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %do.body43.do.end57_crit_edge

do.body43.do.end57_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end57

land.lhs.true49:                                  ; preds = %do.body43
  %call50 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true49.do.end57_crit_edge, label %land.lhs.true52

land.lhs.true49.do.end57_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end57

land.lhs.true52:                                  ; preds = %land.lhs.true49
  %.b101102 = load i1, ptr @ipoib_del_neighs_by_gid.__warned.25, align 1
  br i1 %.b101102, label %land.lhs.true52.do.end57_crit_edge, label %if.then54

land.lhs.true52.do.end57_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end57

if.then54:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_del_neighs_by_gid.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1589, ptr noundef nonnull @.str.15) #17
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %land.lhs.true52.do.end57_crit_edge, %land.lhs.true49.do.end57_crit_edge, %do.body43.do.end57_crit_edge
  %hnext = getelementptr inbounds %struct.ipoib_neigh, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %hnext to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hnext, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !409
  %12 = ptrtoint ptr %np.0.ph to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %np.0.ph, align 4
  %list = getelementptr inbounds %struct.ipoib_neigh, ptr %9, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #17
  br i1 %call.i.i, label %if.end.i.i, label %do.end57.list_del_init.exit_crit_edge

do.end57.list_del_init.exit_crit_edge:            ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %9, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end57.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ipoib_neigh, ptr %9, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %prev.i3.i, align 4
  %rcu = getelementptr inbounds %struct.ipoib_neigh, ptr %9, i32 0, i32 7
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @ipoib_neigh_reclaim) #17
  br label %while.cond

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %hnext82 = getelementptr inbounds %struct.ipoib_neigh, ptr %9, i32 0, i32 6
  br label %while.cond.outer

while.end:                                        ; preds = %do.end36
  %inc = add nuw i32 %i.0108, 1
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  %cmp21 = icmp ult i32 %inc, %22
  br i1 %cmp21, label %while.end.for.body_crit_edge, label %while.end.out_unlock_crit_edge

while.end.out_unlock_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

out_unlock:                                       ; preds = %while.end.out_unlock_crit_edge, %for.cond.preheader.out_unlock_crit_edge, %do.end15.out_unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_setup_common(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ipoib_header_ops, ptr %header_ops, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ipoib_netdev_default_pf, ptr %netdev_ops, align 8
  tail call void @ipoib_set_ethtool_ops(ptr noundef %dev) #17
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %2 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100, ptr %watchdog_timeo, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %or = or i32 %4, 4098
  store i32 %or, ptr %flags, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 24, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %6 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 20, ptr %addr_len, align 1
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 32, ptr %type, align 16
  %8 = load i32, ptr @ipoib_sendq_size, align 4
  %mul = shl i32 %8, 1
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %9 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %tx_queue_len, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %10 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1056, ptr %features, align 16
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %11 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %12, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %13 = call ptr @memcpy(ptr %broadcast, ptr @ipv4_bcast_addr, i32 20)
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %14 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %needs_free_netdev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_set_ethtool_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_intf_init(ptr noundef %hca, i32 noundef %port, ptr noundef %name, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7264) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 23
  %1 = ptrtoint ptr %ca to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hca, ptr %ca, align 8
  %conv = trunc i32 %port to i8
  %port2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 24
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %port2, align 4
  %call3 = tail call i32 @rdma_init_netdev(ptr noundef %hca, i32 noundef %port, i32 noundef 1, ptr noundef %name, i8 noundef zeroext 0, ptr noundef nonnull @ipoib_setup_common, ptr noundef %dev) #17
  %3 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %call3, label %out [
    i32 0, label %if.end.if.end10_crit_edge
    i32 -95, label %if.end8
  ]

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %send = getelementptr i8, ptr %dev, i32 2328
  %4 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ipoib_send, ptr %send, align 4
  %attach_mcast = getelementptr i8, ptr %dev, i32 2332
  %5 = ptrtoint ptr %attach_mcast to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ipoib_mcast_attach, ptr %attach_mcast, align 4
  %detach_mcast = getelementptr i8, ptr %dev, i32 2336
  %6 = ptrtoint ptr %detach_mcast to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ipoib_mcast_detach, ptr %detach_mcast, align 4
  %hca9 = getelementptr i8, ptr %dev, i32 2308
  %7 = ptrtoint ptr %hca9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hca, ptr %hca9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end.if.end10_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev_ops, align 8
  %rn_ops = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 62
  %10 = ptrtoint ptr %rn_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %rn_ops, align 8
  %device_cap_flags = getelementptr inbounds %struct.ib_device, ptr %hca, i32 0, i32 22, i32 9
  %11 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %device_cap_flags, align 8
  %and = and i64 %12, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool11.not = icmp eq i64 %and, 0
  %ipoib_netdev_ops_pf.ipoib_netdev_ops_vf = select i1 %tobool11.not, ptr @ipoib_netdev_ops_pf, ptr @ipoib_netdev_ops_vf
  %13 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ipoib_netdev_ops_pf.ipoib_netdev_ops_vf, ptr %netdev_ops, align 8
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %add.ptr.i, align 4
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %15 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv_destructor, align 4
  %next_priv_destructor = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %next_priv_destructor to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %next_priv_destructor, align 8
  store ptr null, ptr %priv_destructor, align 4
  %dev1.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %dev1.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @ipoib_build_priv.__key, i16 noundef signext 3) #17
  %vlan_rwsem.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_rwsem(ptr noundef %vlan_rwsem.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @ipoib_build_priv.__key.107) #17
  %mcast_mutex.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mcast_mutex.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @ipoib_build_priv.__key.109) #17
  %path_list.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %path_list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %path_list.i, ptr %path_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %path_list.i, ptr %prev.i.i, align 8
  %child_intfs.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 52
  %21 = ptrtoint ptr %child_intfs.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %child_intfs.i, ptr %child_intfs.i, align 4
  %prev.i196.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 52, i32 1
  %22 = ptrtoint ptr %prev.i196.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %child_intfs.i, ptr %prev.i196.i, align 8
  %dead_ahs.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 49
  %23 = ptrtoint ptr %dead_ahs.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %dead_ahs.i, ptr %dead_ahs.i, align 8
  %prev.i197.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 49, i32 1
  %24 = ptrtoint ptr %prev.i197.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dead_ahs.i, ptr %prev.i197.i, align 4
  %multicast_list.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 12
  %25 = ptrtoint ptr %multicast_list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %multicast_list.i, ptr %multicast_list.i, align 8
  %prev.i198.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 12, i32 1
  %26 = ptrtoint ptr %prev.i198.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %multicast_list.i, ptr %prev.i198.i, align 4
  %mcast_task.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 15
  tail call void @__init_work(ptr noundef %mcast_task.i, i32 noundef 0) #17
  %27 = ptrtoint ptr %mcast_task.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %mcast_task.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @ipoib_build_priv.__key.111, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry17.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 1
  %28 = ptrtoint ptr %entry17.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry17.i, ptr %entry17.i, align 4
  %prev.i199.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i199.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry17.i, ptr %prev.i199.i, align 8
  %func.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 2
  %30 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ipoib_mcast_join_task, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.114, ptr noundef nonnull @ipoib_build_priv.__key.113) #17
  %carrier_on_task.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 16
  tail call void @__init_work(ptr noundef %carrier_on_task.i, i32 noundef 0) #17
  %31 = ptrtoint ptr %carrier_on_task.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %carrier_on_task.i, align 4
  %lockdep_map34.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map34.i, ptr noundef nonnull @.str.116, ptr noundef nonnull @ipoib_build_priv.__key.115, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry36.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 16, i32 1
  %32 = ptrtoint ptr %entry36.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry36.i, ptr %entry36.i, align 8
  %prev.i200.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 16, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i200.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry36.i, ptr %prev.i200.i, align 4
  %func38.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 16, i32 2
  %34 = ptrtoint ptr %func38.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ipoib_mcast_carrier_on_task, ptr %func38.i, align 8
  %flush_light.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 17
  tail call void @__init_work(ptr noundef %flush_light.i, i32 noundef 0) #17
  %35 = ptrtoint ptr %flush_light.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -64, ptr %flush_light.i, align 8
  %lockdep_map47.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map47.i, ptr noundef nonnull @.str.118, ptr noundef nonnull @ipoib_build_priv.__key.117, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry49.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 17, i32 1
  %36 = ptrtoint ptr %entry49.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %entry49.i, ptr %entry49.i, align 4
  %prev.i201.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 17, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i201.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %entry49.i, ptr %prev.i201.i, align 8
  %func51.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 17, i32 2
  %38 = ptrtoint ptr %func51.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ipoib_ib_dev_flush_light, ptr %func51.i, align 4
  %flush_normal.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 18
  tail call void @__init_work(ptr noundef %flush_normal.i, i32 noundef 0) #17
  %39 = ptrtoint ptr %flush_normal.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %flush_normal.i, align 4
  %lockdep_map60.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 18, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map60.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @ipoib_build_priv.__key.119, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry62.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %entry62.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry62.i, ptr %entry62.i, align 8
  %prev.i202.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 18, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i202.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry62.i, ptr %prev.i202.i, align 4
  %func64.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 18, i32 2
  %42 = ptrtoint ptr %func64.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @ipoib_ib_dev_flush_normal, ptr %func64.i, align 8
  %flush_heavy.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 19
  tail call void @__init_work(ptr noundef %flush_heavy.i, i32 noundef 0) #17
  %43 = ptrtoint ptr %flush_heavy.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -64, ptr %flush_heavy.i, align 8
  %lockdep_map73.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 19, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map73.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @ipoib_build_priv.__key.121, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry75.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 19, i32 1
  %44 = ptrtoint ptr %entry75.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %entry75.i, ptr %entry75.i, align 4
  %prev.i203.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 19, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i203.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry75.i, ptr %prev.i203.i, align 8
  %func77.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 19, i32 2
  %46 = ptrtoint ptr %func77.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @ipoib_ib_dev_flush_heavy, ptr %func77.i, align 4
  %restart_task.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 20
  tail call void @__init_work(ptr noundef %restart_task.i, i32 noundef 0) #17
  %47 = ptrtoint ptr %restart_task.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -64, ptr %restart_task.i, align 4
  %lockdep_map86.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map86.i, ptr noundef nonnull @.str.124, ptr noundef nonnull @ipoib_build_priv.__key.123, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry88.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 20, i32 1
  %48 = ptrtoint ptr %entry88.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %entry88.i, ptr %entry88.i, align 8
  %prev.i204.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 20, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i204.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %entry88.i, ptr %prev.i204.i, align 4
  %func90.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 20, i32 2
  %50 = ptrtoint ptr %func90.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ipoib_mcast_restart_task, ptr %func90.i, align 8
  %ah_reap_task.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 21
  tail call void @__init_work(ptr noundef %ah_reap_task.i, i32 noundef 0) #17
  %51 = ptrtoint ptr %ah_reap_task.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -64, ptr %ah_reap_task.i, align 8
  %lockdep_map103.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map103.i, ptr noundef nonnull @.str.126, ptr noundef nonnull @ipoib_build_priv.__key.125, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry106.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 1
  %52 = ptrtoint ptr %entry106.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %entry106.i, ptr %entry106.i, align 4
  %prev.i205.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i205.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %entry106.i, ptr %prev.i205.i, align 8
  %func109.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 2
  %54 = ptrtoint ptr %func109.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @ipoib_reap_ah, ptr %func109.i, align 4
  %timer114.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 21, i32 1
  tail call void @init_timer_key(ptr noundef %timer114.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.128, ptr noundef nonnull @ipoib_build_priv.__key.127) #17
  %neigh_reap_task.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 22
  tail call void @__init_work(ptr noundef %neigh_reap_task.i, i32 noundef 0) #17
  %55 = ptrtoint ptr %neigh_reap_task.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -64, ptr %neigh_reap_task.i, align 4
  %lockdep_map129.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map129.i, ptr noundef nonnull @.str.130, ptr noundef nonnull @ipoib_build_priv.__key.129, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry132.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 1
  %56 = ptrtoint ptr %entry132.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %entry132.i, ptr %entry132.i, align 8
  %prev.i206.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %prev.i206.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %entry132.i, ptr %prev.i206.i, align 4
  %func135.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 2
  %58 = ptrtoint ptr %func135.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @ipoib_reap_neigh, ptr %func135.i, align 8
  %timer140.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %call7.i.i, i32 0, i32 22, i32 1
  tail call void @init_timer_key(ptr noundef %timer140.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.132, ptr noundef nonnull @ipoib_build_priv.__key.131) #17
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %out ], [ 0, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_init_netdev(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_send(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_mcast_attach(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_mcast_detach(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipoib_intf_alloc(ptr noundef %hca, i32 noundef %port, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @rdma_alloc_netdev(ptr noundef %hca, i32 noundef %port, i32 noundef 1, ptr noundef %name, i8 noundef zeroext 0, ptr noundef nonnull @ipoib_setup_common) #17
  %cmp.not.i = icmp eq ptr %call.i, inttoptr (i32 -95 to ptr)
  br i1 %cmp.not.i, label %if.end.i, label %entry.ipoib_alloc_netdev.exit_crit_edge

entry.ipoib_alloc_netdev.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_alloc_netdev.exit

if.end.i:                                         ; preds = %entry
  %call3.i = tail call ptr @alloc_netdev_mqs(i32 noundef 40, ptr noundef %name, i8 noundef zeroext 0, ptr noundef nonnull @ipoib_setup_common, i32 noundef 1, i32 noundef 1) #17
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.ipoib_alloc_netdev.exit_crit_edge

if.end.i.ipoib_alloc_netdev.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_alloc_netdev.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

ipoib_alloc_netdev.exit:                          ; preds = %if.end.i.ipoib_alloc_netdev.exit_crit_edge, %entry.ipoib_alloc_netdev.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %entry.ipoib_alloc_netdev.exit_crit_edge ], [ %call3.i, %if.end.i.ipoib_alloc_netdev.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ipoib_alloc_netdev.exit.cleanup_crit_edge, label %if.end

ipoib_alloc_netdev.exit.cleanup_crit_edge:        ; preds = %ipoib_alloc_netdev.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %ipoib_alloc_netdev.exit
  %call2 = tail call i32 @ipoib_intf_init(ptr noundef %hca, i32 noundef %port, ptr noundef %name, ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @free_netdev(ptr noundef %retval.0.i) #17
  %0 = inttoptr i32 %call2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %ipoib_alloc_netdev.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.then3 ], [ %retval.0.i, %ipoib_alloc_netdev.exit.cleanup_crit_edge ], [ %retval.0.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_intf_free(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %next_priv_destructor = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %next_priv_destructor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_priv_destructor, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %4 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %priv_destructor, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %3(ptr noundef %dev) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %priv_destructor, align 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %add.ptr.i.i, align 4
  tail call void @kfree(ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_set_umcast(ptr nocapture noundef readonly %ndev, i32 noundef %umcast_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umcast_val)
  %cmp = icmp sgt i32 %umcast_val, 0
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #17
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_set_umcast._rs, ptr noundef nonnull @__func__.ipoib_set_umcast) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %do.end

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %3) #20
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #17
  br label %if.end8

if.end8:                                          ; preds = %if.else, %do.end, %if.then.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_add_umcast_attr(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %call = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_umcast) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_add_pkey_attr(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %call = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_pkey) #17
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_cleanup_module() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ipoib_netdev_notifier) #17
  tail call void @ipoib_netlink_fini() #20
  tail call void @ib_unregister_client(ptr noundef nonnull @ipoib_client) #17
  tail call void @ib_sa_unregister_client(ptr noundef nonnull @ipoib_sa_client) #17
  tail call void @ipoib_unregister_debugfs() #17
  %0 = load ptr, ptr @ipoib_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ipoib_netlink_fini() local_unnamed_addr #2 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_sa_unregister_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_unregister_debugfs() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_init_module() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ipoib_recvq_size, align 4
  %sub.i126 = add i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i126)
  %tobool.not.i.i.i = icmp eq i32 %sub.i126, 0
  br i1 %tobool.not.i.i.i, label %entry..thread139_crit_edge, label %cond.end17

entry..thread139_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %.thread139

cond.end17:                                       ; preds = %entry
  %1 = tail call i32 @llvm.ctlz.i32(i32 %sub.i126, i1 true) #17, !range !410
  %sub.i.i.i = sub nuw nsw i32 32, %1
  %cond18 = shl nuw i32 1, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %cond18)
  %cmp19 = icmp slt i32 %cond18, 8192
  br i1 %cmp19, label %2, label %cond.end17..thread_crit_edge

cond.end17..thread_crit_edge:                     ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %.thread

2:                                                ; preds = %cond.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond18)
  %cmp26 = icmp sgt i32 %cond18, 2
  br i1 %cmp26, label %..thread_crit_edge, label %..thread139_crit_edge

..thread139_crit_edge:                            ; preds = %2
  call void @__sanitizer_cov_trace_pc() #19
  br label %.thread139

..thread_crit_edge:                               ; preds = %2
  call void @__sanitizer_cov_trace_pc() #19
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %cond.end17..thread_crit_edge
  %3 = phi i32 [ %cond18, %..thread_crit_edge ], [ 8192, %cond.end17..thread_crit_edge ]
  br label %.thread139

.thread139:                                       ; preds = %.thread, %..thread139_crit_edge, %entry..thread139_crit_edge
  %4 = phi i32 [ %3, %.thread ], [ 2, %..thread139_crit_edge ], [ 2, %entry..thread139_crit_edge ]
  store i32 %4, ptr @ipoib_recvq_size, align 4
  %5 = load i32, ptr @ipoib_sendq_size, align 4
  %sub.i130 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i130)
  %tobool.not.i.i.i131 = icmp eq i32 %sub.i130, 0
  br i1 %tobool.not.i.i.i131, label %.thread139..thread148_crit_edge, label %cond.end61

.thread139..thread148_crit_edge:                  ; preds = %.thread139
  call void @__sanitizer_cov_trace_pc() #19
  br label %.thread148

cond.end61:                                       ; preds = %.thread139
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub.i130, i1 true) #17, !range !410
  %sub.i.i.i132 = sub nuw nsw i32 32, %6
  %cond62 = shl nuw i32 1, %sub.i.i.i132
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %cond62)
  %cmp64 = icmp slt i32 %cond62, 8192
  br i1 %cmp64, label %7, label %cond.end61..thread146_crit_edge

cond.end61..thread146_crit_edge:                  ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #19
  br label %.thread146

7:                                                ; preds = %cond.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %cond62)
  %cmp71 = icmp sgt i32 %cond62, 128
  br i1 %cmp71, label %..thread146_crit_edge, label %..thread148_crit_edge

..thread148_crit_edge:                            ; preds = %7
  call void @__sanitizer_cov_trace_pc() #19
  br label %.thread148

..thread146_crit_edge:                            ; preds = %7
  call void @__sanitizer_cov_trace_pc() #19
  br label %.thread146

.thread146:                                       ; preds = %..thread146_crit_edge, %cond.end61..thread146_crit_edge
  %8 = phi i32 [ %cond62, %..thread146_crit_edge ], [ 8192, %cond.end61..thread146_crit_edge ]
  br label %.thread148

.thread148:                                       ; preds = %.thread146, %..thread148_crit_edge, %.thread139..thread148_crit_edge
  %9 = phi i32 [ %8, %.thread146 ], [ 128, %..thread148_crit_edge ], [ 128, %.thread139..thread148_crit_edge ]
  store i32 %9, ptr @ipoib_sendq_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_max_conn_qp to i32))
  %10 = load i32, ptr @ipoib_max_conn_qp, align 4
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 4096)
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 0)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @ipoib_max_conn_qp to i32))
  store i32 %12, ptr @ipoib_max_conn_qp, align 4
  tail call void @ipoib_register_debugfs() #17
  %call98 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.159, i32 noundef 655362, i32 noundef 1) #17
  store ptr %call98, ptr @ipoib_workqueue, align 4
  %tobool.not = icmp eq ptr %call98, null
  br i1 %tobool.not, label %.thread148.err_fs_crit_edge, label %if.end

.thread148.err_fs_crit_edge:                      ; preds = %.thread148
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_fs

if.end:                                           ; preds = %.thread148
  tail call void @ib_sa_register_client(ptr noundef nonnull @ipoib_sa_client) #17
  %call99 = tail call i32 @ib_register_client(ptr noundef nonnull @ipoib_client) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end.err_sa_crit_edge

if.end.err_sa_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_sa

if.end102:                                        ; preds = %if.end
  %call103 = tail call i32 @ipoib_netlink_init() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %err_client

if.end106:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  %call107 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ipoib_netdev_notifier) #17
  br label %cleanup

err_client:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ib_unregister_client(ptr noundef nonnull @ipoib_client) #17
  br label %err_sa

err_sa:                                           ; preds = %err_client, %if.end.err_sa_crit_edge
  %ret.0 = phi i32 [ %call99, %if.end.err_sa_crit_edge ], [ %call103, %err_client ]
  tail call void @ib_sa_unregister_client(ptr noundef nonnull @ipoib_sa_client) #17
  %13 = load ptr, ptr @ipoib_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %13) #17
  br label %err_fs

err_fs:                                           ; preds = %err_sa, %.thread148.err_fs_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_sa ], [ -12, %.thread148.err_fs_crit_edge ]
  tail call void @ipoib_unregister_debugfs() #17
  br label %cleanup

cleanup:                                          ; preds = %err_fs, %if.end106
  %retval.0 = phi i32 [ %ret.1, %err_fs ], [ 0, %if.end106 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_free_ah(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_hard_header(ptr noundef %skb, ptr nocapture noundef readnone %dev, i16 noundef zeroext %type, ptr nocapture noundef readonly %daddr, ptr nocapture noundef readnone %saddr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #17
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %type, ptr %call, align 2
  %reserved = getelementptr inbounds %struct.ipoib_header, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %reserved to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %reserved, align 2
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #17
  %2 = call ptr @memcpy(ptr %call.i, ptr %daddr, i32 20)
  ret i32 24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_dev_init_default(ptr noundef %dev) #0 align 64 {
entry:
  %addr_mod = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %addr_mod) #17
  %2 = getelementptr inbounds [3 x i8], ptr %addr_mod, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %addr_mod, i32 0, i32 2
  %recv_napi.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 4
  tail call void @netif_napi_add(ptr noundef %dev, ptr noundef %recv_napi.i, ptr noundef nonnull @ipoib_rx_poll, i32 noundef 4) #17
  %send_napi.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 3
  tail call void @netif_napi_add(ptr noundef %dev, ptr noundef %send_napi.i, ptr noundef nonnull @ipoib_tx_poll, i32 noundef 64) #17
  %4 = load i32, ptr @ipoib_recvq_size, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 24) #17
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !401

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %rx_ring58 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 37
  %7 = ptrtoint ptr %rx_ring58 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rx_ring58, align 8
  br label %out

if.end7.i.i:                                      ; preds = %entry
  %8 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #24
  %rx_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 37
  %9 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i, ptr %rx_ring, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.out_crit_edge, label %if.end

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %if.end7.i.i
  %10 = load i32, ptr @ipoib_sendq_size, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 152) #17
  %12 = extractvalue { i32, i1 } %11, 1
  %13 = extractvalue { i32, i1 } %11, 0
  %retval.0.i = select i1 %12, i32 -1, i32 %13
  %call4 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i) #24
  %tx_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 38
  %14 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4, ptr %tx_ring, align 4
  %tobool6.not = icmp eq ptr %call4, null
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %15 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ca, align 8
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 2
  %17 = load i32, ptr @ipoib_sendq_size, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name, i32 noundef %17) #20
  br label %out_rx_ring_cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call i32 @ipoib_transport_dev_init(ptr noundef %dev, ptr noundef %16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end22, label %do.end16

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ca, align 8
  %name19 = getelementptr inbounds %struct.ib_device, ptr %19, i32 0, i32 2
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name19) #20
  %20 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_ring, align 4
  tail call void @vfree(ptr noundef %21) #17
  br label %out_rx_ring_cleanup

if.end22:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %qp = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 30
  %22 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qp, align 8
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qp_num, align 4
  %shr = lshr i32 %25, 16
  %conv = trunc i32 %shr to i8
  %26 = ptrtoint ptr %addr_mod to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %addr_mod, align 1
  %shr25 = lshr i32 %25, 8
  %conv27 = trunc i32 %shr25 to i8
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv27, ptr %2, align 1
  %conv32 = trunc i32 %25 to i8
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv32, ptr %3, align 1
  %dev34 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev34, align 4
  call void @dev_addr_mod(ptr noundef %30, i32 noundef 1, ptr noundef nonnull %addr_mod, i32 noundef 3) #17
  br label %cleanup

out_rx_ring_cleanup:                              ; preds = %do.end16, %do.end
  %31 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_ring, align 8
  tail call void @kfree(ptr noundef %32) #17
  br label %out

out:                                              ; preds = %out_rx_ring_cleanup, %if.end7.i.i.out_crit_edge, %kcalloc.exit.thread
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i.i, align 4
  %recv_napi.i55 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %34, i32 0, i32 4
  tail call void @__netif_napi_del(ptr noundef %recv_napi.i55) #17
  tail call void @synchronize_net() #17
  %send_napi.i56 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %34, i32 0, i32 3
  tail call void @__netif_napi_del(ptr noundef %send_napi.i56) #17
  tail call void @synchronize_net() #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end22
  %retval.0 = phi i32 [ -12, %out ], [ 0, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %addr_mod) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_dev_uninit_default(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @ipoib_transport_dev_cleanup(ptr noundef %dev) #17
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %recv_napi.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 4
  tail call void @__netif_napi_del(ptr noundef %recv_napi.i) #17
  tail call void @synchronize_net() #17
  %send_napi.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 3
  tail call void @__netif_napi_del(ptr noundef %send_napi.i) #17
  tail call void @synchronize_net() #17
  tail call void @ipoib_cm_dev_cleanup(ptr noundef %dev) #17
  %rx_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 8
  tail call void @kfree(ptr noundef %5) #17
  %tx_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ring, align 4
  tail call void @vfree(ptr noundef %7) #17
  %8 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rx_ring, align 8
  %9 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tx_ring, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_ib_dev_open_default(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_ib_dev_stop_default(ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_transport_dev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_rx_poll(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_tx_poll(ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_transport_dev_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_cm_dev_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_ndo_init(ptr noundef %ndev) #0 align 64 {
entry:
  %attr.i = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %parent = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i.i20.i = getelementptr i8, ptr %3, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i20.i, align 4
  %max_ib_mtu.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %max_ib_mtu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_ib_mtu.i, align 4
  %max_ib_mtu2.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 36
  %8 = ptrtoint ptr %max_ib_mtu2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_ib_mtu2.i, align 4
  %flags.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #17
  %dev.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 86
  %11 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_addr.i, align 64
  %call3.i = tail call ptr @memchr_inv(ptr noundef %12, i32 noundef 0, i32 noundef 20) #17
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %local_gid.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %dev_addr5.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 86
  %15 = ptrtoint ptr %dev_addr5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr5.i, align 64
  %add.ptr.i68 = getelementptr i8, ptr %16, i32 4
  %17 = call ptr @memcpy(ptr %local_gid.i, ptr %add.ptr.i68, i32 16)
  br label %if.end5

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %dev7.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev7.i, align 4
  %dev_addr8.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 86
  %22 = ptrtoint ptr %dev_addr8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr8.i, align 64
  tail call void @dev_addr_mod(ptr noundef %19, i32 noundef 0, ptr noundef %23, i32 noundef 20) #17
  %local_gid9.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 32
  %local_gid10.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 32
  %24 = call ptr @memcpy(ptr %local_gid9.i, ptr %local_gid10.i, i32 16)
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr.i) #17
  %25 = call ptr @memset(ptr %attr.i, i32 255, i32 72)
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %26 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ca.i, align 8
  %port.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 24
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port.i, align 4
  %conv.i = zext i8 %29 to i32
  %call1.i = call i32 @ib_query_port(ptr noundef %27, i32 noundef %conv.i, ptr noundef nonnull %attr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i70 = icmp eq i32 %call1.i, 0
  %30 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ca.i, align 8
  br i1 %tobool.not.i70, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %name.i = getelementptr inbounds %struct.ib_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %port.i, align 4
  %conv4.i = zext i8 %33 to i32
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i, i32 noundef %conv4.i) #20
  br label %ipoib_parent_init.exit.thread

if.end.i:                                         ; preds = %if.else
  %34 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %port.i, align 4
  %conv8.i = zext i8 %35 to i32
  %port_data.i.i.i = getelementptr inbounds %struct.ib_device, ptr %31, i32 0, i32 11
  %36 = ptrtoint ptr %port_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port_data.i.i.i, align 8
  %core_cap_flags.i.i.i = getelementptr %struct.ib_port_data, ptr %37, i32 %conv8.i, i32 1, i32 2
  %38 = ptrtoint ptr %core_cap_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %core_cap_flags.i.i.i, align 4
  %and.i.i.i = and i32 %39, 1052727
  call void @__sanitizer_cov_trace_const_cmp4(i32 1052727, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 1052727
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %phys_mtu.i.i = getelementptr inbounds %struct.ib_port_attr, ptr %attr.i, i32 0, i32 4
  br label %rdma_mtu_from_attr.exit.i.sink.split

if.else.i.i:                                      ; preds = %if.end.i
  %max_mtu.i.i = getelementptr inbounds %struct.ib_port_attr, ptr %attr.i, i32 0, i32 2
  %40 = ptrtoint ptr %max_mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_mtu.i.i, align 4
  %switch.tableidx = add i32 %41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %42 = icmp ult i32 %switch.tableidx, 5
  br i1 %42, label %switch.lookup, label %if.else.i.i.rdma_mtu_from_attr.exit.i_crit_edge

if.else.i.i.rdma_mtu_from_attr.exit.i_crit_edge:  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rdma_mtu_from_attr.exit.i

switch.lookup:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ipoib_ndo_init, i32 0, i32 %switch.tableidx
  br label %rdma_mtu_from_attr.exit.i.sink.split

rdma_mtu_from_attr.exit.i.sink.split:             ; preds = %switch.lookup, %if.then.i.i
  %switch.gep.sink = phi ptr [ %switch.gep, %switch.lookup ], [ %phys_mtu.i.i, %if.then.i.i ]
  %43 = ptrtoint ptr %switch.gep.sink to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep.sink, align 4
  br label %rdma_mtu_from_attr.exit.i

rdma_mtu_from_attr.exit.i:                        ; preds = %rdma_mtu_from_attr.exit.i.sink.split, %if.else.i.i.rdma_mtu_from_attr.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -1, %if.else.i.i.rdma_mtu_from_attr.exit.i_crit_edge ], [ %switch.load, %rdma_mtu_from_attr.exit.i.sink.split ]
  %max_ib_mtu.i71 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 36
  %44 = ptrtoint ptr %max_ib_mtu.i71 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i.i, ptr %max_ib_mtu.i71, align 4
  %pkey.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 25
  %call13.i = call i32 @ib_query_pkey(ptr noundef %31, i32 noundef %conv8.i, i16 noundef zeroext 0, ptr noundef %pkey.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  %45 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ca.i, align 8
  br i1 %tobool14.not.i, label %if.end26.i, label %do.end18.i

do.end18.i:                                       ; preds = %rdma_mtu_from_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %name21.i = getelementptr inbounds %struct.ib_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %port.i, align 4
  %conv24.i = zext i8 %48 to i32
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name21.i, i32 noundef %conv24.i, i32 noundef %call13.i) #20
  br label %ipoib_parent_init.exit.thread

if.end26.i:                                       ; preds = %rdma_mtu_from_attr.exit.i
  %49 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %port.i, align 4
  %conv29.i = zext i8 %50 to i32
  %local_gid.i72 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 32
  %call30.i = call i32 @rdma_query_gid(ptr noundef %46, i32 noundef %conv29.i, i32 noundef 0, ptr noundef %local_gid.i72) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %ipoib_parent_init.exit, label %do.end35.i

do.end35.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  %51 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ca.i, align 8
  %name38.i = getelementptr inbounds %struct.ib_device, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %port.i, align 4
  %conv41.i = zext i8 %54 to i32
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name38.i, i32 noundef %conv41.i, i32 noundef %call30.i) #20
  br label %ipoib_parent_init.exit.thread

ipoib_parent_init.exit.thread:                    ; preds = %do.end35.i, %do.end18.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call30.i, %do.end35.i ], [ %call13.i, %do.end18.i ], [ %call1.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr.i) #17
  br label %cleanup

ipoib_parent_init.exit:                           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i73 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %dev.i73 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i73, align 4
  call void @dev_addr_mod(ptr noundef %56, i32 noundef 4, ptr noundef %local_gid.i72, i32 noundef 16) #17
  %57 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ca.i, align 8
  %parent.i74 = getelementptr inbounds %struct.ib_device, ptr %58, i32 0, i32 13, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %parent.i74 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent.i74, align 8
  %61 = ptrtoint ptr %dev.i73 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i73, align 4
  %parent49.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 133, i32 1
  %63 = ptrtoint ptr %parent49.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %parent49.i, align 8
  %64 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %port.i, align 4
  %conv51.i = zext i8 %65 to i16
  %sub.i = add nsw i16 %conv51.i, -1
  %66 = load ptr, ptr %dev.i73, align 4
  %dev_port.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 61
  %67 = ptrtoint ptr %dev_port.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %sub.i, ptr %dev_port.i, align 4
  %68 = load i8, ptr %port.i, align 4
  %conv55.i = zext i8 %68 to i16
  %sub56.i = add nsw i16 %conv55.i, -1
  %69 = load ptr, ptr %dev.i73, align 4
  %dev_id.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 60
  %70 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %sub56.i, ptr %dev_id.i, align 2
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr.i) #17
  br label %if.end5

if.end5:                                          ; preds = %ipoib_parent_init.exit, %if.else.i, %if.then.i
  %max_ib_mtu = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 36
  %71 = ptrtoint ptr %max_ib_mtu to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_ib_mtu, align 4
  %sub = add i32 %72, -4
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %73 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub, ptr %mtu, align 4
  %admin_mtu = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 34
  %74 = ptrtoint ptr %admin_mtu to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub, ptr %admin_mtu, align 4
  %mcast_mtu = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 35
  %75 = ptrtoint ptr %mcast_mtu to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub, ptr %mcast_mtu, align 8
  %mtu8 = getelementptr i8, ptr %ndev, i32 2316
  %76 = ptrtoint ptr %mtu8 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub, ptr %mtu8, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 31
  %77 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 65520, ptr %max_mtu, align 4
  %neigh_priv_len = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 59
  %78 = ptrtoint ptr %neigh_priv_len to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 116, ptr %neigh_priv_len, align 16
  %pkey = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 25
  %79 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %pkey, align 2
  %81 = or i16 %80, -32768
  store i16 %81, ptr %pkey, align 2
  %82 = lshr i16 %81, 8
  %conv12 = trunc i16 %82 to i8
  %arrayidx = getelementptr %struct.net_device, ptr %ndev, i32 0, i32 99, i32 8
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv12, ptr %arrayidx, align 4
  %84 = load i16, ptr %pkey, align 2
  %conv15 = trunc i16 %84 to i8
  %arrayidx17 = getelementptr %struct.net_device, ptr %ndev, i32 0, i32 99, i32 9
  %85 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv15, ptr %arrayidx17, align 1
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  call void @_set_bit(i32 noundef 13, ptr noundef %flags) #17
  %ca.i75 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %86 = ptrtoint ptr %ca.i75 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ca.i75, align 8
  %device_cap_flags.i = getelementptr inbounds %struct.ib_device, ptr %87, i32 0, i32 22, i32 9
  %88 = ptrtoint ptr %device_cap_flags.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %device_cap_flags.i, align 8
  %hca_caps.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 59
  %90 = ptrtoint ptr %hca_caps.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %hca_caps.i, align 8
  %and.i = and i64 %89, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i76 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i76, label %if.end5.ipoib_set_dev_features.exit_crit_edge, label %if.then.i78

if.end5.ipoib_set_dev_features.exit_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_set_dev_features.exit

if.then.i78:                                      ; preds = %if.end5
  %dev.i77 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %91 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i77, align 4
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 24
  %93 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %hw_features.i, align 8
  %or.i = or i64 %94, 1099511627778
  store i64 %or.i, ptr %hw_features.i, align 8
  %95 = ptrtoint ptr %hca_caps.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %hca_caps.i, align 8
  %and3.i = and i64 %96, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool4.not.i = icmp eq i64 %and3.i, 0
  br i1 %tobool4.not.i, label %if.then.i78.if.end.i79_crit_edge, label %if.then5.i

if.then.i78.if.end.i79_crit_edge:                 ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i79

if.then5.i:                                       ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #19
  %97 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i77, align 4
  %hw_features7.i = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 24
  %99 = ptrtoint ptr %hw_features7.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %hw_features7.i, align 8
  %or8.i = or i64 %100, 65536
  store i64 %or8.i, ptr %hw_features7.i, align 8
  br label %if.end.i79

if.end.i79:                                       ; preds = %if.then5.i, %if.then.i78.if.end.i79_crit_edge
  %101 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i77, align 4
  %hw_features10.i = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 24
  %103 = ptrtoint ptr %hw_features10.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %hw_features10.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 23
  %105 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %features.i, align 16
  %or12.i = or i64 %106, %104
  store i64 %or12.i, ptr %features.i, align 16
  br label %ipoib_set_dev_features.exit

ipoib_set_dev_features.exit:                      ; preds = %if.end.i79, %if.end5.ipoib_set_dev_features.exit_crit_edge
  %107 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr.i.i, align 4
  %qp.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %108, i32 0, i32 30
  %109 = ptrtoint ptr %qp.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %qp.i, align 8
  %call1.i81 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.48, i32 noundef 655370, i32 noundef 1) #17
  %wq.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %108, i32 0, i32 14
  %110 = ptrtoint ptr %wq.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call1.i81, ptr %wq.i, align 4
  %tobool.not.i82 = icmp eq ptr %call1.i81, null
  br i1 %tobool.not.i82, label %do.end.i84, label %if.end.i86

do.end.i84:                                       ; preds = %ipoib_set_dev_features.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call3.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %ndev) #20
  br label %do.end

if.end.i86:                                       ; preds = %ipoib_set_dev_features.exit
  %ca.i85 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %108, i32 0, i32 23
  %111 = ptrtoint ptr %ca.i85 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ca.i85, align 8
  %call4.i = call ptr @__ib_alloc_pd(ptr noundef %112, i32 noundef 0, ptr noundef nonnull @.str.51) #17
  %pd.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %108, i32 0, i32 27
  %113 = ptrtoint ptr %pd.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call4.i, ptr %pd.i, align 4
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end10.i, label %if.end16.i

do.end10.i:                                       ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #19
  %114 = ptrtoint ptr %ca.i85 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ca.i85, align 8
  %name13.i = getelementptr inbounds %struct.ib_device, ptr %115, i32 0, i32 2
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name13.i) #20
  br label %clean_wq.i

if.end16.i:                                       ; preds = %if.end.i86
  %rn_ops.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %108, i32 0, i32 62
  %116 = ptrtoint ptr %rn_ops.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rn_ops.i, align 8
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %call17.i = call i32 %119(ptr noundef %ndev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end27.i, label %do.end22.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %ndev) #20
  br label %out_free_pd.i

if.end27.i:                                       ; preds = %if.end16.i
  %ntbl1.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %108, i32 0, i32 10
  %flags.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %108, i32 0, i32 5
  call void @_clear_bit(i32 noundef 12, ptr noundef %flags.i.i) #17
  %120 = ptrtoint ptr %ntbl1.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %ntbl1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %121 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %121, i32 noundef 3520, i32 noundef 24) #22
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end27.i.do.end33.i_crit_edge, label %cond.false18.i.i

if.end27.i.do.end33.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33.i

cond.false18.i.i:                                 ; preds = %if.end27.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 18) to i32))
  %122 = load i32, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 18), align 4
  %sub.i59.i.i = add i32 %122, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i59.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %sub.i59.i.i, 0
  %123 = call i32 @llvm.ctlz.i32(i32 %sub.i59.i.i, i1 true) #17, !range !410
  %sub.i.i.i.i.i = sub nuw nsw i32 32, %123
  %sub.i.i.op.i.i.i = shl nuw i32 1, %sub.i.i.i.i.i
  %shl.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i.i
  %124 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl.i.i.i, i32 4) #17
  %125 = extractvalue { i32, i1 } %124, 1
  br i1 %125, label %cond.false18.i.i.if.then24.i.i_crit_edge, label %kvcalloc.exit.i.i, !prof !401

cond.false18.i.i.if.then24.i.i_crit_edge:         ; preds = %cond.false18.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then24.i.i

kvcalloc.exit.i.i:                                ; preds = %cond.false18.i.i
  %126 = extractvalue { i32, i1 } %124, 0
  %call.i.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %126, i32 noundef 3520, i32 noundef -1) #24
  %tobool23.not.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool23.not.i.i, label %kvcalloc.exit.i.i.if.then24.i.i_crit_edge, label %if.end38.i

kvcalloc.exit.i.i.if.then24.i.i_crit_edge:        ; preds = %kvcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then24.i.i

if.then24.i.i:                                    ; preds = %kvcalloc.exit.i.i.if.then24.i.i_crit_edge, %cond.false18.i.i.if.then24.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #17
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then24.i.i, %if.end27.i.do.end33.i_crit_edge
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %ndev) #20
  br label %out_dev_uninit.i

if.end38.i:                                       ; preds = %kvcalloc.exit.i.i
  %size26.i.i = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %call7.i.i.i.i, i32 0, i32 4
  %127 = ptrtoint ptr %size26.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %shl.i.i.i, ptr %size26.i.i, align 4
  %sub27.i.i = add nsw i32 %shl.i.i.i, -1
  %mask.i.i = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %call7.i.i.i.i, i32 0, i32 3
  %128 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %sub27.i.i, ptr %mask.i.i, align 8
  %buckets28.i.i = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %call7.i.i.i.i, i32 0, i32 1
  %129 = ptrtoint ptr %buckets28.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i.i.i.i.i, ptr %buckets28.i.i, align 4
  %130 = ptrtoint ptr %ntbl1.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %call7.i.i.i.i, ptr %ntbl1.i.i, align 4
  %131 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %ntbl1.i.i, ptr %call7.i.i.i.i, align 8
  %entries.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %108, i32 0, i32 10, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %entries.i.i, i32 noundef 4) #17
  %132 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile i32 0, ptr %entries.i.i, align 4
  %133 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %wq.i, align 4
  %neigh_reap_task.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %108, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 15) to i32))
  %135 = load i32, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 15), align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %134, ptr noundef %neigh_reap_task.i.i, i32 noundef %135) #17
  %flags.i87 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %136 = ptrtoint ptr %flags.i87 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %flags.i87, align 8
  %and.i88 = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %tobool39.not.i = icmp eq i32 %and.i88, 0
  br i1 %tobool39.not.i, label %if.end38.i.if.end25_crit_edge, label %if.then40.i

if.end38.i.if.end25_crit_edge:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then40.i:                                      ; preds = %if.end38.i
  %call41.i = call i32 @ipoib_ib_dev_open(ptr noundef %ndev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.then40.i.if.end25_crit_edge, label %do.end46.i

if.then40.i.if.end25_crit_edge:                   ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

do.end46.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #19
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %ndev) #20
  call fastcc void @ipoib_neigh_hash_uninit(ptr noundef %ndev) #17
  br label %out_dev_uninit.i

out_dev_uninit.i:                                 ; preds = %do.end46.i, %do.end33.i
  %ret.0.i = phi i32 [ -12, %do.end33.i ], [ -19, %do.end46.i ]
  call void @ipoib_ib_dev_cleanup(ptr noundef %ndev) #17
  br label %out_free_pd.i

out_free_pd.i:                                    ; preds = %out_dev_uninit.i, %do.end22.i
  %ret.1.i = phi i32 [ %call17.i, %do.end22.i ], [ %ret.0.i, %out_dev_uninit.i ]
  %138 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pd.i, align 4
  %tobool54.not.i = icmp eq ptr %139, null
  br i1 %tobool54.not.i, label %out_free_pd.i.clean_wq.i_crit_edge, label %if.then55.i

out_free_pd.i.clean_wq.i_crit_edge:               ; preds = %out_free_pd.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %clean_wq.i

if.then55.i:                                      ; preds = %out_free_pd.i
  %call.i.i = call i32 @ib_dealloc_pd_user(ptr noundef nonnull %139, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i93.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i93.i, label %if.then55.i.ib_dealloc_pd.exit.i_crit_edge, label %land.rhs.i.i

if.then55.i.ib_dealloc_pd.exit.i_crit_edge:       ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ib_dealloc_pd.exit.i

land.rhs.i.i:                                     ; preds = %if.then55.i
  %.b38.i.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.ib_dealloc_pd.exit.i_crit_edge, label %if.then.i.i89, !prof !397

land.rhs.i.i.ib_dealloc_pd.exit.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ib_dealloc_pd.exit.i

if.then.i.i89:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.69) #17
  br label %ib_dealloc_pd.exit.i

ib_dealloc_pd.exit.i:                             ; preds = %if.then.i.i89, %land.rhs.i.i.ib_dealloc_pd.exit.i_crit_edge, %if.then55.i.ib_dealloc_pd.exit.i_crit_edge
  %140 = ptrtoint ptr %pd.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %pd.i, align 4
  br label %clean_wq.i

clean_wq.i:                                       ; preds = %ib_dealloc_pd.exit.i, %out_free_pd.i.clean_wq.i_crit_edge, %do.end10.i
  %ret.2.i = phi i32 [ -12, %do.end10.i ], [ %ret.1.i, %ib_dealloc_pd.exit.i ], [ %ret.1.i, %out_free_pd.i.clean_wq.i_crit_edge ]
  %141 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %wq.i, align 4
  %tobool60.not.i = icmp eq ptr %142, null
  br i1 %tobool60.not.i, label %clean_wq.i.do.end_crit_edge, label %if.then61.i

clean_wq.i.do.end_crit_edge:                      ; preds = %clean_wq.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then61.i:                                      ; preds = %clean_wq.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @destroy_workqueue(ptr noundef nonnull %142) #17
  %143 = ptrtoint ptr %wq.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %wq.i, align 4
  br label %do.end

do.end:                                           ; preds = %if.then61.i, %clean_wq.i.do.end_crit_edge, %do.end.i84
  %retval.0.i90.ph = phi i32 [ -12, %do.end.i84 ], [ %ret.2.i, %clean_wq.i.do.end_crit_edge ], [ %ret.2.i, %if.then61.i ]
  %144 = ptrtoint ptr %ca.i75 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ca.i75, align 8
  %name = getelementptr inbounds %struct.ib_device, ptr %145, i32 0, i32 2
  %dev = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %146 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev, align 4
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 24
  %148 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %port, align 4
  %conv23 = zext i8 %149 to i32
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name, ptr noundef %147, i32 noundef %conv23, i32 noundef %retval.0.i90.ph) #20
  br label %cleanup

if.end25:                                         ; preds = %if.then40.i.if.end25_crit_edge, %if.end38.i.if.end25_crit_edge
  %150 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %parent, align 8
  %tobool27.not = icmp eq ptr %151, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %do.body1.i

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body1.i:                                       ; preds = %if.end25
  %add.ptr.i.i91 = getelementptr i8, ptr %151, i32 2304
  %152 = ptrtoint ptr %add.ptr.i.i91 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr.i.i91, align 4
  %154 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !411
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %151, i32 0, i32 118
  %155 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pcpu_refcnt.i, align 4
  %157 = ptrtoint ptr %156 to i32
  %158 = call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i = and i32 %158, -16384
  %159 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 3
  %160 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %161
  %162 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %163, %157
  %164 = inttoptr i32 %add.i to ptr
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  %add13.i = add i32 %166, 1
  store i32 %add13.i, ptr %164, align 4
  %167 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !412
  %and.i.i.i93 = and i32 %167, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i93)
  %tobool24.not.i = icmp eq i32 %and.i.i.i93, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_hold.exit_crit_edge, !prof !401

do.body1.i.dev_hold.exit_crit_edge:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_hold.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @warn_bogus_irq_restore() #17
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %if.then28.i, %do.body1.i.dev_hold.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %154) #17, !srcloc !413
  %vlan_rwsem = getelementptr inbounds %struct.ipoib_dev_priv, ptr %153, i32 0, i32 6
  call void @down_write(ptr noundef %vlan_rwsem) #17
  %list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 53
  %child_intfs = getelementptr inbounds %struct.ipoib_dev_priv, ptr %153, i32 0, i32 52
  %prev.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %153, i32 0, i32 52, i32 1
  %168 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %prev.i, align 4
  %call.i.i94 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %169, ptr noundef %child_intfs) #17
  br i1 %call.i.i94, label %if.end.i.i95, label %dev_hold.exit.list_add_tail.exit_crit_edge

dev_hold.exit.list_add_tail.exit_crit_edge:       ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i95:                                     ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #19
  %170 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %list, ptr %prev.i, align 4
  %171 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %child_intfs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 53, i32 1
  %172 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %169, ptr %prev3.i.i, align 4
  %173 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %list, ptr %169, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i95, %dev_hold.exit.list_add_tail.exit_crit_edge
  call void @up_write(ptr noundef %vlan_rwsem) #17
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end25.cleanup_crit_edge, %do.end, %ipoib_parent_init.exit.thread
  %retval.0 = phi i32 [ %retval.0.i90.ph, %do.end ], [ 0, %list_add_tail.exit ], [ 0, %if.end25.cleanup_crit_edge ], [ %retval.0.i.ph, %ipoib_parent_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_ndo_uninit(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b137 = load i1, ptr @ipoib_ndo_uninit.__already_done, align 1
  br i1 %.b137, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !397

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_ndo_uninit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1977, i32 noundef 9, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.2, i32 noundef 1977) #17
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %child_intfs = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %child_intfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %child_intfs, align 4
  %cmp.i.not = icmp eq ptr %3, %child_intfs
  br i1 %cmp.i.not, label %if.end30.if.end64_crit_edge, label %do.end58, !prof !397

if.end30.if.end64_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

do.end58:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1983, i32 noundef 9, ptr noundef null) #17
  br label %if.end64

if.end64:                                         ; preds = %do.end58, %if.end30.if.end64_crit_edge
  %parent = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %tobool72.not = icmp eq ptr %5, null
  br i1 %tobool72.not, label %if.end64.if.end77_crit_edge, label %if.then73

if.end64.if.end77_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77

if.then73:                                        ; preds = %if.end64
  %add.ptr.i.i138 = getelementptr i8, ptr %5, i32 2304
  %6 = ptrtoint ptr %add.ptr.i.i138 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i138, align 4
  %vlan_rwsem = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 6
  tail call void @down_write(ptr noundef %vlan_rwsem) #17
  %list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 53
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then73.list_del.exit_crit_edge

if.then73.list_del.exit_crit_edge:                ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 53, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then73.list_del.exit_crit_edge
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 53, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @up_write(ptr noundef %vlan_rwsem) #17
  br label %if.end77

if.end77:                                         ; preds = %list_del.exit, %if.end64.if.end77_crit_edge
  tail call fastcc void @ipoib_neigh_hash_uninit(ptr noundef %dev)
  tail call void @ipoib_ib_dev_cleanup(ptr noundef %dev) #17
  %wq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wq, align 4
  %tobool78.not = icmp eq ptr %17, null
  br i1 %tobool78.not, label %if.end77.if.end114_crit_edge, label %if.then79

if.end77.if.end114_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end114

if.then79:                                        ; preds = %if.end77
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool82.not = icmp eq i32 %and1.i, 0
  br i1 %tobool82.not, label %if.then79.if.end104_crit_edge, label %do.end98, !prof !397

if.then79.if.end104_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

do.end98:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2000, i32 noundef 9, ptr noundef null) #17
  br label %if.end104

if.end104:                                        ; preds = %do.end98, %if.then79.if.end104_crit_edge
  %20 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %21) #17
  %22 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %wq, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.end104, %if.end77.if.end114_crit_edge
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  %tobool116.not = icmp eq ptr %24, null
  br i1 %tobool116.not, label %if.end114.if.end119_crit_edge, label %do.body1.i

if.end114.if.end119_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

do.body1.i:                                       ; preds = %if.end114
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !411
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 118
  %26 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcpu_refcnt.i, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %34, %28
  %35 = inttoptr i32 %add.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add13.i = add i32 %37, -1
  store i32 %add13.i, ptr %35, align 4
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !412
  %and.i.i.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !401

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #17, !srcloc !413
  br label %if.end119

if.end119:                                        ; preds = %dev_put.exit, %if.end114.if.end119_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %4) #20
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  tail call void @ipoib_ib_dev_down(ptr noundef %dev) #17
  tail call void @ipoib_ib_dev_stop(ptr noundef %dev) #17
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then8, label %do.end5.if.end27_crit_edge

do.end5.if.end27_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.then8:                                         ; preds = %do.end5
  %vlan_rwsem = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 6
  tail call void @down_read(ptr noundef %vlan_rwsem) #17
  %child_intfs = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 52
  %10 = ptrtoint ptr %child_intfs to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn42 = load ptr, ptr %child_intfs, align 4
  %cmp11.not43 = icmp eq ptr %.pn42, %child_intfs
  br i1 %cmp11.not43, label %if.then8.for.end_crit_edge, label %if.then8.for.body_crit_edge

if.then8.for.body_crit_edge:                      ; preds = %if.then8
  br label %for.body

if.then8.for.end_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.then8.for.body_crit_edge
  %.pn44 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn42, %if.then8.for.body_crit_edge ]
  %dev13 = getelementptr i8, ptr %.pn44, i32 -6216
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13, align 4
  %flags14 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags14, align 8
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %for.body.cleanup_crit_edge, label %if.end17

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %and19 = and i32 %14, -2
  %call20 = tail call i32 @dev_change_flags(ptr noundef %12, i32 noundef %and19, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %for.body.cleanup_crit_edge
  %15 = ptrtoint ptr %.pn44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn44, align 4
  %cmp11.not = icmp eq ptr %.pn, %child_intfs
  br i1 %cmp11.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then8.for.end_crit_edge
  tail call void @up_read(ptr noundef %vlan_rwsem) #17
  br label %if.end27

if.end27:                                         ; preds = %for.end, %do.end5.if.end27_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call2 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 20) #17
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr [20 x i8], ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp = icmp eq i8 %7, -1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 2
  br i1 %cmp, label %if.then, label %if.end52, !prof !401

if.then:                                          ; preds = %entry
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.161)
  switch i16 %9, label %if.then28 [
    i16 2048, label %if.then.if.end_crit_edge
    i16 -31011, label %if.then.if.end_crit_edge251
    i16 2054, label %if.then.if.end_crit_edge252
    i16 -32715, label %if.then.if.end_crit_edge253
    i16 -30518, label %if.then.if.end_crit_edge254
  ]

if.then.if.end_crit_edge254:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then.if.end_crit_edge253:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then.if.end_crit_edge252:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then.if.end_crit_edge251:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then28:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %11 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  br label %cleanup

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then.if.end_crit_edge251, %if.then.if.end_crit_edge252, %if.then.if.end_crit_edge253, %if.then.if.end_crit_edge254
  %pkey = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pkey, align 2
  %15 = lshr i16 %14, 8
  %conv30 = trunc i16 %15 to i8
  %arrayidx32 = getelementptr [20 x i8], ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv30, ptr %arrayidx32, align 1
  %17 = load i16, ptr %pkey, align 2
  %conv36 = trunc i16 %17 to i8
  %arrayidx38 = getelementptr [20 x i8], ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv36, ptr %arrayidx38, align 1
  %call40 = tail call ptr @ipoib_neigh_get(ptr noundef %dev, ptr noundef %3)
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end49, label %if.end.send_using_neigh_crit_edge, !prof !401

if.end.send_using_neigh_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %send_using_neigh

if.end49:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ipoib_mcast_send(ptr noundef %dev, ptr noundef %3, ptr noundef %skb) #17
  br label %cleanup

if.end52:                                         ; preds = %entry
  %19 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.162)
  switch i16 %9, label %sw.default [
    i16 2048, label %if.end52.sw.bb_crit_edge
    i16 -31011, label %if.end52.sw.bb_crit_edge255
    i16 -30518, label %if.end52.sw.bb_crit_edge256
    i16 2054, label %if.end52.sw.bb83_crit_edge
    i16 -32715, label %if.end52.sw.bb83_crit_edge257
  ]

if.end52.sw.bb83_crit_edge257:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb83

if.end52.sw.bb83_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb83

if.end52.sw.bb_crit_edge256:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

if.end52.sw.bb_crit_edge255:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

if.end52.sw.bb_crit_edge:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

sw.bb:                                            ; preds = %if.end52.sw.bb_crit_edge, %if.end52.sw.bb_crit_edge255, %if.end52.sw.bb_crit_edge256
  %call57 = tail call ptr @ipoib_neigh_get(ptr noundef %dev, ptr noundef %3)
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.then67, label %sw.bb.send_using_neigh_crit_edge, !prof !401

sw.bb.send_using_neigh_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %send_using_neigh

if.then67:                                        ; preds = %sw.bb
  %call70 = tail call fastcc ptr @neigh_add_path(ptr noundef %skb, ptr noundef %3, ptr noundef %dev)
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %if.then67.cleanup_crit_edge, label %if.then67.send_using_neigh_crit_edge, !prof !397

if.then67.send_using_neigh_crit_edge:             ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #19
  br label %send_using_neigh

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb83:                                          ; preds = %if.end52.sw.bb83_crit_edge, %if.end52.sw.bb83_crit_edge257
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i.i, align 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #17
  %broadcast.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %broadcast.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %broadcast.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %sw.bb83.drop_and_unlock.i_crit_edge, label %if.end.i

sw.bb83.drop_and_unlock.i_crit_edge:              ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop_and_unlock.i

if.end.i:                                         ; preds = %sw.bb83
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i, align 4
  %path_tree.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %path_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %n.016.i.i = load ptr, ptr %path_tree.i.i, align 4
  %tobool.not17.i.i = icmp eq ptr %n.016.i.i, null
  br i1 %tobool.not17.i.i, label %if.end.i.if.then15.critedge.i_crit_edge, label %if.end.i.while.body.i.i_crit_edge

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

if.end.i.if.then15.critedge.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15.critedge.i

while.body.i.i:                                   ; preds = %if.end5.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %n.018.i.i = phi ptr [ %n.0.i.i, %if.end5.i.i.while.body.i.i_crit_edge ], [ %n.016.i.i, %if.end.i.while.body.i.i_crit_edge ]
  %pathrec.i.i = getelementptr i8, ptr %n.018.i.i, i32 -212
  %call1.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %arrayidx, ptr noundef dereferenceable(16) %pathrec.i.i, i32 noundef 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i.i, i32 0, i32 2
  br label %if.end5.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.not.i.i, label %__path_find.exit.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i.i, i32 0, i32 1
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ]
  %27 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end5.i.i.if.then15.critedge.i_crit_edge, label %if.end5.i.i.while.body.i.i_crit_edge

if.end5.i.i.while.body.i.i_crit_edge:             ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

if.end5.i.i.if.then15.critedge.i_crit_edge:       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15.critedge.i

__path_find.exit.i:                               ; preds = %if.else.i.i
  %add.ptr.le.i.i = getelementptr i8, ptr %n.018.i.i, i32 -220
  %tobool8.not.i = icmp eq ptr %add.ptr.le.i.i, null
  br i1 %tobool8.not.i, label %__path_find.exit.i.if.then15.critedge.i_crit_edge, label %lor.lhs.false.i

__path_find.exit.i.if.then15.critedge.i_crit_edge: ; preds = %__path_find.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15.critedge.i

lor.lhs.false.i:                                  ; preds = %__path_find.exit.i
  %ah.i = getelementptr i8, ptr %n.018.i.i, i32 -132
  %28 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ah.i, align 8
  %tobool9.not.i = icmp eq ptr %29, null
  br i1 %tobool9.not.i, label %lor.lhs.false.i.if.else.i_crit_edge, label %lor.lhs.false10.i

lor.lhs.false.i.if.else.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %valid.i = getelementptr inbounds %struct.ipoib_ah, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool12.not.i = icmp eq i32 %31, 0
  br i1 %tobool12.not.i, label %lor.lhs.false10.i.if.else.i_crit_edge, label %if.end41.i

lor.lhs.false10.i.if.else.i_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then15.critedge.i:                             ; preds = %__path_find.exit.i.if.then15.critedge.i_crit_edge, %if.end5.i.i.if.then15.critedge.i_crit_edge, %if.end.i.if.then15.critedge.i_crit_edge
  %broadcast.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %25, i32 0, i32 11
  %32 = ptrtoint ptr %broadcast.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %broadcast.i.i, align 4
  %tobool.not.i104.i = icmp eq ptr %33, null
  br i1 %tobool.not.i104.i, label %if.then15.critedge.i.drop_and_unlock.i_crit_edge, label %if.end.i.i

if.then15.critedge.i.drop_and_unlock.i_crit_edge: ; preds = %if.then15.critedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop_and_unlock.i

if.end.i.i:                                       ; preds = %if.then15.critedge.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 2848, i32 noundef 240) #22
  %tobool2.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.drop_and_unlock.i_crit_edge, label %if.end22.i

if.end.i.i.drop_and_unlock.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop_and_unlock.i

if.end22.i:                                       ; preds = %if.end.i.i
  %queue.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 3
  %lock.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %35 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %queue.i.i, ptr %queue.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %queue.i.i, ptr %prev.i.i.i.i, align 8
  %qlen.i.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %neigh_list.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %neigh_list.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %neigh_list.i.i, ptr %neigh_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %neigh_list.i.i, ptr %prev.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %25, i32 0, i32 1
  %40 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.i.i, align 4
  %42 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %call7.i.i.i.i, align 8
  %ca.i.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %25, i32 0, i32 23
  %43 = ptrtoint ptr %ca.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ca.i.i.i, align 8
  %port.i.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %25, i32 0, i32 24
  %45 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %port.i.i.i, align 4
  %conv.i.i.i = zext i8 %46 to i32
  %port_data.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %44, i32 0, i32 11
  %47 = ptrtoint ptr %port_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port_data.i.i.i.i, align 8
  %core_cap_flags.i.i.i.i = getelementptr %struct.ib_port_data, ptr %48, i32 %conv.i.i.i, i32 1, i32 2
  %49 = ptrtoint ptr %core_cap_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %core_cap_flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %50, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %cmp.i.not.i.i.i, i32 0, i32 3
  %51 = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 1, i32 19
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.select.i.i.i, ptr %51, align 4
  %pathrec4.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 1
  %53 = call ptr @memcpy(ptr %pathrec4.i.i.i, ptr %arrayidx, i32 16)
  %sgid.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %local_gid.i.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %25, i32 0, i32 32
  %54 = call ptr @memcpy(ptr %sgid.i.i.i, ptr %local_gid.i.i.i, i32 16)
  %pkey.i.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %25, i32 0, i32 25
  %55 = ptrtoint ptr %pkey.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %pkey.i.i.i, align 2
  %pkey7.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 1, i32 8
  %57 = ptrtoint ptr %pkey7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %pkey7.i.i.i, align 8
  %numb_path.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 1, i32 7
  %58 = ptrtoint ptr %numb_path.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %numb_path.i.i.i, align 1
  %59 = ptrtoint ptr %broadcast.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %broadcast.i.i, align 4
  %traffic_class.i.i.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %traffic_class.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %traffic_class.i.i.i, align 8
  %traffic_class10.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 1, i32 5
  %63 = ptrtoint ptr %traffic_class10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %traffic_class10.i.i.i, align 1
  %64 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i.i, align 4
  %path_tree.i107.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %path_tree.i107.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %path_tree.i107.i, align 4
  %tobool.not3.i.i = icmp eq ptr %67, null
  br i1 %tobool.not3.i.i, label %if.end22.i.while.end.i.i_crit_edge, label %if.end22.i.while.body.i110.i_crit_edge

if.end22.i.while.body.i110.i_crit_edge:           ; preds = %if.end22.i
  br label %while.body.i110.i

if.end22.i.while.end.i.i_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i.i

while.body.i110.i:                                ; preds = %if.end8.i.i.while.body.i110.i_crit_edge, %if.end22.i.while.body.i110.i_crit_edge
  %68 = phi ptr [ %70, %if.end8.i.i.while.body.i110.i_crit_edge ], [ %67, %if.end22.i.while.body.i110.i_crit_edge ]
  %pathrec1.i.i = getelementptr i8, ptr %68, i32 -212
  %call4.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %pathrec4.i.i.i, ptr noundef dereferenceable(16) %pathrec1.i.i, i32 noundef 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i109.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i109.i, label %if.then.i112.i, label %if.else.i113.i

if.then.i112.i:                                   ; preds = %while.body.i110.i
  call void @__sanitizer_cov_trace_pc() #19
  %rb_left.i111.i = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 2
  br label %if.end8.i.i

if.else.i113.i:                                   ; preds = %while.body.i110.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %cmp5.not.i.i, label %if.else.i113.i.if.end27.i_crit_edge, label %if.then6.i.i

if.else.i113.i.if.end27.i_crit_edge:              ; preds = %if.else.i113.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27.i

if.then6.i.i:                                     ; preds = %if.else.i113.i
  call void @__sanitizer_cov_trace_pc() #19
  %rb_right.i114.i = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 1
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then6.i.i, %if.then.i112.i
  %n.1.i.i = phi ptr [ %rb_left.i111.i, %if.then.i112.i ], [ %rb_right.i114.i, %if.then6.i.i ]
  %69 = ptrtoint ptr %n.1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %n.1.i.i, align 4
  %tobool.not.i115.i = icmp eq ptr %70, null
  br i1 %tobool.not.i115.i, label %while.cond.while.end_crit_edge.i.i, label %if.end8.i.i.while.body.i110.i_crit_edge

if.end8.i.i.while.body.i110.i_crit_edge:          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i110.i

while.cond.while.end_crit_edge.i.i:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast.le.i.i = ptrtoint ptr %68 to i32
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.while.end_crit_edge.i.i, %if.end22.i.while.end.i.i_crit_edge
  %n.0.lcssa.i.i = phi ptr [ %n.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %path_tree.i107.i, %if.end22.i.while.end.i.i_crit_edge ]
  %pn.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end22.i.while.end.i.i_crit_edge ]
  %rb_node9.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 8
  %71 = ptrtoint ptr %rb_node9.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %pn.0.lcssa.i.i, ptr %rb_node9.i.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 8, i32 1
  %72 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %rb_right.i.i.i, align 8
  %rb_left.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 8, i32 2
  %73 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %74 = ptrtoint ptr %n.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %rb_node9.i.i, ptr %n.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node9.i.i, ptr noundef %path_tree.i107.i) #17
  %list.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 9
  %path_list.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %65, i32 0, i32 9
  %prev.i.i116.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %65, i32 0, i32 9, i32 1
  %75 = ptrtoint ptr %prev.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i116.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %76, ptr noundef %path_list.i.i) #17
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.end.i.i.if.end27.i_crit_edge

while.end.i.i.if.end27.i_crit_edge:               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27.i

if.end.i.i.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %77 = ptrtoint ptr %prev.i.i116.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %list.i.i, ptr %prev.i.i116.i, align 4
  %78 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %path_list.i.i, ptr %list.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i.i, i32 0, i32 9, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %list.i.i, ptr %76, align 4
  br label %if.end27.i

if.else.i:                                        ; preds = %lor.lhs.false10.i.if.else.i_crit_edge, %lor.lhs.false.i.if.else.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %21, i32 0, i32 1
  %81 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i.i, align 4
  %83 = ptrtoint ptr %add.ptr.le.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %add.ptr.le.i.i, align 8
  %ca.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %21, i32 0, i32 23
  %84 = ptrtoint ptr %ca.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ca.i.i, align 8
  %port.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %21, i32 0, i32 24
  %86 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %port.i.i, align 4
  %conv.i.i = zext i8 %87 to i32
  %port_data.i.i.i = getelementptr inbounds %struct.ib_device, ptr %85, i32 0, i32 11
  %88 = ptrtoint ptr %port_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %port_data.i.i.i, align 8
  %core_cap_flags.i.i.i = getelementptr %struct.ib_port_data, ptr %89, i32 %conv.i.i, i32 1, i32 2
  %90 = ptrtoint ptr %core_cap_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %core_cap_flags.i.i.i, align 4
  %and.i.i.i = and i32 %91, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i.i = select i1 %cmp.i.not.i.i, i32 0, i32 3
  %92 = getelementptr i8, ptr %n.018.i.i, i32 -136
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %spec.select.i.i, ptr %92, align 4
  %94 = call ptr @memcpy(ptr %pathrec.i.i, ptr %arrayidx, i32 16)
  %sgid.i.i = getelementptr i8, ptr %n.018.i.i, i32 -196
  %local_gid.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %21, i32 0, i32 32
  %95 = call ptr @memcpy(ptr %sgid.i.i, ptr %local_gid.i.i, i32 16)
  %pkey.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %21, i32 0, i32 25
  %96 = ptrtoint ptr %pkey.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %pkey.i.i, align 2
  %pkey7.i.i = getelementptr i8, ptr %n.018.i.i, i32 -164
  %98 = ptrtoint ptr %pkey7.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %pkey7.i.i, align 8
  %numb_path.i.i = getelementptr i8, ptr %n.018.i.i, i32 -165
  %99 = ptrtoint ptr %numb_path.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %numb_path.i.i, align 1
  %100 = ptrtoint ptr %broadcast.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %broadcast.i, align 4
  %traffic_class.i.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %101, i32 0, i32 6
  %102 = ptrtoint ptr %traffic_class.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %traffic_class.i.i, align 8
  %traffic_class10.i.i = getelementptr i8, ptr %n.018.i.i, i32 -167
  %104 = ptrtoint ptr %traffic_class10.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %traffic_class10.i.i, align 1
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %if.end.i.i.i.i, %while.end.i.i.if.end27.i_crit_edge, %if.else.i113.i.if.end27.i_crit_edge
  %path.0.i = phi ptr [ %add.ptr.le.i.i, %if.else.i ], [ %call7.i.i.i.i, %while.end.i.i.if.end27.i_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i.i.i ], [ %call7.i.i.i.i, %if.else.i113.i.if.end27.i_crit_edge ]
  %query.i = getelementptr inbounds %struct.ipoib_path, ptr %path.0.i, i32 0, i32 6
  %105 = ptrtoint ptr %query.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %query.i, align 8
  %tobool28.not.i = icmp eq ptr %106, null
  br i1 %tobool28.not.i, label %land.lhs.true.i, label %if.end27.i.if.end32.i_crit_edge

if.end27.i.if.end32.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.i

land.lhs.true.i:                                  ; preds = %if.end27.i
  %call29.i = tail call fastcc i32 @path_rec_start(ptr noundef %dev, ptr noundef nonnull %path.0.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i.if.end32.i_crit_edge, label %land.lhs.true.i.drop_and_unlock.i_crit_edge

land.lhs.true.i.drop_and_unlock.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop_and_unlock.i

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.i

if.end32.i:                                       ; preds = %land.lhs.true.i.if.end32.i_crit_edge, %if.end27.i.if.end32.i_crit_edge
  %qlen.i.i = getelementptr inbounds %struct.ipoib_path, ptr %path.0.i, i32 0, i32 3, i32 1
  %107 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %108)
  %cmp34.i = icmp ult i32 %108, 3
  br i1 %cmp34.i, label %if.then36.i, label %if.end32.i.drop_and_unlock.i_crit_edge

if.end32.i.drop_and_unlock.i_crit_edge:           ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop_and_unlock.i

if.then36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #19
  %queue.i = getelementptr inbounds %struct.ipoib_path, ptr %path.0.i, i32 0, i32 3
  %call.i.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #17
  %109 = call ptr @memcpy(ptr %call.i.i, ptr %3, i32 20)
  %prev.i.i118.i = getelementptr inbounds %struct.ipoib_path, ptr %path.0.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %110 = ptrtoint ptr %prev.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i.i118.i, align 4
  %112 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %queue.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %113 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %111, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i118.i, align 4
  %114 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %skb, ptr %111, align 4
  %115 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %116, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  br label %unlock.i

if.end41.i:                                       ; preds = %lor.lhs.false10.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call4.i) #17
  %117 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp44.i = icmp sgt i32 %117, 0
  br i1 %cmp44.i, label %do.end49.i, label %if.end41.i.do.end57.i_crit_edge

if.end41.i.do.end57.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end57.i

do.end49.i:                                       ; preds = %if.end41.i
  %dev51.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %21, i32 0, i32 1
  %118 = ptrtoint ptr %dev51.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev51.i, align 4
  %rec_type.i.i = getelementptr i8, ptr %n.018.i.i, i32 -136
  %120 = ptrtoint ptr %rec_type.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rec_type.i.i, align 4
  %122 = zext i32 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %121, label %do.end49.i.sa_path_get_dlid.exit.i_crit_edge [
    i32 0, label %if.then.i121.i
    i32 3, label %if.then4.i.i
  ]

do.end49.i.sa_path_get_dlid.exit.i_crit_edge:     ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sa_path_get_dlid.exit.i

if.then.i121.i:                                   ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #19
  %123 = getelementptr i8, ptr %n.018.i.i, i32 -152
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %123, align 4
  %conv.i120.i = zext i16 %125 to i32
  br label %sa_path_get_dlid.exit.i

if.then4.i.i:                                     ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #19
  %126 = getelementptr i8, ptr %n.018.i.i, i32 -152
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  br label %sa_path_get_dlid.exit.i

sa_path_get_dlid.exit.i:                          ; preds = %if.then4.i.i, %if.then.i121.i, %do.end49.i.sa_path_get_dlid.exit.i_crit_edge
  %retval.0.i122.i = phi i32 [ %conv.i120.i, %if.then.i121.i ], [ %128, %if.then4.i.i ], [ 0, %do.end49.i.sa_path_get_dlid.exit.i_crit_edge ]
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %119, i32 noundef %retval.0.i122.i) #20
  br label %do.end57.i

do.end57.i:                                       ; preds = %sa_path_get_dlid.exit.i, %if.end41.i.do.end57.i_crit_edge
  %send.i = getelementptr i8, ptr %dev, i32 2328
  %129 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %send.i, align 4
  %131 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ah.i, align 8
  %ah59.i = getelementptr inbounds %struct.ipoib_ah, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %ah59.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ah59.i, align 4
  %135 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %3, align 4
  %and.i = and i32 %136, 16777215
  %call63.i = tail call i32 %130(ptr noundef %dev, ptr noundef %skb, ptr noundef %134, i32 noundef %and.i) #17
  %137 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ah.i, align 8
  %last_send.i = getelementptr inbounds %struct.ipoib_ah, ptr %138, i32 0, i32 4
  %139 = ptrtoint ptr %last_send.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %call63.i, ptr %last_send.i, align 4
  br label %cleanup

drop_and_unlock.i:                                ; preds = %if.end32.i.drop_and_unlock.i_crit_edge, %land.lhs.true.i.drop_and_unlock.i_crit_edge, %if.end.i.i.drop_and_unlock.i_crit_edge, %if.then15.critedge.i.drop_and_unlock.i_crit_edge, %sw.bb83.drop_and_unlock.i_crit_edge
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %140 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %141, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  br label %unlock.i

unlock.i:                                         ; preds = %drop_and_unlock.i, %if.then36.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call4.i) #17
  br label %cleanup

sw.default:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  %tx_dropped85 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %142 = ptrtoint ptr %tx_dropped85 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tx_dropped85, align 4
  %inc86 = add i32 %143, 1
  store i32 %inc86, ptr %tx_dropped85, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  br label %cleanup

send_using_neigh:                                 ; preds = %if.then67.send_using_neigh_crit_edge, %sw.bb.send_using_neigh_crit_edge, %if.end.send_using_neigh_crit_edge
  %neigh.0 = phi ptr [ %call40, %if.end.send_using_neigh_crit_edge ], [ %call70, %if.then67.send_using_neigh_crit_edge ], [ %call57, %sw.bb.send_using_neigh_crit_edge ]
  %cm.i = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.0, i32 0, i32 1
  %144 = ptrtoint ptr %cm.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cm.i, align 4
  %tobool88.not = icmp eq ptr %145, null
  br i1 %tobool88.not, label %if.else, label %if.then89

if.then89:                                        ; preds = %send_using_neigh
  %flags.i = getelementptr inbounds %struct.ipoib_cm_tx, ptr %145, i32 0, i32 8
  %146 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool91.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool91.not, label %if.then89.if.end116_crit_edge, label %if.then92

if.then89.if.end116_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end116

if.then92:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ipoib_cm_send(ptr noundef %dev, ptr noundef %skb, ptr noundef nonnull %145) #17
  br label %unref

if.else:                                          ; preds = %send_using_neigh
  %148 = ptrtoint ptr %neigh.0 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %neigh.0, align 4
  %tobool95.not = icmp eq ptr %149, null
  br i1 %tobool95.not, label %if.else.if.end116_crit_edge, label %land.lhs.true96

if.else.if.end116_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end116

land.lhs.true96:                                  ; preds = %if.else
  %valid = getelementptr inbounds %struct.ipoib_ah, ptr %149, i32 0, i32 5
  %150 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool98.not = icmp eq i32 %151, 0
  br i1 %tobool98.not, label %if.then111, label %if.then99

if.then99:                                        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #19
  %send = getelementptr i8, ptr %dev, i32 2328
  %152 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %send, align 4
  %ah101 = getelementptr inbounds %struct.ipoib_ah, ptr %149, i32 0, i32 1
  %154 = ptrtoint ptr %ah101 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ah101, align 4
  %156 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %3, align 4
  %and105 = and i32 %157, 16777215
  %call106 = tail call i32 %153(ptr noundef %dev, ptr noundef %skb, ptr noundef %155, i32 noundef %and105) #17
  %158 = ptrtoint ptr %neigh.0 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %neigh.0, align 4
  %last_send = getelementptr inbounds %struct.ipoib_ah, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %last_send to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %call106, ptr %last_send, align 4
  br label %unref

if.then111:                                       ; preds = %land.lhs.true96
  %161 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %add.ptr.i.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %162) #17
  %163 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %add.ptr.i.i, align 4
  %path_tree.i.i203 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %164, i32 0, i32 8
  %165 = ptrtoint ptr %path_tree.i.i203 to i32
  call void @__asan_load4_noabort(i32 %165)
  %n.016.i.i204 = load ptr, ptr %path_tree.i.i203, align 4
  %tobool.not17.i.i205 = icmp eq ptr %n.016.i.i204, null
  br i1 %tobool.not17.i.i205, label %if.then111.neigh_refresh_path.exit_crit_edge, label %if.then111.while.body.i.i210_crit_edge

if.then111.while.body.i.i210_crit_edge:           ; preds = %if.then111
  br label %while.body.i.i210

if.then111.neigh_refresh_path.exit_crit_edge:     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #19
  br label %neigh_refresh_path.exit

while.body.i.i210:                                ; preds = %if.end5.i.i220.while.body.i.i210_crit_edge, %if.then111.while.body.i.i210_crit_edge
  %n.018.i.i206 = phi ptr [ %n.0.i.i218, %if.end5.i.i220.while.body.i.i210_crit_edge ], [ %n.016.i.i204, %if.then111.while.body.i.i210_crit_edge ]
  %pathrec.i.i207 = getelementptr i8, ptr %n.018.i.i206, i32 -212
  %call1.i.i208 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %arrayidx, ptr noundef dereferenceable(16) %pathrec.i.i207, i32 noundef 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i208)
  %cmp.i.i209 = icmp slt i32 %call1.i.i208, 0
  br i1 %cmp.i.i209, label %if.then.i.i212, label %if.else.i.i214

if.then.i.i212:                                   ; preds = %while.body.i.i210
  call void @__sanitizer_cov_trace_pc() #19
  %rb_left.i.i211 = getelementptr inbounds %struct.rb_node, ptr %n.018.i.i206, i32 0, i32 2
  br label %if.end5.i.i220

if.else.i.i214:                                   ; preds = %while.body.i.i210
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i208)
  %cmp2.not.i.i213 = icmp eq i32 %call1.i.i208, 0
  br i1 %cmp2.not.i.i213, label %__path_find.exit.i223, label %if.then3.i.i216

if.then3.i.i216:                                  ; preds = %if.else.i.i214
  call void @__sanitizer_cov_trace_pc() #19
  %rb_right.i.i215 = getelementptr inbounds %struct.rb_node, ptr %n.018.i.i206, i32 0, i32 1
  br label %if.end5.i.i220

if.end5.i.i220:                                   ; preds = %if.then3.i.i216, %if.then.i.i212
  %n.1.in.i.i217 = phi ptr [ %rb_left.i.i211, %if.then.i.i212 ], [ %rb_right.i.i215, %if.then3.i.i216 ]
  %166 = ptrtoint ptr %n.1.in.i.i217 to i32
  call void @__asan_load4_noabort(i32 %166)
  %n.0.i.i218 = load ptr, ptr %n.1.in.i.i217, align 4
  %tobool.not.i.i219 = icmp eq ptr %n.0.i.i218, null
  br i1 %tobool.not.i.i219, label %if.end5.i.i220.neigh_refresh_path.exit_crit_edge, label %if.end5.i.i220.while.body.i.i210_crit_edge

if.end5.i.i220.while.body.i.i210_crit_edge:       ; preds = %if.end5.i.i220
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i210

if.end5.i.i220.neigh_refresh_path.exit_crit_edge: ; preds = %if.end5.i.i220
  call void @__sanitizer_cov_trace_pc() #19
  br label %neigh_refresh_path.exit

__path_find.exit.i223:                            ; preds = %if.else.i.i214
  %add.ptr.le.i.i221 = getelementptr i8, ptr %n.018.i.i206, i32 -220
  %tobool.not.i222 = icmp eq ptr %add.ptr.le.i.i221, null
  br i1 %tobool.not.i222, label %__path_find.exit.i223.neigh_refresh_path.exit_crit_edge, label %if.end.i225

__path_find.exit.i223.neigh_refresh_path.exit_crit_edge: ; preds = %__path_find.exit.i223
  call void @__sanitizer_cov_trace_pc() #19
  br label %neigh_refresh_path.exit

if.end.i225:                                      ; preds = %__path_find.exit.i223
  %query.i224 = getelementptr i8, ptr %n.018.i.i206, i32 -60
  %167 = ptrtoint ptr %query.i224 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %query.i224, align 8
  %tobool7.not.i = icmp eq ptr %168, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end.i225.neigh_refresh_path.exit_crit_edge

if.end.i225.neigh_refresh_path.exit_crit_edge:    ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_pc() #19
  br label %neigh_refresh_path.exit

if.then8.i:                                       ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_pc() #19
  %call9.i = tail call fastcc i32 @path_rec_start(ptr noundef %dev, ptr noundef nonnull %add.ptr.le.i.i221) #17
  br label %neigh_refresh_path.exit

neigh_refresh_path.exit:                          ; preds = %if.then8.i, %if.end.i225.neigh_refresh_path.exit_crit_edge, %__path_find.exit.i223.neigh_refresh_path.exit_crit_edge, %if.end5.i.i220.neigh_refresh_path.exit_crit_edge, %if.then111.neigh_refresh_path.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %162, i32 noundef %call3.i) #17
  br label %if.end116

if.end116:                                        ; preds = %neigh_refresh_path.exit, %if.else.if.end116_crit_edge, %if.then89.if.end116_crit_edge
  %qlen.i = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.0, i32 0, i32 3, i32 1
  %169 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %170)
  %cmp118 = icmp ult i32 %170, 3
  br i1 %cmp118, label %if.then120, label %if.else132

if.then120:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #19
  %queue = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.0, i32 0, i32 3
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #17
  %171 = call ptr @memcpy(ptr %call.i, ptr %3, i32 20)
  %call127 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #17
  %prev.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.0, i32 0, i32 3, i32 0, i32 0, i32 1
  %172 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %prev.i.i, align 4
  %174 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %queue, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %175 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %173, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %176 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %skb, ptr %173, align 4
  %177 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %178, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call127) #17
  br label %unref

if.else132:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #19
  %tx_dropped134 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %179 = ptrtoint ptr %tx_dropped134 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tx_dropped134, align 4
  %inc135 = add i32 %180, 1
  store i32 %inc135, ptr %tx_dropped134, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  br label %unref

unref:                                            ; preds = %if.else132, %if.then120, %if.then99, %if.then92
  %refcnt.i = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.0, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !395
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #17
  %181 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #17, !srcloc !396
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %181, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %unref
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !397

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #17
  br label %cleanup

if.then.i:                                        ; preds = %unref
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !398
  tail call void @ipoib_neigh_dtor(ptr noundef %neigh.0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sw.default, %unlock.i, %do.end57.i, %if.then67.cleanup_crit_edge, %if.end49, %if.then28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_set_mcast_list(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %dev4 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %6) #20
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %wq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wq, align 4
  %restart_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 20
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %restart_task) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_ioctl(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %rn_ops = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %rn_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rn_ops, align 8
  %ndo_eth_ioctl = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ndo_eth_ioctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_eth_ioctl, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call3 = tail call i32 %5(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr.i, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool.not.i = icmp sgt i8 %5, -1
  br i1 %tobool.not.i, label %entry.if.end17_crit_edge, label %ipoib_cm_admin_enabled.exit

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

ipoib_cm_admin_enabled.exit:                      ; preds = %entry
  %flags.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %ipoib_cm_admin_enabled.exit.if.end17_crit_edge, label %if.then

ipoib_cm_admin_enabled.exit.if.end17_crit_edge:   ; preds = %ipoib_cm_admin_enabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then:                                          ; preds = %ipoib_cm_admin_enabled.exit
  %max_cm_mtu.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 55, i32 20
  %9 = ptrtoint ptr %max_cm_mtu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_cm_mtu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %new_mtu)
  %cmp = icmp ult i32 %10, %new_mtu
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %if.then
  %mcast_mtu = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 35
  %11 = ptrtoint ptr %mcast_mtu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mcast_mtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %new_mtu)
  %cmp4 = icmp ult i32 %12, %new_mtu
  br i1 %cmp4, label %do.body, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

do.body:                                          ; preds = %if.end
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_change_mtu._rs, ptr noundef nonnull @__func__.ipoib_change_mtu) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.if.end16_crit_edge, label %do.end

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %dev10 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  %15 = ptrtoint ptr %mcast_mtu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mcast_mtu, align 8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %14, i32 noundef %16) #20
  br label %if.end16

if.end16:                                         ; preds = %do.end, %do.body.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %17 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %cleanup

if.end17:                                         ; preds = %ipoib_cm_admin_enabled.exit.if.end17_crit_edge, %entry.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %new_mtu)
  %cmp18 = icmp slt i32 %new_mtu, 72
  br i1 %cmp18, label %if.end17.cleanup_crit_edge, label %lor.lhs.false

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end17
  %max_ib_mtu = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 36
  %18 = ptrtoint ptr %max_ib_mtu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_ib_mtu, align 4
  %sub = add i32 %19, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %new_mtu)
  %cmp19 = icmp ult i32 %sub, %new_mtu
  br i1 %cmp19, label %lor.lhs.false.cleanup_crit_edge, label %if.end21

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %admin_mtu = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 34
  %20 = ptrtoint ptr %admin_mtu to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %new_mtu, ptr %admin_mtu, align 4
  %mcast_mtu22 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 35
  %21 = ptrtoint ptr %mcast_mtu22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mcast_mtu22, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %new_mtu)
  %cmp24 = icmp ult i32 %22, %new_mtu
  br i1 %cmp24, label %do.body26, label %if.end21.if.end41_crit_edge

if.end21.if.end41_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

do.body26:                                        ; preds = %if.end21
  %23 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp27 = icmp sgt i32 %23, 0
  br i1 %cmp27, label %do.end31, label %do.body26.if.end41_crit_edge

do.body26.if.end41_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

do.end31:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #19
  %dev33 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev33, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %25, i32 noundef %22) #20
  br label %if.end41

if.end41:                                         ; preds = %do.end31, %do.body26.if.end41_crit_edge, %if.end21.if.end41_crit_edge
  %26 = ptrtoint ptr %mcast_mtu22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mcast_mtu22, align 8
  %28 = ptrtoint ptr %admin_mtu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %admin_mtu, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %27, i32 %29)
  %rn_ops = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 62
  %31 = ptrtoint ptr %rn_ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rn_ops, align 8
  %ndo_change_mtu = getelementptr inbounds %struct.net_device_ops, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %ndo_change_mtu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ndo_change_mtu, align 4
  %tobool46.not = icmp eq ptr %34, null
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end41
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %state.i, align 4
  %37 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i90 = icmp eq i32 %37, 0
  tail call void @netif_carrier_off(ptr noundef %dev) #17
  %38 = ptrtoint ptr %rn_ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rn_ops, align 8
  %ndo_change_mtu50 = getelementptr inbounds %struct.net_device_ops, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %ndo_change_mtu50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ndo_change_mtu50, align 4
  %call51 = tail call i32 %41(ptr noundef %dev, i32 noundef %30) #17
  br i1 %tobool.not.i90, label %if.then53, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then53:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @netif_carrier_on(ptr noundef %dev) #17
  br label %cleanup

if.else:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %mtu55 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %42 = ptrtoint ptr %mtu55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %30, ptr %mtu55, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then53, %if.then47.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end16, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ 0, %if.else ], [ %call51, %if.then53 ], [ %call51, %if.then47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_timeout(ptr noundef %dev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tx_timeout = getelementptr i8, ptr %dev, i32 2340
  %2 = ptrtoint ptr %tx_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_timeout, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %3(ptr noundef %dev, i32 noundef %txqueue) #17
  br label %cleanup

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_timeout._rs, ptr noundef nonnull @__func__.ipoib_timeout) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.do.body14_crit_edge, label %do.end

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %dev7 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call8 = tail call i32 @dev_trans_start(ptr noundef %dev) #17
  %sub = sub i32 %6, %call8
  %call9 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #17
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %5, i32 noundef %call9) #20
  br label %do.body14

do.body14:                                        ; preds = %do.end, %do.body.do.body14_crit_edge
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_timeout._rs.102, ptr noundef nonnull @__func__.ipoib_timeout) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.end20

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #19
  %dev22 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev22, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %12, 1
  %tx_head = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 39
  %13 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_head, align 8
  %tx_tail = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 40
  %15 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_tail, align 4
  %global_tx_head = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 41
  %17 = ptrtoint ptr %global_tx_head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %global_tx_head, align 8
  %global_tx_tail = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 42
  %19 = ptrtoint ptr %global_tx_tail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %global_tx_tail, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %8, i32 noundef %and1.i.i.i, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.body14.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_get_stats(ptr noundef %dev, ptr noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %rn_ops = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %rn_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rn_ops, align 8
  %ndo_get_stats64 = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %ndo_get_stats64 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_get_stats64, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %5(ptr noundef %dev, ptr noundef %stats) #17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %stats3 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  tail call void @netdev_stats_to_stats64(ptr noundef %stats, ptr noundef %stats3) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @ipoib_fix_features(ptr nocapture noundef readonly %dev, i64 noundef %features) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
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
  %and = and i64 %features, -65539
  %spec.select = select i1 %tobool.not, i64 %features, i64 %and
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipoib_get_iflink(ptr nocapture noundef readonly %dev) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %parent = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 51
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %.pn = phi ptr [ %6, %if.end ], [ %dev, %entry.cleanup_crit_edge ]
  %retval.0.in = getelementptr inbounds %struct.net_device, ptr %.pn, i32 0, i32 17
  %7 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_query_gid(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipoib_neigh_hash_uninit(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %4, ptr noundef nonnull @.str.64) #20
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %deleted = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 10, i32 3
  %5 = ptrtoint ptr %deleted to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %deleted, align 4
  %wait.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 10, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @init_completion.__key) #17
  %neigh_reap_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 22
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %neigh_reap_task) #17
  %ntbl1.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 10
  %flushed.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %flushed.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flushed.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 10, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @init_completion.__key) #17
  %flags3.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 12, ptr noundef %flags3.i) #17
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #17
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end5.do.end16.i_crit_edge

do.end5.do.end16.i_crit_edge:                     ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end16.i

land.lhs.true.i:                                  ; preds = %do.end5
  %call11.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.do.end16.i_crit_edge, label %land.lhs.true13.i

land.lhs.true.i.do.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end16.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %.b159.i = load i1, ptr @ipoib_flush_neighs.__warned, align 1
  br i1 %.b159.i, label %land.lhs.true13.i.do.end16.i_crit_edge, label %if.then.i

land.lhs.true13.i.do.end16.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end16.i

if.then.i:                                        ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_flush_neighs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1616, ptr noundef nonnull @.str.15) #17
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.then.i, %land.lhs.true13.i.do.end16.i_crit_edge, %land.lhs.true.i.do.end16.i_crit_edge, %do.end5.do.end16.i_crit_edge
  %7 = ptrtoint ptr %ntbl1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ntbl1.i, align 4
  %tobool19.not.i = icmp eq ptr %8, null
  br i1 %tobool19.not.i, label %if.end131.critedge.i, label %if.end21.i

if.end21.i:                                       ; preds = %do.end16.i
  %entries.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 10, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %entries.i, i32 noundef 4) #17
  %9 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool24.not.i = icmp eq i32 %10, 0
  br i1 %tobool24.not.i, label %if.end131.critedge163.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end21.i
  %size.i = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp27164.not.i = icmp eq i32 %12, 0
  br i1 %cmp27164.not.i, label %for.cond.preheader.i.if.then128.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then128.i_crit_edge:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then128.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %buckets.i = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %8, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %while.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0165.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %while.end.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buckets.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %i.0165.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %list_del_init.exit.i, %for.body.i
  %call.i160.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.i)
  %tobool33.not.i = icmp eq i32 %call.i160.i, 0
  br i1 %tobool33.not.i, label %land.lhs.true34.i, label %while.cond.i.do.end42.i_crit_edge

while.cond.i.do.end42.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end42.i

land.lhs.true34.i:                                ; preds = %while.cond.i
  %call35.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true34.i.do.end42.i_crit_edge, label %land.lhs.true37.i

land.lhs.true34.i.do.end42.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end42.i

land.lhs.true37.i:                                ; preds = %land.lhs.true34.i
  %.b155158.i = load i1, ptr @ipoib_flush_neighs.__warned.66, align 1
  br i1 %.b155158.i, label %land.lhs.true37.i.do.end42.i_crit_edge, label %if.then39.i

land.lhs.true37.i.do.end42.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end42.i

if.then39.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_flush_neighs.__warned.66, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1629, ptr noundef nonnull @.str.15) #17
  br label %do.end42.i

do.end42.i:                                       ; preds = %if.then39.i, %land.lhs.true37.i.do.end42.i_crit_edge, %land.lhs.true34.i.do.end42.i_crit_edge, %while.cond.i.do.end42.i_crit_edge
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %cmp44.not.i = icmp eq ptr %16, null
  br i1 %cmp44.not.i, label %while.end.i, label %do.body46.i

do.body46.i:                                      ; preds = %do.end42.i
  %call.i161.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161.i)
  %tobool51.not.i = icmp eq i32 %call.i161.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true52.i, label %do.body46.i.do.end60.i_crit_edge

do.body46.i.do.end60.i_crit_edge:                 ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end60.i

land.lhs.true52.i:                                ; preds = %do.body46.i
  %call53.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true52.i.do.end60.i_crit_edge, label %land.lhs.true55.i

land.lhs.true52.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end60.i

land.lhs.true55.i:                                ; preds = %land.lhs.true52.i
  %.b156157.i = load i1, ptr @ipoib_flush_neighs.__warned.67, align 1
  br i1 %.b156157.i, label %land.lhs.true55.i.do.end60.i_crit_edge, label %if.then57.i

land.lhs.true55.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end60.i

if.then57.i:                                      ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipoib_flush_neighs.__warned.67, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1632, ptr noundef nonnull @.str.15) #17
  br label %do.end60.i

do.end60.i:                                       ; preds = %if.then57.i, %land.lhs.true55.i.do.end60.i_crit_edge, %land.lhs.true52.i.do.end60.i_crit_edge, %do.body46.i.do.end60.i_crit_edge
  %hnext.i = getelementptr inbounds %struct.ipoib_neigh, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hnext.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !414
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %18, ptr %arrayidx.i, align 4
  %list.i = getelementptr inbounds %struct.ipoib_neigh, ptr %16, i32 0, i32 5
  %call.i.i162.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #17
  br i1 %call.i.i162.i, label %if.end.i.i.i, label %do.end60.i.list_del_init.exit.i_crit_edge

do.end60.i.list_del_init.exit.i_crit_edge:        ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %16, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %do.end60.i.list_del_init.exit.i_crit_edge
  %26 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %16, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.ipoib_neigh, ptr %16, i32 0, i32 7
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @ipoib_neigh_reclaim) #17
  br label %while.cond.i

while.end.i:                                      ; preds = %do.end42.i
  %inc.i = add nuw i32 %i.0165.i, 1
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 4
  %cmp27.i = icmp ult i32 %inc.i, %29
  br i1 %cmp27.i, label %while.end.i.for.body.i_crit_edge, label %while.end.i.if.then128.i_crit_edge

while.end.i.if.then128.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then128.i

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

if.then128.i:                                     ; preds = %while.end.i.if.then128.i_crit_edge, %for.cond.preheader.i.if.then128.i_crit_edge
  %30 = ptrtoint ptr %ntbl1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr null, ptr %ntbl1.i, align 4
  %rcu125.i = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %8, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu125.i, ptr noundef nonnull @neigh_hash_free_rcu) #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5.i) #17
  tail call void @wait_for_completion(ptr noundef %flushed.i) #17
  br label %ipoib_flush_neighs.exit

if.end131.critedge.i:                             ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5.i) #17
  br label %ipoib_flush_neighs.exit

if.end131.critedge163.i:                          ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %ntbl1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr null, ptr %ntbl1.i, align 4
  %rcu125.c.i = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %8, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %rcu125.c.i, ptr noundef nonnull @neigh_hash_free_rcu) #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5.i) #17
  br label %ipoib_flush_neighs.exit

ipoib_flush_neighs.exit:                          ; preds = %if.end131.critedge163.i, %if.end131.critedge.i, %if.then128.i
  tail call void @wait_for_completion(ptr noundef %deleted) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_ib_dev_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @neigh_hash_free_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -8
  %buckets1 = getelementptr i8, ptr %head, i32 -4
  %0 = ptrtoint ptr %buckets1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buckets1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void @kvfree(ptr noundef %1) #17
  tail call void @kfree(ptr noundef %add.ptr) #17
  %deleted = getelementptr inbounds %struct.ipoib_neigh_table, ptr %3, i32 0, i32 3
  tail call void @complete(ptr noundef %deleted) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_ib_dev_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_ib_dev_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_mcast_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @neigh_add_path(ptr noundef %skb, ptr nocapture noundef readonly %daddr, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #17
  %call7 = tail call ptr @ipoib_neigh_alloc(ptr noundef %daddr, ptr noundef %dev)
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #17
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %2 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.ipoib_neigh, ptr %call7, i32 0, i32 5
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %5, %list
  br i1 %cmp.i.not, label %if.end16, label %if.then14, !prof !397

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %daddr, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 4
  %path_tree.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %path_tree.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %n.016.i = load ptr, ptr %path_tree.i, align 4
  %tobool.not17.i = icmp eq ptr %n.016.i, null
  br i1 %tobool.not17.i, label %if.end16.if.then19_crit_edge, label %if.end16.while.body.i_crit_edge

if.end16.while.body.i_crit_edge:                  ; preds = %if.end16
  br label %while.body.i

if.end16.if.then19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %if.end16.while.body.i_crit_edge
  %n.018.i = phi ptr [ %n.0.i, %if.end5.i.while.body.i_crit_edge ], [ %n.016.i, %if.end16.while.body.i_crit_edge ]
  %pathrec.i = getelementptr i8, ptr %n.018.i, i32 -212
  %call1.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %add.ptr, ptr noundef dereferenceable(16) %pathrec.i, i32 noundef 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i172 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i172, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 2
  br label %if.end5.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.not.i, label %__path_find.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %9 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end5.i.if.then19_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

if.end5.i.if.then19_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19

__path_find.exit:                                 ; preds = %if.else.i
  %add.ptr.le.i = getelementptr i8, ptr %n.018.i, i32 -220
  %tobool18.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool18.not, label %__path_find.exit.if.then19_crit_edge, label %__path_find.exit.if.end26_crit_edge

__path_find.exit.if.end26_crit_edge:              ; preds = %__path_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

__path_find.exit.if.then19_crit_edge:             ; preds = %__path_find.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19

if.then19:                                        ; preds = %__path_find.exit.if.then19_crit_edge, %if.end5.i.if.then19_crit_edge, %if.end16.if.then19_crit_edge
  %broadcast.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 11
  %10 = ptrtoint ptr %broadcast.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %broadcast.i, align 4
  %tobool.not.i174 = icmp eq ptr %11, null
  br i1 %tobool.not.i174, label %if.then19.err_path_crit_edge, label %if.end.i

if.then19.err_path_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_path

if.end.i:                                         ; preds = %if.then19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 240) #22
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.err_path_crit_edge, label %if.end24

if.end.i.err_path_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_path

if.end24:                                         ; preds = %if.end.i
  %queue.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 3
  %lock.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %13 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %queue.i, ptr %queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %queue.i, ptr %prev.i.i.i, align 8
  %qlen.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qlen.i.i.i, align 4
  %neigh_list.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %neigh_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %neigh_list.i, ptr %neigh_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %neigh_list.i, ptr %prev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %call7.i.i.i, align 8
  %ca.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 23
  %21 = ptrtoint ptr %ca.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ca.i.i, align 8
  %port.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 24
  %23 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %port.i.i, align 4
  %conv.i.i = zext i8 %24 to i32
  %port_data.i.i.i = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 11
  %25 = ptrtoint ptr %port_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port_data.i.i.i, align 8
  %core_cap_flags.i.i.i = getelementptr %struct.ib_port_data, ptr %26, i32 %conv.i.i, i32 1, i32 2
  %27 = ptrtoint ptr %core_cap_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %core_cap_flags.i.i.i, align 4
  %and.i.i.i = and i32 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i.i = select i1 %cmp.i.not.i.i, i32 0, i32 3
  %29 = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 1, i32 19
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select.i.i, ptr %29, align 4
  %pathrec4.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 1
  %31 = call ptr @memcpy(ptr %pathrec4.i.i, ptr %add.ptr, i32 16)
  %sgid.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %local_gid.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 32
  %32 = call ptr @memcpy(ptr %sgid.i.i, ptr %local_gid.i.i, i32 16)
  %pkey.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 25
  %33 = ptrtoint ptr %pkey.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %pkey.i.i, align 2
  %pkey7.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 1, i32 8
  %35 = ptrtoint ptr %pkey7.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %pkey7.i.i, align 8
  %numb_path.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 1, i32 7
  %36 = ptrtoint ptr %numb_path.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %numb_path.i.i, align 1
  %37 = ptrtoint ptr %broadcast.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %broadcast.i, align 4
  %traffic_class.i.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %traffic_class.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %traffic_class.i.i, align 8
  %traffic_class10.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 1, i32 5
  %41 = ptrtoint ptr %traffic_class10.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %traffic_class10.i.i, align 1
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i.i, align 4
  %path_tree.i177 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %path_tree.i177 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %path_tree.i177, align 4
  %tobool.not3.i = icmp eq ptr %45, null
  br i1 %tobool.not3.i, label %if.end24.while.end.i_crit_edge, label %if.end24.while.body.i180_crit_edge

if.end24.while.body.i180_crit_edge:               ; preds = %if.end24
  br label %while.body.i180

if.end24.while.end.i_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.body.i180:                                  ; preds = %if.end8.i.while.body.i180_crit_edge, %if.end24.while.body.i180_crit_edge
  %46 = phi ptr [ %48, %if.end8.i.while.body.i180_crit_edge ], [ %45, %if.end24.while.body.i180_crit_edge ]
  %pathrec1.i = getelementptr i8, ptr %46, i32 -212
  %call4.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %pathrec4.i.i, ptr noundef dereferenceable(16) %pathrec1.i, i32 noundef 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i179 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i179, label %if.then.i182, label %if.else.i183

if.then.i182:                                     ; preds = %while.body.i180
  call void @__sanitizer_cov_trace_pc() #19
  %rb_left.i181 = getelementptr inbounds %struct.rb_node, ptr %46, i32 0, i32 2
  br label %if.end8.i

if.else.i183:                                     ; preds = %while.body.i180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not.i, label %if.else.i183.if.end26_crit_edge, label %if.then6.i

if.else.i183.if.end26_crit_edge:                  ; preds = %if.else.i183
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.then6.i:                                       ; preds = %if.else.i183
  call void @__sanitizer_cov_trace_pc() #19
  %rb_right.i184 = getelementptr inbounds %struct.rb_node, ptr %46, i32 0, i32 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then.i182
  %n.1.i = phi ptr [ %rb_left.i181, %if.then.i182 ], [ %rb_right.i184, %if.then6.i ]
  %47 = ptrtoint ptr %n.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %n.1.i, align 4
  %tobool.not.i185 = icmp eq ptr %48, null
  br i1 %tobool.not.i185, label %while.cond.while.end_crit_edge.i, label %if.end8.i.while.body.i180_crit_edge

if.end8.i.while.body.i180_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i180

while.cond.while.end_crit_edge.i:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast.le.i = ptrtoint ptr %46 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.end24.while.end.i_crit_edge
  %n.0.lcssa.i = phi ptr [ %n.1.i, %while.cond.while.end_crit_edge.i ], [ %path_tree.i177, %if.end24.while.end.i_crit_edge ]
  %pn.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end24.while.end.i_crit_edge ]
  %rb_node9.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %rb_node9.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %pn.0.lcssa.i, ptr %rb_node9.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %rb_right.i.i, align 8
  %rb_left.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 8, i32 2
  %51 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %rb_left.i.i, align 4
  %52 = ptrtoint ptr %n.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %rb_node9.i, ptr %n.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node9.i, ptr noundef %path_tree.i177) #17
  %list.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 9
  %path_list.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %43, i32 0, i32 9
  %prev.i.i186 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %43, i32 0, i32 9, i32 1
  %53 = ptrtoint ptr %prev.i.i186 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i186, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %54, ptr noundef %path_list.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.end.i.if.end26_crit_edge

while.end.i.if.end26_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.end.i.i.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %55 = ptrtoint ptr %prev.i.i186 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %list.i, ptr %prev.i.i186, align 4
  %56 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %path_list.i, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.ipoib_path, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %list.i, ptr %54, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end.i.i.i, %while.end.i.if.end26_crit_edge, %if.else.i183.if.end26_crit_edge, %__path_find.exit.if.end26_crit_edge
  %path.0 = phi ptr [ %add.ptr.le.i, %__path_find.exit.if.end26_crit_edge ], [ %call7.i.i.i, %while.end.i.if.end26_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i ], [ %call7.i.i.i, %if.else.i183.if.end26_crit_edge ]
  %neigh_list = getelementptr inbounds %struct.ipoib_path, ptr %path.0, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.ipoib_path, ptr %path.0, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %60, ptr noundef %neigh_list) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.list_add_tail.exit_crit_edge

if.end26.list_add_tail.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %list, ptr %prev.i, align 4
  %62 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %neigh_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7, i32 0, i32 5, i32 1
  %63 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %list, ptr %60, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end26.list_add_tail.exit_crit_edge
  %ah = getelementptr inbounds %struct.ipoib_path, ptr %path.0, i32 0, i32 2
  %65 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ah, align 8
  %tobool28.not = icmp eq ptr %66, null
  br i1 %tobool28.not, label %list_add_tail.exit.if.else80_crit_edge, label %land.lhs.true

list_add_tail.exit.if.else80_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else80

land.lhs.true:                                    ; preds = %list_add_tail.exit
  %valid = getelementptr inbounds %struct.ipoib_ah, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool30.not = icmp eq i32 %68, 0
  br i1 %tobool30.not, label %land.lhs.true.if.else80_crit_edge, label %if.then31

land.lhs.true.if.else80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else80

if.then31:                                        ; preds = %land.lhs.true
  %ref = getelementptr inbounds %struct.ipoib_ah, ptr %66, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #17
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #17, !srcloc !400
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then31.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !401

if.then31.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then31
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %70 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %.not.i.i.i.i = icmp sgt i32 %70, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !397

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then31.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then31.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #17
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %71 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ah, align 8
  %73 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %call7, align 4
  %daddr35 = getelementptr inbounds %struct.ipoib_neigh, ptr %call7, i32 0, i32 2
  %74 = ptrtoint ptr %daddr35 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %daddr35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %tobool.not.i187 = icmp sgt i8 %75, -1
  br i1 %tobool.not.i187, label %kref_get.exit.if.else72_crit_edge, label %ipoib_cm_enabled.exit

kref_get.exit.if.else72_crit_edge:                ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else72

ipoib_cm_enabled.exit:                            ; preds = %kref_get.exit
  %76 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i.i, align 4
  %flags.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flags.i, align 4
  %80 = and i32 %79, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool37.not = icmp eq i32 %80, 0
  br i1 %tobool37.not, label %ipoib_cm_enabled.exit.if.else72_crit_edge, label %if.then38

ipoib_cm_enabled.exit.if.else72_crit_edge:        ; preds = %ipoib_cm_enabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else72

if.then38:                                        ; preds = %ipoib_cm_enabled.exit
  %cm.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7, i32 0, i32 1
  %81 = ptrtoint ptr %cm.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cm.i, align 4
  %tobool40.not = icmp eq ptr %82, null
  br i1 %tobool40.not, label %if.end43, label %if.then38.if.end47_crit_edge

if.then38.if.end47_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

if.end43:                                         ; preds = %if.then38
  %call42 = tail call ptr @ipoib_cm_create_tx(ptr noundef %dev, ptr noundef %path.0, ptr noundef nonnull %call7) #17
  %83 = ptrtoint ptr %cm.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call42, ptr %cm.i, align 4
  %tobool45.not = icmp eq ptr %call42, null
  br i1 %tobool45.not, label %if.then46, label %if.end43.if.end47_crit_edge

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ipoib_neigh_free(ptr noundef nonnull %call7)
  br label %err_drop

if.end47:                                         ; preds = %if.end43.if.end47_crit_edge, %if.then38.if.end47_crit_edge
  %qlen.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7, i32 0, i32 3, i32 1
  %84 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %85)
  %cmp49 = icmp ult i32 %85, 3
  br i1 %cmp49, label %if.end47.if.end98_crit_edge, label %do.body55

if.end47.if.end98_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

do.body55:                                        ; preds = %if.end47
  %call56 = tail call i32 @___ratelimit(ptr noundef nonnull @neigh_add_path._rs, ptr noundef nonnull @__func__.neigh_add_path) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %do.body55.err_drop_crit_edge, label %do.end61

do.body55.err_drop_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_drop

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #19
  %dev63 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %86 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev63, align 4
  %88 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %qlen.i, align 4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %87, i32 noundef %89) #20
  br label %err_drop

if.else72:                                        ; preds = %ipoib_cm_enabled.exit.if.else72_crit_edge, %kref_get.exit.if.else72_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #17
  %send = getelementptr i8, ptr %dev, i32 2328
  %90 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %send, align 4
  %92 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ah, align 8
  %ah75 = getelementptr inbounds %struct.ipoib_ah, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %ah75 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ah75, align 4
  %96 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %daddr, align 4
  %and = and i32 %97, 16777215
  %call77 = tail call i32 %91(ptr noundef %dev, ptr noundef %skb, ptr noundef %95, i32 noundef %and) #17
  %98 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ah, align 8
  %last_send = getelementptr inbounds %struct.ipoib_ah, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %last_send to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call77, ptr %last_send, align 4
  %refcnt.i = getelementptr inbounds %struct.ipoib_neigh, ptr %call7, i32 0, i32 8
  %call.i.i.i.i.i.i194 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !395
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #17
  %101 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #17, !srcloc !396
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i196, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i195 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i195, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !397

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #17
  br label %cleanup

if.then.i196:                                     ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !398
  tail call void @ipoib_neigh_dtor(ptr noundef %call7) #17
  br label %cleanup

if.else80:                                        ; preds = %land.lhs.true.if.else80_crit_edge, %list_add_tail.exit.if.else80_crit_edge
  %102 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %call7, align 4
  %query = getelementptr inbounds %struct.ipoib_path, ptr %path.0, i32 0, i32 6
  %103 = ptrtoint ptr %query to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %query, align 8
  %tobool82.not = icmp eq ptr %104, null
  br i1 %tobool82.not, label %land.lhs.true83, label %if.else80.if.end87_crit_edge

if.else80.if.end87_crit_edge:                     ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end87

land.lhs.true83:                                  ; preds = %if.else80
  %call84 = tail call fastcc i32 @path_rec_start(ptr noundef %dev, ptr noundef %path.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %land.lhs.true83.if.end87_crit_edge, label %land.lhs.true83.err_path_crit_edge

land.lhs.true83.err_path_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_path

land.lhs.true83.if.end87_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end87

if.end87:                                         ; preds = %land.lhs.true83.if.end87_crit_edge, %if.else80.if.end87_crit_edge
  %qlen.i198 = getelementptr inbounds %struct.ipoib_neigh, ptr %call7, i32 0, i32 3, i32 1
  %105 = ptrtoint ptr %qlen.i198 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %qlen.i198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %106)
  %cmp90 = icmp ult i32 %106, 3
  br i1 %cmp90, label %if.then92, label %if.end87.err_drop_crit_edge

if.end87.err_drop_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_drop

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #19
  %daddr93 = getelementptr inbounds %struct.ipoib_neigh, ptr %call7, i32 0, i32 2
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %if.end47.if.end98_crit_edge
  %daddr93.sink = phi ptr [ %daddr93, %if.then92 ], [ %daddr35, %if.end47.if.end98_crit_edge ]
  %qlen.i198.sink236 = phi ptr [ %qlen.i198, %if.then92 ], [ %qlen.i, %if.end47.if.end98_crit_edge ]
  %queue88.sink = getelementptr inbounds %struct.ipoib_neigh, ptr %call7, i32 0, i32 3
  %call.i199 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #17
  %107 = call ptr @memcpy(ptr %call.i199, ptr %daddr93.sink, i32 20)
  %prev.i.i200 = getelementptr inbounds %struct.ipoib_neigh, ptr %call7, i32 0, i32 3, i32 0, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i.i200 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i200, align 4
  %110 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %queue88.sink, ptr %skb, align 8
  %prev10.i.i.i201 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %111 = ptrtoint ptr %prev10.i.i.i201 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %prev10.i.i.i201, align 4
  store volatile ptr %skb, ptr %prev.i.i200, align 4
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %skb, ptr %109, align 4
  %113 = ptrtoint ptr %qlen.i198.sink236 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %qlen.i198.sink236, align 4
  %add.i.i.i203 = add i32 %114, 1
  store volatile i32 %add.i.i.i203, ptr %qlen.i198.sink236, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #17
  %refcnt.i204 = getelementptr inbounds %struct.ipoib_neigh, ptr %call7, i32 0, i32 8
  %call.i.i.i.i.i.i205 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i204, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !395
  tail call void @llvm.prefetch.p0(ptr %refcnt.i204, i32 1, i32 3, i32 1) #17
  %115 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i204, ptr %refcnt.i204, i32 1, ptr elementtype(i32) %refcnt.i204) #17, !srcloc !396
  %asmresult.i.i.i.i.i.i.i206 = extractvalue { i32, i32, i32 } %115, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i206)
  %cmp.i.i.i.i207 = icmp eq i32 %asmresult.i.i.i.i.i.i.i206, 1
  br i1 %cmp.i.i.i.i207, label %if.then.i211, label %if.end5.i.i.i.i209

if.end5.i.i.i.i209:                               ; preds = %if.end98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i206)
  %.not.i.i.i.i208 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i206, 0
  br i1 %.not.i.i.i.i208, label %if.end5.i.i.i.i209.cleanup_crit_edge, label %if.then10.i.i.i.i210, !prof !397

if.end5.i.i.i.i209.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i209
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i210:                             ; preds = %if.end5.i.i.i.i209
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i204, i32 noundef 3) #17
  br label %cleanup

if.then.i211:                                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !398
  tail call void @ipoib_neigh_dtor(ptr noundef %call7) #17
  br label %cleanup

err_path:                                         ; preds = %land.lhs.true83.err_path_crit_edge, %if.end.i.err_path_crit_edge, %if.then19.err_path_crit_edge
  tail call void @ipoib_neigh_free(ptr noundef nonnull %call7)
  br label %err_drop

err_drop:                                         ; preds = %err_path, %if.end87.err_drop_crit_edge, %do.end61, %do.body55.err_drop_crit_edge, %if.then46
  %tx_dropped101 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %116 = ptrtoint ptr %tx_dropped101 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tx_dropped101, align 4
  %inc102 = add i32 %117, 1
  store i32 %inc102, ptr %tx_dropped101, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #17
  %refcnt.i214 = getelementptr inbounds %struct.ipoib_neigh, ptr %call7, i32 0, i32 8
  %call.i.i.i.i.i.i215 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i214, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !395
  tail call void @llvm.prefetch.p0(ptr %refcnt.i214, i32 1, i32 3, i32 1) #17
  %118 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i214, ptr %refcnt.i214, i32 1, ptr elementtype(i32) %refcnt.i214) #17, !srcloc !396
  %asmresult.i.i.i.i.i.i.i216 = extractvalue { i32, i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i216)
  %cmp.i.i.i.i217 = icmp eq i32 %asmresult.i.i.i.i.i.i.i216, 1
  br i1 %cmp.i.i.i.i217, label %if.then.i221, label %if.end5.i.i.i.i219

if.end5.i.i.i.i219:                               ; preds = %err_drop
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i216)
  %.not.i.i.i.i218 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i216, 0
  br i1 %.not.i.i.i.i218, label %if.end5.i.i.i.i219.cleanup_crit_edge, label %if.then10.i.i.i.i220, !prof !397

if.end5.i.i.i.i219.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i219
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i220:                             ; preds = %if.end5.i.i.i.i219
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i214, i32 noundef 3) #17
  br label %cleanup

if.then.i221:                                     ; preds = %err_drop
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !398
  tail call void @ipoib_neigh_dtor(ptr noundef nonnull %call7) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i221, %if.then10.i.i.i.i220, %if.end5.i.i.i.i219.cleanup_crit_edge, %if.then.i211, %if.then10.i.i.i.i210, %if.end5.i.i.i.i209.cleanup_crit_edge, %if.then.i196, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then14, %if.then
  %retval.0 = phi ptr [ %call7, %if.then14 ], [ null, %if.then ], [ null, %if.end5.i.i.i.i.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i ], [ null, %if.then.i196 ], [ null, %if.end5.i.i.i.i209.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i210 ], [ null, %if.then.i211 ], [ null, %if.end5.i.i.i.i219.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i220 ], [ null, %if.then.i221 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_cm_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipoib_cm_create_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @path_rec_start(ptr nocapture noundef readonly %dev, ptr noundef %path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %pathrec = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 1
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %4, ptr noundef %pathrec) #20
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %done = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 7
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @init_completion.__key) #17
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ca, align 8
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port, align 4
  %conv = zext i8 %9 to i32
  %pathrec7 = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 1
  %query = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 6
  %call8 = tail call i32 @ib_sa_path_rec_get(ptr noundef nonnull @ipoib_sa_client, ptr noundef %7, i32 noundef %conv, ptr noundef %pathrec7, i64 noundef 13324, i32 noundef 1000, i32 noundef 2592, ptr noundef nonnull @path_rec_completion, ptr noundef %path, ptr noundef %query) #17
  %query_id = getelementptr inbounds %struct.ipoib_path, ptr %path, i32 0, i32 5
  %10 = ptrtoint ptr %query_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call8, ptr %query_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp10 = icmp slt i32 %call8, 0
  br i1 %cmp10, label %do.body13, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body13:                                        ; preds = %do.end6
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @path_rec_start._rs, ptr noundef nonnull @.str.75) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %do.body13.do.end27_crit_edge, label %do.end18

do.body13.do.end27_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end27

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #19
  %dev20 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev20, align 4
  %13 = ptrtoint ptr %query_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %query_id, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %12, i32 noundef %14) #20
  br label %do.end27

do.end27:                                         ; preds = %do.end18, %do.body13.do.end27_crit_edge
  %15 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %query, align 8
  tail call void @complete(ptr noundef %done) #17
  %16 = ptrtoint ptr %query_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %query_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %do.end27 ], [ 0, %do.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_sa_path_rec_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @path_rec_completion(i32 noundef %status, ptr noundef %pathrec, ptr noundef %path_ptr) #0 align 64 {
entry:
  %skqueue = alloca %struct.sk_buff_head, align 4
  %av = alloca %struct.rdma_ah_attr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path_ptr, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %skqueue) #17
  %4 = call ptr @memset(ptr %skqueue, i32 255, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  %5 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %tobool.not, label %do.body, label %do.body10

do.body:                                          ; preds = %entry
  br i1 %cmp, label %do.end, label %do.body.if.then29_crit_edge

do.body.if.then29_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then29

do.end:                                           ; preds = %do.body
  %dev4 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  %rec_type.i = getelementptr inbounds %struct.sa_path_rec, ptr %pathrec, i32 0, i32 19
  %8 = ptrtoint ptr %rec_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rec_type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %9, label %do.end.sa_path_get_dlid.exit_crit_edge [
    i32 0, label %if.then.i
    i32 3, label %if.then4.i
  ]

do.end.sa_path_get_dlid.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sa_path_get_dlid.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %11 = getelementptr inbounds %struct.sa_path_rec, ptr %pathrec, i32 0, i32 18
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 4
  %conv.i = zext i16 %13 to i32
  br label %sa_path_get_dlid.exit

if.then4.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %14 = getelementptr inbounds %struct.sa_path_rec, ptr %pathrec, i32 0, i32 18
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  br label %sa_path_get_dlid.exit

sa_path_get_dlid.exit:                            ; preds = %if.then4.i, %if.then.i, %do.end.sa_path_get_dlid.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %16, %if.then4.i ], [ 0, %do.end.sa_path_get_dlid.exit_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %7, i32 noundef %retval.0.i, ptr noundef %pathrec) #20
  br label %if.then29

do.body10:                                        ; preds = %entry
  br i1 %cmp, label %do.end15, label %do.body37.critedge

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #19
  %dev17 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev17, align 4
  %pathrec20 = getelementptr inbounds %struct.ipoib_path, ptr %path_ptr, i32 0, i32 1
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %18, i32 noundef %status, ptr noundef %pathrec20) #20
  %lock.i282 = getelementptr inbounds %struct.sk_buff_head, ptr %skqueue, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i282, ptr noundef nonnull @.str.32, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %19 = ptrtoint ptr %skqueue to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %skqueue, ptr %skqueue, align 4
  %prev.i.i283 = getelementptr inbounds %struct.anon.79, ptr %skqueue, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i283 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %skqueue, ptr %prev.i.i283, align 4
  %qlen.i.i284 = getelementptr inbounds %struct.sk_buff_head, ptr %skqueue, i32 0, i32 1
  %21 = ptrtoint ptr %qlen.i.i284 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %qlen.i.i284, align 4
  br label %do.body37

if.then29:                                        ; preds = %sa_path_get_dlid.exit, %do.body.if.then29_crit_edge
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %skqueue, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %22 = ptrtoint ptr %skqueue to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %skqueue, ptr %skqueue, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.79, ptr %skqueue, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %skqueue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %skqueue, i32 0, i32 1
  %24 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %qlen.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %av) #17
  %25 = call ptr @memset(ptr %av, i32 255, i32 56)
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 23
  %26 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ca, align 8
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 24
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port, align 4
  %conv = zext i8 %29 to i32
  %call30 = call i32 @ib_init_ah_attr_from_path(ptr noundef %27, i32 noundef %conv, ptr noundef %pathrec, ptr noundef nonnull %av, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.then29.if.end34_crit_edge

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  %pd = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 27
  %30 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pd, align 4
  %call33 = call ptr @ipoib_create_ah(ptr noundef %1, ptr noundef %31, ptr noundef nonnull %av) #17
  call void @rdma_destroy_ah_attr(ptr noundef nonnull %av) #17
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then29.if.end34_crit_edge
  %ah.0 = phi ptr [ null, %if.then29.if.end34_crit_edge ], [ %call33, %if.then32 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %av) #17
  br label %do.body37

do.body37.critedge:                               ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #19
  %lock.i288 = getelementptr inbounds %struct.sk_buff_head, ptr %skqueue, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i288, ptr noundef nonnull @.str.32, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %32 = ptrtoint ptr %skqueue to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %skqueue, ptr %skqueue, align 4
  %prev.i.i289 = getelementptr inbounds %struct.anon.79, ptr %skqueue, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i289 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %skqueue, ptr %prev.i.i289, align 4
  %qlen.i.i290 = getelementptr inbounds %struct.sk_buff_head, ptr %skqueue, i32 0, i32 1
  %34 = ptrtoint ptr %qlen.i.i290 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %qlen.i.i290, align 4
  br label %do.body37

do.body37:                                        ; preds = %do.body37.critedge, %if.end34, %do.end15
  %ah.1 = phi ptr [ %ah.0, %if.end34 ], [ null, %do.body37.critedge ], [ null, %do.end15 ]
  %call42 = call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #17
  %tobool.not.i = icmp eq ptr %ah.1, null
  %cmp.i = icmp ugt ptr %ah.1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.body37.if.end179_crit_edge, label %if.then48

do.body37.if.end179_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end179

if.then48:                                        ; preds = %do.body37
  %pathrec51 = getelementptr inbounds %struct.ipoib_path, ptr %path_ptr, i32 0, i32 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %pathrec, ptr noundef dereferenceable(16) %pathrec51, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool55.not = icmp eq i32 %bcmp, 0
  br i1 %tobool55.not, label %if.then48.if.end84_crit_edge, label %do.body57

if.then48.if.end84_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end84

do.body57:                                        ; preds = %if.then48
  %35 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp58 = icmp sgt i32 %35, 0
  br i1 %cmp58, label %do.end63, label %do.body57.do.end78_crit_edge

do.body57.do.end78_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end78

do.end63:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #19
  %dev65 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev65, align 4
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %37, ptr noundef %1, ptr noundef %pathrec, ptr noundef %pathrec51) #20
  br label %do.end78

do.end78:                                         ; preds = %do.end63, %do.body57.do.end78_crit_edge
  %38 = call ptr @memcpy(ptr %pathrec, ptr %pathrec51, i32 16)
  br label %if.end84

if.end84:                                         ; preds = %do.end78, %if.then48.if.end84_crit_edge
  %39 = call ptr @memcpy(ptr %pathrec51, ptr %pathrec, i32 80)
  %ah86 = getelementptr inbounds %struct.ipoib_path, ptr %path_ptr, i32 0, i32 2
  %40 = ptrtoint ptr %ah86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ah86, align 8
  store ptr %ah.1, ptr %ah86, align 8
  %42 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp89 = icmp sgt i32 %42, 0
  br i1 %cmp89, label %do.end94, label %if.end84.do.end104_crit_edge

if.end84.do.end104_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end104

do.end94:                                         ; preds = %if.end84
  %dev96 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev96, align 4
  %rec_type.i291 = getelementptr inbounds %struct.sa_path_rec, ptr %pathrec, i32 0, i32 19
  %45 = ptrtoint ptr %rec_type.i291 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rec_type.i291, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %46, label %do.end94.sa_path_get_dlid.exit296_crit_edge [
    i32 0, label %if.then.i293
    i32 3, label %if.then4.i294
  ]

do.end94.sa_path_get_dlid.exit296_crit_edge:      ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #19
  br label %sa_path_get_dlid.exit296

if.then.i293:                                     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #19
  %48 = getelementptr inbounds %struct.sa_path_rec, ptr %pathrec, i32 0, i32 18
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %48, align 4
  %conv.i292 = zext i16 %50 to i32
  br label %sa_path_get_dlid.exit296

if.then4.i294:                                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #19
  %51 = getelementptr inbounds %struct.sa_path_rec, ptr %pathrec, i32 0, i32 18
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  br label %sa_path_get_dlid.exit296

sa_path_get_dlid.exit296:                         ; preds = %if.then4.i294, %if.then.i293, %do.end94.sa_path_get_dlid.exit296_crit_edge
  %retval.0.i295 = phi i32 [ %conv.i292, %if.then.i293 ], [ %53, %if.then4.i294 ], [ 0, %do.end94.sa_path_get_dlid.exit296_crit_edge ]
  %sl = getelementptr inbounds %struct.sa_path_rec, ptr %pathrec, i32 0, i32 10
  %54 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sl, align 4
  %conv100 = zext i8 %55 to i32
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %44, ptr noundef nonnull %ah.1, i32 noundef %retval.0.i295, i32 noundef %conv100) #20
  br label %do.end104

do.end104:                                        ; preds = %sa_path_get_dlid.exit296, %if.end84.do.end104_crit_edge
  %queue = getelementptr inbounds %struct.ipoib_path, ptr %path_ptr, i32 0, i32 3
  %56 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %queue, align 4
  %cmp.i.i343 = icmp eq ptr %57, %queue
  %tobool.not.i297340344 = icmp eq ptr %57, null
  %tobool.not.i297345 = or i1 %cmp.i.i343, %tobool.not.i297340344
  br i1 %tobool.not.i297345, label %do.end104.while.end_crit_edge, label %while.body.lr.ph

do.end104.while.end_crit_edge:                    ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end104
  %qlen.i.i298 = getelementptr inbounds %struct.ipoib_path, ptr %path_ptr, i32 0, i32 3, i32 1
  %prev.i.i300 = getelementptr inbounds %struct.sk_buff_list, ptr %skqueue, i32 0, i32 1
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %skqueue, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %58 = phi ptr [ %57, %while.body.lr.ph ], [ %73, %while.body.while.body_crit_edge ]
  %59 = ptrtoint ptr %qlen.i.i298 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %qlen.i.i298, align 4
  %sub.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i298, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %58, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %64, ptr %prev17.i.i, align 4
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %62, ptr %64, align 8
  %67 = ptrtoint ptr %prev.i.i300 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i300, align 4
  store volatile ptr %skqueue, ptr %58, align 8
  store volatile ptr %68, ptr %prev9.i.i, align 4
  store volatile ptr %58, ptr %prev.i.i300, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %58, ptr %68, align 4
  %70 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %71, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %72 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %73, %queue
  %tobool.not.i297340 = icmp eq ptr %73, null
  %tobool.not.i297 = or i1 %cmp.i.i, %tobool.not.i297340
  br i1 %tobool.not.i297, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end104.while.end_crit_edge
  %neigh_list = getelementptr inbounds %struct.ipoib_path, ptr %path_ptr, i32 0, i32 4
  %74 = ptrtoint ptr %neigh_list to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %neigh_list, align 4
  %cmp114.not351 = icmp eq ptr %75, %neigh_list
  br i1 %cmp114.not351, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %prev.i.i313 = getelementptr inbounds %struct.sk_buff_list, ptr %skqueue, i32 0, i32 1
  %qlen.i.i.i315 = getelementptr inbounds %struct.sk_buff_head, ptr %skqueue, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in352 = phi ptr [ %75, %for.body.lr.ph ], [ %.pn354, %for.inc.for.body_crit_edge ]
  %neigh.0353 = getelementptr i8, ptr %.pn.in352, i32 -88
  %76 = ptrtoint ptr %.pn.in352 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn354 = load ptr, ptr %.pn.in352, align 4
  %77 = ptrtoint ptr %neigh.0353 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %neigh.0353, align 4
  %tobool117.not = icmp eq ptr %78, null
  br i1 %tobool117.not, label %for.body.if.end149_crit_edge, label %if.then118

for.body.if.end149_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end149

if.then118:                                       ; preds = %for.body
  %cmp120.not = icmp eq ptr %78, %41
  br i1 %cmp120.not, label %if.then118.if.end140_crit_edge, label %do.end134, !prof !397

if.then118.if.end140_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end140

do.end134:                                        ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 810, i32 noundef 9, ptr noundef null) #17
  br label %if.end140

if.end140:                                        ; preds = %do.end134, %if.then118.if.end140_crit_edge
  %79 = ptrtoint ptr %neigh.0353 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %neigh.0353, align 4
  %ref.i = getelementptr inbounds %struct.ipoib_ah, ptr %80, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !395
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #17
  %81 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #17, !srcloc !396
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end149_crit_edge, label %if.then10.i.i.i.i.i, !prof !397

if.end5.i.i.i.i.i.if.end149_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end149

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #17
  br label %if.end149

if.then.i.i:                                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !398
  call void @ipoib_free_ah(ptr noundef %ref.i) #17
  br label %if.end149

if.end149:                                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end149_crit_edge, %for.body.if.end149_crit_edge
  %82 = ptrtoint ptr %ah86 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ah86, align 8
  %ref = getelementptr inbounds %struct.ipoib_ah, ptr %83, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #17
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #17, !srcloc !400
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end149.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !401

if.end149.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end149
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %85 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %.not.i.i.i.i = icmp sgt i32 %85, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !397

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end149.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end149.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #17
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %86 = ptrtoint ptr %ah86 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ah86, align 8
  %88 = ptrtoint ptr %neigh.0353 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %neigh.0353, align 4
  %daddr = getelementptr i8, ptr %.pn.in352, i32 -80
  %89 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %daddr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %90)
  %tobool.not.i301 = icmp sgt i8 %90, -1
  br i1 %tobool.not.i301, label %kref_get.exit.if.end166_crit_edge, label %ipoib_cm_enabled.exit

kref_get.exit.if.end166_crit_edge:                ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end166

ipoib_cm_enabled.exit:                            ; preds = %kref_get.exit
  %91 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr.i.i, align 4
  %flags.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %flags.i, align 4
  %95 = and i32 %94, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool155.not = icmp eq i32 %95, 0
  br i1 %tobool155.not, label %ipoib_cm_enabled.exit.if.end166_crit_edge, label %if.then156

ipoib_cm_enabled.exit.if.end166_crit_edge:        ; preds = %ipoib_cm_enabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end166

if.then156:                                       ; preds = %ipoib_cm_enabled.exit
  %cm.i = getelementptr i8, ptr %.pn.in352, i32 -84
  %96 = ptrtoint ptr %cm.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cm.i, align 4
  %tobool158.not = icmp eq ptr %97, null
  br i1 %tobool158.not, label %if.end161, label %if.then156.if.end166_crit_edge

if.then156.if.end166_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end166

if.end161:                                        ; preds = %if.then156
  %call160 = call ptr @ipoib_cm_create_tx(ptr noundef %1, ptr noundef %path_ptr, ptr noundef %neigh.0353) #17
  %98 = ptrtoint ptr %cm.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call160, ptr %cm.i, align 4
  %tobool163.not = icmp eq ptr %call160, null
  br i1 %tobool163.not, label %if.then164, label %if.end161.if.end166_crit_edge

if.end161.if.end166_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end166

if.then164:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #19
  call void @ipoib_neigh_free(ptr noundef %neigh.0353)
  br label %for.inc

if.end166:                                        ; preds = %if.end161.if.end166_crit_edge, %if.then156.if.end166_crit_edge, %ipoib_cm_enabled.exit.if.end166_crit_edge, %kref_get.exit.if.end166_crit_edge
  %queue168 = getelementptr i8, ptr %.pn.in352, i32 -60
  %99 = ptrtoint ptr %queue168 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %queue168, align 4
  %cmp.i.i304346 = icmp eq ptr %100, %queue168
  %tobool.not.i306341347 = icmp eq ptr %100, null
  %tobool.not.i306348 = or i1 %cmp.i.i304346, %tobool.not.i306341347
  br i1 %tobool.not.i306348, label %if.end166.for.inc_crit_edge, label %while.body171.lr.ph

if.end166.for.inc_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

while.body171.lr.ph:                              ; preds = %if.end166
  %qlen.i.i307 = getelementptr i8, ptr %.pn.in352, i32 -52
  br label %while.body171

while.body171:                                    ; preds = %while.body171.while.body171_crit_edge, %while.body171.lr.ph
  %101 = phi ptr [ %100, %while.body171.lr.ph ], [ %116, %while.body171.while.body171_crit_edge ]
  %102 = ptrtoint ptr %qlen.i.i307 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %qlen.i.i307, align 4
  %sub.i.i308 = add i32 %103, -1
  store volatile i32 %sub.i.i308, ptr %qlen.i.i307, align 4
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %101, align 8
  %prev9.i.i309 = getelementptr inbounds %struct.anon.51, ptr %101, i32 0, i32 1
  %106 = ptrtoint ptr %prev9.i.i309 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev9.i.i309, align 4
  store ptr null, ptr %prev9.i.i309, align 4
  store ptr null, ptr %101, align 8
  %prev17.i.i310 = getelementptr inbounds %struct.anon.51, ptr %105, i32 0, i32 1
  %108 = ptrtoint ptr %prev17.i.i310 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %107, ptr %prev17.i.i310, align 4
  %109 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %105, ptr %107, align 8
  %110 = ptrtoint ptr %prev.i.i313 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i.i313, align 4
  store volatile ptr %skqueue, ptr %101, align 8
  store volatile ptr %111, ptr %prev9.i.i309, align 4
  store volatile ptr %101, ptr %prev.i.i313, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %101, ptr %111, align 4
  %113 = ptrtoint ptr %qlen.i.i.i315 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %qlen.i.i.i315, align 4
  %add.i.i.i316 = add i32 %114, 1
  store volatile i32 %add.i.i.i316, ptr %qlen.i.i.i315, align 4
  %115 = ptrtoint ptr %queue168 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %queue168, align 4
  %cmp.i.i304 = icmp eq ptr %116, %queue168
  %tobool.not.i306341 = icmp eq ptr %116, null
  %tobool.not.i306 = or i1 %cmp.i.i304, %tobool.not.i306341
  br i1 %tobool.not.i306, label %while.body171.for.inc_crit_edge, label %while.body171.while.body171_crit_edge

while.body171.while.body171_crit_edge:            ; preds = %while.body171
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body171

while.body171.for.inc_crit_edge:                  ; preds = %while.body171
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.inc:                                          ; preds = %while.body171.for.inc_crit_edge, %if.end166.for.inc_crit_edge, %if.then164
  %cmp114.not = icmp eq ptr %.pn354, %neigh_list
  br i1 %cmp114.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.end.for.end_crit_edge
  %117 = ptrtoint ptr %ah86 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ah86, align 8
  %valid = getelementptr inbounds %struct.ipoib_ah, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %valid, align 4
  br label %if.end179

if.end179:                                        ; preds = %for.end, %do.body37.if.end179_crit_edge
  %old_ah.0 = phi ptr [ null, %do.body37.if.end179_crit_edge ], [ %41, %for.end ]
  %query = getelementptr inbounds %struct.ipoib_path, ptr %path_ptr, i32 0, i32 6
  %120 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %query, align 8
  %done = getelementptr inbounds %struct.ipoib_path, ptr %path_ptr, i32 0, i32 7
  call void @complete(ptr noundef %done) #17
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call42) #17
  br i1 %spec.select.i, label %if.then182, label %if.end179.if.end186_crit_edge

if.end179.if.end186_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end186

if.then182:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #19
  %pathrec183 = getelementptr inbounds %struct.ipoib_path, ptr %path_ptr, i32 0, i32 1
  call void @ipoib_del_neighs_by_gid(ptr noundef %1, ptr noundef %pathrec183)
  br label %if.end186

if.end186:                                        ; preds = %if.then182, %if.end179.if.end186_crit_edge
  %tobool187.not = icmp eq ptr %old_ah.0, null
  br i1 %tobool187.not, label %if.end186.if.end189_crit_edge, label %if.then188

if.end186.if.end189_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end189

if.then188:                                       ; preds = %if.end186
  %ref.i320 = getelementptr inbounds %struct.ipoib_ah, ptr %old_ah.0, i32 0, i32 3
  %call.i.i.i.i.i.i.i321 = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i320, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !395
  call void @llvm.prefetch.p0(ptr %ref.i320, i32 1, i32 3, i32 1) #17
  %121 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i320, ptr %ref.i320, i32 1, ptr elementtype(i32) %ref.i320) #17, !srcloc !396
  %asmresult.i.i.i.i.i.i.i.i322 = extractvalue { i32, i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i322)
  %cmp.i.i.i.i.i323 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i322, 1
  br i1 %cmp.i.i.i.i.i323, label %if.then.i.i327, label %if.end5.i.i.i.i.i325

if.end5.i.i.i.i.i325:                             ; preds = %if.then188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i322)
  %.not.i.i.i.i.i324 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i322, 0
  br i1 %.not.i.i.i.i.i324, label %if.end5.i.i.i.i.i325.if.end189_crit_edge, label %if.then10.i.i.i.i.i326, !prof !397

if.end5.i.i.i.i.i325.if.end189_crit_edge:         ; preds = %if.end5.i.i.i.i.i325
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end189

if.then10.i.i.i.i.i326:                           ; preds = %if.end5.i.i.i.i.i325
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %ref.i320, i32 noundef 3) #17
  br label %if.end189

if.then.i.i327:                                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !398
  call void @ipoib_free_ah(ptr noundef %ref.i320) #17
  br label %if.end189

if.end189:                                        ; preds = %if.then.i.i327, %if.then10.i.i.i.i.i326, %if.end5.i.i.i.i.i325.if.end189_crit_edge, %if.end186.if.end189_crit_edge
  %122 = ptrtoint ptr %skqueue to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %skqueue, align 4
  %cmp.i.i329355 = icmp eq ptr %123, %skqueue
  %tobool.not.i331342356 = icmp eq ptr %123, null
  %tobool.not.i331357 = or i1 %cmp.i.i329355, %tobool.not.i331342356
  br i1 %tobool.not.i331357, label %if.end189.while.end213_crit_edge, label %while.body193.lr.ph

if.end189.while.end213_crit_edge:                 ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end213

while.body193.lr.ph:                              ; preds = %if.end189
  %qlen.i.i332 = getelementptr inbounds %struct.sk_buff_head, ptr %skqueue, i32 0, i32 1
  %dev205 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 1
  br label %while.body193

while.body193:                                    ; preds = %if.end212.while.body193_crit_edge, %while.body193.lr.ph
  %124 = phi ptr [ %123, %while.body193.lr.ph ], [ %138, %if.end212.while.body193_crit_edge ]
  %125 = ptrtoint ptr %qlen.i.i332 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %qlen.i.i332, align 4
  %sub.i.i333 = add i32 %126, -1
  store volatile i32 %sub.i.i333, ptr %qlen.i.i332, align 4
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %124, align 8
  %prev9.i.i334 = getelementptr inbounds %struct.anon.51, ptr %124, i32 0, i32 1
  %129 = ptrtoint ptr %prev9.i.i334 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %prev9.i.i334, align 4
  store ptr null, ptr %prev9.i.i334, align 4
  store ptr null, ptr %124, align 8
  %prev17.i.i335 = getelementptr inbounds %struct.anon.51, ptr %128, i32 0, i32 1
  %131 = ptrtoint ptr %prev17.i.i335 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %130, ptr %prev17.i.i335, align 4
  %132 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %128, ptr %130, align 8
  %133 = getelementptr inbounds %struct.anon.51, ptr %124, i32 0, i32 2
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %1, ptr %133, align 8
  %call194 = call i32 @dev_queue_xmit(ptr noundef nonnull %124) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %while.body193.if.end212_crit_edge, label %do.body197

while.body193.if.end212_crit_edge:                ; preds = %while.body193
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end212

do.body197:                                       ; preds = %while.body193
  %call198 = call i32 @___ratelimit(ptr noundef nonnull @path_rec_completion._rs, ptr noundef nonnull @.str.80) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %do.body197.if.end212_crit_edge, label %do.end203

do.body197.if.end212_crit_edge:                   ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end212

do.end203:                                        ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #19
  %135 = ptrtoint ptr %dev205 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev205, align 4
  %call208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %136, ptr noundef nonnull @.str.80, i32 noundef %call194) #20
  br label %if.end212

if.end212:                                        ; preds = %do.end203, %do.body197.if.end212_crit_edge, %while.body193.if.end212_crit_edge
  %137 = ptrtoint ptr %skqueue to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %skqueue, align 4
  %cmp.i.i329 = icmp eq ptr %138, %skqueue
  %tobool.not.i331342 = icmp eq ptr %138, null
  %tobool.not.i331 = or i1 %cmp.i.i329, %tobool.not.i331342
  br i1 %tobool.not.i331, label %if.end212.while.end213_crit_edge, label %if.end212.while.body193_crit_edge

if.end212.while.body193_crit_edge:                ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body193

if.end212.while.end213_crit_edge:                 ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end213

while.end213:                                     ; preds = %if.end212.while.end213_crit_edge, %if.end189.while.end213_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %skqueue) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_init_ah_attr_from_path(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipoib_create_ah(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_ah_attr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_stats_to_stats64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_set_mac(ptr noundef %dev, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags, align 16
  %and = and i64 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %__data.i = getelementptr inbounds %struct.anon.178, ptr %addr, i32 0, i32 1
  %nested_level.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 73
  %6 = ptrtoint ptr %nested_level.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nested_level.i.i, align 1
  tail call fastcc void @local_bh_disable() #17
  %addr_list_lock.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63
  %conv.i.i = zext i8 %7 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i.i, i32 noundef %conv.i.i) #17
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr.i, align 64
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(12) %9, ptr noundef dereferenceable(12) %__data.i, i32 12) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.ipoib_check_lladdr.exit_crit_edge

if.end.ipoib_check_lladdr.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_check_lladdr.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %interface_id.i = getelementptr %struct.anon.178, ptr %addr, i32 0, i32 1, i32 12
  %10 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %interface_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp.i = icmp eq i64 %11, 0
  br i1 %cmp.i, label %lor.lhs.false.i.ipoib_check_lladdr.exit_crit_edge, label %if.end5

lor.lhs.false.i.ipoib_check_lladdr.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_check_lladdr.exit

ipoib_check_lladdr.exit:                          ; preds = %lor.lhs.false.i.ipoib_check_lladdr.exit_crit_edge, %if.end.ipoib_check_lladdr.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i.i) #17
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i.i) #17
  %add.ptr = getelementptr %struct.anon.178, ptr %addr, i32 0, i32 1, i32 4
  tail call fastcc void @set_base_guid(ptr noundef %1, ptr noundef %add.ptr)
  %12 = load ptr, ptr @ipoib_workqueue, align 4
  %flush_light = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 17
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %flush_light) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %ipoib_check_lladdr.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ -22, %ipoib_check_lladdr.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_get_vf_config(ptr nocapture noundef readonly %dev, i32 noundef %vf, ptr noundef %ivf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ca, align 8
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port, align 4
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 @ib_get_vf_config(ptr noundef %3, i32 noundef %vf, i32 noundef %conv, ptr noundef %ivf) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %ivf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %vf, ptr %ivf, align 4
  %mac = getelementptr inbounds %struct.ifla_vf_info, ptr %ivf, i32 0, i32 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %9 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %addr_len, align 1
  %conv3 = zext i8 %10 to i32
  %11 = call ptr @memcpy(ptr %mac, ptr %8, i32 %conv3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_set_vf_link_state(ptr nocapture noundef readonly %dev, i32 noundef %vf, i32 noundef %link_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ca, align 8
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port, align 4
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 @ib_set_vf_link_state(ptr noundef %3, i32 noundef %vf, i32 noundef %conv, i32 noundef %link_state) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_get_vf_stats(ptr nocapture noundef readonly %dev, i32 noundef %vf, ptr noundef %vf_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ca, align 8
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port, align 4
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 @ib_get_vf_stats(ptr noundef %3, i32 noundef %vf, i32 noundef %conv, ptr noundef %vf_stats) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_get_vf_guid(ptr nocapture noundef readonly %dev, i32 noundef %vf, ptr noundef %node_guid, ptr noundef %port_guid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ca, align 8
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port, align 4
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 @ib_get_vf_guid(ptr noundef %3, i32 noundef %vf, i32 noundef %conv, ptr noundef %node_guid, ptr noundef %port_guid) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_set_vf_guid(ptr nocapture noundef readonly %dev, i32 noundef %vf, i64 noundef %guid, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %0)
  %switch = icmp eq i32 %0, 10
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 4
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %2, i32 0, i32 23
  %3 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ca, align 8
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %2, i32 0, i32 24
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port, align 4
  %conv = zext i8 %6 to i32
  %call2 = tail call i32 @ib_set_vf_guid(ptr noundef %4, i32 noundef %vf, i32 noundef %conv, i64 noundef %guid, i32 noundef %type) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_base_guid(ptr noundef %priv, ptr nocapture noundef readonly %gid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #17
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 63
  %conv.i = zext i8 %3 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #17
  %local_gid = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 32
  %interface_id = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 32, i32 0, i32 1
  %interface_id1 = getelementptr inbounds %struct.anon.162, ptr %gid, i32 0, i32 1
  %4 = ptrtoint ptr %interface_id1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %interface_id1, align 8
  %6 = ptrtoint ptr %interface_id to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %interface_id, align 8
  tail call void @dev_addr_mod(ptr noundef %1, i32 noundef 4, ptr noundef %local_gid, i32 noundef 16) #17
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %flags) #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #17
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %vlan_rwsem = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 6
  tail call void @down_read(ptr noundef %vlan_rwsem) #17
  %child_intfs = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 52
  %10 = ptrtoint ptr %child_intfs to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn25 = load ptr, ptr %child_intfs, align 4
  %cmp.not26 = icmp eq ptr %.pn25, %child_intfs
  br i1 %cmp.not26, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn27 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn25, %if.then.for.body_crit_edge ]
  %child_priv.0 = getelementptr i8, ptr %.pn27, i32 -6260
  tail call fastcc void @set_base_guid(ptr noundef %child_priv.0, ptr noundef %gid)
  %11 = ptrtoint ptr %.pn27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn27, align 4
  %cmp.not = icmp eq ptr %.pn, %child_intfs
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @up_read(ptr noundef %vlan_rwsem) #17
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_get_vf_config(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_set_vf_link_state(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_get_vf_stats(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_get_vf_guid(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_set_vf_guid(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_mcast_join_task(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_mcast_carrier_on_task(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_ib_dev_flush_light(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_ib_dev_flush_normal(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_ib_dev_flush_heavy(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_mcast_restart_task(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_reap_ah(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_reap_neigh(ptr noundef %work) #0 align 64 {
entry:
  %remove_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1268
  %ntbl1.i = getelementptr i8, ptr %work, i32 -560
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %remove_list.i) #17
  %0 = getelementptr inbounds %struct.list_head, ptr %remove_list.i, i32 0, i32 1
  %1 = ptrtoint ptr %remove_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %remove_list.i, ptr %remove_list.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %remove_list.i, ptr %0, align 4
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #17
  %dep_map.i = getelementptr i8, ptr %work, i32 -1252
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end14.i_crit_edge

entry.do.end14.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end14.i

land.lhs.true.i:                                  ; preds = %entry
  %call9.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.do.end14.i_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.do.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end14.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %.b106.i = load i1, ptr @__ipoib_reap_neigh.__warned, align 1
  br i1 %.b106.i, label %land.lhs.true11.i.do.end14.i_crit_edge, label %if.then.i

land.lhs.true11.i.do.end14.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end14.i

if.then.i:                                        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__ipoib_reap_neigh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1321, ptr noundef nonnull @.str.15) #17
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then.i, %land.lhs.true11.i.do.end14.i_crit_edge, %land.lhs.true.i.do.end14.i_crit_edge, %entry.do.end14.i_crit_edge
  %3 = ptrtoint ptr %ntbl1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ntbl1.i, align 4
  %tobool17.not.i = icmp eq ptr %4, null
  br i1 %tobool17.not.i, label %do.end14.i.__ipoib_reap_neigh.exit_crit_edge, label %if.end19.i

do.end14.i.__ipoib_reap_neigh.exit_crit_edge:     ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__ipoib_reap_neigh.exit

if.end19.i:                                       ; preds = %do.end14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 15) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 15), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %size.i = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp20109.not.i = icmp eq i32 %8, 0
  br i1 %cmp20109.not.i, label %if.end19.i.__ipoib_reap_neigh.exit_crit_edge, label %for.body.lr.ph.i

if.end19.i.__ipoib_reap_neigh.exit_crit_edge:     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__ipoib_reap_neigh.exit

for.body.lr.ph.i:                                 ; preds = %if.end19.i
  %buckets.i = getelementptr inbounds %struct.ipoib_neigh_hash, ptr %4, i32 0, i32 1
  %mul.neg.neg.i = shl i32 %5, 1
  %sub.neg.i = sub i32 %mul.neg.neg.i, %6
  br label %for.body.i

for.body.i:                                       ; preds = %while.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0110.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %while.end.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buckets.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %i.0110.i
  br label %while.cond.i.outer

while.cond.i.outer:                               ; preds = %if.else.i, %for.body.i
  %np.0.i.ph = phi ptr [ %hnext82.i, %if.else.i ], [ %arrayidx.i, %for.body.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %list_del_init.exit.i, %while.cond.i.outer
  %call.i107.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i)
  %tobool26.not.i = icmp eq i32 %call.i107.i, 0
  br i1 %tobool26.not.i, label %land.lhs.true27.i, label %while.cond.i.do.end35.i_crit_edge

while.cond.i.do.end35.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end35.i

land.lhs.true27.i:                                ; preds = %while.cond.i
  %call28.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true27.i.do.end35.i_crit_edge, label %land.lhs.true30.i

land.lhs.true27.i.do.end35.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end35.i

land.lhs.true30.i:                                ; preds = %land.lhs.true27.i
  %.b102105.i = load i1, ptr @__ipoib_reap_neigh.__warned.133, align 1
  br i1 %.b102105.i, label %land.lhs.true30.i.do.end35.i_crit_edge, label %if.then32.i

land.lhs.true30.i.do.end35.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end35.i

if.then32.i:                                      ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__ipoib_reap_neigh.__warned.133, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1335, ptr noundef nonnull @.str.15) #17
  br label %do.end35.i

do.end35.i:                                       ; preds = %if.then32.i, %land.lhs.true30.i.do.end35.i_crit_edge, %land.lhs.true27.i.do.end35.i_crit_edge, %while.cond.i.do.end35.i_crit_edge
  %11 = ptrtoint ptr %np.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %np.0.i.ph, align 4
  %cmp37.not.i = icmp eq ptr %12, null
  br i1 %cmp37.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %do.end35.i
  %alive.i = getelementptr inbounds %struct.ipoib_neigh, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %alive.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alive.i, align 4
  %sub39.i = add i32 %sub.neg.i, %14
  %cmp40.i = icmp slt i32 %sub39.i, 0
  br i1 %cmp40.i, label %if.then42.i, label %if.else.i

if.then42.i:                                      ; preds = %while.body.i
  %add.ptr.i = getelementptr %struct.ipoib_neigh, ptr %12, i32 0, i32 2, i32 4
  call void @ipoib_check_and_add_mcast_sendonly(ptr noundef %add.ptr, ptr noundef %add.ptr.i, ptr noundef nonnull %remove_list.i) #17
  %call.i108.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i)
  %tobool48.not.i = icmp eq i32 %call.i108.i, 0
  br i1 %tobool48.not.i, label %land.lhs.true49.i, label %if.then42.i.do.end57.i_crit_edge

if.then42.i.do.end57.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end57.i

land.lhs.true49.i:                                ; preds = %if.then42.i
  %call50.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true49.i.do.end57.i_crit_edge, label %land.lhs.true52.i

land.lhs.true49.i.do.end57.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end57.i

land.lhs.true52.i:                                ; preds = %land.lhs.true49.i
  %.b103104.i = load i1, ptr @__ipoib_reap_neigh.__warned.134, align 1
  br i1 %.b103104.i, label %land.lhs.true52.i.do.end57.i_crit_edge, label %if.then54.i

land.lhs.true52.i.do.end57.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end57.i

if.then54.i:                                      ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__ipoib_reap_neigh.__warned.134, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1343, ptr noundef nonnull @.str.15) #17
  br label %do.end57.i

do.end57.i:                                       ; preds = %if.then54.i, %land.lhs.true52.i.do.end57.i_crit_edge, %land.lhs.true49.i.do.end57.i_crit_edge, %if.then42.i.do.end57.i_crit_edge
  %hnext.i = getelementptr inbounds %struct.ipoib_neigh, ptr %12, i32 0, i32 6
  %15 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hnext.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !415
  %17 = ptrtoint ptr %np.0.i.ph to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %np.0.i.ph, align 4
  %list.i = getelementptr inbounds %struct.ipoib_neigh, ptr %12, i32 0, i32 5
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end57.i.list_del_init.exit.i_crit_edge

do.end57.i.list_del_init.exit.i_crit_edge:        ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %12, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %do.end57.i.list_del_init.exit.i_crit_edge
  %24 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.ipoib_neigh, ptr %12, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.ipoib_neigh, ptr %12, i32 0, i32 7
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @ipoib_neigh_reclaim) #17
  br label %while.cond.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %hnext82.i = getelementptr inbounds %struct.ipoib_neigh, ptr %12, i32 0, i32 6
  br label %while.cond.i.outer

while.end.i:                                      ; preds = %do.end35.i
  %inc.i = add nuw i32 %i.0110.i, 1
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 4
  %cmp20.i = icmp ult i32 %inc.i, %27
  br i1 %cmp20.i, label %while.end.i.for.body.i_crit_edge, label %while.end.i.__ipoib_reap_neigh.exit_crit_edge

while.end.i.__ipoib_reap_neigh.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__ipoib_reap_neigh.exit

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

__ipoib_reap_neigh.exit:                          ; preds = %while.end.i.__ipoib_reap_neigh.exit_crit_edge, %if.end19.i.__ipoib_reap_neigh.exit_crit_edge, %do.end14.i.__ipoib_reap_neigh.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3.i) #17
  call void @ipoib_mcast_remove_list(ptr noundef nonnull %remove_list.i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %remove_list.i) #17
  %wq = getelementptr i8, ptr %work, i32 -424
  %28 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 15) to i32))
  %30 = load i32, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 15), align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %work, i32 noundef %30) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_check_and_add_mcast_sendonly(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_mcast_remove_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_alloc_netdev(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @umcast_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %3, 10
  %and1.i = and i32 %shr.i, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.136, i32 noundef %and1.i) #17
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @umcast_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #17
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.i = icmp sgt i32 %call, 0
  %flags.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags.i) #17
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_set_umcast._rs, ptr noundef nonnull @__func__.ipoib_set_umcast) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.ipoib_set_umcast.exit_crit_edge, label %do.end.i

if.then.i.ipoib_set_umcast.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_set_umcast.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %3) #20
  br label %ipoib_set_umcast.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags.i) #17
  br label %ipoib_set_umcast.exit

ipoib_set_umcast.exit:                            ; preds = %if.else.i, %do.end.i, %if.then.i.ipoib_set_umcast.exit_crit_edge
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkey_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 1200
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %pkey = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pkey, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.138, i32 noundef %conv) #17
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_open = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ndo_open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_open, align 4
  %cmp.not = icmp eq ptr %5, @ipoib_open
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 11, label %sw.bb2
    i32 6, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ipoib_create_debug_files(ptr noundef %1) #17
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ipoib_delete_debug_files(ptr noundef %1) #17
  tail call void @ipoib_create_debug_files(ptr noundef %1) #17
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ipoib_delete_debug_files(ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb2, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_create_debug_files(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_delete_debug_files(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_add_one(ptr noundef %device) #0 align 64 {
entry:
  %params.i = alloca %struct.rdma_netdev_alloc_params, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #22
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %prev.i, align 4
  %is_switch.i.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 19
  %3 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i.i = load i8, ptr %is_switch.i.i, align 4
  %4 = xor i8 %bf.load.i.i, -1
  %5 = lshr i8 %4, 7
  %.not.i = zext i8 %5 to i32
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 21
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 11
  %name20.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 2
  %rdma_netdev_get_params.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %bf.load.i.i33 = phi i8 [ %bf.load.i.i33.pr, %for.inc ], [ %bf.load.i.i, %if.end ]
  %p.0 = phi i32 [ %inc11, %for.inc ], [ %.not.i, %if.end ]
  %count.0 = phi i32 [ %count.1, %for.inc ], [ 0, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i33)
  %tobool.i.i = icmp slt i8 %bf.load.i.i33, 0
  br i1 %tobool.i.i, label %for.cond.rdma_end_port.exit_crit_edge, label %cond.false.i

for.cond.rdma_end_port.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %rdma_end_port.exit

cond.false.i:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phys_port_cnt.i, align 8
  br label %rdma_end_port.exit

rdma_end_port.exit:                               ; preds = %cond.false.i, %for.cond.rdma_end_port.exit_crit_edge
  %cond.i = phi i32 [ %7, %cond.false.i ], [ 0, %for.cond.rdma_end_port.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0, i32 %cond.i)
  %cmp.not = icmp ugt i32 %p.0, %cond.i
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %rdma_end_port.exit
  %8 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %9, i32 %p.0, i32 1, i32 2
  %10 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %call.i = call ptr @ipoib_get_link_ops() #17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params.i) #17
  %12 = call ptr @memset(ptr %params.i, i32 255, i32 20)
  %call.i.i.i = call ptr @rdma_alloc_netdev(ptr noundef %device, i32 noundef %p.0, i32 noundef 1, ptr noundef nonnull @.str.140, i8 noundef zeroext 0, ptr noundef nonnull @ipoib_setup_common) #17
  %cmp.not.i.i.i = icmp eq ptr %call.i.i.i, inttoptr (i32 -95 to ptr)
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end5.ipoib_alloc_netdev.exit.i.i_crit_edge

if.end5.ipoib_alloc_netdev.exit.i.i_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_alloc_netdev.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end5
  %call3.i.i.i = call ptr @alloc_netdev_mqs(i32 noundef 40, ptr noundef nonnull @.str.140, i8 noundef zeroext 0, ptr noundef nonnull @ipoib_setup_common, i32 noundef 1, i32 noundef 1) #17
  %tobool.not.i.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.do.end.i_crit_edge, label %if.end.i.i.i.ipoib_alloc_netdev.exit.i.i_crit_edge

if.end.i.i.i.ipoib_alloc_netdev.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_alloc_netdev.exit.i.i

if.end.i.i.i.do.end.i_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

ipoib_alloc_netdev.exit.i.i:                      ; preds = %if.end.i.i.i.ipoib_alloc_netdev.exit.i.i_crit_edge, %if.end5.ipoib_alloc_netdev.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call.i.i.i, %if.end5.ipoib_alloc_netdev.exit.i.i_crit_edge ], [ %call3.i.i.i, %if.end.i.i.i.ipoib_alloc_netdev.exit.i.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %ipoib_alloc_netdev.exit.i.i.ipoib_intf_alloc.exit.i_crit_edge, label %if.end.i.i

ipoib_alloc_netdev.exit.i.i.ipoib_intf_alloc.exit.i_crit_edge: ; preds = %ipoib_alloc_netdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_intf_alloc.exit.i

if.end.i.i:                                       ; preds = %ipoib_alloc_netdev.exit.i.i
  %call2.i.i = call i32 @ipoib_intf_init(ptr noundef %device, i32 noundef %p.0, ptr noundef nonnull @.str.140, ptr noundef %retval.0.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.ipoib_intf_alloc.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.ipoib_intf_alloc.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_intf_alloc.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @free_netdev(ptr noundef %retval.0.i.i.i) #17
  %13 = inttoptr i32 %call2.i.i to ptr
  br label %ipoib_intf_alloc.exit.i

ipoib_intf_alloc.exit.i:                          ; preds = %if.then3.i.i, %if.end.i.i.ipoib_intf_alloc.exit.i_crit_edge, %ipoib_alloc_netdev.exit.i.i.ipoib_intf_alloc.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.then3.i.i ], [ %retval.0.i.i.i, %ipoib_alloc_netdev.exit.i.i.ipoib_intf_alloc.exit.i_crit_edge ], [ %retval.0.i.i.i, %if.end.i.i.ipoib_intf_alloc.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ipoib_intf_alloc.exit.i.do.end.i_crit_edge, label %if.end.i

ipoib_intf_alloc.exit.i.do.end.i_crit_edge:       ; preds = %ipoib_intf_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i:                                         ; preds = %ipoib_intf_alloc.exit.i.do.end.i_crit_edge, %if.end.i.i.i.do.end.i_crit_edge
  %retval.0.i19.i = phi ptr [ %retval.0.i.i, %ipoib_intf_alloc.exit.i.do.end.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.i.i.do.end.i_crit_edge ]
  %14 = ptrtoint ptr %retval.0.i19.i to i32
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %name20.i, i32 noundef %p.0, i32 noundef %14) #20
  br label %ipoib_add_port.exit

if.end.i:                                         ; preds = %ipoib_intf_alloc.exit.i
  %add.ptr.i.i.i = getelementptr i8, ptr %retval.0.i.i, i32 2304
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i.i, align 4
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 23
  %17 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ca.i, align 8
  %event_handler.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 50
  %19 = ptrtoint ptr %event_handler.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %event_handler.i, align 8
  %handler.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 50, i32 1
  %20 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ipoib_event, ptr %handler.i, align 4
  %list.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 50, i32 2
  %21 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 50, i32 2, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list.i, ptr %prev.i.i, align 4
  call void @ib_register_event_handler(ptr noundef %event_handler.i) #17
  %23 = load ptr, ptr @ipoib_workqueue, align 4
  %flush_heavy.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 19
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %flush_heavy.i) #17
  %call13.i = call ptr @ipoib_get_link_ops() #17
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %retval.0.i.i, i32 0, i32 136
  %24 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call13.i, ptr %rtnl_link_ops.i, align 4
  %call14.i = call i32 @register_netdev(ptr noundef %retval.0.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %if.end24.i, label %do.end18.i

do.end18.i:                                       ; preds = %if.end.i
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %name20.i, i32 noundef %p.0, i32 noundef %call14.i) #20
  %25 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @rtnl_lock() #17
  %dev.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %30, -2
  %call2.i1.i = call i32 @dev_change_flags(ptr noundef %28, i32 noundef %and.i.i, ptr noundef null) #17
  call void @rtnl_unlock() #17
  %event_handler.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %26, i32 0, i32 50
  call void @ib_unregister_event_handler(ptr noundef %event_handler.i.i) #17
  %31 = load ptr, ptr @ipoib_workqueue, align 4
  call void @flush_workqueue(ptr noundef %31) #17
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i.i.i, align 4
  %next_priv_destructor.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %next_priv_destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %next_priv_destructor.i.i, align 8
  %priv_destructor.i.i = getelementptr inbounds %struct.net_device, ptr %retval.0.i.i, i32 0, i32 125
  %36 = ptrtoint ptr %priv_destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %priv_destructor.i.i, align 4
  %tobool.not.i3.i = icmp eq ptr %35, null
  br i1 %tobool.not.i3.i, label %do.end18.i.ipoib_intf_free.exit.i_crit_edge, label %if.then.i.i

do.end18.i.ipoib_intf_free.exit.i_crit_edge:      ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_intf_free.exit.i

if.then.i.i:                                      ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  call void %35(ptr noundef %retval.0.i.i) #17
  br label %ipoib_intf_free.exit.i

ipoib_intf_free.exit.i:                           ; preds = %if.then.i.i, %do.end18.i.ipoib_intf_free.exit.i_crit_edge
  %37 = ptrtoint ptr %priv_destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %priv_destructor.i.i, align 4
  %38 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %add.ptr.i.i.i, align 4
  call void @kfree(ptr noundef %33) #17
  call void @free_netdev(ptr noundef %retval.0.i.i) #17
  %39 = inttoptr i32 %call14.i to ptr
  br label %ipoib_add_port.exit

if.end24.i:                                       ; preds = %if.end.i
  %40 = ptrtoint ptr %rdma_netdev_get_params.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rdma_netdev_get_params.i, align 4
  %tobool26.not.i = icmp eq ptr %41, null
  br i1 %tobool26.not.i, label %if.end24.i.if.end36.i_crit_edge, label %if.then27.i

if.end24.i.if.end36.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36.i

if.then27.i:                                      ; preds = %if.end24.i
  %call30.i = call i32 %41(ptr noundef %device, i32 noundef %p.0, i32 noundef 1, ptr noundef nonnull %params.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true.i, label %if.then27.i.if.end36.i_crit_edge

if.then27.i.if.end36.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.then27.i
  %priv_size.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %priv_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %priv_size.i, align 4
  %44 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %params.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp.i = icmp ult i32 %43, %45
  br i1 %cmp.i, label %if.then32.i, label %land.lhs.true.i.if.end36.i_crit_edge

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36.i

if.then32.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %46 = ptrtoint ptr %priv_size.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %priv_size.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then32.i, %land.lhs.true.i.if.end36.i_crit_edge, %if.then27.i.if.end36.i_crit_edge, %if.end24.i.if.end36.i_crit_edge
  %priv_destructor.i = getelementptr inbounds %struct.net_device, ptr %retval.0.i.i, i32 0, i32 125
  %47 = ptrtoint ptr %priv_destructor.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @ipoib_intf_free, ptr %priv_destructor.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.net_device, ptr %retval.0.i.i, i32 0, i32 133
  call void @device_remove_file(ptr noundef %dev1.i.i, ptr noundef nonnull @dev_attr_dev_id) #17
  %call.i5.i = call i32 @device_create_file(ptr noundef %dev1.i.i, ptr noundef nonnull @dev_attr_dev_id) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool38.not.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.ipoib_add_port.exit.thread_crit_edge

if.end36.i.ipoib_add_port.exit.thread_crit_edge:  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_add_port.exit.thread

if.end40.i:                                       ; preds = %if.end36.i
  %call41.i = call i32 @ipoib_cm_add_mode_attr(ptr noundef %retval.0.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end40.i.ipoib_add_port.exit.thread_crit_edge

if.end40.i.ipoib_add_port.exit.thread_crit_edge:  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_add_port.exit.thread

if.end44.i:                                       ; preds = %if.end40.i
  %call.i7.i = call i32 @device_create_file(ptr noundef %dev1.i.i, ptr noundef nonnull @dev_attr_pkey) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool46.not.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end44.i.ipoib_add_port.exit.thread_crit_edge

if.end44.i.ipoib_add_port.exit.thread_crit_edge:  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_add_port.exit.thread

if.end48.i:                                       ; preds = %if.end44.i
  %call.i9.i = call i32 @device_create_file(ptr noundef %dev1.i.i, ptr noundef nonnull @dev_attr_umcast) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool50.not.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end48.i.ipoib_add_port.exit.thread_crit_edge

if.end48.i.ipoib_add_port.exit.thread_crit_edge:  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_add_port.exit.thread

if.end52.i:                                       ; preds = %if.end48.i
  %call53.i = call i32 @device_create_file(ptr noundef %dev1.i.i, ptr noundef nonnull @dev_attr_create_child) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %if.end52.i.ipoib_add_port.exit.thread_crit_edge

if.end52.i.ipoib_add_port.exit.thread_crit_edge:  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_add_port.exit.thread

if.end56.i:                                       ; preds = %if.end52.i
  %call58.i = call i32 @device_create_file(ptr noundef %dev1.i.i, ptr noundef nonnull @dev_attr_delete_child) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end56.i.ipoib_add_port.exit_crit_edge, label %if.end56.i.ipoib_add_port.exit.thread_crit_edge

if.end56.i.ipoib_add_port.exit.thread_crit_edge:  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_add_port.exit.thread

if.end56.i.ipoib_add_port.exit_crit_edge:         ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipoib_add_port.exit

ipoib_add_port.exit.thread:                       ; preds = %if.end56.i.ipoib_add_port.exit.thread_crit_edge, %if.end52.i.ipoib_add_port.exit.thread_crit_edge, %if.end48.i.ipoib_add_port.exit.thread_crit_edge, %if.end44.i.ipoib_add_port.exit.thread_crit_edge, %if.end40.i.ipoib_add_port.exit.thread_crit_edge, %if.end36.i.ipoib_add_port.exit.thread_crit_edge
  %48 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @rtnl_lock() #17
  %dev.i11.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %dev.i11.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i11.i, align 4
  %flags.i12.i = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %flags.i12.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i12.i, align 8
  %and.i13.i = and i32 %53, -2
  %call2.i14.i = call i32 @dev_change_flags(ptr noundef %51, i32 noundef %and.i13.i, ptr noundef null) #17
  call void @rtnl_unlock() #17
  %event_handler.i15.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %49, i32 0, i32 50
  call void @ib_unregister_event_handler(ptr noundef %event_handler.i15.i) #17
  %54 = load ptr, ptr @ipoib_workqueue, align 4
  call void @flush_workqueue(ptr noundef %54) #17
  call void @unregister_netdev(ptr noundef %retval.0.i.i) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params.i) #17
  br label %for.inc

ipoib_add_port.exit:                              ; preds = %if.end56.i.ipoib_add_port.exit_crit_edge, %ipoib_intf_free.exit.i, %do.end.i
  %retval.0.i = phi ptr [ %retval.0.i19.i, %do.end.i ], [ %39, %ipoib_intf_free.exit.i ], [ %retval.0.i.i, %if.end56.i.ipoib_add_port.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params.i) #17
  %cmp.i34 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34, label %ipoib_add_port.exit.for.inc_crit_edge, label %if.then8

ipoib_add_port.exit.for.inc_crit_edge:            ; preds = %ipoib_add_port.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then8:                                         ; preds = %ipoib_add_port.exit
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i, i32 2304
  %55 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i.i, align 4
  %list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %56, i32 0, i32 53
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i, align 4
  %call.i.i36 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %58, ptr noundef nonnull %call7.i) #17
  br i1 %call.i.i36, label %if.end.i.i37, label %if.then8.list_add_tail.exit_crit_edge

if.then8.list_add_tail.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i37:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %list, ptr %prev.i, align 4
  %60 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %56, i32 0, i32 53, i32 1
  %61 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %list, ptr %58, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i37, %if.then8.list_add_tail.exit_crit_edge
  %inc = add i32 %count.0, 1
  br label %for.inc

for.inc:                                          ; preds = %list_add_tail.exit, %ipoib_add_port.exit.for.inc_crit_edge, %ipoib_add_port.exit.thread, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %count.0, %ipoib_add_port.exit.for.inc_crit_edge ], [ %inc, %list_add_tail.exit ], [ %count.0, %for.body.for.inc_crit_edge ], [ %count.0, %ipoib_add_port.exit.thread ]
  %inc11 = add i32 %p.0, 1
  %63 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load.i.i33.pr = load i8, ptr %is_switch.i.i, align 4
  br label %for.cond

for.end:                                          ; preds = %rdma_end_port.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool12.not = icmp eq i32 %count.0, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef nonnull %call7.i) #17
  br label %cleanup

if.end14:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @ib_set_client_data(ptr noundef %device, ptr noundef nonnull @ipoib_client, ptr noundef nonnull %call7.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -95, %if.then13 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_remove_one(ptr nocapture noundef readnone %device, ptr noundef %client_data) #0 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client_data, align 4
  %cmp.not54 = icmp eq ptr %1, %client_data
  br i1 %cmp.not54, label %entry.for.end36_crit_edge, label %for.body.lr.ph

entry.for.end36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end36

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %.pn.in55 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn56, %for.end.for.body_crit_edge ]
  %3 = ptrtoint ptr %.pn.in55 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn56 = load ptr, ptr %.pn.in55, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #17
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head, ptr %head, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head, ptr %2, align 4
  %dev = getelementptr i8, ptr %.pn.in55, i32 -6216
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 2304
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @rtnl_lock() #17
  %dev.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %13, -2
  %call2.i = call i32 @dev_change_flags(ptr noundef %11, i32 noundef %and.i, ptr noundef null) #17
  call void @rtnl_unlock() #17
  %event_handler.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %9, i32 0, i32 50
  call void @ib_unregister_event_handler(ptr noundef %event_handler.i) #17
  %14 = load ptr, ptr @ipoib_workqueue, align 4
  call void @flush_workqueue(ptr noundef %14) #17
  call void @rtnl_lock() #17
  %child_intfs = getelementptr i8, ptr %.pn.in55, i32 -8
  %15 = ptrtoint ptr %child_intfs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %child_intfs, align 4
  %cmp20.not51 = icmp eq ptr %16, %child_intfs
  br i1 %cmp20.not51, label %for.body.for.end_crit_edge, label %for.body.for.body22_crit_edge

for.body.for.body22_crit_edge:                    ; preds = %for.body
  br label %for.body22

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.body.for.body22_crit_edge
  %.pn48.in52 = phi ptr [ %.pn48, %for.body22.for.body22_crit_edge ], [ %16, %for.body.for.body22_crit_edge ]
  %17 = ptrtoint ptr %.pn48.in52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn48 = load ptr, ptr %.pn48.in52, align 4
  %dev23 = getelementptr i8, ptr %.pn48.in52, i32 -6216
  %18 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev23, align 4
  call void @unregister_netdevice_queue(ptr noundef %19, ptr noundef nonnull %head) #17
  %cmp20.not = icmp eq ptr %.pn48, %child_intfs
  br i1 %cmp20.not, label %for.body22.for.end_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body22

for.body22.for.end_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body22.for.end_crit_edge, %for.body.for.end_crit_edge
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  call void @unregister_netdevice_queue(ptr noundef %21, ptr noundef nonnull %head) #17
  call void @unregister_netdevice_many(ptr noundef nonnull %head) #17
  call void @rtnl_unlock() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #17
  %cmp.not = icmp eq ptr %.pn56, %client_data
  br i1 %cmp.not, label %for.end.for.end36_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end.for.end36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end36

for.end36:                                        ; preds = %for.end.for.end36_crit_edge, %entry.for.end36_crit_edge
  call void @kfree(ptr noundef %client_data) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipoib_get_net_dev_by_params(ptr noundef %dev, i32 noundef %port, i16 noundef zeroext %pkey, ptr noundef %gid, ptr noundef %addr, ptr noundef readonly %client_data) #0 align 64 {
entry:
  %net_dev = alloca ptr, align 4
  %pkey_index = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %net_dev) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pkey_index) #17
  %0 = ptrtoint ptr %pkey_index to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pkey_index, align 2, !annotation !416
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  %1 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %2, i32 %port, i32 1, i32 2
  %3 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @ib_find_cached_pkey(ptr noundef %dev, i32 noundef %port, i16 noundef zeroext %pkey, ptr noundef nonnull %pkey_index) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pkey_index, align 2
  %7 = ptrtoint ptr %net_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %net_dev, align 4
  %8 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn20.i = load ptr, ptr %client_data, align 4
  %cmp.not22.i = icmp eq ptr %.pn20.i, %client_data
  br i1 %cmp.not22.i, label %if.end3.cleanup_crit_edge, label %if.end3.for.body.i_crit_edge

if.end3.for.body.i_crit_edge:                     ; preds = %if.end3
  br label %for.body.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end3.for.body.i_crit_edge
  %.pn24.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %if.end3.for.body.i_crit_edge ]
  %matches.023.i = phi i32 [ %matches.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end3.for.body.i_crit_edge ]
  %port1.i = getelementptr i8, ptr %.pn24.i, i32 -4888
  %9 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port1.i, align 4
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %port)
  %cmp2.not.i = icmp eq i32 %conv.i, %port
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %priv.025.i = getelementptr i8, ptr %.pn24.i, i32 -6260
  %call.i = call fastcc i32 @ipoib_match_gid_pkey_addr(ptr noundef %priv.025.i, ptr noundef %gid, i16 noundef zeroext %6, ptr noundef null, i32 noundef 0, ptr noundef nonnull %net_dev) #17
  %add.i = add i32 %call.i, %matches.023.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i)
  %cmp4.i = icmp sgt i32 %add.i, 1
  br i1 %cmp4.i, label %if.end.i.__ipoib_get_net_dev_by_params.exit_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end.i.__ipoib_get_net_dev_by_params.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__ipoib_get_net_dev_by_params.exit

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %matches.1.i = phi i32 [ %matches.023.i, %for.body.i.for.inc.i_crit_edge ], [ %add.i, %if.end.i.for.inc.i_crit_edge ]
  %11 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn24.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %client_data
  br i1 %cmp.not.i, label %for.inc.i.__ipoib_get_net_dev_by_params.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.__ipoib_get_net_dev_by_params.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__ipoib_get_net_dev_by_params.exit

__ipoib_get_net_dev_by_params.exit:               ; preds = %for.inc.i.__ipoib_get_net_dev_by_params.exit_crit_edge, %if.end.i.__ipoib_get_net_dev_by_params.exit_crit_edge
  %matches.2.i = phi i32 [ %add.i, %if.end.i.__ipoib_get_net_dev_by_params.exit_crit_edge ], [ %matches.1.i, %for.inc.i.__ipoib_get_net_dev_by_params.exit_crit_edge ]
  %12 = zext i32 %matches.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %matches.2.i, label %sw.epilog [
    i32 0, label %__ipoib_get_net_dev_by_params.exit.cleanup_crit_edge
    i32 1, label %sw.bb5
  ]

__ipoib_get_net_dev_by_params.exit.cleanup_crit_edge: ; preds = %__ipoib_get_net_dev_by_params.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb5:                                           ; preds = %__ipoib_get_net_dev_by_params.exit
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_dev, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %__ipoib_get_net_dev_by_params.exit
  %15 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %sw.epilog.dev_put.exit_crit_edge, label %do.body1.i

sw.epilog.dev_put.exit_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_put.exit

do.body1.i:                                       ; preds = %sw.epilog
  %17 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !411
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 118
  %18 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcpu_refcnt.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %26, %20
  %27 = inttoptr i32 %add.i28 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add13.i = add i32 %29, -1
  store i32 %add13.i, ptr %27, align 4
  %30 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !412
  %and.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !401

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @warn_bogus_irq_restore() #17
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #17, !srcloc !413
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %sw.epilog.dev_put.exit_crit_edge
  %31 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %pkey_index, align 2
  %33 = ptrtoint ptr %net_dev to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %net_dev, align 4
  %34 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn20.i29 = load ptr, ptr %client_data, align 4
  %cmp.not22.i30 = icmp eq ptr %.pn20.i29, %client_data
  br i1 %cmp.not22.i30, label %dev_put.exit.cleanup_crit_edge, label %dev_put.exit.for.body.i36_crit_edge

dev_put.exit.for.body.i36_crit_edge:              ; preds = %dev_put.exit
  br label %for.body.i36

dev_put.exit.cleanup_crit_edge:                   ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i36:                                     ; preds = %for.inc.i45.for.body.i36_crit_edge, %dev_put.exit.for.body.i36_crit_edge
  %.pn24.i31 = phi ptr [ %.pn.i43, %for.inc.i45.for.body.i36_crit_edge ], [ %.pn20.i29, %dev_put.exit.for.body.i36_crit_edge ]
  %matches.023.i32 = phi i32 [ %matches.1.i42, %for.inc.i45.for.body.i36_crit_edge ], [ 0, %dev_put.exit.for.body.i36_crit_edge ]
  %port1.i33 = getelementptr i8, ptr %.pn24.i31, i32 -4888
  %35 = ptrtoint ptr %port1.i33 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %port1.i33, align 4
  %conv.i34 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i34, i32 %port)
  %cmp2.not.i35 = icmp eq i32 %conv.i34, %port
  br i1 %cmp2.not.i35, label %if.end.i41, label %for.body.i36.for.inc.i45_crit_edge

for.body.i36.for.inc.i45_crit_edge:               ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i45

if.end.i41:                                       ; preds = %for.body.i36
  %priv.025.i37 = getelementptr i8, ptr %.pn24.i31, i32 -6260
  %call.i38 = call fastcc i32 @ipoib_match_gid_pkey_addr(ptr noundef %priv.025.i37, ptr noundef %gid, i16 noundef zeroext %32, ptr noundef %addr, i32 noundef 0, ptr noundef nonnull %net_dev) #17
  %add.i39 = add i32 %call.i38, %matches.023.i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i39)
  %cmp4.i40 = icmp sgt i32 %add.i39, 1
  br i1 %cmp4.i40, label %if.end.i41.__ipoib_get_net_dev_by_params.exit47_crit_edge, label %if.end.i41.for.inc.i45_crit_edge

if.end.i41.for.inc.i45_crit_edge:                 ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i45

if.end.i41.__ipoib_get_net_dev_by_params.exit47_crit_edge: ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #19
  br label %__ipoib_get_net_dev_by_params.exit47

for.inc.i45:                                      ; preds = %if.end.i41.for.inc.i45_crit_edge, %for.body.i36.for.inc.i45_crit_edge
  %matches.1.i42 = phi i32 [ %matches.023.i32, %for.body.i36.for.inc.i45_crit_edge ], [ %add.i39, %if.end.i41.for.inc.i45_crit_edge ]
  %37 = ptrtoint ptr %.pn24.i31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i43 = load ptr, ptr %.pn24.i31, align 4
  %cmp.not.i44 = icmp eq ptr %.pn.i43, %client_data
  br i1 %cmp.not.i44, label %for.inc.i45.__ipoib_get_net_dev_by_params.exit47_crit_edge, label %for.inc.i45.for.body.i36_crit_edge

for.inc.i45.for.body.i36_crit_edge:               ; preds = %for.inc.i45
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i36

for.inc.i45.__ipoib_get_net_dev_by_params.exit47_crit_edge: ; preds = %for.inc.i45
  call void @__sanitizer_cov_trace_pc() #19
  br label %__ipoib_get_net_dev_by_params.exit47

__ipoib_get_net_dev_by_params.exit47:             ; preds = %for.inc.i45.__ipoib_get_net_dev_by_params.exit47_crit_edge, %if.end.i41.__ipoib_get_net_dev_by_params.exit47_crit_edge
  %matches.2.i46 = phi i32 [ %add.i39, %if.end.i41.__ipoib_get_net_dev_by_params.exit47_crit_edge ], [ %matches.1.i42, %for.inc.i45.__ipoib_get_net_dev_by_params.exit47_crit_edge ]
  %38 = zext i32 %matches.2.i46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %matches.2.i46, label %do.body [
    i32 0, label %__ipoib_get_net_dev_by_params.exit47.cleanup_crit_edge
    i32 1, label %__ipoib_get_net_dev_by_params.exit47.sw.bb15_crit_edge
  ]

__ipoib_get_net_dev_by_params.exit47.sw.bb15_crit_edge: ; preds = %__ipoib_get_net_dev_by_params.exit47
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb15

__ipoib_get_net_dev_by_params.exit47.cleanup_crit_edge: ; preds = %__ipoib_get_net_dev_by_params.exit47
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %__ipoib_get_net_dev_by_params.exit47
  %call8 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_get_net_dev_by_params._rs, ptr noundef nonnull @__func__.ipoib_get_net_dev_by_params) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body.sw.bb15_crit_edge, label %do.end

do.body.sw.bb15_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %39 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.153) #20
  br label %sw.bb15

sw.bb15:                                          ; preds = %do.end, %do.body.sw.bb15_crit_edge, %__ipoib_get_net_dev_by_params.exit47.sw.bb15_crit_edge
  %40 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %__ipoib_get_net_dev_by_params.exit47.cleanup_crit_edge, %dev_put.exit.cleanup_crit_edge, %sw.bb5, %__ipoib_get_net_dev_by_params.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %41, %sw.bb15 ], [ %14, %sw.bb5 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %__ipoib_get_net_dev_by_params.exit.cleanup_crit_edge ], [ null, %__ipoib_get_net_dev_by_params.exit47.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ], [ null, %dev_put.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey_index) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %net_dev) #17
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_client_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipoib_get_link_ops() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_event(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_register_event_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_cm_add_mode_attr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_event_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_id_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -1104
  %dev_port = getelementptr i8, ptr %dev, i32 -700
  %0 = ptrtoint ptr %dev_port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dev_port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %dev_id = getelementptr i8, ptr %dev, i32 -702
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dev_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %1)
  %cmp = icmp eq i16 %3, %1
  br i1 %cmp, label %do.body, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

do.body:                                          ; preds = %land.lhs.true
  %.b15 = load i1, ptr @dev_id_show.__print_once, align 1
  br i1 %.b15, label %do.body.if.end7_crit_edge, label %if.then6

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @dev_id_show.__print_once, align 1
  %4 = tail call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.147, ptr noundef %add.ptr, ptr noundef nonnull @.str.148, ptr noundef %comm) #20
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %dev_id8 = getelementptr i8, ptr %dev, i32 -702
  %8 = ptrtoint ptr %dev_id8 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dev_id8, align 2
  %conv9 = zext i16 %9 to i32
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.149, i32 noundef %conv9) #17
  ret i32 %call10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_child_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %pkey = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pkey) #17
  %0 = ptrtoint ptr %pkey to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pkey, align 4, !annotation !416
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.151, ptr noundef nonnull %pkey)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %pkey to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pkey, align 4
  %3 = add i32 %2, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %3)
  %4 = icmp ult i32 %3, -65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %2)
  %cmp4 = icmp eq i32 %2, 32768
  %or.cond10 = or i1 %cmp4, %4
  br i1 %or.cond10, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr = getelementptr i8, ptr %dev, i32 -1104
  %conv = trunc i32 %2 to i16
  %call7 = call i32 @ipoib_vlan_add(ptr noundef %add.ptr, i16 noundef zeroext %conv) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %count.call7 = select i1 %tobool.not, i32 %count, i32 %call7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call7, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pkey) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_vlan_add(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delete_child_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %pkey = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pkey) #17
  %0 = ptrtoint ptr %pkey to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pkey, align 4, !annotation !416
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.151, ptr noundef nonnull %pkey)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %pkey to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pkey, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %2)
  %3 = icmp ugt i32 %2, 65535
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr = getelementptr i8, ptr %dev, i32 -1104
  %conv = trunc i32 %2 to i16
  %call5 = call i32 @ipoib_vlan_delete(ptr noundef %add.ptr, i16 noundef zeroext %conv) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  %count.call5 = select i1 %tobool.not, i32 %count, i32 %call5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call5, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pkey) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_vlan_delete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_find_cached_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipoib_match_gid_pkey_addr(ptr noundef %priv, ptr noundef %gid, i16 noundef zeroext %pkey_index, ptr noundef %addr, i32 noundef %nesting, ptr nocapture noundef %found_net_dev) unnamed_addr #0 align 64 {
entry:
  %priv.i = alloca %struct.netdev_nested_priv, align 8
  %data.i = alloca %struct.ipoib_walk_data, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pkey_index1 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 26
  %0 = ptrtoint ptr %pkey_index1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pkey_index1, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %pkey_index)
  %cmp = icmp eq i16 %1, %pkey_index
  br i1 %cmp, label %land.lhs.true, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %tobool.not = icmp eq ptr %gid, null
  br i1 %tobool.not, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %local_gid = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 32
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %gid, ptr noundef dereferenceable(16) %local_gid, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool4.not = icmp eq i32 %bcmp, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end17_crit_edge

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %tobool5.not = icmp eq ptr %addr, null
  %dev = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %4 = tail call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !417
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %if.then6.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then6.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then6
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 696, ptr noundef nonnull @.str.156) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then6.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %3) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end3.critedge.i, label %do.body1.i.i

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !411
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %9 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add13.i.i = add i32 %20, 1
  store i32 %add13.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !412
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !401

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #17, !srcloc !413
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i10.i, label %dev_hold.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

dev_hold.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %dev_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %dev_hold.exit.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 724, ptr noundef nonnull @.str.157) #17
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %dev_hold.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !418
  %22 = tail call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i.i.i.i17.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %if.then11

if.end3.critedge.i:                               ; preds = %rcu_read_lock.exit.i
  %call.i19.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i19.i, label %if.end3.critedge.i.rcu_read_unlock.exit29.i_crit_edge, label %land.lhs.true.i22.i

if.end3.critedge.i.rcu_read_unlock.exit29.i_crit_edge: ; preds = %if.end3.critedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit29.i

land.lhs.true.i22.i:                              ; preds = %if.end3.critedge.i
  %call1.i20.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call1.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i22.i.rcu_read_unlock.exit29.i_crit_edge, label %land.lhs.true2.i24.i

land.lhs.true.i22.i.rcu_read_unlock.exit29.i_crit_edge: ; preds = %land.lhs.true.i22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit29.i

land.lhs.true2.i24.i:                             ; preds = %land.lhs.true.i22.i
  %.b4.i23.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23.i, label %land.lhs.true2.i24.i.rcu_read_unlock.exit29.i_crit_edge, label %if.then.i25.i

land.lhs.true2.i24.i.rcu_read_unlock.exit29.i_crit_edge: ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit29.i

if.then.i25.i:                                    ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 724, ptr noundef nonnull @.str.157) #17
  br label %rcu_read_unlock.exit29.i

rcu_read_unlock.exit29.i:                         ; preds = %if.then.i25.i, %land.lhs.true2.i24.i.rcu_read_unlock.exit29.i_crit_edge, %land.lhs.true.i22.i.rcu_read_unlock.exit29.i_crit_edge, %if.end3.critedge.i.rcu_read_unlock.exit29.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !418
  %26 = tail call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i.i.i.i26.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i26.i to ptr
  %preempt_count.i.i.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i27.i, align 4
  %sub.i.i.i28.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i28.i, ptr %preempt_count.i.i.i.i27.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %tobool.not.i30.i = icmp eq ptr %3, null
  br i1 %tobool.not.i30.i, label %rcu_read_unlock.exit29.i.if.end17_crit_edge, label %do.body1.i39.i

rcu_read_unlock.exit29.i.if.end17_crit_edge:      ; preds = %rcu_read_unlock.exit29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

do.body1.i39.i:                                   ; preds = %rcu_read_unlock.exit29.i
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !411
  %pcpu_refcnt.i31.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 118
  %31 = ptrtoint ptr %pcpu_refcnt.i31.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcpu_refcnt.i31.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i32.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i32.i to ptr
  %cpu.i33.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu.i33.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i33.i, align 4
  %arrayidx.i34.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i34.i, align 4
  %add.i35.i = add i32 %39, %33
  %40 = inttoptr i32 %add.i35.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %add13.i36.i = add i32 %42, 1
  store i32 %add13.i36.i, ptr %40, align 4
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !412
  %and.i.i.i37.i = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i37.i)
  %tobool24.not.i38.i = icmp eq i32 %and.i.i.i37.i, 0
  br i1 %tobool24.not.i38.i, label %if.then28.i40.i, label %do.body1.i39.i.do.end30.i41.i_crit_edge, !prof !401

do.body1.i39.i.do.end30.i41.i_crit_edge:          ; preds = %do.body1.i39.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30.i41.i

if.then28.i40.i:                                  ; preds = %do.body1.i39.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end30.i41.i

do.end30.i41.i:                                   ; preds = %if.then28.i40.i, %do.body1.i39.i.do.end30.i41.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #17, !srcloc !413
  br label %if.then11

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv.i) #17
  %44 = ptrtoint ptr %priv.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -1, ptr %priv.i, align 8, !annotation !416
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #17
  %45 = getelementptr inbounds %struct.ipoib_walk_data, ptr %data.i, i32 0, i32 1
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %addr, ptr %data.i, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %45, align 4
  %data2.i = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv.i, i32 0, i32 1
  %48 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %data.i, ptr %data2.i, align 4
  %49 = call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i.i.i.i.i55 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i.i56, align 4
  %add.i.i.i.i57 = add i32 %52, 1
  store volatile i32 %add.i.i.i.i57, ptr %preempt_count.i.i.i.i.i56, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !417
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i58 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i58, label %if.else.rcu_read_lock.exit.i66_crit_edge, label %land.lhs.true.i.i61

if.else.rcu_read_lock.exit.i66_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i66

land.lhs.true.i.i61:                              ; preds = %if.else
  %call1.i.i59 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i59)
  %tobool.not.i.i60 = icmp eq i32 %call1.i.i59, 0
  br i1 %tobool.not.i.i60, label %land.lhs.true.i.i61.rcu_read_lock.exit.i66_crit_edge, label %land.lhs.true2.i.i63

land.lhs.true.i.i61.rcu_read_lock.exit.i66_crit_edge: ; preds = %land.lhs.true.i.i61
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i66

land.lhs.true2.i.i63:                             ; preds = %land.lhs.true.i.i61
  %.b4.i.i62 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i62, label %land.lhs.true2.i.i63.rcu_read_lock.exit.i66_crit_edge, label %if.then.i.i64

land.lhs.true2.i.i63.rcu_read_lock.exit.i66_crit_edge: ; preds = %land.lhs.true2.i.i63
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i66

if.then.i.i64:                                    ; preds = %land.lhs.true2.i.i63
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 696, ptr noundef nonnull @.str.156) #17
  br label %rcu_read_lock.exit.i66

rcu_read_lock.exit.i66:                           ; preds = %if.then.i.i64, %land.lhs.true2.i.i63.rcu_read_lock.exit.i66_crit_edge, %land.lhs.true.i.i61.rcu_read_lock.exit.i66_crit_edge, %if.else.rcu_read_lock.exit.i66_crit_edge
  %call.i65 = call fastcc zeroext i1 @ipoib_is_dev_match_addr_rcu(ptr noundef nonnull %addr, ptr noundef %3) #17
  br i1 %call.i65, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %rcu_read_lock.exit.i66
  %tobool.not.i10.i = icmp eq ptr %3, null
  br i1 %tobool.not.i10.i, label %if.then.i.dev_hold.exit.i77_crit_edge, label %do.body1.i.i75

if.then.i.dev_hold.exit.i77_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_hold.exit.i77

do.body1.i.i75:                                   ; preds = %if.then.i
  %53 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !411
  %pcpu_refcnt.i.i67 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 118
  %54 = ptrtoint ptr %pcpu_refcnt.i.i67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pcpu_refcnt.i.i67, align 4
  %56 = ptrtoint ptr %55 to i32
  %57 = call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i.i68 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i68 to ptr
  %cpu.i.i69 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu.i.i69 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu.i.i69, align 4
  %arrayidx.i.i70 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx.i.i70 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i70, align 4
  %add.i.i71 = add i32 %62, %56
  %63 = inttoptr i32 %add.i.i71 to ptr
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add13.i.i72 = add i32 %65, 1
  store i32 %add13.i.i72, ptr %63, align 4
  %66 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !412
  %and.i.i.i.i73 = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i73)
  %tobool24.not.i.i74 = icmp eq i32 %and.i.i.i.i73, 0
  br i1 %tobool24.not.i.i74, label %if.then28.i.i76, label %do.body1.i.i75.do.end30.i.i_crit_edge, !prof !401

do.body1.i.i75.do.end30.i.i_crit_edge:            ; preds = %do.body1.i.i75
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30.i.i

if.then28.i.i76:                                  ; preds = %do.body1.i.i75
  call void @__sanitizer_cov_trace_pc() #19
  call void @warn_bogus_irq_restore() #17
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i76, %do.body1.i.i75.do.end30.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #17, !srcloc !413
  br label %dev_hold.exit.i77

dev_hold.exit.i77:                                ; preds = %do.end30.i.i, %if.then.i.dev_hold.exit.i77_crit_edge
  %67 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %3, ptr %45, align 4
  br label %out.i

if.end.i:                                         ; preds = %rcu_read_lock.exit.i66
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i = call i32 @netdev_walk_all_upper_dev_rcu(ptr noundef %3, ptr noundef nonnull @ipoib_upper_walk, ptr noundef nonnull %priv.i) #17
  br label %out.i

out.i:                                            ; preds = %if.end.i, %dev_hold.exit.i77
  %call.i11.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i11.i, label %out.i.if.end_crit_edge, label %land.lhs.true.i14.i

out.i.if.end_crit_edge:                           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true.i14.i:                              ; preds = %out.i
  %call1.i12.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool.not.i13.i, label %land.lhs.true.i14.i.if.end_crit_edge, label %land.lhs.true2.i16.i

land.lhs.true.i14.i.if.end_crit_edge:             ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true2.i16.i:                             ; preds = %land.lhs.true.i14.i
  %.b4.i15.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i, label %land.lhs.true2.i16.i.if.end_crit_edge, label %if.then.i17.i

land.lhs.true2.i16.i.if.end_crit_edge:            ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then.i17.i:                                    ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 724, ptr noundef nonnull @.str.157) #17
  br label %if.end

if.end:                                           ; preds = %if.then.i17.i, %land.lhs.true2.i16.i.if.end_crit_edge, %land.lhs.true.i14.i.if.end_crit_edge, %out.i.if.end_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !418
  %68 = call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i.i.i.i18.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i18.i to ptr
  %preempt_count.i.i.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i19.i, align 4
  %sub.i.i.i.i78 = add i32 %71, -1
  store volatile i32 %sub.i.i.i.i78, ptr %preempt_count.i.i.i.i19.i, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %72 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %45, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv.i) #17
  %tobool10.not = icmp eq ptr %73, null
  br i1 %tobool10.not, label %if.end.if.end17_crit_edge, label %if.end.if.then11_crit_edge

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then11:                                        ; preds = %if.end.if.then11_crit_edge, %do.end30.i41.i, %rcu_read_unlock.exit.i
  %net_dev.084 = phi ptr [ %73, %if.end.if.then11_crit_edge ], [ %3, %do.end30.i41.i ], [ %call.i, %rcu_read_unlock.exit.i ]
  %74 = ptrtoint ptr %found_net_dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %found_net_dev, align 4
  %tobool12.not = icmp eq ptr %75, null
  br i1 %tobool12.not, label %if.then13, label %do.body1.i

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  %76 = ptrtoint ptr %found_net_dev to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %net_dev.084, ptr %found_net_dev, align 4
  br label %if.end17

do.body1.i:                                       ; preds = %if.then11
  %77 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !411
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %net_dev.084, i32 0, i32 118
  %78 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pcpu_refcnt.i, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %86, %80
  %87 = inttoptr i32 %add.i to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add13.i = add i32 %89, -1
  store i32 %add13.i, ptr %87, align 4
  %90 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !412
  %and.i.i.i81 = and i32 %90, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i81)
  %tobool24.not.i = icmp eq i32 %and.i.i.i81, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !401

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @warn_bogus_irq_restore() #17
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %77) #17, !srcloc !413
  br label %if.end17

if.end17:                                         ; preds = %dev_put.exit, %if.then13, %if.end.if.end17_crit_edge, %rcu_read_unlock.exit29.i.if.end17_crit_edge, %lor.lhs.false.if.end17_crit_edge, %entry.if.end17_crit_edge
  %matches.0 = phi i32 [ 0, %lor.lhs.false.if.end17_crit_edge ], [ 0, %if.end.if.end17_crit_edge ], [ 0, %entry.if.end17_crit_edge ], [ 1, %dev_put.exit ], [ 1, %if.then13 ], [ 0, %rcu_read_unlock.exit29.i.if.end17_crit_edge ]
  %vlan_rwsem = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 6
  call void @down_read_nested(ptr noundef %vlan_rwsem, i32 noundef %nesting) #17
  %child_intfs = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 52
  %add = add i32 %nesting, 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end17
  %matches.1 = phi i32 [ %matches.0, %if.end17 ], [ %add22, %for.body.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %child_intfs, %if.end17 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %91 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp19.not = icmp eq ptr %.pn, %child_intfs
  br i1 %cmp19.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.cond
  %child_priv.0 = getelementptr i8, ptr %.pn, i32 -6260
  %call21 = call fastcc i32 @ipoib_match_gid_pkey_addr(ptr noundef %child_priv.0, ptr noundef %gid, i16 noundef zeroext %pkey_index, ptr noundef %addr, i32 noundef %add, ptr noundef %found_net_dev)
  %add22 = add i32 %call21, %matches.1
  %cmp23 = icmp sgt i32 %add22, 1
  br i1 %cmp23, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %matches.2 = phi i32 [ %add22, %for.body.for.end_crit_edge ], [ %matches.1, %for.cond.for.end_crit_edge ]
  call void @up_read(ptr noundef %vlan_rwsem) #17
  ret i32 %matches.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ipoib_is_dev_match_addr_rcu(ptr noundef %addr, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.169)
  switch i16 %3, label %entry.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !417
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %sw.bb.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb.rcu_read_lock.exit.i_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 696, ptr noundef nonnull @.str.156) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %sw.bb.rcu_read_lock.exit.i_crit_edge
  %ip_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %9 = ptrtoint ptr %ip_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %ip_ptr.i.i, align 32
  %call.i3.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i, label %rcu_read_lock.exit.i.__in_dev_get_rcu.exit.i_crit_edge

rcu_read_lock.exit.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rcu.exit.i

land.lhs.true.i5.i:                               ; preds = %rcu_read_lock.exit.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i5.i.__in_dev_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i5.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i5.i
  %.b9.i.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, label %if.then.i6.i

land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rcu.exit.i

if.then.i6.i:                                     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.158, i32 noundef 232, ptr noundef nonnull @.str.12) #17
  br label %__in_dev_get_rcu.exit.i

__in_dev_get_rcu.exit.i:                          ; preds = %if.then.i6.i, %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, %land.lhs.true.i5.i.__in_dev_get_rcu.exit.i_crit_edge, %rcu_read_lock.exit.i.__in_dev_get_rcu.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %__in_dev_get_rcu.exit.i.if.end.i_crit_edge, label %if.then.i

__in_dev_get_rcu.exit.i.if.end.i_crit_edge:       ; preds = %__in_dev_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %__in_dev_get_rcu.exit.i
  %refcnt.i = getelementptr inbounds %struct.in_device, ptr %10, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #17
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #17, !srcloc !400
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !401

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i7.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i7.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !397

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end.i_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end.i_crit_edge, %__in_dev_get_rcu.exit.i.if.end.i_crit_edge
  %call.i8.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i8.i, label %if.end.i.in_dev_get.exit_crit_edge, label %land.lhs.true.i11.i

if.end.i.in_dev_get.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %in_dev_get.exit

land.lhs.true.i11.i:                              ; preds = %if.end.i
  %call1.i9.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call1.i9.i, 0
  br i1 %tobool.not.i10.i, label %land.lhs.true.i11.i.in_dev_get.exit_crit_edge, label %land.lhs.true2.i13.i

land.lhs.true.i11.i.in_dev_get.exit_crit_edge:    ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %in_dev_get.exit

land.lhs.true2.i13.i:                             ; preds = %land.lhs.true.i11.i
  %.b4.i12.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12.i, label %land.lhs.true2.i13.i.in_dev_get.exit_crit_edge, label %if.then.i14.i

land.lhs.true2.i13.i.in_dev_get.exit_crit_edge:   ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %in_dev_get.exit

if.then.i14.i:                                    ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 724, ptr noundef nonnull @.str.157) #17
  br label %in_dev_get.exit

in_dev_get.exit:                                  ; preds = %if.then.i14.i, %land.lhs.true2.i13.i.in_dev_get.exit_crit_edge, %land.lhs.true.i11.i.in_dev_get.exit_crit_edge, %if.end.i.in_dev_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !418
  %13 = tail call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i.i.i.i15.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i15.i to ptr
  %preempt_count.i.i.i.i16.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i16.i, align 4
  %sub.i.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i16.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br i1 %tobool.not.i, label %in_dev_get.exit.cleanup_crit_edge, label %if.end

in_dev_get.exit.cleanup_crit_edge:                ; preds = %in_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %in_dev_get.exit
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %17 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sin_addr, align 4
  %call2 = tail call i32 @inet_confirm_addr(ptr noundef %1, ptr noundef nonnull %10, i32 noundef 0, i32 noundef %18, i32 noundef 254) #17
  %refcnt.i22 = getelementptr inbounds %struct.in_device, ptr %10, i32 0, i32 2
  %call.i.i.i.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i22, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !395
  tail call void @llvm.prefetch.p0(ptr %refcnt.i22, i32 1, i32 3, i32 1) #17
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i22, ptr %refcnt.i22, i32 1, ptr elementtype(i32) %refcnt.i22) #17, !srcloc !396
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i25, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i24 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i24, label %if.end5.i.i.i.i.in_dev_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !397

if.end5.i.i.i.i.in_dev_put.exit_crit_edge:        ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %in_dev_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i22, i32 noundef 3) #17
  br label %in_dev_put.exit

if.then.i25:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !398
  tail call void @in_dev_finish_destroy(ptr noundef nonnull %10) #17
  br label %in_dev_put.exit

in_dev_put.exit:                                  ; preds = %if.then.i25, %if.then10.i.i.i.i, %if.end5.i.i.i.i.in_dev_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %in_dev_put.exit.sw.epilog_crit_edge, label %in_dev_put.exit.cleanup_crit_edge

in_dev_put.exit.cleanup_crit_edge:                ; preds = %in_dev_put.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

in_dev_put.exit.sw.epilog_crit_edge:              ; preds = %in_dev_put.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %call7 = tail call i32 @ipv6_chk_addr(ptr noundef %1, ptr noundef %sin6_addr, ptr noundef %dev, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %sw.bb6.sw.epilog_crit_edge, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6.sw.epilog_crit_edge, %in_dev_put.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb6.cleanup_crit_edge, %in_dev_put.exit.cleanup_crit_edge, %in_dev_get.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.epilog ], [ false, %in_dev_get.exit.cleanup_crit_edge ], [ true, %in_dev_put.exit.cleanup_crit_edge ], [ true, %sw.bb6.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_walk_all_upper_dev_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_upper_walk(ptr noundef %upper, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call fastcc zeroext i1 @ipoib_is_dev_match_addr_rcu(ptr noundef %3, ptr noundef %upper)
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %upper, null
  br i1 %tobool.not.i, label %if.then.dev_hold.exit_crit_edge, label %do.body1.i

if.then.dev_hold.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.then
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !411
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %upper, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !385) #17
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i = add i32 %16, 1
  store i32 %add13.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !412
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !401

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #17, !srcloc !413
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.then.dev_hold.exit_crit_edge
  %result = getelementptr inbounds %struct.ipoib_walk_data, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %upper, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %dev_hold.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %dev_hold.exit ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_confirm_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @in_dev_finish_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_register_debugfs() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_sa_register_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @ipoib_netlink_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind readonly }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nobuiltin nounwind }
attributes #24 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !57, !59, !61, !62, !64, !66, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !136, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !160, !161, !162, !163, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !190, !192, !194, !196, !197, !198, !200, !201, !203, !204, !205, !206, !208, !209, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !254, !256, !257, !258, !259, !260, !262, !263, !264, !266, !267, !268, !269, !270, !272, !273, !274, !275, !277, !279, !280, !282, !283, !285, !286, !288, !289, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !308, !309, !310, !311, !313, !314, !315, !316, !318, !320, !322, !324, !325, !327, !329, !330, !332, !334, !336, !338, !340, !342, !343, !344, !345, !347, !348, !349, !351, !352, !354, !355, !356, !358, !360, !361, !363, !365, !366, !368, !369, !370, !371, !372, !373, !374, !376, !377, !379, !380, !382, !383}
!llvm.named.register.sp = !{!385}
!llvm.module.flags = !{!386, !387, !388, !389, !390, !391, !392, !393}
!llvm.ident = !{!394}

!0 = !{ptr @__UNIQUE_ID_author526, !1, !"__UNIQUE_ID_author526", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 55, i32 1}
!2 = !{ptr @__UNIQUE_ID_description527, !3, !"__UNIQUE_ID_description527", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 56, i32 1}
!4 = !{ptr @__UNIQUE_ID_file528, !5, !"__UNIQUE_ID_file528", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 57, i32 1}
!6 = !{ptr @__UNIQUE_ID_license529, !5, !"__UNIQUE_ID_license529", i1 false, i1 false}
!7 = !{ptr @ipoib_sendq_size, !8, !"ipoib_sendq_size", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 59, i32 5}
!9 = !{ptr @ipoib_recvq_size, !10, !"ipoib_recvq_size", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 60, i32 5}
!11 = !{ptr @__param_send_queue_size, !12, !"__param_send_queue_size", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 62, i32 1}
!13 = !{ptr @__UNIQUE_ID_send_queue_sizetype530, !12, !"__UNIQUE_ID_send_queue_sizetype530", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_send_queue_size531, !15, !"__UNIQUE_ID_send_queue_size531", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 63, i32 1}
!16 = !{ptr @__param_recv_queue_size, !17, !"__param_recv_queue_size", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 64, i32 1}
!18 = !{ptr @__UNIQUE_ID_recv_queue_sizetype532, !17, !"__UNIQUE_ID_recv_queue_sizetype532", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_recv_queue_size533, !20, !"__UNIQUE_ID_recv_queue_size533", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 65, i32 1}
!21 = !{ptr @__param_debug_level, !22, !"__param_debug_level", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 70, i32 1}
!23 = !{ptr @__UNIQUE_ID_debug_leveltype534, !22, !"__UNIQUE_ID_debug_leveltype534", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_debug_level535, !25, !"__UNIQUE_ID_debug_level535", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 71, i32 1}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 138, i32 2}
!28 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ipoib_open._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @ipoib_open._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 171, i32 4}
!34 = !{ptr @ipoib_open._entry.3, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ipoib_open._entry_ptr.5, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 523, i32 20}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 525, i32 20}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 532, i32 3}
!42 = !{ptr @ipoib_set_mode._rs, !41, !"_rs", i1 false, i1 false}
!43 = !{ptr @__func__.ipoib_set_mode, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ipoib_set_mode._entry, !41, !"_entry", i1 false, i1 false}
!46 = !{ptr @ipoib_set_mode._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 695, i32 3}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ipoib_mark_paths_invalid._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ipoib_mark_paths_invalid._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1280, i32 9}
!54 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1286, i32 15}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1288, i32 15}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1400, i32 9}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1411, i32 15}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1414, i32 15}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1436, i32 2}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1461, i32 2}
!70 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ipoib_neigh_dtor._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ipoib_neigh_dtor._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1490, i32 9}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1497, i32 11}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1504, i32 4}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1500, i32 11}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1573, i32 9}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1583, i32 19}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1587, i32 5}
!87 = !{ptr @ipoib_set_umcast._rs, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2298, i32 3}
!89 = !{ptr @__func__.ipoib_set_umcast, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ipoib_set_umcast._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @ipoib_set_umcast._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @__initcall__kmod_ib_ipoib__583_2686_ipoib_init_module6, !94, !"__initcall__kmod_ib_ipoib__583_2686_ipoib_init_module6", i1 false, i1 false}
!94 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2686, i32 1}
!95 = !{ptr @__exitcall_ipoib_cleanup_module, !96, !"__exitcall_ipoib_cleanup_module", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2687, i32 1}
!97 = !{ptr @ipoib_debug_level, !98, !"ipoib_debug_level", i1 false, i1 false}
!98 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 68, i32 5}
!99 = !{ptr @ipoib_workqueue, !100, !"ipoib_workqueue", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 85, i32 26}
!101 = !{ptr @ipoib_sa_client, !102, !"ipoib_sa_client", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 87, i32 21}
!103 = !{ptr @__param_str_send_queue_size, !12, !"__param_str_send_queue_size", i1 false, i1 false}
!104 = !{ptr @__param_str_recv_queue_size, !17, !"__param_str_recv_queue_size", i1 false, i1 false}
!105 = !{ptr @__param_str_debug_level, !22, !"__param_str_debug_level", i1 false, i1 false}
!106 = !{ptr @.str.27, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 618, i32 2}
!108 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @path_free._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @path_free._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!113 = !{ptr @.str.29, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!117 = !{ptr @.str.31, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @skb_queue_head_init.__key, !119, !"__key", i1 false, i1 false}
!119 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!120 = !{ptr @.str.32, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @ipoib_header_ops, !122, !"ipoib_header_ops", i1 false, i1 false}
!122 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2059, i32 32}
!123 = !{ptr @ipoib_netdev_default_pf, !124, !"ipoib_netdev_default_pf", i1 false, i1 false}
!124 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2099, i32 36}
!125 = !{ptr @.str.33, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1713, i32 3}
!127 = !{ptr @.str.34, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ipoib_dev_init_default._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @ipoib_dev_init_default._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.36, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1721, i32 3}
!132 = !{ptr @ipoib_dev_init_default._entry.35, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ipoib_dev_init_default._entry_ptr.37, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @ipv4_bcast_addr, !135, !"ipv4_bcast_addr", i1 false, i1 false}
!135 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 79, i32 17}
!136 = !{ptr @ipoib_netdev_ops_vf, !137, !"ipoib_netdev_ops_vf", i1 false, i1 false}
!137 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2084, i32 36}
!138 = !{ptr @.str.38, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1955, i32 3}
!140 = !{ptr @.str.39, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ipoib_ndo_init._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @ipoib_ndo_init._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.40, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1872, i32 3}
!145 = !{ptr @.str.41, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @ipoib_parent_init._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @ipoib_parent_init._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.43, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1880, i32 3}
!150 = !{ptr @ipoib_parent_init._entry.42, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @ipoib_parent_init._entry_ptr.44, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.46, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1887, i32 3}
!154 = !{ptr @ipoib_parent_init._entry.45, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @ipoib_parent_init._entry_ptr.47, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.48, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1767, i32 13}
!158 = !{ptr @.str.49, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1769, i32 3}
!160 = !{ptr @.str.50, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ipoib_dev_init._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @ipoib_dev_init._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.51, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1774, i32 13}
!165 = !{ptr @.str.53, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1776, i32 3}
!167 = !{ptr @ipoib_dev_init._entry.52, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @ipoib_dev_init._entry_ptr.54, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.56, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1782, i32 3}
!171 = !{ptr @ipoib_dev_init._entry.55, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @ipoib_dev_init._entry_ptr.57, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.59, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1788, i32 3}
!175 = !{ptr @ipoib_dev_init._entry.58, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @ipoib_dev_init._entry_ptr.60, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.62, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1794, i32 4}
!179 = !{ptr @ipoib_dev_init._entry.61, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @ipoib_dev_init._entry_ptr.63, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.64, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1653, i32 2}
!183 = !{ptr @ipoib_neigh_hash_uninit._entry, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @ipoib_neigh_hash_uninit._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @init_completion.__key, !186, !"__key", i1 false, i1 false}
!186 = !{!"../include/linux/completion.h", i32 87, i32 2}
!187 = !{ptr @.str.65, !186, !"<string literal>", i1 false, i1 false}
!188 = distinct !{null, !189, !"__warned", i1 false, i1 false}
!189 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1615, i32 9}
!190 = distinct !{null, !191, !"__warned", i1 false, i1 false}
!191 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1628, i32 19}
!192 = distinct !{null, !193, !"__warned", i1 false, i1 false}
!193 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1630, i32 4}
!194 = distinct !{null, !195, !"__already_done", i1 false, i1 false}
!195 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!196 = !{ptr @.str.68, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.69, !195, !"<string literal>", i1 false, i1 false}
!198 = distinct !{null, !199, !"__already_done", i1 false, i1 false}
!199 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1977, i32 2}
!200 = !{ptr @.str.70, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.71, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 188, i32 2}
!203 = !{ptr @.str.72, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @ipoib_stop._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @ipoib_stop._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @neigh_add_path._rs, !207, !"_rs", i1 false, i1 false}
!207 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1001, i32 5}
!208 = !{ptr @__func__.neigh_add_path, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.73, !207, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @neigh_add_path._entry, !207, !"_entry", i1 false, i1 false}
!211 = !{ptr @neigh_add_path._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.74, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 904, i32 2}
!214 = !{ptr @.str.75, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @path_rec_start._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @path_rec_start._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @path_rec_start._rs, !218, !"_rs", i1 false, i1 false}
!218 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 921, i32 3}
!219 = !{ptr @.str.77, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @path_rec_start._entry.76, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @path_rec_start._entry_ptr.78, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.79, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 758, i32 3}
!224 = !{ptr @.str.80, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @path_rec_completion._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @path_rec_completion._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.82, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 762, i32 3}
!229 = !{ptr @path_rec_completion._entry.81, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @path_rec_completion._entry_ptr.83, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.85, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 787, i32 4}
!233 = !{ptr @path_rec_completion._entry.84, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @path_rec_completion._entry_ptr.86, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.88, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 801, i32 3}
!237 = !{ptr @path_rec_completion._entry.87, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @path_rec_completion._entry_ptr.89, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @path_rec_completion._rs, !240, !"_rs", i1 false, i1 false}
!240 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 856, i32 4}
!241 = !{ptr @.str.91, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @path_rec_completion._entry.90, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @path_rec_completion._entry_ptr.92, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.93, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1083, i32 2}
!246 = !{ptr @.str.94, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @unicast_arp_send._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @unicast_arp_send._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.95, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1235, i32 3}
!251 = !{ptr @.str.96, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @ipoib_set_mcast_list._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @ipoib_set_mcast_list._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @ipoib_change_mtu._rs, !255, !"_rs", i1 false, i1 false}
!255 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 238, i32 4}
!256 = !{ptr @__func__.ipoib_change_mtu, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.97, !255, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @ipoib_change_mtu._entry, !255, !"_entry", i1 false, i1 false}
!259 = !{ptr @ipoib_change_mtu._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.99, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 252, i32 3}
!262 = !{ptr @ipoib_change_mtu._entry.98, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @ipoib_change_mtu._entry_ptr.100, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @ipoib_timeout._rs, !265, !"_rs", i1 false, i1 false}
!265 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1196, i32 2}
!266 = !{ptr @__func__.ipoib_timeout, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.101, !265, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @ipoib_timeout._entry, !265, !"_entry", i1 false, i1 false}
!269 = !{ptr @ipoib_timeout._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @ipoib_timeout._rs.102, !271, !"_rs", i1 false, i1 false}
!271 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1198, i32 2}
!272 = !{ptr @.str.104, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @ipoib_timeout._entry.103, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @ipoib_timeout._entry_ptr.105, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @ipoib_netdev_ops_pf, !276, !"ipoib_netdev_ops_pf", i1 false, i1 false}
!276 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2063, i32 36}
!277 = !{ptr @ipoib_build_priv.__key, !278, !"__key", i1 false, i1 false}
!278 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2140, i32 2}
!279 = !{ptr @.str.106, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @ipoib_build_priv.__key.107, !281, !"__key", i1 false, i1 false}
!281 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2141, i32 2}
!282 = !{ptr @.str.108, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @ipoib_build_priv.__key.109, !284, !"__key", i1 false, i1 false}
!284 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2142, i32 2}
!285 = !{ptr @.str.110, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @ipoib_build_priv.__key.111, !287, !"__key", i1 false, i1 false}
!287 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2149, i32 2}
!288 = !{ptr @.str.112, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @ipoib_build_priv.__key.113, !287, !"__key", i1 false, i1 false}
!290 = !{ptr @.str.114, !287, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @ipoib_build_priv.__key.115, !292, !"__key", i1 false, i1 false}
!292 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2150, i32 2}
!293 = !{ptr @.str.116, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @ipoib_build_priv.__key.117, !295, !"__key", i1 false, i1 false}
!295 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2151, i32 2}
!296 = !{ptr @.str.118, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @ipoib_build_priv.__key.119, !298, !"__key", i1 false, i1 false}
!298 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2152, i32 2}
!299 = !{ptr @.str.120, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @ipoib_build_priv.__key.121, !301, !"__key", i1 false, i1 false}
!301 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2153, i32 2}
!302 = !{ptr @.str.122, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @ipoib_build_priv.__key.123, !304, !"__key", i1 false, i1 false}
!304 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2154, i32 2}
!305 = !{ptr @.str.124, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @ipoib_build_priv.__key.125, !307, !"__key", i1 false, i1 false}
!307 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2155, i32 2}
!308 = !{ptr @.str.126, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @ipoib_build_priv.__key.127, !307, !"__key", i1 false, i1 false}
!310 = !{ptr @.str.128, !307, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @ipoib_build_priv.__key.129, !312, !"__key", i1 false, i1 false}
!312 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2156, i32 2}
!313 = !{ptr @.str.130, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @ipoib_build_priv.__key.131, !312, !"__key", i1 false, i1 false}
!315 = !{ptr @.str.132, !312, !"<string literal>", i1 false, i1 false}
!316 = distinct !{null, !317, !"__warned", i1 false, i1 false}
!317 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1320, i32 9}
!318 = distinct !{null, !319, !"__warned", i1 false, i1 false}
!319 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1334, i32 19}
!320 = distinct !{null, !321, !"__warned", i1 false, i1 false}
!321 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 1341, i32 5}
!322 = !{ptr @.str.135, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2313, i32 8}
!324 = !{ptr @dev_attr_umcast, !323, !"dev_attr_umcast", i1 false, i1 false}
!325 = !{ptr @.str.136, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2288, i32 25}
!327 = !{ptr @.str.137, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2280, i32 8}
!329 = !{ptr @dev_attr_pkey, !328, !"dev_attr_pkey", i1 false, i1 false}
!330 = !{ptr @.str.138, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2278, i32 25}
!332 = !{ptr @ipoib_netdev_notifier, !333, !"ipoib_netdev_notifier", i1 false, i1 false}
!333 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2601, i32 30}
!334 = !{ptr @.str.139, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 101, i32 12}
!336 = !{ptr @ipoib_client, !337, !"ipoib_client", i1 false, i1 false}
!337 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 100, i32 25}
!338 = !{ptr @.str.140, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2560, i32 24}
!340 = !{ptr @.str.141, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2479, i32 3}
!342 = !{ptr @.str.142, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @ipoib_add_port._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @ipoib_add_port._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.144, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2496, i32 3}
!347 = !{ptr @ipoib_add_port._entry.143, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @ipoib_add_port._entry_ptr.145, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.146, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2460, i32 8}
!351 = !{ptr @dev_attr_dev_id, !350, !"dev_attr_dev_id", i1 false, i1 false}
!352 = distinct !{null, !353, !"__print_once", i1 false, i1 false}
!353 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2454, i32 3}
!354 = !{ptr @.str.147, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.148, !353, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.149, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2458, i32 25}
!358 = !{ptr @.str.150, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2401, i32 8}
!360 = !{ptr @dev_attr_create_child, !359, !"dev_attr_create_child", i1 false, i1 false}
!361 = !{ptr @.str.151, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2391, i32 18}
!363 = !{ptr @.str.152, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2421, i32 8}
!365 = !{ptr @dev_attr_delete_child, !364, !"dev_attr_delete_child", i1 false, i1 false}
!366 = !{ptr @ipoib_get_net_dev_by_params._rs, !367, !"_rs", i1 false, i1 false}
!367 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 510, i32 3}
!368 = !{ptr @__func__.ipoib_get_net_dev_by_params, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.153, !367, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.154, !367, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.155, !367, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @ipoib_get_net_dev_by_params._entry, !367, !"_entry", i1 false, i1 false}
!373 = !{ptr @ipoib_get_net_dev_by_params._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!374 = distinct !{null, !375, !"__warned", i1 false, i1 false}
!375 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!376 = !{ptr @.str.156, !375, !"<string literal>", i1 false, i1 false}
!377 = distinct !{null, !378, !"__warned", i1 false, i1 false}
!378 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!379 = !{ptr @.str.157, !378, !"<string literal>", i1 false, i1 false}
!380 = distinct !{null, !381, !"__warned", i1 false, i1 false}
!381 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!382 = !{ptr @.str.158, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @.str.159, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_main.c", i32 2640, i32 20}
!385 = !{!"sp"}
!386 = !{i32 1, !"wchar_size", i32 2}
!387 = !{i32 1, !"min_enum_size", i32 4}
!388 = !{i32 8, !"branch-target-enforcement", i32 0}
!389 = !{i32 8, !"sign-return-address", i32 0}
!390 = !{i32 8, !"sign-return-address-all", i32 0}
!391 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!392 = !{i32 7, !"uwtable", i32 1}
!393 = !{i32 7, !"frame-pointer", i32 2}
!394 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!395 = !{i64 2148622033}
!396 = !{i64 2148536473, i64 2148536505, i64 2148536534, i64 2148536568, i64 2148536599, i64 2148536622}
!397 = !{!"branch_weights", i32 2000, i32 1}
!398 = !{i64 2150609889}
!399 = !{i64 1016214, i64 1016238, i64 1016259, i64 1016276, i64 1016293}
!400 = !{i64 2148534008, i64 2148534040, i64 2148534069, i64 2148534103, i64 2148534134, i64 2148534157}
!401 = !{!"branch_weights", i32 1, i32 2000}
!402 = !{i64 2158421748}
!403 = !{i64 2158429868}
!404 = !{i64 2148532478, i64 2148532504, i64 2148532533, i64 2148532567, i64 2148532598, i64 2148532621}
!405 = !{i64 2148620954}
!406 = !{i64 2148535663, i64 2148535695, i64 2148535724, i64 2148535758, i64 2148535789, i64 2148535812}
!407 = !{i64 2148621183}
!408 = !{i64 2158448791}
!409 = !{i64 2158463865}
!410 = !{i32 0, i32 33}
!411 = !{i64 935381, i64 935442}
!412 = !{i64 938113}
!413 = !{i64 938398}
!414 = !{i64 2158474516}
!415 = !{i64 2158408511}
!416 = !{!"auto-init"}
!417 = !{i64 2149735342}
!418 = !{i64 2149735608}
