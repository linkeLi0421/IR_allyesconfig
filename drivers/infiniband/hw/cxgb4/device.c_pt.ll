; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/cxgb4/device.c_pt.bc'
source_filename = "../drivers/infiniband/hw/cxgb4/device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cxgb4_uld_info = type { [16 x i8], ptr, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.110 }
%union.anon.110 = type { [4 x i32] }
%struct.t4_wq = type { %struct.t4_sq, %struct.t4_rq, ptr, ptr, i32, ptr, ptr }
%struct.t4_sq = type { ptr, i32, i32, i32, ptr, ptr, ptr, i64, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.t4_rq = type { ptr, i32, i32, ptr, ptr, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16 }
%struct.c4iw_rdev = type { %struct.c4iw_resource, i32, i32, %struct.c4iw_dev_ucontext, ptr, ptr, ptr, i32, %struct.cxgb4_lld_info, i32, ptr, i32, ptr, %struct.c4iw_stats, %struct.c4iw_hw_queue, ptr, %struct.atomic_t, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.kref, %struct.kref }
%struct.c4iw_resource = type { %struct.c4iw_id_table, %struct.c4iw_id_table, %struct.c4iw_id_table, %struct.c4iw_id_table }
%struct.c4iw_id_table = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.c4iw_dev_ucontext = type { %struct.list_head, %struct.list_head, %struct.mutex, %struct.kref }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.c4iw_stats = type { %struct.mutex, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.c4iw_stat = type { i64, i64, i64, i64 }
%struct.c4iw_hw_queue = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.t4_cqe = type { i32, i32, %union.anon.197, [3 x i64], i64 }
%union.anon.197 = type { [3 x i64] }
%struct.t4_swsqe = type { i64, %struct.t4_cqe, i32, i32, i32, i32, i16, i32, i64, i64 }
%struct.anon.199 = type { i32, i16, i16 }
%struct.t4_swrqe = type { i64, i64, i64, i32 }
%struct.anon.198 = type { i32, i32 }
%struct.wr_log_entry = type { i64, i64, i64, i64, i64, i16, i16, i8, i8 }
%struct.c4iw_qid_list = type { %struct.list_head, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.uld_ctx = type { %struct.list_head, %struct.cxgb4_lld_info, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.c4iw_dev = type { %struct.ib_device, %struct.c4iw_rdev, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.list_head, i32, %struct.wait_queue_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.232, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.232 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.219 }
%struct.anon.219 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.c4iw_wr_wait = type { %struct.completion, i32, %struct.kref }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.205, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.205 = type { ptr }
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
%struct.rsp_ctrl = type { i32, i32, %union.anon.234 }
%union.anon.234 = type { i64 }
%struct.pkt_gl = type { i64, [17 x %struct.page_frag], ptr, i32, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.ib_event = type { ptr, %union.anon.208, i32 }
%union.anon.208 = type { ptr }
%struct.c4iw_qp = type { %struct.ib_qp, %struct.list_head, ptr, ptr, %struct.c4iw_qp_attributes, %struct.t4_wq, %struct.spinlock, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, ptr, %struct.completion, %struct.refcount_struct }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.c4iw_qp_attributes = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, [52 x i8], i32, i8, %struct.c4iw_mpa_attributes, ptr, i8, i8, i16, i16, i8 }
%struct.c4iw_mpa_attributes = type { i8, i8, i8, i8, i8, i8, i8 }
%union.t4_recv_wr = type { [16 x i64] }
%struct.t4_status_page = type { i32, i16, i16, i16, i16, i8, i8, [2 x i8], i16, i16, i16, i16, i32 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.t4_dev_status_page = type { i8, i8, i16, i32, i64, i64, i64, i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.c4iw_debugfs_data = type { ptr, ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.166, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.167, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.168, ptr, %struct.address_space, %struct.list_head, %union.anon.169, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.166 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.167 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.168 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.169 = type { ptr }
%struct.c4iw_ep_common = type { ptr, ptr, ptr, %struct.sk_buff_head, i32, %struct.kref, %struct.mutex, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.229 }
%union.anon.229 = type { ptr, [124 x i8] }
%struct.iw_cm_id = type { ptr, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, ptr, ptr, ptr, i8, i8 }
%struct.c4iw_srq = type { %struct.ib_srq, %struct.list_head, ptr, %struct.t4_srq, ptr, i32, i32, i32, i32, %struct.spinlock, ptr, i8 }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.209, %struct.rdma_restrack_entry }
%struct.anon.209 = type { ptr, %union.anon.210 }
%union.anon.210 = type { %struct.anon.211 }
%struct.anon.211 = type { ptr, i32 }
%struct.t4_srq = type { ptr, i32, i32, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, ptr, i16, i16, i16, i16 }
%struct.c4iw_ep = type { %struct.c4iw_ep_common, ptr, %struct.timer_list, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.c4iw_mpa_attributes, [276 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i32, i32, %struct.c4iw_ep_stats, i32, i32, ptr }
%struct.c4iw_ep_stats = type { i32, i32 }
%struct.fw_ri_tpte = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.c4iw_listen_ep = type { %struct.c4iw_ep_common, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.148, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.148 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.qp_list = type { i32, ptr }
%union.t4_wr = type { [40 x i64] }

@__UNIQUE_ID_author674 = internal constant [27 x i8] c"iw_cxgb4.author=Steve Wise\00", section ".modinfo", align 1
@__UNIQUE_ID_description675 = internal constant [47 x i8] c"iw_cxgb4.description=Chelsio T4/T5 RDMA Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file676 = internal constant [51 x i8] c"iw_cxgb4.file=drivers/infiniband/hw/cxgb4/iw_cxgb4\00", section ".modinfo", align 1
@__UNIQUE_ID_license677 = internal constant [30 x i8] c"iw_cxgb4.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__param_str_allow_db_fc_on_t5 = internal constant [27 x i8] c"iw_cxgb4.allow_db_fc_on_t5\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@allow_db_fc_on_t5 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_allow_db_fc_on_t5 = internal constant %struct.kernel_param { ptr @__param_str_allow_db_fc_on_t5, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @allow_db_fc_on_t5 } }, section "__param", align 4
@__UNIQUE_ID_allow_db_fc_on_t5type678 = internal constant [40 x i8] c"iw_cxgb4.parmtype=allow_db_fc_on_t5:int\00", section ".modinfo", align 1
@__UNIQUE_ID_allow_db_fc_on_t5679 = internal constant [74 x i8] c"iw_cxgb4.parm=allow_db_fc_on_t5:Allow DB Flow Control on T5 (default = 0)\00", section ".modinfo", align 1
@__param_str_allow_db_coalescing_on_t5 = internal constant [35 x i8] c"iw_cxgb4.allow_db_coalescing_on_t5\00", align 1
@allow_db_coalescing_on_t5 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_allow_db_coalescing_on_t5 = internal constant %struct.kernel_param { ptr @__param_str_allow_db_coalescing_on_t5, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @allow_db_coalescing_on_t5 } }, section "__param", align 4
@__UNIQUE_ID_allow_db_coalescing_on_t5type680 = internal constant [48 x i8] c"iw_cxgb4.parmtype=allow_db_coalescing_on_t5:int\00", section ".modinfo", align 1
@__UNIQUE_ID_allow_db_coalescing_on_t5681 = internal constant [80 x i8] c"iw_cxgb4.parm=allow_db_coalescing_on_t5:Allow DB Coalescing on T5 (default = 0)\00", section ".modinfo", align 1
@c4iw_wr_log = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_c4iw_wr_log = internal constant [21 x i8] c"iw_cxgb4.c4iw_wr_log\00", align 1
@__param_c4iw_wr_log = internal constant %struct.kernel_param { ptr @__param_str_c4iw_wr_log, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @c4iw_wr_log } }, section "__param", align 4
@__UNIQUE_ID_c4iw_wr_logtype682 = internal constant [34 x i8] c"iw_cxgb4.parmtype=c4iw_wr_log:int\00", section ".modinfo", align 1
@__UNIQUE_ID_c4iw_wr_log683 = internal constant [71 x i8] c"iw_cxgb4.parm=c4iw_wr_log:Enables logging of work request timing data.\00", section ".modinfo", align 1
@__param_str_c4iw_wr_log_size_order = internal constant [32 x i8] c"iw_cxgb4.c4iw_wr_log_size_order\00", align 1
@c4iw_wr_log_size_order = internal global { i32, [28 x i8] } { i32 12, [28 x i8] zeroinitializer }, align 32
@__param_c4iw_wr_log_size_order = internal constant %struct.kernel_param { ptr @__param_str_c4iw_wr_log_size_order, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @c4iw_wr_log_size_order } }, section "__param", align 4
@__UNIQUE_ID_c4iw_wr_log_size_ordertype684 = internal constant [45 x i8] c"iw_cxgb4.parmtype=c4iw_wr_log_size_order:int\00", section ".modinfo", align 1
@__UNIQUE_ID_c4iw_wr_log_size_order685 = internal constant [94 x i8] c"iw_cxgb4.parm=c4iw_wr_log_size_order:Number of entries (log2) in the work request timing log.\00", section ".modinfo", align 1
@c4iw_init_dev_ucontext.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&uctx->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/infiniband/hw/cxgb4/device.c\00", [59 x i8] zeroinitializer }, align 32
@_c4iw_free_wr_wait.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.4, i8 1, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iw_cxgb4\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_c4iw_free_wr_wait\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Free wr_wait %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iw_cxgb4: Free wr_wait %p\0A\00", [37 x i8] zeroinitializer }, align 32
@c4iw_alloc_wr_wait.__UNIQUE_ID_ddebug698 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.6, ptr @.str.1, ptr @.str.7, i8 1, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c4iw_alloc_wr_wait\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wr_wait %p\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iw_cxgb4: wr_wait %p\0A\00", [42 x i8] zeroinitializer }, align 32
@dev_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dev_mutex, i64 52), ptr getelementptr (i8, ptr @dev_mutex, i64 52) }, ptr @dev_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@uld_ctx_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @uld_ctx_list, ptr @uld_ctx_list }, [24 x i8] zeroinitializer }, align 32
@reg_workq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@c4iw_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_iw_cxgb4__699_1571_c4iw_init_module6 = internal global ptr @c4iw_init_module, section ".initcall6.init", align 4
@__exitcall_c4iw_exit_module = internal global ptr @c4iw_exit_module, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dev_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dev_mutex\00", [22 x i8] zeroinitializer }, align 32
@c4iw_remove.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.11, ptr @.str.1, ptr @.str.12, i8 0, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"c4iw_remove\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"c4iw_dev %p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iw_cxgb4: c4iw_dev %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Register_iWARP_device\00", [42 x i8] zeroinitializer }, align 32
@c4iw_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.1, i32 1545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013iw_cxgb4: Failed creating workqueue to register iwarp device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_init_module\00", [47 x i8] zeroinitializer }, align 32
@c4iw_init_module._entry_ptr = internal global ptr @c4iw_init_module._entry, section ".printk_index", align 4
@c4iw_uld_info = internal global { %struct.cxgb4_uld_info, [56 x i8] } { %struct.cxgb4_uld_info { [16 x i8] c"iw_cxgb4\00\00\00\00\00\00\00\00", ptr null, i32 16, i32 511, i32 16, i8 1, i8 0, ptr @c4iw_uld_add, ptr @c4iw_uld_rx_handler, ptr @c4iw_uld_state_change, ptr @c4iw_uld_control, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@c4iw_uld_add.vers_printed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@c4iw_uld_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.1, i32 1080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016iw_cxgb4: Chelsio T4/T5 RDMA Driver - version %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"c4iw_uld_add\00", [19 x i8] zeroinitializer }, align 32
@c4iw_uld_add._entry_ptr = internal global ptr @c4iw_uld_add._entry, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@c4iw_uld_add.__UNIQUE_ID_ddebug691 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.19, ptr @.str.1, ptr @.str.21, i8 1, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"found device %s nchan %u nrxq %u ntxq %u nports %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"iw_cxgb4: found device %s nchan %u nrxq %u ntxq %u nports %u\0A\00", [34 x i8] zeroinitializer }, align 32
@c4iw_uld_add.__UNIQUE_ID_ddebug692 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.19, ptr @.str.1, ptr @.str.23, i8 1, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rxqid[%u] %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iw_cxgb4: rxqid[%u] %u\0A\00", [40 x i8] zeroinitializer }, align 32
@c4iw_uld_rx_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.1, i32 1197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016iw_cxgb4: %s: unexpected FL contents at %p, RSS %#llx, FL %#llx, len %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"c4iw_uld_rx_handler\00", [44 x i8] zeroinitializer }, align 32
@c4iw_uld_rx_handler._entry_ptr = internal global ptr @c4iw_uld_rx_handler._entry, section ".printk_index", align 4
@c4iw_handlers = external dso_local local_unnamed_addr global [239 x ptr], align 4
@c4iw_uld_rx_handler._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.1, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016iw_cxgb4: %s no handler opcode 0x%x...\0A\00", [54 x i8] zeroinitializer }, align 32
@c4iw_uld_rx_handler._entry_ptr.29 = internal global ptr @c4iw_uld_rx_handler._entry.27, section ".printk_index", align 4
@recv_rx_pkt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.30, ptr @.str.1, i32 1156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"recv_rx_pkt\00", [20 x i8] zeroinitializer }, align 32
@recv_rx_pkt._entry_ptr = internal global ptr @recv_rx_pkt._entry, section ".printk_index", align 4
@c4iw_uld_state_change.__UNIQUE_ID_ddebug693 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.31, ptr @.str.1, ptr @.str.32, i8 1, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"c4iw_uld_state_change\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"new_state %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iw_cxgb4: new_state %u\0A\00", [40 x i8] zeroinitializer }, align 32
@c4iw_uld_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.1, i32 1226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016iw_cxgb4: %s: Up\0A\00", [44 x i8] zeroinitializer }, align 32
@c4iw_uld_state_change._entry_ptr = internal global ptr @c4iw_uld_state_change._entry, section ".printk_index", align 4
@c4iw_uld_state_change._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.1, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013iw_cxgb4: %s: initialization failed: %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@c4iw_uld_state_change._entry_ptr.37 = internal global ptr @c4iw_uld_state_change._entry.35, section ".printk_index", align 4
@c4iw_uld_state_change.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&ctx->reg_work)\00", [62 x i8] zeroinitializer }, align 32
@c4iw_uld_state_change._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.31, ptr @.str.1, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016iw_cxgb4: %s: Down\0A\00", [42 x i8] zeroinitializer }, align 32
@c4iw_uld_state_change._entry_ptr.41 = internal global ptr @c4iw_uld_state_change._entry.39, section ".printk_index", align 4
@c4iw_uld_state_change._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.31, ptr @.str.1, i32 1248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016iw_cxgb4: %s: Fatal Error\0A\00", [35 x i8] zeroinitializer }, align 32
@c4iw_uld_state_change._entry_ptr.44 = internal global ptr @c4iw_uld_state_change._entry.42, section ".printk_index", align 4
@c4iw_uld_state_change._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.31, ptr @.str.1, i32 1260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016iw_cxgb4: %s: Detach\0A\00", [40 x i8] zeroinitializer }, align 32
@c4iw_uld_state_change._entry_ptr.47 = internal global ptr @c4iw_uld_state_change._entry.45, section ".printk_index", align 4
@c4iw_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.1, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016iw_cxgb4: %s: RDMA not supported on this device\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"c4iw_alloc\00", [21 x i8] zeroinitializer }, align 32
@c4iw_alloc._entry_ptr = internal global ptr @c4iw_alloc._entry, section ".printk_index", align 4
@c4iw_alloc._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.1, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016iw_cxgb4: %s: On-Chip Queues not supported on this device\0A\00", [35 x i8] zeroinitializer }, align 32
@c4iw_alloc._entry_ptr.52 = internal global ptr @c4iw_alloc._entry.50, section ".printk_index", align 4
@c4iw_alloc._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.1, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013iw_cxgb4: Cannot allocate ib device\0A\00", [57 x i8] zeroinitializer }, align 32
@c4iw_alloc._entry_ptr.55 = internal global ptr @c4iw_alloc._entry.53, section ".printk_index", align 4
@c4iw_alloc.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.49, ptr @.str.1, ptr @.str.56, i8 0, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Ing. padding boundary is %d, egrsstatuspagesize = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"iw_cxgb4: Ing. padding boundary is %d, egrsstatuspagesize = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@c4iw_alloc._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.49, ptr @.str.1, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013iw_cxgb4: Unable to ioremap BAR2\0A\00", [60 x i8] zeroinitializer }, align 32
@c4iw_alloc._entry_ptr.60 = internal global ptr @c4iw_alloc._entry.58, section ".printk_index", align 4
@c4iw_alloc._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.49, ptr @.str.1, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013iw_cxgb4: Unable to ioremap onchip mem\0A\00", [54 x i8] zeroinitializer }, align 32
@c4iw_alloc._entry_ptr.63 = internal global ptr @c4iw_alloc._entry.61, section ".printk_index", align 4
@c4iw_alloc.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.49, ptr @.str.1, ptr @.str.64, i8 1, i8 4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ocq memory: hw_start 0x%x size %u mw_pa 0x%lx mw_kva %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"iw_cxgb4: ocq memory: hw_start 0x%x size %u mw_pa 0x%lx mw_kva %p\0A\00", [61 x i8] zeroinitializer }, align 32
@c4iw_alloc._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.49, ptr @.str.1, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013iw_cxgb4: Unable to open CXIO rdev err %d\0A\00", [51 x i8] zeroinitializer }, align 32
@c4iw_alloc._entry_ptr.68 = internal global ptr @c4iw_alloc._entry.66, section ".printk_index", align 4
@c4iw_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&devp->rdev.stats.lock\00", [41 x i8] zeroinitializer }, align 32
@c4iw_alloc.__key.70 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&devp->db_mutex\00", [16 x i8] zeroinitializer }, align 32
@c4iw_alloc.__key.72 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&devp->wait\00", [20 x i8] zeroinitializer }, align 32
@c4iw_rdev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.1, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013iw_cxgb4: %s: unsupported udb/ucq densities %u/%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c4iw_rdev_open\00", [17 x i8] zeroinitializer }, align 32
@c4iw_rdev_open._entry_ptr = internal global ptr @c4iw_rdev_open._entry, section ".printk_index", align 4
@c4iw_rdev_open._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.1, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013iw_cxgb4: %s: unsupported qp and cq id ranges qp start %u size %u cq start %u size %u\0A\00", [39 x i8] zeroinitializer }, align 32
@c4iw_rdev_open._entry_ptr.78 = internal global ptr @c4iw_rdev_open._entry.76, section ".printk_index", align 4
@c4iw_rdev_open._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.1, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013iw_cxgb4: %s: unsupported sge host page size %u\0A\00", [45 x i8] zeroinitializer }, align 32
@c4iw_rdev_open._entry_ptr.81 = internal global ptr @c4iw_rdev_open._entry.79, section ".printk_index", align 4
@c4iw_rdev_open.__UNIQUE_ID_ddebug686 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.75, ptr @.str.1, ptr @.str.82, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [162 x i8], [62 x i8] } { [162 x i8] c"dev %s stag start 0x%0x size 0x%0x num stags %d pbl start 0x%0x size 0x%0x rq start 0x%0x size 0x%0x qp qid start %u size %u cq qid start %u size %u srq size %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [172 x i8], [52 x i8] } { [172 x i8] c"iw_cxgb4: dev %s stag start 0x%0x size 0x%0x num stags %d pbl start 0x%0x size 0x%0x rq start 0x%0x size 0x%0x qp qid start %u size %u cq qid start %u size %u srq size %u\0A\00", [52 x i8] zeroinitializer }, align 32
@c4iw_rdev_open.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.75, ptr @.str.1, ptr @.str.84, i8 0, i8 -47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"udb %pR db_reg %p gts_reg %p qpmask 0x%x cqmask 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"iw_cxgb4: udb %pR db_reg %p gts_reg %p qpmask 0x%x cqmask 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@c4iw_rdev_open._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.75, ptr @.str.1, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013iw_cxgb4: error %d initializing resources\0A\00", [51 x i8] zeroinitializer }, align 32
@c4iw_rdev_open._entry_ptr.88 = internal global ptr @c4iw_rdev_open._entry.86, section ".printk_index", align 4
@c4iw_rdev_open._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.75, ptr @.str.1, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013iw_cxgb4: error %d initializing pbl pool\0A\00", [52 x i8] zeroinitializer }, align 32
@c4iw_rdev_open._entry_ptr.91 = internal global ptr @c4iw_rdev_open._entry.89, section ".printk_index", align 4
@c4iw_rdev_open._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.75, ptr @.str.1, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013iw_cxgb4: error %d initializing rqt pool\0A\00", [52 x i8] zeroinitializer }, align 32
@c4iw_rdev_open._entry_ptr.94 = internal global ptr @c4iw_rdev_open._entry.92, section ".printk_index", align 4
@c4iw_rdev_open._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.75, ptr @.str.1, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013iw_cxgb4: error %d initializing ocqp pool\0A\00", [51 x i8] zeroinitializer }, align 32
@c4iw_rdev_open._entry_ptr.97 = internal global ptr @c4iw_rdev_open._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iw_cxgb4_free\00", [18 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"qps\00", [28 x i8] zeroinitializer }, align 32
@qp_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qp_open, ptr null, ptr @qp_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stags\00", [26 x i8] zeroinitializer }, align 32
@stag_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @stag_open, ptr null, ptr @stag_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@stats_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @stats_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eps\00", [28 x i8] zeroinitializer }, align 32
@ep_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ep_open, ptr null, ptr @ep_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wr_log\00", [25 x i8] zeroinitializer }, align 32
@wr_log_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @wr_log_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wr_log_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"rc qp sq id %u %s id %u state %u onchip %u ep tid %u state %u %pI4:%u/%u->%pI4:%u/%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"srq\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rq\00", [29 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"rc qp sq id %u rq id %u state %u onchip %u ep tid %u state %u %pI6:%u/%u->%pI6:%u/%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"qp sq id %u rq id %u state %u onchip %u\0A\00", [55 x i8] zeroinitializer }, align 32
@zero_sin = internal global { %struct.sockaddr_in, [16 x i8] } { %struct.sockaddr_in { i16 2, i16 0, %struct.in_addr zeroinitializer, [8 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@zero_sin6 = internal global { %struct.sockaddr_in6, [36 x i8] } { %struct.sockaddr_in6 { i16 10, i16 0, i32 0, %struct.in6_addr zeroinitializer, i32 0 }, [36 x i8] zeroinitializer }, align 32
@qp_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.1, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016iw_cxgb4: %s null qpd?\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qp_release\00", [21 x i8] zeroinitializer }, align 32
@qp_release._entry_ptr = internal global ptr @qp_release._entry, section ".printk_index", align 4
@dump_stag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.1, i32 387, ptr @.str.115, ptr @.str.116 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s cxgb4_read_tpte err %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dump_stag\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dump_stag._entry_ptr = internal global ptr @dump_stag._entry, section ".printk_index", align 4
@.str.117 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"stag: idx 0x%x valid %d key 0x%x state %d pdid %d perm 0x%x ps %d len 0x%llx va 0x%llx\0A\00", [40 x i8] zeroinitializer }, align 32
@stag_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.1, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016iw_cxgb4: %s null stagd?\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stag_release\00", [19 x i8] zeroinitializer }, align 32
@stag_release._entry_ptr = internal global ptr @stag_release._entry, section ".printk_index", align 4
@.str.120 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"   Object: %10s %10s %10s %10s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Total\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Current\00", [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Max\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Fail\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"     PDID: %10llu %10llu %10llu %10llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"      QID: %10llu %10llu %10llu %10llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"     SRQS: %10llu %10llu %10llu %10llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"   TPTMEM: %10llu %10llu %10llu %10llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"   PBLMEM: %10llu %10llu %10llu %10llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"   RQTMEM: %10llu %10llu %10llu %10llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"  OCQPMEM: %10llu %10llu %10llu %10llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  DB FULL: %10llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" DB EMPTY: %10llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  DB DROP: %10llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c" DB State: %s Transitions %llu FC Interruptions %llu\0A\00", [42 x i8] zeroinitializer }, align 32
@db_state_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], [16 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TCAM_FULL: %10llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ACT_OFLD_CONN_FAILS: %10llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PAS_OFLD_CONN_FAILS: %10llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NEG_ADV_RCVD: %10llu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AVAILABLE IRD: %10u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NORMAL\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FLOW_CONTROL\00", [19 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RECOVERY\00", [23 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"STOPPED\00", [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"ep %p cm_id %p qp %p state %d flags 0x%lx history 0x%lx hwtid %d atid %d conn_na %u abort_na %u %pI4:%d/%d <-> %pI4:%d/%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"ep %p cm_id %p qp %p state %d flags 0x%lx history 0x%lx hwtid %d atid %d conn_na %u abort_na %u %pI6:%d/%d <-> %pI6:%d/%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ep %p cm_id %p state %d flags 0x%lx stid %d backlog %d %pI4:%d/%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ep %p cm_id %p state %d flags 0x%lx stid %d backlog %d %pI6:%d/%d\0A\00", [61 x i8] zeroinitializer }, align 32
@ep_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.149, ptr @.str.1, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep_release\00", [21 x i8] zeroinitializer }, align 32
@ep_release._entry_ptr = internal global ptr @ep_release._entry, section ".printk_index", align 4
@.str.150 = internal constant { [169 x i8], [55 x i8] } { [169 x i8] c"%04u: nsec %llu qid %u opcode %u %s 0x%x host_wr_delta nsec %llu post_sge_ts 0x%llx cqe_sge_ts 0x%llx poll_sge_ts 0x%llx post_poll_delta_ns %llu cqe_poll_delta_ns %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msn\00", [28 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wrid\00", [27 x i8] zeroinitializer }, align 32
@c4iw_uld_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.1, i32 1493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014iw_cxgb4: %s: unknown control cmd %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_uld_control\00", [47 x i8] zeroinitializer }, align 32
@c4iw_uld_control._entry_ptr = internal global ptr @c4iw_uld_control._entry, section ".printk_index", align 4
@.str.155 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"t4_ring_sq_db\00", [18 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/cxgb4/t4.h\00", [63 x i8] zeroinitializer }, align 32
@t4_ring_sq_db.__UNIQUE_ID_ddebug663 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.155, ptr @.str.156, ptr @.str.159, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DB wq->sq.pidx = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iw_cxgb4: DB wq->sq.pidx = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"t4_ring_rq_db\00", [18 x i8] zeroinitializer }, align 32
@t4_ring_rq_db.__UNIQUE_ID_ddebug665 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.161, ptr @.str.156, ptr @.str.164, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DB wq->rq.pidx = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iw_cxgb4: DB wq->rq.pidx = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@recover_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.1, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013iw_cxgb4: %s: Fatal error - DB overflow recovery failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"recover_queues\00", [17 x i8] zeroinitializer }, align 32
@recover_queues._entry_ptr = internal global ptr @recover_queues._entry, section ".printk_index", align 4
@recover_lost_dbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.1, i32 1384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013iw_cxgb4: %s: Fatal error - DB overflow recovery failed - error syncing SQ qid %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"recover_lost_dbs\00", [47 x i8] zeroinitializer }, align 32
@recover_lost_dbs._entry_ptr = internal global ptr @recover_lost_dbs._entry, section ".printk_index", align 4
@recover_lost_dbs._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.1, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013iw_cxgb4: %s: Fatal error - DB overflow recovery failed - error syncing RQ qid %u\0A\00", [43 x i8] zeroinitializer }, align 32
@recover_lost_dbs._entry_ptr.172 = internal global ptr @recover_lost_dbs._entry.170, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.173 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.175 = private unnamed_addr constant [18 x i8] c"allow_db_fc_on_t5\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 48, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant [26 x i8] c"allow_db_coalescing_on_t5\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 53, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant [12 x i8] c"c4iw_wr_log\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 58, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant [23 x i8] c"c4iw_wr_log_size_order\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 62, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 780, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 939, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1517, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1528, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [10 x i8] c"dev_mutex\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"uld_ctx_list\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 67, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant [10 x i8] c"reg_workq\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 69, i32 33 }
@___asan_gen_.226 = private unnamed_addr constant [18 x i8] c"c4iw_debugfs_root\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 75, i32 23 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 68, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 955, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1543, i32 14 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1545, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [14 x i8] c"c4iw_uld_info\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1499, i32 30 }
@___asan_gen_.262 = private unnamed_addr constant [13 x i8] c"vers_printed\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1075, i32 13 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1079, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1089, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1099, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1193, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1210, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1156, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1223, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1226, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1230, i32 5 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1237, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1242, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1248, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1260, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 974, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 979, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 984, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 990, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1020, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1032, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1038, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1044, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1055, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1056, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1058, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 797, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 804, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 813, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 823, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 834, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 853, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 858, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 863, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 868, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 893, i32 21 }
@___asan_gen_.488 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 87, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 378, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 730, i32 27 }
@___asan_gen_.499 = private unnamed_addr constant [16 x i8] c"qp_debugfs_fops\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 364, i32 37 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 733, i32 27 }
@___asan_gen_.505 = private unnamed_addr constant [18 x i8] c"stag_debugfs_fops\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 459, i32 37 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 736, i32 27 }
@___asan_gen_.511 = private unnamed_addr constant [19 x i8] c"stats_debugfs_fops\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 549, i32 37 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 739, i32 27 }
@___asan_gen_.517 = private unnamed_addr constant [16 x i8] c"ep_debugfs_fops\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 721, i32 37 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 743, i32 28 }
@___asan_gen_.523 = private unnamed_addr constant [20 x i8] c"wr_log_debugfs_fops\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 190, i32 37 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 268, i32 11 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 271, i32 36 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 271, i32 44 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 289, i32 11 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 305, i32 9 }
@___asan_gen_.541 = private unnamed_addr constant [9 x i8] c"zero_sin\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 199, i32 27 }
@___asan_gen_.544 = private unnamed_addr constant [10 x i8] c"zero_sin6\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 203, i32 28 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 318, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 386, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 391, i32 9 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 411, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 473, i32 18 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 473, i32 54 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 473, i32 63 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 474, i32 6 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 474, i32 13 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 475, i32 18 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 478, i32 18 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 481, i32 18 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 484, i32 18 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 487, i32 18 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 490, i32 18 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 493, i32 18 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 496, i32 18 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 497, i32 18 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 498, i32 18 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 499, i32 18 }
@___asan_gen_.631 = private unnamed_addr constant [13 x i8] c"db_state_str\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 467, i32 14 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 503, i32 18 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 504, i32 18 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 506, i32 18 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 508, i32 18 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 509, i32 18 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 467, i32 32 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 467, i32 42 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 467, i32 58 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 467, i32 70 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 575, i32 10 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 596, i32 10 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 632, i32 10 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 645, i32 10 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 661, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 144, i32 20 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 154, i32 8 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 154, i32 16 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1492, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 608, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 613, i32 4 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 633, i32 4 }
@___asan_gen_.716 = private unnamed_addr constant [36 x i8] c"../drivers/infiniband/hw/cxgb4/t4.h\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 638, i32 4 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1430, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1383, i32 4 }
@___asan_gen_.736 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.739 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.740 = private constant [40 x i8] c"../drivers/infiniband/hw/cxgb4/device.c\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1397, i32 4 }
@llvm.compiler.used = appending global [239 x ptr] [ptr @__UNIQUE_ID_allow_db_coalescing_on_t5681, ptr @__UNIQUE_ID_allow_db_coalescing_on_t5type680, ptr @__UNIQUE_ID_allow_db_fc_on_t5679, ptr @__UNIQUE_ID_allow_db_fc_on_t5type678, ptr @__UNIQUE_ID_author674, ptr @__UNIQUE_ID_c4iw_wr_log683, ptr @__UNIQUE_ID_c4iw_wr_log_size_order685, ptr @__UNIQUE_ID_c4iw_wr_log_size_ordertype684, ptr @__UNIQUE_ID_c4iw_wr_logtype682, ptr @__UNIQUE_ID_description675, ptr @__UNIQUE_ID_file676, ptr @__UNIQUE_ID_license677, ptr @__exitcall_c4iw_exit_module, ptr @__initcall__kmod_iw_cxgb4__699_1571_c4iw_init_module6, ptr @__param_allow_db_coalescing_on_t5, ptr @__param_allow_db_fc_on_t5, ptr @__param_c4iw_wr_log, ptr @__param_c4iw_wr_log_size_order, ptr @c4iw_alloc._entry, ptr @c4iw_alloc._entry.50, ptr @c4iw_alloc._entry.53, ptr @c4iw_alloc._entry.58, ptr @c4iw_alloc._entry.61, ptr @c4iw_alloc._entry.66, ptr @c4iw_alloc._entry_ptr, ptr @c4iw_alloc._entry_ptr.52, ptr @c4iw_alloc._entry_ptr.55, ptr @c4iw_alloc._entry_ptr.60, ptr @c4iw_alloc._entry_ptr.63, ptr @c4iw_alloc._entry_ptr.68, ptr @c4iw_exit_module, ptr @c4iw_init_module._entry, ptr @c4iw_init_module._entry_ptr, ptr @c4iw_rdev_open._entry, ptr @c4iw_rdev_open._entry.76, ptr @c4iw_rdev_open._entry.79, ptr @c4iw_rdev_open._entry.86, ptr @c4iw_rdev_open._entry.89, ptr @c4iw_rdev_open._entry.92, ptr @c4iw_rdev_open._entry.95, ptr @c4iw_rdev_open._entry_ptr, ptr @c4iw_rdev_open._entry_ptr.78, ptr @c4iw_rdev_open._entry_ptr.81, ptr @c4iw_rdev_open._entry_ptr.88, ptr @c4iw_rdev_open._entry_ptr.91, ptr @c4iw_rdev_open._entry_ptr.94, ptr @c4iw_rdev_open._entry_ptr.97, ptr @c4iw_uld_add._entry, ptr @c4iw_uld_add._entry_ptr, ptr @c4iw_uld_control._entry, ptr @c4iw_uld_control._entry_ptr, ptr @c4iw_uld_rx_handler._entry, ptr @c4iw_uld_rx_handler._entry.27, ptr @c4iw_uld_rx_handler._entry_ptr, ptr @c4iw_uld_rx_handler._entry_ptr.29, ptr @c4iw_uld_state_change._entry, ptr @c4iw_uld_state_change._entry.35, ptr @c4iw_uld_state_change._entry.39, ptr @c4iw_uld_state_change._entry.42, ptr @c4iw_uld_state_change._entry.45, ptr @c4iw_uld_state_change._entry_ptr, ptr @c4iw_uld_state_change._entry_ptr.37, ptr @c4iw_uld_state_change._entry_ptr.41, ptr @c4iw_uld_state_change._entry_ptr.44, ptr @c4iw_uld_state_change._entry_ptr.47, ptr @dump_stag._entry, ptr @dump_stag._entry_ptr, ptr @ep_release._entry, ptr @ep_release._entry_ptr, ptr @qp_release._entry, ptr @qp_release._entry_ptr, ptr @recover_lost_dbs._entry, ptr @recover_lost_dbs._entry.170, ptr @recover_lost_dbs._entry_ptr, ptr @recover_lost_dbs._entry_ptr.172, ptr @recover_queues._entry, ptr @recover_queues._entry_ptr, ptr @recv_rx_pkt._entry, ptr @recv_rx_pkt._entry_ptr, ptr @stag_release._entry, ptr @stag_release._entry_ptr, ptr @allow_db_fc_on_t5, ptr @allow_db_coalescing_on_t5, ptr @c4iw_wr_log, ptr @c4iw_wr_log_size_order, ptr @c4iw_init_dev_ucontext.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dev_mutex, ptr @uld_ctx_list, ptr @reg_workq, ptr @c4iw_debugfs_root, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @c4iw_uld_info, ptr @c4iw_uld_add.vers_printed, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @c4iw_uld_state_change.__key, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @c4iw_alloc.__key, ptr @.str.69, ptr @c4iw_alloc.__key.70, ptr @.str.71, ptr @c4iw_alloc.__key.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @init_completion.__key, ptr @.str.99, ptr @xa_init_flags.__key, ptr @.str.100, ptr @.str.101, ptr @qp_debugfs_fops, ptr @.str.102, ptr @stag_debugfs_fops, ptr @.str.103, ptr @stats_debugfs_fops, ptr @.str.104, ptr @ep_debugfs_fops, ptr @.str.105, ptr @wr_log_debugfs_fops, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @zero_sin, ptr @zero_sin6, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @db_state_str, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.171], section "llvm.metadata"
@0 = internal global [189 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allow_db_fc_on_t5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allow_db_coalescing_on_t5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_wr_log to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_wr_log_size_order to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_init_dev_ucontext.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uld_ctx_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_workq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_uld_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_uld_add.vers_printed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_uld_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_uld_rx_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_uld_rx_handler._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_rx_pkt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_uld_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_uld_state_change._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_uld_state_change.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_uld_state_change._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_uld_state_change._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_uld_state_change._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_alloc._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_alloc._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_alloc._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_alloc._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_alloc._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_alloc.__key.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_alloc.__key.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_rdev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_rdev_open._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_rdev_open._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 162, i32 224, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_rdev_open._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_rdev_open._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_rdev_open._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_rdev_open._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qp_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stag_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wr_log_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_sin to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_sin6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qp_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_stag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stag_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_state_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 169, i32 224, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_uld_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_lost_dbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_lost_dbs._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_log_wr_stats(ptr nocapture noundef readonly %wq, ptr nocapture noundef readonly %cqe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 3
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 4
  %wr_log = getelementptr inbounds %struct.c4iw_rdev, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %wr_log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr_log, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %wr_log_idx = getelementptr inbounds %struct.c4iw_rdev, ptr %1, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_log_idx, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !405
  tail call void @llvm.prefetch.p0(ptr %wr_log_idx, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_log_idx, ptr %wr_log_idx, i32 1, ptr elementtype(i32) %wr_log_idx) #14, !srcloc !406
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !407
  %sub = add i32 %asmresult.i.i.i.i, -1
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 4
  %wr_log_size = getelementptr inbounds %struct.c4iw_rdev, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %wr_log_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wr_log_size, align 4
  %sub3 = add i32 %8, -1
  %and = and i32 %sub3, %sub
  %ports = getelementptr inbounds %struct.c4iw_rdev, ptr %6, i32 0, i32 8, i32 3
  %9 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ports, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call5 = tail call i64 @cxgb4_read_sge_timestamp(ptr noundef %12) #14
  %call6 = tail call i64 @ktime_get() #14
  %bits_type_ts = getelementptr inbounds %struct.t4_cqe, ptr %cqe, i32 0, i32 4
  %13 = ptrtoint ptr %bits_type_ts to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bits_type_ts, align 8
  %and7 = and i64 %14, 1152921504606846975
  %15 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cqe, align 8
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not = icmp eq i32 %17, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %qid = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 10
  %18 = trunc i32 %16 to i8
  %conv15 = and i8 %18, 15
  %sw_sq = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 4
  %19 = ptrtoint ptr %sw_sq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sw_sq, align 8
  %cidx = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 13
  %21 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cidx, align 8
  %idxprom = zext i16 %22 to i32
  %host_time = getelementptr %struct.t4_swsqe, ptr %20, i32 %idxprom, i32 8
  %sge_ts = getelementptr %struct.t4_swsqe, ptr %20, i32 %idxprom, i32 9
  %u = getelementptr inbounds %struct.t4_cqe, ptr %cqe, i32 0, i32 2
  %cidx25 = getelementptr inbounds %struct.anon.199, ptr %u, i32 0, i32 2
  %23 = ptrtoint ptr %cidx25 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %cidx25, align 2
  br label %if.end48

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %qid26 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 8
  %sw_rq = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sw_rq, align 4
  %cidx32 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 14
  %27 = ptrtoint ptr %cidx32 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cidx32, align 2
  %idxprom33 = zext i16 %28 to i32
  %host_time35 = getelementptr %struct.t4_swrqe, ptr %26, i32 %idxprom33, i32 1
  %sge_ts43 = getelementptr %struct.t4_swrqe, ptr %26, i32 %idxprom33, i32 2
  %u45 = getelementptr inbounds %struct.t4_cqe, ptr %cqe, i32 0, i32 2
  %msn = getelementptr inbounds %struct.anon.198, ptr %u45, i32 0, i32 1
  %29 = ptrtoint ptr %msn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msn, align 4
  %conv46 = trunc i32 %30 to i16
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then10
  %le.sroa.0.0.in = phi ptr [ %host_time, %if.then10 ], [ %host_time35, %if.else ]
  %le.sroa.7.0.in = phi ptr [ %sge_ts, %if.then10 ], [ %sge_ts43, %if.else ]
  %le.sroa.11.0.in.in = phi ptr [ %qid, %if.then10 ], [ %qid26, %if.else ]
  %le.sroa.13.0 = phi i16 [ %24, %if.then10 ], [ %conv46, %if.else ]
  %le.sroa.15.0 = phi i8 [ %conv15, %if.then10 ], [ 14, %if.else ]
  %31 = ptrtoint ptr %le.sroa.11.0.in.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %le.sroa.11.0.in = load i32, ptr %le.sroa.11.0.in.in, align 8
  %le.sroa.11.0 = trunc i32 %le.sroa.11.0.in to i16
  %32 = ptrtoint ptr %le.sroa.7.0.in to i32
  call void @__asan_load8_noabort(i32 %32)
  %le.sroa.7.0 = load i64, ptr %le.sroa.7.0.in, align 8
  %33 = ptrtoint ptr %le.sroa.0.0.in to i32
  call void @__asan_load8_noabort(i32 %33)
  %le.sroa.0.0 = load i64, ptr %le.sroa.0.0.in, align 8
  %34 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rdev, align 4
  %wr_log50 = getelementptr inbounds %struct.c4iw_rdev, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %wr_log50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wr_log50, align 8
  %arrayidx51 = getelementptr %struct.wr_log_entry, ptr %37, i32 %and
  %38 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %le.sroa.0.0, ptr %arrayidx51, align 8
  %le.sroa.6.0.arrayidx51.sroa_idx = getelementptr inbounds i8, ptr %arrayidx51, i32 8
  %39 = ptrtoint ptr %le.sroa.6.0.arrayidx51.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %call6, ptr %le.sroa.6.0.arrayidx51.sroa_idx, align 8
  %le.sroa.7.0.arrayidx51.sroa_idx = getelementptr inbounds i8, ptr %arrayidx51, i32 16
  %40 = ptrtoint ptr %le.sroa.7.0.arrayidx51.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %le.sroa.7.0, ptr %le.sroa.7.0.arrayidx51.sroa_idx, align 8
  %le.sroa.9.0.arrayidx51.sroa_idx = getelementptr inbounds i8, ptr %arrayidx51, i32 24
  %41 = ptrtoint ptr %le.sroa.9.0.arrayidx51.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %and7, ptr %le.sroa.9.0.arrayidx51.sroa_idx, align 8
  %le.sroa.10.0.arrayidx51.sroa_idx = getelementptr inbounds i8, ptr %arrayidx51, i32 32
  %42 = ptrtoint ptr %le.sroa.10.0.arrayidx51.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %call5, ptr %le.sroa.10.0.arrayidx51.sroa_idx, align 8
  %le.sroa.11.0.arrayidx51.sroa_idx = getelementptr inbounds i8, ptr %arrayidx51, i32 40
  %43 = ptrtoint ptr %le.sroa.11.0.arrayidx51.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %le.sroa.11.0, ptr %le.sroa.11.0.arrayidx51.sroa_idx, align 8
  %le.sroa.13.0.arrayidx51.sroa_idx = getelementptr inbounds i8, ptr %arrayidx51, i32 42
  %44 = ptrtoint ptr %le.sroa.13.0.arrayidx51.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %le.sroa.13.0, ptr %le.sroa.13.0.arrayidx51.sroa_idx, align 2
  %le.sroa.15.0.arrayidx51.sroa_idx = getelementptr inbounds i8, ptr %arrayidx51, i32 44
  %45 = ptrtoint ptr %le.sroa.15.0.arrayidx51.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %le.sroa.15.0, ptr %le.sroa.15.0.arrayidx51.sroa_idx, align 4
  %le.sroa.17.0.arrayidx51.sroa_idx = getelementptr inbounds i8, ptr %arrayidx51, i32 45
  %46 = ptrtoint ptr %le.sroa.17.0.arrayidx51.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %le.sroa.17.0.arrayidx51.sroa_idx, align 1
  %le.sroa.18.0.arrayidx51.sroa_idx = getelementptr inbounds i8, ptr %arrayidx51, i32 46
  %47 = ptrtoint ptr %le.sroa.18.0.arrayidx51.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %le.sroa.18.0.arrayidx51.sroa_idx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cxgb4_read_sge_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_release_dev_ucontext(ptr noundef %rdev, ptr noundef %uctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %0 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uctx, align 4
  %cmp.i.not62 = icmp eq ptr %1, %uctx
  br i1 %cmp.i.not62, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %qpmask = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 1
  %qid_table = getelementptr inbounds %struct.c4iw_resource, ptr %rdev, i32 0, i32 1
  %stats = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13
  %cur = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %pos.063 = phi ptr [ %1, %for.body.lr.ph ], [ %nxt.065, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %pos.063 to i32
  call void @__asan_load4_noabort(i32 %2)
  %nxt.065 = load ptr, ptr %pos.063, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.063) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.063, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %pos.063 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pos.063, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %pos.063 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %pos.063, ptr %pos.063, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pos.063, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pos.063, ptr %prev.i3.i, align 4
  %qid = getelementptr inbounds %struct.c4iw_qid_list, ptr %pos.063, i32 0, i32 1
  %11 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qid, align 4
  %13 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qpmask, align 8
  %and = and i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then, label %list_del_init.exit.if.end_crit_edge

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @c4iw_put_resource(ptr noundef %qid_table, i32 noundef %12) #14
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #14
  %15 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qpmask, align 8
  %add = add i32 %16, 1
  %conv = zext i32 %add to i64
  %17 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cur, align 8
  %sub = sub i64 %18, %conv
  store i64 %sub, ptr %cur, align 8
  tail call void @mutex_unlock(ptr noundef %stats) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  tail call void @kfree(ptr noundef %pos.063) #14
  %cmp.i.not = icmp eq ptr %nxt.065, %uctx
  br i1 %cmp.i.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %cqids = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 1
  %19 = ptrtoint ptr %cqids to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cqids, align 4
  %cmp.i53.not67 = icmp eq ptr %20, %cqids
  br i1 %cmp.i53.not67, label %for.end.for.end28_crit_edge, label %for.end.for.body21_crit_edge

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.end.for.end28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end28

for.body21:                                       ; preds = %list_del_init.exit60.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %pos.168 = phi ptr [ %nxt.170, %list_del_init.exit60.for.body21_crit_edge ], [ %20, %for.end.for.body21_crit_edge ]
  %21 = ptrtoint ptr %pos.168 to i32
  call void @__asan_load4_noabort(i32 %21)
  %nxt.170 = load ptr, ptr %pos.168, align 4
  %call.i.i55 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.168) #14
  br i1 %call.i.i55, label %if.end.i.i58, label %for.body21.list_del_init.exit60_crit_edge

for.body21.list_del_init.exit60_crit_edge:        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit60

if.end.i.i58:                                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i56 = getelementptr inbounds %struct.list_head, ptr %pos.168, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i56, align 4
  %24 = ptrtoint ptr %pos.168 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pos.168, align 4
  %prev1.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i57, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit60

list_del_init.exit60:                             ; preds = %if.end.i.i58, %for.body21.list_del_init.exit60_crit_edge
  %28 = ptrtoint ptr %pos.168 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %pos.168, ptr %pos.168, align 4
  %prev.i3.i59 = getelementptr inbounds %struct.list_head, ptr %pos.168, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i59 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pos.168, ptr %prev.i3.i59, align 4
  tail call void @kfree(ptr noundef %pos.168) #14
  %cmp.i53.not = icmp eq ptr %nxt.170, %cqids
  br i1 %cmp.i53.not, label %list_del_init.exit60.for.end28_crit_edge, label %list_del_init.exit60.for.body21_crit_edge

list_del_init.exit60.for.body21_crit_edge:        ; preds = %list_del_init.exit60
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body21

list_del_init.exit60.for.end28_crit_edge:         ; preds = %list_del_init.exit60
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end28

for.end28:                                        ; preds = %list_del_init.exit60.for.end28_crit_edge, %for.end.for.end28_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_put_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_init_dev_ucontext(ptr nocapture readnone %rdev, ptr noundef %uctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %uctx, ptr %uctx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %uctx, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %uctx, ptr %prev.i, align 4
  %cqids = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 1
  %2 = ptrtoint ptr %cqids to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %cqids, ptr %cqids, align 4
  %prev.i3 = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cqids, ptr %prev.i3, align 4
  %lock = getelementptr inbounds %struct.c4iw_dev_ucontext, ptr %uctx, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @c4iw_init_dev_ucontext.__key) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_dealloc(ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uld_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1
  %wr_log.i = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 17
  %2 = ptrtoint ptr %wr_log.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr_log.i, align 8
  tail call void @kfree(ptr noundef %3) #14
  %uctx.i = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 3
  tail call void @c4iw_release_dev_ucontext(ptr noundef %rdev, ptr noundef %uctx.i) #14
  %status_page.i = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 15
  %4 = ptrtoint ptr %status_page.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %status_page.i, align 8
  %6 = ptrtoint ptr %5 to i32
  tail call void @free_pages(i32 noundef %6, i32 noundef 0) #14
  tail call void @c4iw_pblpool_destroy(ptr noundef %rdev) #14
  tail call void @c4iw_rqtpool_destroy(ptr noundef %rdev) #14
  %pbl_compl.i = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 21
  tail call void @wait_for_completion(ptr noundef %pbl_compl.i) #14
  %rqt_compl.i = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 20
  tail call void @wait_for_completion(ptr noundef %rqt_compl.i) #14
  tail call void @c4iw_ocqp_pool_destroy(ptr noundef %rdev) #14
  %free_workq.i = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 19
  %7 = ptrtoint ptr %free_workq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free_workq.i, align 8
  tail call void @destroy_workqueue(ptr noundef %8) #14
  tail call void @c4iw_destroy_resource(ptr noundef %rdev) #14
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %xa_head.i = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %12, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %do.end, !prof !408

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 939, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %xa_head.i219 = getelementptr inbounds %struct.c4iw_dev, ptr %14, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %xa_head.i219 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xa_head.i219, align 4
  %cmp.i220 = icmp eq ptr %16, null
  br i1 %cmp.i220, label %if.end.if.end47_crit_edge, label %do.end41, !prof !408

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 940, i32 noundef 9, ptr noundef null) #14
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %if.end.if.end47_crit_edge
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %xa_head.i221 = getelementptr inbounds %struct.c4iw_dev, ptr %18, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %xa_head.i221 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xa_head.i221, align 4
  %cmp.i222 = icmp eq ptr %20, null
  br i1 %cmp.i222, label %if.end47.if.end81_crit_edge, label %do.end75, !prof !408

if.end47.if.end81_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

do.end75:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 941, i32 noundef 9, ptr noundef null) #14
  br label %if.end81

if.end81:                                         ; preds = %do.end75, %if.end47.if.end81_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 942) #14
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %xa_head.i223 = getelementptr inbounds %struct.c4iw_dev, ptr %22, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %xa_head.i223 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xa_head.i223, align 4
  %cmp.i224 = icmp eq ptr %24, null
  br i1 %cmp.i224, label %if.end81.do.end111_crit_edge, label %if.end99

if.end81.do.end111_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end111

if.end99:                                         ; preds = %if.end81
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %25 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %wait233 = getelementptr inbounds %struct.c4iw_dev, ptr %27, i32 0, i32 14
  %call101234 = call i32 @prepare_to_wait_event(ptr noundef %wait233, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %xa_head.i225235 = getelementptr inbounds %struct.c4iw_dev, ptr %29, i32 0, i32 9, i32 2
  %30 = ptrtoint ptr %xa_head.i225235 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xa_head.i225235, align 4
  %cmp.i226236 = icmp eq ptr %31, null
  br i1 %cmp.i226236, label %if.end99.for.end_crit_edge, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  br label %cleanup

if.end99.for.end_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end99.cleanup_crit_edge
  call void @schedule() #14
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %wait = getelementptr inbounds %struct.c4iw_dev, ptr %33, i32 0, i32 14
  %call101 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %xa_head.i225 = getelementptr inbounds %struct.c4iw_dev, ptr %35, i32 0, i32 9, i32 2
  %36 = ptrtoint ptr %xa_head.i225 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xa_head.i225, align 4
  %cmp.i226 = icmp eq ptr %37, null
  br i1 %cmp.i226, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end99.for.end_crit_edge
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %wait108 = getelementptr inbounds %struct.c4iw_dev, ptr %39, i32 0, i32 14
  call void @finish_wait(ptr noundef %wait108, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end111

do.end111:                                        ; preds = %for.end, %if.end81.do.end111_crit_edge
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %xa_head.i227 = getelementptr inbounds %struct.c4iw_dev, ptr %41, i32 0, i32 11, i32 2
  %42 = ptrtoint ptr %xa_head.i227 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xa_head.i227, align 4
  %cmp.i228 = icmp eq ptr %43, null
  br i1 %cmp.i228, label %do.end111.if.end138_crit_edge, label %do.end132, !prof !408

do.end111.if.end138_crit_edge:                    ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138

do.end132:                                        ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 943, i32 noundef 9, ptr noundef null) #14
  br label %if.end138

if.end138:                                        ; preds = %do.end132, %do.end111.if.end138_crit_edge
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %xa_head.i229 = getelementptr inbounds %struct.c4iw_dev, ptr %45, i32 0, i32 10, i32 2
  %46 = ptrtoint ptr %xa_head.i229 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xa_head.i229, align 4
  %cmp.i230 = icmp eq ptr %47, null
  br i1 %cmp.i230, label %if.end138.if.end172_crit_edge, label %do.end166, !prof !408

if.end138.if.end172_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end172

do.end166:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 944, i32 noundef 9, ptr noundef null) #14
  br label %if.end172

if.end172:                                        ; preds = %do.end166, %if.end138.if.end172_crit_edge
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %bar2_kva = getelementptr inbounds %struct.c4iw_dev, ptr %49, i32 0, i32 1, i32 10
  %50 = ptrtoint ptr %bar2_kva to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bar2_kva, align 8
  %tobool182.not = icmp eq ptr %51, null
  br i1 %tobool182.not, label %if.end172.if.end187_crit_edge, label %if.then183

if.end172.if.end187_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end187

if.then183:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  call void @iounmap(ptr noundef nonnull %51) #14
  br label %if.end187

if.end187:                                        ; preds = %if.then183, %if.end172.if.end187_crit_edge
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %oc_mw_kva = getelementptr inbounds %struct.c4iw_dev, ptr %53, i32 0, i32 1, i32 12
  %54 = ptrtoint ptr %oc_mw_kva to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %oc_mw_kva, align 8
  %tobool190.not = icmp eq ptr %55, null
  br i1 %tobool190.not, label %if.end187.if.end195_crit_edge, label %if.then191

if.end187.if.end195_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end195

if.then191:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #16
  call void @iounmap(ptr noundef nonnull %55) #14
  br label %if.end195

if.end195:                                        ; preds = %if.then191, %if.end187.if.end195_crit_edge
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  call void @ib_dealloc_device(ptr noundef %57) #14
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %dev, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

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
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dealloc_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_c4iw_free_wr_wait(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_c4iw_free_wr_wait.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_c4iw_free_wr_wait, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !409

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_c4iw_free_wr_wait.__UNIQUE_ID_ddebug697, ptr noundef nonnull @.str.5, ptr noundef %add.ptr) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @c4iw_alloc_wr_wait(i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !408

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 64) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.if.end6_crit_edge, label %if.then

kzalloc.exit.if.end6_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  %kref = getelementptr inbounds %struct.c4iw_wr_wait, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  %2 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %kref, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_alloc_wr_wait.__UNIQUE_ID_ddebug698, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_alloc_wr_wait, %if.then5)) #14
          to label %if.end6 [label %if.then5], !srcloc !409

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_alloc_wr_wait.__UNIQUE_ID_ddebug698, ptr noundef nonnull @.str.8, ptr noundef nonnull %call7.i.i) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then, %kzalloc.exit.if.end6_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @c4iw_exit_module() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @dev_mutex, i32 noundef 0) #14
  %0 = load ptr, ptr @uld_ctx_list, align 4
  %cmp.not18 = icmp eq ptr %0, @uld_ctx_list
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %ctx.019 = phi ptr [ %tmp.020, %if.end.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %ctx.019 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.020 = load ptr, ptr %ctx.019, align 4
  %dev = getelementptr inbounds %struct.uld_ctx, ptr %ctx.019, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @c4iw_remove(ptr noundef %ctx.019)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  tail call void @kfree(ptr noundef %ctx.019) #14
  %cmp.not = icmp eq ptr %tmp.020, @uld_ctx_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dev_mutex) #14
  %4 = load ptr, ptr @reg_workq, align 4
  tail call void @destroy_workqueue(ptr noundef %4) #14
  %call = tail call i32 @cxgb4_unregister_uld(i32 noundef 1) #14
  tail call void @c4iw_cm_term() #14
  %5 = load ptr, ptr @c4iw_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @c4iw_remove(ptr nocapture noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_remove.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_remove, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !409

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.uld_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_remove.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.13, ptr noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.uld_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %debugfs_root = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %5) #14
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  tail call void @c4iw_unregister_device(ptr noundef %7) #14
  tail call void @c4iw_dealloc(ptr noundef %ctx)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_unregister_uld(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_cm_term() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @c4iw_init_module() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @c4iw_cm_init() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.2, ptr noundef null) #14
  store ptr %call1, ptr @c4iw_debugfs_root, align 4
  %call2 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.14, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.15) #14
  store ptr %call2, ptr @reg_workq, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @cxgb4_register_uld(i32 noundef 1, ptr noundef nonnull @c4iw_uld_info) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %do.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_pblpool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_rqtpool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_ocqp_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_destroy_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @c4iw_cm_init() local_unnamed_addr #7 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_register_uld(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @c4iw_uld_add(ptr nocapture noundef readonly %infop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @c4iw_uld_add.vers_printed, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @c4iw_uld_add.vers_printed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 204) #17
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end5:                                          ; preds = %if.end
  %lldi = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %lldi, ptr %infop, i32 148)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_uld_add.__UNIQUE_ID_ddebug691, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_uld_add, %if.then12)) #14
          to label %do.end25 [label %if.then12], !srcloc !409

if.then12:                                        ; preds = %if.end5
  %3 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lldi, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then12.pci_name.exit_crit_edge

if.then12.pci_name.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then12.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.then12.pci_name.exit_crit_edge ]
  %nchan = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 1, i32 11
  %9 = ptrtoint ptr %nchan to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %nchan, align 2
  %bf.lshr = lshr i8 %bf.load, 4
  %conv = zext i8 %bf.lshr to i32
  %nrxq = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %nrxq to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nrxq, align 8
  %conv17 = zext i16 %11 to i32
  %ntxq = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 1, i32 9
  %12 = ptrtoint ptr %ntxq to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ntxq, align 2
  %conv19 = zext i16 %13 to i32
  %bf.clear = and i8 %bf.load, 15
  %conv22 = zext i8 %bf.clear to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_uld_add.__UNIQUE_ID_ddebug691, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i, i32 noundef %conv, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %conv22) #14
  br label %do.end25

do.end25:                                         ; preds = %pci_name.exit, %if.end5
  tail call void @mutex_lock_nested(ptr noundef nonnull @dev_mutex, i32 noundef 0) #14
  %14 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @uld_ctx_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %14, ptr noundef nonnull @uld_ctx_list) #14
  br i1 %call.i.i, label %if.end.i.i66, label %do.end25.list_add_tail.exit_crit_edge

do.end25.list_add_tail.exit_crit_edge:            ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i66:                                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @uld_ctx_list, i32 0, i32 1), align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @uld_ctx_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i66, %do.end25.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dev_mutex) #14
  %nrxq28 = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 1, i32 8
  %18 = ptrtoint ptr %nrxq28 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nrxq28, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp70.not = icmp eq i16 %19, 0
  br i1 %cmp70.not, label %list_add_tail.exit.out_crit_edge, label %do.body31.lr.ph

list_add_tail.exit.out_crit_edge:                 ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body31.lr.ph:                                  ; preds = %list_add_tail.exit
  %rxq_ids = getelementptr inbounds %struct.uld_ctx, ptr %call7.i.i, i32 0, i32 1, i32 6
  br label %do.body31

do.body31:                                        ; preds = %for.inc.do.body31_crit_edge, %do.body31.lr.ph
  %i.071 = phi i32 [ 0, %do.body31.lr.ph ], [ %inc49, %for.inc.do.body31_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_uld_add.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_uld_add, %if.then43)) #14
          to label %for.inc [label %if.then43], !srcloc !409

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %rxq_ids to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rxq_ids, align 8
  %arrayidx = getelementptr i16, ptr %21, i32 %i.071
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  %conv45 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_uld_add.__UNIQUE_ID_ddebug692, ptr noundef nonnull @.str.24, i32 noundef %i.071, i32 noundef %conv45) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %do.body31
  %inc49 = add nuw nsw i32 %i.071, 1
  %24 = ptrtoint ptr %nrxq28 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nrxq28, align 8
  %conv29 = zext i16 %25 to i32
  %cmp = icmp ult i32 %inc49, %conv29
  br i1 %cmp, label %for.inc.do.body31_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.inc.do.body31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body31

out:                                              ; preds = %for.inc.out_crit_edge, %list_add_tail.exit.out_crit_edge, %if.end.out_crit_edge
  %ctx.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.out_crit_edge ], [ %call7.i.i, %list_add_tail.exit.out_crit_edge ], [ %call7.i.i, %for.inc.out_crit_edge ]
  ret ptr %ctx.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c4iw_uld_rx_handler(ptr nocapture noundef readonly %handle, ptr nocapture noundef readonly %rsp, ptr noundef %gl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %magicptr = ptrtoint ptr %gl to i32
  %2 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %if.else9 [
    i32 0, label %if.then
    i32 1, label %if.then5
  ]

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 256, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then.cleanup54_crit_edge, label %if.end

if.then.cleanup54_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup54

if.end:                                           ; preds = %if.then
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %cleanup.thread, label %do.body3.i, !prof !408

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #14, !srcloc !410
  unreachable

cleanup.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 40
  store ptr %add.ptr.i, ptr %tail.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %8, 40
  store i32 %add.i, ptr %len9.i, align 4
  %arrayidx = getelementptr i64, ptr %rsp, i32 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %arrayidx, i32 40)
  br label %if.end39

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pldbuflen_qid = getelementptr inbounds %struct.rsp_ctrl, ptr %rsp, i32 0, i32 1
  %12 = ptrtoint ptr %pldbuflen_qid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pldbuflen_qid, align 4
  %call6 = tail call i32 @c4iw_ev_handler(ptr noundef %1, i32 noundef %13) #14
  br label %cleanup54

if.else9:                                         ; preds = %entry
  %14 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rsp, align 1
  %va = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 2
  %16 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %va, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %19)
  %cmp11.not = icmp eq i8 %15, %19
  br i1 %cmp11.not, label %if.else24, label %if.then15, !prof !408

if.then15:                                        ; preds = %if.else9
  %call16 = tail call fastcc i32 @recv_rx_pkt(ptr noundef %1, ptr noundef nonnull %gl, ptr noundef %rsp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.end, label %if.then15.cleanup54_crit_edge

if.then15.cleanup54_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup54

do.end:                                           ; preds = %if.then15
  %lldi = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 1
  %20 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lldi, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44, i32 3
  %22 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %25, %if.end.i.i ], [ %23, %do.end.pci_name.exit_crit_edge ]
  %26 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %va, align 8
  %28 = ptrtoint ptr %rsp to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rsp, align 8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %27, align 8
  %tot_len = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 4
  %32 = ptrtoint ptr %tot_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tot_len, align 8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %retval.0.i.i, ptr noundef %27, i64 noundef %29, i64 noundef %31, i32 noundef %33) #18
  br label %cleanup54

if.else24:                                        ; preds = %if.else9
  %call25 = tail call ptr @cxgb4_pktgl_to_skb(ptr noundef nonnull %gl, i32 noundef 128, i32 noundef 128) #14
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.else24.cleanup54_crit_edge, label %if.else24.if.end39_crit_edge, !prof !411

if.else24.if.end39_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.else24.cleanup54_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup54

if.end39:                                         ; preds = %if.else24.if.end39_crit_edge, %cleanup.thread
  %skb.0 = phi ptr [ %call25, %if.else24.if.end39_crit_edge ], [ %call.i, %cleanup.thread ]
  %34 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rsp, align 1
  %idxprom = zext i8 %35 to i32
  %arrayidx40 = getelementptr [239 x ptr], ptr @c4iw_handlers, i32 0, i32 %idxprom
  %36 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %37, null
  br i1 %tobool41.not, label %do.end49, label %if.then42

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %call45 = tail call i32 %37(ptr noundef %1, ptr noundef nonnull %skb.0) #14
  br label %cleanup54

do.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %idxprom) #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.0, i32 noundef 0) #14
  br label %cleanup54

cleanup54:                                        ; preds = %do.end49, %if.then42, %if.else24.cleanup54_crit_edge, %pci_name.exit, %if.then15.cleanup54_crit_edge, %if.then5, %if.then.cleanup54_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %pci_name.exit ], [ 0, %if.then15.cleanup54_crit_edge ], [ 0, %do.end49 ], [ 0, %if.then42 ], [ -1, %if.else24.cleanup54_crit_edge ], [ -1, %if.then.cleanup54_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c4iw_uld_state_change(ptr noundef %handle, i32 noundef %new_state) #0 align 64 {
entry:
  %event = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_uld_state_change.__UNIQUE_ID_ddebug693, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_uld_state_change, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !409

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_uld_state_change.__UNIQUE_ID_ddebug693, ptr noundef nonnull @.str.33, i32 noundef %new_state) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %new_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %new_state, label %do.end.sw.epilog_crit_edge [
    i32 0, label %do.end5
    i32 2, label %do.end43
    i32 4, label %do.end.do.end56_crit_edge
    i32 1, label %do.end.do.end56_crit_edge143
    i32 3, label %do.end72
  ]

do.end.do.end56_crit_edge143:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end56

do.end.do.end56_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end56

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.end5:                                          ; preds = %do.end
  %lldi = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 1
  %1 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lldi, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end5.pci_name.exit_crit_edge

do.end5.pci_name.exit_crit_edge:                  ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end5.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %do.end5.pci_name.exit_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %retval.0.i.i) #18
  %dev = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.then10, label %pci_name.exit.sw.epilog_crit_edge

pci_name.exit.sw.epilog_crit_edge:                ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then10:                                        ; preds = %pci_name.exit
  %call12 = tail call fastcc ptr @c4iw_alloc(ptr noundef %lldi)
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %dev, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19, label %do.body29

do.end19:                                         ; preds = %if.then10
  %10 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lldi, align 4
  %init_name.i.i107 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i107 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i107, align 8
  %tobool.not.i.i108 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i108, label %if.end.i.i110, label %do.end19.pci_name.exit112_crit_edge

do.end19.pci_name.exit112_crit_edge:              ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit112

if.end.i.i110:                                    ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i109 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %14 = ptrtoint ptr %dev.i109 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i109, align 4
  br label %pci_name.exit112

pci_name.exit112:                                 ; preds = %if.end.i.i110, %do.end19.pci_name.exit112_crit_edge
  %retval.0.i.i111 = phi ptr [ %15, %if.end.i.i110 ], [ %13, %do.end19.pci_name.exit112_crit_edge ]
  %16 = ptrtoint ptr %call12 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %retval.0.i.i111, i32 noundef %16) #18
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dev, align 4
  br label %sw.epilog

do.body29:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %reg_work = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 3
  tail call void @__init_work(ptr noundef %reg_work, i32 noundef 0) #14
  %18 = ptrtoint ptr %reg_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %reg_work, align 4
  %lockdep_map = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @c4iw_uld_state_change.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry33 = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 3, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry33, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @c4iw_register_device, ptr %func, align 4
  %22 = load ptr, ptr @reg_workq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %reg_work) #14
  br label %sw.epilog

do.end43:                                         ; preds = %do.end
  %lldi45 = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 1
  %23 = ptrtoint ptr %lldi45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lldi45, align 4
  %init_name.i.i113 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %init_name.i.i113 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i113, align 8
  %tobool.not.i.i114 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i114, label %if.end.i.i116, label %do.end43.pci_name.exit118_crit_edge

do.end43.pci_name.exit118_crit_edge:              ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit118

if.end.i.i116:                                    ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i115 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %27 = ptrtoint ptr %dev.i115 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i115, align 4
  br label %pci_name.exit118

pci_name.exit118:                                 ; preds = %if.end.i.i116, %do.end43.pci_name.exit118_crit_edge
  %retval.0.i.i117 = phi ptr [ %28, %if.end.i.i116 ], [ %26, %do.end43.pci_name.exit118_crit_edge ]
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %retval.0.i.i117) #18
  %dev49 = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 2
  %29 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev49, align 4
  %tobool50.not = icmp eq ptr %30, null
  br i1 %tobool50.not, label %pci_name.exit118.sw.epilog_crit_edge, label %if.then51

pci_name.exit118.sw.epilog_crit_edge:             ; preds = %pci_name.exit118
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then51:                                        ; preds = %pci_name.exit118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_remove.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_uld_state_change, %if.then.i)) #14
          to label %c4iw_remove.exit [label %if.then.i], !srcloc !409

if.then.i:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_remove.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.13, ptr noundef %32) #14
  br label %c4iw_remove.exit

c4iw_remove.exit:                                 ; preds = %if.then.i, %if.then51
  %33 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev49, align 4
  %debugfs_root.i = getelementptr inbounds %struct.c4iw_dev, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %debugfs_root.i, align 4
  tail call void @debugfs_remove(ptr noundef %36) #14
  %37 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev49, align 4
  tail call void @c4iw_unregister_device(ptr noundef %38) #14
  tail call void @c4iw_dealloc(ptr noundef %handle) #14
  br label %sw.epilog

do.end56:                                         ; preds = %do.end.do.end56_crit_edge, %do.end.do.end56_crit_edge143
  %lldi58 = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 1
  %39 = ptrtoint ptr %lldi58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lldi58, align 4
  %init_name.i.i120 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44, i32 3
  %41 = ptrtoint ptr %init_name.i.i120 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i120, align 8
  %tobool.not.i.i121 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i121, label %if.end.i.i123, label %do.end56.pci_name.exit125_crit_edge

do.end56.pci_name.exit125_crit_edge:              ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit125

if.end.i.i123:                                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i122 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %43 = ptrtoint ptr %dev.i122 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i122, align 4
  br label %pci_name.exit125

pci_name.exit125:                                 ; preds = %if.end.i.i123, %do.end56.pci_name.exit125_crit_edge
  %retval.0.i.i124 = phi ptr [ %44, %if.end.i.i123 ], [ %42, %do.end56.pci_name.exit125_crit_edge ]
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %retval.0.i.i124) #18
  %dev62 = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 2
  %45 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev62, align 4
  %tobool63.not = icmp eq ptr %46, null
  br i1 %tobool63.not, label %pci_name.exit125.sw.epilog_crit_edge, label %if.then64

pci_name.exit125.sw.epilog_crit_edge:             ; preds = %pci_name.exit125
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then64:                                        ; preds = %pci_name.exit125
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #14
  %47 = getelementptr inbounds i8, ptr %event, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %47, align 4
  %flags = getelementptr inbounds %struct.c4iw_dev, ptr %46, i32 0, i32 1, i32 7
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %or = or i32 %50, 1
  store i32 %or, ptr %flags, align 4
  %event66 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %51 = ptrtoint ptr %event66 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %event66, align 4
  %52 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev62, align 4
  %54 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %event, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_remove.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_uld_state_change, %if.then.i127)) #14
          to label %c4iw_remove.exit130 [label %if.then.i127], !srcloc !409

if.then.i127:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev62, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_remove.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.13, ptr noundef %56) #14
  br label %c4iw_remove.exit130

c4iw_remove.exit130:                              ; preds = %if.then.i127, %if.then64
  %57 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev62, align 4
  %debugfs_root.i129 = getelementptr inbounds %struct.c4iw_dev, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %debugfs_root.i129 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %debugfs_root.i129, align 4
  call void @debugfs_remove(ptr noundef %60) #14
  %61 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev62, align 4
  call void @c4iw_unregister_device(ptr noundef %62) #14
  call void @c4iw_dealloc(ptr noundef %handle) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #14
  br label %sw.epilog

do.end72:                                         ; preds = %do.end
  %lldi74 = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 1
  %63 = ptrtoint ptr %lldi74 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lldi74, align 4
  %init_name.i.i131 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44, i32 3
  %65 = ptrtoint ptr %init_name.i.i131 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i.i131, align 8
  %tobool.not.i.i132 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i132, label %if.end.i.i134, label %do.end72.pci_name.exit136_crit_edge

do.end72.pci_name.exit136_crit_edge:              ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit136

if.end.i.i134:                                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i133 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %67 = ptrtoint ptr %dev.i133 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i133, align 4
  br label %pci_name.exit136

pci_name.exit136:                                 ; preds = %if.end.i.i134, %do.end72.pci_name.exit136_crit_edge
  %retval.0.i.i135 = phi ptr [ %68, %if.end.i.i134 ], [ %66, %do.end72.pci_name.exit136_crit_edge ]
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %retval.0.i.i135) #18
  %dev78 = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 2
  %69 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev78, align 4
  %tobool79.not = icmp eq ptr %70, null
  br i1 %tobool79.not, label %pci_name.exit136.sw.epilog_crit_edge, label %if.then80

pci_name.exit136.sw.epilog_crit_edge:             ; preds = %pci_name.exit136
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then80:                                        ; preds = %pci_name.exit136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_remove.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_uld_state_change, %if.then.i138)) #14
          to label %c4iw_remove.exit141 [label %if.then.i138], !srcloc !409

if.then.i138:                                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev78, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_remove.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.13, ptr noundef %72) #14
  br label %c4iw_remove.exit141

c4iw_remove.exit141:                              ; preds = %if.then.i138, %if.then80
  %73 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev78, align 4
  %debugfs_root.i140 = getelementptr inbounds %struct.c4iw_dev, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %debugfs_root.i140 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %debugfs_root.i140, align 4
  tail call void @debugfs_remove(ptr noundef %76) #14
  %77 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev78, align 4
  tail call void @c4iw_unregister_device(ptr noundef %78) #14
  tail call void @c4iw_dealloc(ptr noundef %handle) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %c4iw_remove.exit141, %pci_name.exit136.sw.epilog_crit_edge, %c4iw_remove.exit130, %pci_name.exit125.sw.epilog_crit_edge, %c4iw_remove.exit, %pci_name.exit118.sw.epilog_crit_edge, %do.body29, %pci_name.exit112, %pci_name.exit.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c4iw_uld_control(ptr nocapture noundef readonly %handle, i32 noundef %control, ...) #0 align 64 {
entry:
  %index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %control to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %control, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #14
  %1 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %index.i, align 4, !annotation !412
  %dev.i = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %qps.i = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qps.i) #14
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %db_state_transitions.i = getelementptr inbounds %struct.c4iw_dev, ptr %5, i32 0, i32 1, i32 13, i32 12
  %6 = ptrtoint ptr %db_state_transitions.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %db_state_transitions.i, align 8
  %inc.i = add i64 %7, 1
  store i64 %inc.i, ptr %db_state_transitions.i, align 8
  %8 = load ptr, ptr %dev.i, align 4
  %db_state.i = getelementptr inbounds %struct.c4iw_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %db_state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %db_state.i, align 8
  %10 = load ptr, ptr %dev.i, align 4
  %flags9.i = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 1, i32 7
  %11 = ptrtoint ptr %flags9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags9.i, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %index.i, align 4
  %qps11.i = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 4
  %call12.i = call ptr @xa_find(ptr noundef %qps11.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #14
  %tobool13.not30.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not30.i, label %if.then.i.stop_queues.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.stop_queues.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop_queues.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %qp.031.i = phi ptr [ %call16.i, %for.body.i.for.body.i_crit_edge ], [ %call12.i, %if.then.i.for.body.i_crit_edge ]
  %rq.i.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.031.i, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %rq.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.031.i, i32 0, i32 5, i32 1, i32 13
  %16 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %size.i.i, align 8
  %idxprom.i.i = zext i16 %17 to i32
  %arrayidx.i.i = getelementptr %union.t4_recv_wr, ptr %15, i32 %idxprom.i.i
  %db_off.i.i = getelementptr inbounds %struct.t4_status_page, ptr %arrayidx.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %db_off.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %db_off.i.i, align 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %qps15.i = getelementptr inbounds %struct.c4iw_dev, ptr %20, i32 0, i32 4
  %call16.i = call ptr @xa_find_after(ptr noundef %qps15.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #14
  %tobool13.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool13.not.i, label %for.body.i.stop_queues.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.stop_queues.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop_queues.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %status_page.i = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 1, i32 15
  %21 = ptrtoint ptr %status_page.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %status_page.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %22, align 8
  br label %stop_queues.exit

stop_queues.exit:                                 ; preds = %if.else.i, %for.body.i.stop_queues.exit_crit_edge, %if.then.i.stop_queues.exit_crit_edge
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %qps20.i = getelementptr inbounds %struct.c4iw_dev, ptr %25, i32 0, i32 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qps20.i, i32 noundef %call2.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #14
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %db_full = getelementptr inbounds %struct.c4iw_dev, ptr %27, i32 0, i32 1, i32 13, i32 9
  %28 = ptrtoint ptr %db_full to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %db_full, align 8
  %inc = add i64 %29, 1
  store i64 %inc, ptr %db_full, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @resume_queues(ptr noundef %handle)
  %dev2 = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 2
  %30 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev2, align 4
  %stats4 = getelementptr inbounds %struct.c4iw_dev, ptr %31, i32 0, i32 1, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats4, i32 noundef 0) #14
  %32 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev2, align 4
  %db_empty = getelementptr inbounds %struct.c4iw_dev, ptr %33, i32 0, i32 1, i32 13, i32 10
  %34 = ptrtoint ptr %db_empty to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %db_empty, align 8
  %inc8 = add i64 %35, 1
  store i64 %inc8, ptr %db_empty, align 8
  %36 = load ptr, ptr %dev2, align 4
  %stats11 = getelementptr inbounds %struct.c4iw_dev, ptr %36, i32 0, i32 1, i32 13
  tail call void @mutex_unlock(ptr noundef %stats11) #14
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @recover_queues(ptr noundef %handle)
  %dev14 = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 2
  %37 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev14, align 4
  %stats16 = getelementptr inbounds %struct.c4iw_dev, ptr %38, i32 0, i32 1, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats16, i32 noundef 0) #14
  %39 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev14, align 4
  %db_drop = getelementptr inbounds %struct.c4iw_dev, ptr %40, i32 0, i32 1, i32 13, i32 11
  %41 = ptrtoint ptr %db_drop to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %db_drop, align 8
  %inc21 = add i64 %42, 1
  store i64 %inc21, ptr %db_drop, align 8
  %43 = load ptr, ptr %dev14, align 4
  %stats24 = getelementptr inbounds %struct.c4iw_dev, ptr %43, i32 0, i32 1, i32 13
  tail call void @mutex_unlock(ptr noundef %stats24) #14
  br label %sw.epilog

do.end:                                           ; preds = %entry
  %lldi = getelementptr inbounds %struct.uld_ctx, ptr %handle, i32 0, i32 1
  %44 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lldi, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44, i32 3
  %46 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i38 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %48 = ptrtoint ptr %dev.i38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i38, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %49, %if.end.i.i ], [ %47, %do.end.pci_name.exit_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %retval.0.i.i, i32 noundef %control) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %pci_name.exit, %sw.bb13, %sw.bb1, %stop_queues.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_ev_handler(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recv_rx_pkt(ptr noundef %dev, ptr nocapture noundef readonly %gl, ptr nocapture noundef readonly %rsp) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rsp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %1)
  %cmp.not = icmp eq i8 %1, 59
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sge_pktshift = getelementptr inbounds %struct.c4iw_dev, ptr %dev, i32 0, i32 1, i32 8, i32 29
  %2 = ptrtoint ptr %sge_pktshift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sge_pktshift, align 8
  %tot_len.i = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 4
  %4 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tot_len.i, align 8
  %add1.i = sub i32 32, %3
  %sub.i = add i32 %add1.i, %5
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %sub.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i, !prof !411

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i.i, label %if.end5, label %do.body3.i.i, !prof !408

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #14, !srcloc !410
  unreachable

if.end5:                                          ; preds = %if.end.i
  %8 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tot_len.i, align 8
  %sub8.i = add i32 %9, %add1.i
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %sub8.i
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %13, %sub8.i
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %16 = call ptr @memcpy(ptr %15, ptr %rsp, i32 32)
  %va.i = getelementptr inbounds %struct.pkt_gl, ptr %gl, i32 0, i32 2
  %17 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %va.i, align 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 %3
  %19 = load i32, ptr %tot_len.i, align 8
  %sub11.i = sub i32 %19, %3
  %20 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %20, i32 32
  %21 = call ptr @memcpy(ptr %add.ptr.i23.i, ptr %add.ptr.i, i32 %sub11.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([239 x ptr], ptr @c4iw_handlers, i32 0, i32 59) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([239 x ptr], ptr @c4iw_handlers, i32 0, i32 59), align 4
  %cmp6 = icmp eq ptr %22, null
  br i1 %cmp6, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.30, i32 noundef 59) #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call i32 %22(ptr noundef %dev, ptr noundef nonnull %call.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb4_pktgl_to_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @c4iw_alloc(ptr nocapture noundef readonly %infop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vr.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %infop, i32 0, i32 4
  %0 = ptrtoint ptr %vr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vr.i, align 4
  %size.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %entry.do.end_crit_edge, label %land.lhs.true.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true.i:                                  ; preds = %entry
  %size2.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.not.i = icmp eq i32 %5, 0
  br i1 %cmp3.not.i, label %land.lhs.true.i.do.end_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %size6.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %size6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not.i = icmp eq i32 %7, 0
  br i1 %cmp7.not.i, label %land.lhs.true4.i.do.end_crit_edge, label %land.lhs.true8.i

land.lhs.true4.i.do.end_crit_edge:                ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true8.i:                                 ; preds = %land.lhs.true4.i
  %size10.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %1, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %size10.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11.not.i = icmp eq i32 %9, 0
  br i1 %cmp11.not.i, label %land.lhs.true8.i.do.end_crit_edge, label %rdma_supported.exit

land.lhs.true8.i.do.end_crit_edge:                ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

rdma_supported.exit:                              ; preds = %land.lhs.true8.i
  %size13.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %1, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %size13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14.i.not = icmp eq i32 %11, 0
  br i1 %cmp14.i.not, label %rdma_supported.exit.do.end_crit_edge, label %if.end

rdma_supported.exit.do.end_crit_edge:             ; preds = %rdma_supported.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %rdma_supported.exit.do.end_crit_edge, %land.lhs.true8.i.do.end_crit_edge, %land.lhs.true4.i.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %entry.do.end_crit_edge
  %12 = ptrtoint ptr %infop to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %infop, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %do.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %retval.0.i.i) #18
  br label %cleanup

if.end:                                           ; preds = %rdma_supported.exit
  %18 = ptrtoint ptr %infop to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %infop, align 4
  %init_name.i.i388 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44, i32 3
  %20 = ptrtoint ptr %init_name.i.i388 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i388, align 8
  %tobool.not.i.i389 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i389, label %if.end.i.i391, label %if.end.pci_name.exit393_crit_edge

if.end.pci_name.exit393_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit393

if.end.i.i391:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i390 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %22 = ptrtoint ptr %dev.i390 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i390, align 4
  br label %pci_name.exit393

pci_name.exit393:                                 ; preds = %if.end.i.i391, %if.end.pci_name.exit393_crit_edge
  %retval.0.i.i392 = phi ptr [ %23, %if.end.i.i391 ], [ %21, %if.end.pci_name.exit393_crit_edge ]
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %retval.0.i.i392) #18
  %call15 = tail call ptr @_ib_alloc_device(i32 noundef 4424) #14
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %do.end21, label %if.end25

do.end21:                                         ; preds = %pci_name.exit393
  call void @__sanitizer_cov_trace_pc() #16
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #18
  br label %cleanup

if.end25:                                         ; preds = %pci_name.exit393
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 8
  %24 = call ptr @memcpy(ptr %lldi, ptr %infop, i32 148)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_alloc.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_alloc, %if.then32)) #14
          to label %do.end39 [label %if.then32], !srcloc !409

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %sge_ingpadboundary = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 8, i32 27
  %25 = ptrtoint ptr %sge_ingpadboundary to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sge_ingpadboundary, align 8
  %sge_egrstatuspagesize = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 8, i32 28
  %27 = ptrtoint ptr %sge_egrstatuspagesize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sge_egrstatuspagesize, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_alloc.__UNIQUE_ID_ddebug689, ptr noundef nonnull @.str.57, i32 noundef %26, i32 noundef %28) #14
  br label %do.end39

do.end39:                                         ; preds = %if.then32, %if.end25
  %sge_egrstatuspagesize42 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 8, i32 28
  %29 = ptrtoint ptr %sge_egrstatuspagesize42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sge_egrstatuspagesize42, align 4
  %div384 = lshr i32 %30, 6
  %hw_queue = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 14
  %31 = ptrtoint ptr %hw_queue to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div384, ptr %hw_queue, align 8
  %t4_max_eq_size = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 14, i32 1
  %32 = ptrtoint ptr %t4_max_eq_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 65520, ptr %t4_max_eq_size, align 4
  %t4_max_iq_size = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 14, i32 2
  %33 = ptrtoint ptr %t4_max_iq_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65520, ptr %t4_max_iq_size, align 8
  %sub51 = sub nsw i32 8191, %div384
  %t4_max_rq_size = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 14, i32 3
  %34 = ptrtoint ptr %t4_max_rq_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub51, ptr %t4_max_rq_size, align 4
  %sub61 = sub nsw i32 65519, %div384
  %t4_max_sq_size = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 14, i32 4
  %35 = ptrtoint ptr %t4_max_sq_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub61, ptr %t4_max_sq_size, align 8
  %t4_max_qp_depth = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 14, i32 5
  %36 = ptrtoint ptr %t4_max_qp_depth to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub51, ptr %t4_max_qp_depth, align 4
  %t4_max_cq_depth = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 14, i32 6
  %37 = ptrtoint ptr %t4_max_cq_depth to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 65518, ptr %t4_max_cq_depth, align 8
  %t4_stat_len = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 14, i32 7
  %38 = ptrtoint ptr %t4_stat_len to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %30, ptr %t4_stat_len, align 4
  %39 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lldi, align 8
  %arrayidx = getelementptr %struct.pci_dev, ptr %40, i32 0, i32 47, i32 2
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 8
  %bar2_pa = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 9
  %43 = ptrtoint ptr %bar2_pa to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %bar2_pa, align 4
  %adapter_type = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 8, i32 13
  %44 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %adapter_type, align 8
  %46 = and i8 %45, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %46)
  %cmp.i.not = icmp eq i8 %46, 64
  br i1 %cmp.i.not, label %do.end39.do.body245_crit_edge, label %if.then88

do.end39.do.body245_crit_edge:                    ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body245

if.then88:                                        ; preds = %do.end39
  %end = getelementptr %struct.pci_dev, ptr %40, i32 0, i32 47, i32 2, i32 1
  %47 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp = icmp eq i32 %48, 0
  br i1 %cmp, label %if.then88.cond.end_crit_edge, label %cond.false

if.then88.cond.end_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 8
  %sub109 = add i32 %48, 1
  %add = sub i32 %sub109, %50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then88.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.then88.cond.end_crit_edge ]
  %call110 = tail call ptr @ioremap_wc(i32 noundef %42, i32 noundef %cond) #14
  %bar2_kva = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 10
  %51 = ptrtoint ptr %bar2_kva to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call110, ptr %bar2_kva, align 8
  %tobool114.not = icmp eq ptr %call110, null
  br i1 %tobool114.not, label %do.end118, label %cond.end.do.body245_crit_edge

cond.end.do.body245_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body245

do.end118:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #18
  tail call void @ib_dealloc_device(ptr noundef nonnull %call15) #14
  br label %cleanup

do.body245:                                       ; preds = %cond.end.do.body245_crit_edge, %do.end39.do.body245_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_alloc.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_alloc, %if.then257)) #14
          to label %do.end274 [label %if.then257], !srcloc !409

if.then257:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #16
  %vr260 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 8, i32 4
  %52 = ptrtoint ptr %vr260 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vr260, align 8
  %ocq261 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %ocq261 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ocq261, align 4
  %size267 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %53, i32 0, i32 8, i32 1
  %56 = ptrtoint ptr %size267 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size267, align 4
  %oc_mw_pa269 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 11
  %58 = ptrtoint ptr %oc_mw_pa269 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %oc_mw_pa269, align 4
  %oc_mw_kva271 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 12
  %60 = ptrtoint ptr %oc_mw_kva271 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %oc_mw_kva271, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_alloc.__UNIQUE_ID_ddebug690, ptr noundef nonnull @.str.65, i32 noundef %55, i32 noundef %57, i32 noundef %59, ptr noundef %61) #14
  br label %do.end274

do.end274:                                        ; preds = %if.then257, %do.body245
  %call276 = tail call fastcc i32 @c4iw_rdev_open(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276)
  %tobool277.not = icmp eq i32 %call276, 0
  br i1 %tobool277.not, label %if.end286, label %do.end281

do.end281:                                        ; preds = %do.end274
  call void @__sanitizer_cov_trace_pc() #16
  %call283 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %call276) #18
  tail call void @ib_dealloc_device(ptr noundef nonnull %call15) #14
  %62 = inttoptr i32 %call276 to ptr
  br label %cleanup

if.end286:                                        ; preds = %do.end274
  %cqs = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %cqs, ptr noundef nonnull @.str.100, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 3, i32 2
  %64 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %xa_head.i, align 4
  %qps = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %qps, ptr noundef nonnull @.str.100, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i394 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %xa_flags.i394 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %xa_flags.i394, align 4
  %xa_head.i395 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 4, i32 2
  %66 = ptrtoint ptr %xa_head.i395 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %xa_head.i395, align 4
  %mrs = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %mrs, ptr noundef nonnull @.str.100, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i396 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 5, i32 1
  %67 = ptrtoint ptr %xa_flags.i396 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %xa_flags.i396, align 4
  %xa_head.i397 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 5, i32 2
  %68 = ptrtoint ptr %xa_head.i397 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %xa_head.i397, align 4
  %hwtids = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %hwtids, ptr noundef nonnull @.str.100, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i398 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 9, i32 1
  %69 = ptrtoint ptr %xa_flags.i398 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %xa_flags.i398, align 4
  %xa_head.i399 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 9, i32 2
  %70 = ptrtoint ptr %xa_head.i399 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %xa_head.i399, align 4
  %atids = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %atids, ptr noundef nonnull @.str.100, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i400 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 10, i32 1
  %71 = ptrtoint ptr %xa_flags.i400 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %xa_flags.i400, align 4
  %xa_head.i401 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 10, i32 2
  %72 = ptrtoint ptr %xa_head.i401 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %xa_head.i401, align 4
  %stids = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %stids, ptr noundef nonnull @.str.100, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i402 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 11, i32 1
  %73 = ptrtoint ptr %xa_flags.i402 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %xa_flags.i402, align 4
  %xa_head.i403 = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 11, i32 2
  %74 = ptrtoint ptr %xa_head.i403 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %xa_head.i403, align 4
  %stats = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 13
  tail call void @__mutex_init(ptr noundef %stats, ptr noundef nonnull @.str.69, ptr noundef nonnull @c4iw_alloc.__key) #14
  %db_mutex = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %db_mutex, ptr noundef nonnull @.str.71, ptr noundef nonnull @c4iw_alloc.__key.70) #14
  %db_fc_list = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 12
  %75 = ptrtoint ptr %db_fc_list to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %db_fc_list, ptr %db_fc_list, align 4
  %prev.i = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 12, i32 1
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %db_fc_list, ptr %prev.i, align 4
  %wait = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.73, ptr noundef nonnull @c4iw_alloc.__key.72) #14
  %max_ird_adapter = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 1, i32 8, i32 33
  %77 = ptrtoint ptr %max_ird_adapter to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_ird_adapter, align 8
  %avail_ird = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 13
  %79 = ptrtoint ptr %avail_ird to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %avail_ird, align 8
  %80 = load ptr, ptr @c4iw_debugfs_root, align 4
  %tobool299.not = icmp eq ptr %80, null
  br i1 %tobool299.not, label %if.end286.cleanup_crit_edge, label %if.then300

if.end286.cleanup_crit_edge:                      ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then300:                                       ; preds = %if.end286
  %81 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lldi, align 8
  %init_name.i.i404 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44, i32 3
  %83 = ptrtoint ptr %init_name.i.i404 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i.i404, align 8
  %tobool.not.i.i405 = icmp eq ptr %84, null
  br i1 %tobool.not.i.i405, label %if.end.i.i407, label %if.then300.pci_name.exit409_crit_edge

if.then300.pci_name.exit409_crit_edge:            ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit409

if.end.i.i407:                                    ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i406 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %85 = ptrtoint ptr %dev.i406 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i406, align 4
  br label %pci_name.exit409

pci_name.exit409:                                 ; preds = %if.end.i.i407, %if.then300.pci_name.exit409_crit_edge
  %retval.0.i.i408 = phi ptr [ %86, %if.end.i.i407 ], [ %84, %if.then300.pci_name.exit409_crit_edge ]
  %call305 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i408, ptr noundef nonnull %80) #14
  %debugfs_root = getelementptr inbounds %struct.c4iw_dev, ptr %call15, i32 0, i32 7
  %87 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call305, ptr %debugfs_root, align 4
  tail call void @debugfs_create_file_size(ptr noundef nonnull @.str.101, i16 noundef zeroext 128, ptr noundef %call305, ptr noundef nonnull %call15, ptr noundef nonnull @qp_debugfs_fops, i64 noundef 4096) #14
  %88 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %debugfs_root, align 4
  tail call void @debugfs_create_file_size(ptr noundef nonnull @.str.102, i16 noundef zeroext 128, ptr noundef %89, ptr noundef nonnull %call15, ptr noundef nonnull @stag_debugfs_fops, i64 noundef 4096) #14
  %90 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %debugfs_root, align 4
  tail call void @debugfs_create_file_size(ptr noundef nonnull @.str.103, i16 noundef zeroext 128, ptr noundef %91, ptr noundef nonnull %call15, ptr noundef nonnull @stats_debugfs_fops, i64 noundef 4096) #14
  %92 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %debugfs_root, align 4
  tail call void @debugfs_create_file_size(ptr noundef nonnull @.str.104, i16 noundef zeroext 128, ptr noundef %93, ptr noundef nonnull %call15, ptr noundef nonnull @ep_debugfs_fops, i64 noundef 4096) #14
  %94 = load i32, ptr @c4iw_wr_log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i, label %pci_name.exit409.cleanup_crit_edge, label %if.then.i

pci_name.exit409.cleanup_crit_edge:               ; preds = %pci_name.exit409
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %pci_name.exit409
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %debugfs_root, align 4
  tail call void @debugfs_create_file_size(ptr noundef nonnull @.str.105, i16 noundef zeroext 128, ptr noundef %96, ptr noundef nonnull %call15, ptr noundef nonnull @wr_log_debugfs_fops, i64 noundef 4096) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %pci_name.exit409.cleanup_crit_edge, %if.end286.cleanup_crit_edge, %do.end281, %do.end118, %do.end21, %pci_name.exit
  %retval.0 = phi ptr [ %62, %do.end281 ], [ inttoptr (i32 -22 to ptr), %do.end118 ], [ inttoptr (i32 -12 to ptr), %do.end21 ], [ inttoptr (i32 -38 to ptr), %pci_name.exit ], [ %call15, %if.end286.cleanup_crit_edge ], [ %call15, %pci_name.exit409.cleanup_crit_edge ], [ %call15, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_register_device(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dispatch_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_ib_alloc_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c4iw_rdev_open(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %uctx = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 3
  %0 = ptrtoint ptr %uctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %uctx, ptr %uctx, align 4
  %prev.i.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 3, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %uctx, ptr %prev.i.i, align 4
  %cqids.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %cqids.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %cqids.i, ptr %cqids.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 3, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cqids.i, ptr %prev.i3.i, align 4
  %lock.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 3, i32 2
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @c4iw_init_dev_ucontext.__key) #14
  %lldi = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8
  %udb_density = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 19
  %4 = ptrtoint ptr %udb_density to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %udb_density, align 8
  %conv = zext i16 %5 to i32
  %ucq_density = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 20
  %6 = ptrtoint ptr %ucq_density to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ucq_density, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.not = icmp eq i16 %5, %7
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lldi, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %do.end.pci_name.exit_crit_edge ]
  %conv10 = zext i16 %7 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %retval.0.i.i, i32 noundef %conv, i32 noundef %conv10) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %vr = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 4
  %14 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vr, align 8
  %qp = getelementptr inbounds %struct.cxgb4_virt_res, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qp, align 4
  %cq = getelementptr inbounds %struct.cxgb4_virt_res, ptr %15, i32 0, i32 7
  %18 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp16.not = icmp eq i32 %17, %19
  br i1 %cmp16.not, label %lor.lhs.false, label %if.end.do.end30_crit_edge

if.end.do.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

lor.lhs.false:                                    ; preds = %if.end
  %size = getelementptr inbounds %struct.cxgb4_virt_res, ptr %15, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %size24 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %15, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %size24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp25.not = icmp eq i32 %21, %23
  br i1 %cmp25.not, label %if.end52, label %lor.lhs.false.do.end30_crit_edge

lor.lhs.false.do.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

do.end30:                                         ; preds = %lor.lhs.false.do.end30_crit_edge, %if.end.do.end30_crit_edge
  %24 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lldi, align 8
  %init_name.i.i405 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44, i32 3
  %26 = ptrtoint ptr %init_name.i.i405 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i405, align 8
  %tobool.not.i.i406 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i406, label %if.end.i.i408, label %do.end30.pci_name.exit410_crit_edge

do.end30.pci_name.exit410_crit_edge:              ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit410

if.end.i.i408:                                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i407 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %28 = ptrtoint ptr %dev.i407 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i407, align 4
  br label %pci_name.exit410

pci_name.exit410:                                 ; preds = %if.end.i.i408, %do.end30.pci_name.exit410_crit_edge
  %retval.0.i.i409 = phi ptr [ %29, %if.end.i.i408 ], [ %27, %do.end30.pci_name.exit410_crit_edge ]
  %size42 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %15, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %size42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size42, align 4
  %size46 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %15, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %size46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size46, align 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %retval.0.i.i409, i32 noundef %17, i32 noundef %31, i32 noundef %33, i32 noundef %33) #18
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false
  %sge_host_page_size = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 21
  %34 = ptrtoint ptr %sge_host_page_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sge_host_page_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %35)
  %cmp54 = icmp ugt i32 %35, 4096
  br i1 %cmp54, label %do.end59, label %if.end67

do.end59:                                         ; preds = %if.end52
  %36 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lldi, align 8
  %init_name.i.i411 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44, i32 3
  %38 = ptrtoint ptr %init_name.i.i411 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i411, align 8
  %tobool.not.i.i412 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i412, label %if.end.i.i414, label %do.end59.pci_name.exit416_crit_edge

do.end59.pci_name.exit416_crit_edge:              ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit416

if.end.i.i414:                                    ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i413 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %40 = ptrtoint ptr %dev.i413 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i413, align 4
  br label %pci_name.exit416

pci_name.exit416:                                 ; preds = %if.end.i.i414, %do.end59.pci_name.exit416_crit_edge
  %retval.0.i.i415 = phi ptr [ %41, %if.end.i.i414 ], [ %39, %do.end59.pci_name.exit416_crit_edge ]
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %retval.0.i.i415, i32 noundef %35) #18
  br label %cleanup

if.end67:                                         ; preds = %if.end52
  %div.rhs.trunc = trunc i32 %35 to i16
  %div442 = udiv i16 4096, %div.rhs.trunc
  %div.zext = zext i16 %div442 to i32
  %mul = mul nuw nsw i32 %div.zext, %conv
  %sub = add nsw i32 %mul, -1
  %qpmask = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 1
  %42 = ptrtoint ptr %qpmask to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub, ptr %qpmask, align 8
  %cqmask = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 2
  %43 = ptrtoint ptr %cqmask to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub, ptr %cqmask, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_rdev_open.__UNIQUE_ID_ddebug686, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_rdev_open, %if.then83)) #14
          to label %do.body131 [label %if.then83], !srcloc !409

if.then83:                                        ; preds = %if.end67
  %44 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lldi, align 8
  %init_name.i.i417 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44, i32 3
  %46 = ptrtoint ptr %init_name.i.i417 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i417, align 8
  %tobool.not.i.i418 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i418, label %if.end.i.i420, label %if.then83.pci_name.exit422_crit_edge

if.then83.pci_name.exit422_crit_edge:             ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit422

if.end.i.i420:                                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i419 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %48 = ptrtoint ptr %dev.i419 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i419, align 4
  br label %pci_name.exit422

pci_name.exit422:                                 ; preds = %if.end.i.i420, %if.then83.pci_name.exit422_crit_edge
  %retval.0.i.i421 = phi ptr [ %49, %if.end.i.i420 ], [ %47, %if.then83.pci_name.exit422_crit_edge ]
  %50 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vr, align 8
  %stag = getelementptr inbounds %struct.cxgb4_virt_res, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %stag to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stag, align 4
  %size93 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %51, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %size93 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size93, align 4
  %shr.i = lshr i32 %55, 5
  %pbl = getelementptr inbounds %struct.cxgb4_virt_res, ptr %51, i32 0, i32 5
  %56 = ptrtoint ptr %pbl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pbl, align 4
  %size101 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %51, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %size101 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size101, align 4
  %rq = getelementptr inbounds %struct.cxgb4_virt_res, ptr %51, i32 0, i32 3
  %60 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rq, align 4
  %size108 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %51, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %size108 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size108, align 4
  %qp111 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %51, i32 0, i32 6
  %64 = ptrtoint ptr %qp111 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qp111, align 4
  %size116 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %51, i32 0, i32 6, i32 1
  %66 = ptrtoint ptr %size116 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size116, align 4
  %cq119 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %51, i32 0, i32 7
  %68 = ptrtoint ptr %cq119 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cq119, align 4
  %size124 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %51, i32 0, i32 7, i32 1
  %70 = ptrtoint ptr %size124 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size124, align 4
  %size127 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %51, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %size127 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size127, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_rdev_open.__UNIQUE_ID_ddebug686, ptr noundef nonnull @.str.83, ptr noundef %retval.0.i.i421, i32 noundef %53, i32 noundef %55, i32 noundef %shr.i, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73) #14
  br label %do.body131

do.body131:                                       ; preds = %pci_name.exit422, %if.end67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_rdev_open.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_rdev_open, %if.then143)) #14
          to label %do.end152 [label %if.then143], !srcloc !409

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #16
  %74 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lldi, align 8
  %arrayidx = getelementptr %struct.pci_dev, ptr %75, i32 0, i32 47, i32 2
  %db_reg = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 25
  %76 = ptrtoint ptr %db_reg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %db_reg, align 8
  %gts_reg = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 24
  %78 = ptrtoint ptr %gts_reg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %gts_reg, align 4
  %80 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %qpmask, align 8
  %82 = ptrtoint ptr %cqmask to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cqmask, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_rdev_open.__UNIQUE_ID_ddebug687, ptr noundef nonnull @.str.85, ptr noundef %arrayidx, ptr noundef %77, ptr noundef %79, i32 noundef %81, i32 noundef %83) #14
  br label %do.end152

do.end152:                                        ; preds = %if.then143, %do.body131
  %84 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vr, align 8
  %size.i424 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %85, i32 0, i32 2, i32 1
  %86 = ptrtoint ptr %size.i424 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %size.i424, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %87)
  %cmp154 = icmp ult i32 %87, 32
  br i1 %cmp154, label %do.end152.cleanup_crit_edge, label %if.end157

do.end152.cleanup_crit_edge:                      ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end157:                                        ; preds = %do.end152
  %pd = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 2
  %88 = ptrtoint ptr %pd to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 65536, ptr %pd, align 8
  %89 = ptrtoint ptr %size.i424 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size.i424, align 4
  %conv162 = zext i32 %90 to i64
  %stag164 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 3
  %91 = ptrtoint ptr %stag164 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %conv162, ptr %stag164, align 8
  %size169 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %85, i32 0, i32 5, i32 1
  %92 = ptrtoint ptr %size169 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size169, align 4
  %conv170 = zext i32 %93 to i64
  %pbl172 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 4
  %94 = ptrtoint ptr %pbl172 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv170, ptr %pbl172, align 8
  %size177 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %85, i32 0, i32 3, i32 1
  %95 = ptrtoint ptr %size177 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %size177, align 4
  %conv178 = zext i32 %96 to i64
  %rqt = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 5
  %97 = ptrtoint ptr %rqt to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %conv178, ptr %rqt, align 8
  %size184 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %85, i32 0, i32 4, i32 1
  %98 = ptrtoint ptr %size184 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %size184, align 4
  %conv185 = zext i32 %99 to i64
  %srqt = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 6
  %100 = ptrtoint ptr %srqt to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv185, ptr %srqt, align 8
  %size190 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %85, i32 0, i32 8, i32 1
  %101 = ptrtoint ptr %size190 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %size190, align 4
  %conv191 = zext i32 %102 to i64
  %ocqp = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 8
  %103 = ptrtoint ptr %ocqp to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %conv191, ptr %ocqp, align 8
  %size197 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %85, i32 0, i32 6, i32 1
  %104 = ptrtoint ptr %size197 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %size197, align 4
  %conv198 = zext i32 %105 to i64
  %qid = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 13, i32 1
  %106 = ptrtoint ptr %qid to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv198, ptr %qid, align 8
  %107 = load i32, ptr %size.i424, align 4
  %shr.i428 = lshr i32 %107, 5
  %108 = load i32, ptr %size184, align 4
  %call206 = tail call i32 @c4iw_init_resource(ptr noundef %rdev, i32 noundef %shr.i428, i32 noundef 65536, i32 noundef %108) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.end214, label %do.end211

do.end211:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #16
  %call213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %call206) #18
  br label %cleanup

if.end214:                                        ; preds = %if.end157
  %call215 = tail call i32 @c4iw_pblpool_create(ptr noundef %rdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end223, label %do.end220

do.end220:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #16
  %call222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %call215) #18
  br label %destroy_resource

if.end223:                                        ; preds = %if.end214
  %call224 = tail call i32 @c4iw_rqtpool_create(ptr noundef %rdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end232, label %do.end229

do.end229:                                        ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #16
  %call231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %call224) #18
  br label %destroy_pblpool

if.end232:                                        ; preds = %if.end223
  %call233 = tail call i32 @c4iw_ocqp_pool_create(ptr noundef %rdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end241, label %do.end238

do.end238:                                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #16
  %call240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %call233) #18
  br label %destroy_rqtpool

if.end241:                                        ; preds = %if.end232
  %call242 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #14
  %109 = inttoptr i32 %call242 to ptr
  %status_page = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 15
  %110 = ptrtoint ptr %status_page to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %status_page, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %tobool244.not = icmp eq i32 %call242, 0
  br i1 %tobool244.not, label %if.end241.destroy_ocqp_pool_crit_edge, label %if.end246

if.end241.destroy_ocqp_pool_crit_edge:            ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #16
  br label %destroy_ocqp_pool

if.end246:                                        ; preds = %if.end241
  %111 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vr, align 8
  %qp249 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %112, i32 0, i32 6
  %113 = ptrtoint ptr %qp249 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %qp249, align 4
  %conv251 = zext i32 %114 to i64
  %qp_start = getelementptr inbounds %struct.t4_dev_status_page, ptr %109, i32 0, i32 4
  %115 = ptrtoint ptr %qp_start to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %conv251, ptr %qp_start, align 8
  %116 = load ptr, ptr %vr, align 8
  %size256 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %116, i32 0, i32 6, i32 1
  %117 = ptrtoint ptr %size256 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %size256, align 4
  %conv257 = zext i32 %118 to i64
  %119 = ptrtoint ptr %status_page to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %status_page, align 8
  %qp_size = getelementptr inbounds %struct.t4_dev_status_page, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %qp_size to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %conv257, ptr %qp_size, align 8
  %122 = load ptr, ptr %vr, align 8
  %cq261 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %122, i32 0, i32 7
  %123 = ptrtoint ptr %cq261 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cq261, align 4
  %conv263 = zext i32 %124 to i64
  %125 = load ptr, ptr %status_page, align 8
  %cq_start = getelementptr inbounds %struct.t4_dev_status_page, ptr %125, i32 0, i32 6
  %126 = ptrtoint ptr %cq_start to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %conv263, ptr %cq_start, align 8
  %127 = load ptr, ptr %vr, align 8
  %size268 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %127, i32 0, i32 7, i32 1
  %128 = ptrtoint ptr %size268 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %size268, align 4
  %conv269 = zext i32 %129 to i64
  %130 = load ptr, ptr %status_page, align 8
  %cq_size = getelementptr inbounds %struct.t4_dev_status_page, ptr %130, i32 0, i32 7
  %131 = ptrtoint ptr %cq_size to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %conv269, ptr %cq_size, align 8
  %write_cmpl_support = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 43
  %132 = ptrtoint ptr %write_cmpl_support to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %write_cmpl_support, align 2, !range !413
  %134 = load ptr, ptr %status_page, align 8
  %write_cmpl_supported = getelementptr inbounds %struct.t4_dev_status_page, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %write_cmpl_supported to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %133, ptr %write_cmpl_supported, align 1
  %136 = load i32, ptr @c4iw_wr_log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool275.not = icmp eq i32 %136, 0
  br i1 %tobool275.not, label %if.end246.if.end283_crit_edge, label %if.then276

if.end246.if.end283_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end283

if.then276:                                       ; preds = %if.end246
  %137 = load i32, ptr @c4iw_wr_log_size_order, align 4
  %shl = shl nuw i32 1, %137
  %138 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl, i32 48) #14
  %139 = extractvalue { i32, i1 } %138, 1
  br i1 %139, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !411

kcalloc.exit.thread:                              ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #16
  %wr_log436 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 17
  %140 = ptrtoint ptr %wr_log436 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %wr_log436, align 8
  br label %if.end283

if.end7.i.i:                                      ; preds = %if.then276
  %141 = extractvalue { i32, i1 } %138, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %141, i32 noundef 3520) #19
  %wr_log = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 17
  %142 = ptrtoint ptr %wr_log to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call8.i.i, ptr %wr_log, align 8
  %tobool279.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool279.not, label %if.end7.i.i.if.end283_crit_edge, label %if.then280

if.end7.i.i.if.end283_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end283

if.then280:                                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %143 = load i32, ptr @c4iw_wr_log_size_order, align 4
  %shl281 = shl nuw i32 1, %143
  %wr_log_size = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 18
  %144 = ptrtoint ptr %wr_log_size to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %shl281, ptr %wr_log_size, align 4
  %wr_log_idx = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_log_idx, i32 noundef 4) #14
  %145 = ptrtoint ptr %wr_log_idx to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile i32 0, ptr %wr_log_idx, align 4
  br label %if.end283

if.end283:                                        ; preds = %if.then280, %if.end7.i.i.if.end283_crit_edge, %kcalloc.exit.thread, %if.end246.if.end283_crit_edge
  %call284 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.14, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.98) #14
  %free_workq = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 19
  %146 = ptrtoint ptr %free_workq to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call284, ptr %free_workq, align 8
  %tobool286.not = icmp eq ptr %call284, null
  br i1 %tobool286.not, label %if.then287, label %if.end288

if.then287:                                       ; preds = %if.end283
  %147 = load i32, ptr @c4iw_wr_log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool290.not = icmp eq i32 %147, 0
  br i1 %tobool290.not, label %if.then287.if.end295_crit_edge, label %land.lhs.true

if.then287.if.end295_crit_edge:                   ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end295

if.end288:                                        ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #16
  %148 = ptrtoint ptr %status_page to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %status_page, align 8
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %149, align 8
  %rqt_compl = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 20
  %151 = ptrtoint ptr %rqt_compl to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %rqt_compl, align 4
  %wait.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 20, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.99, ptr noundef nonnull @init_completion.__key) #14
  %pbl_compl = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 21
  %152 = ptrtoint ptr %pbl_compl to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %pbl_compl, align 4
  %wait.i431 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 21, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i431, ptr noundef nonnull @.str.99, ptr noundef nonnull @init_completion.__key) #14
  %rqt_kref = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 22
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rqt_kref, i32 noundef 4) #14
  %153 = ptrtoint ptr %rqt_kref to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile i32 1, ptr %rqt_kref, align 4
  %pbl_kref = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 23
  %call.i.i.i.i432 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pbl_kref, i32 noundef 4) #14
  %154 = ptrtoint ptr %pbl_kref to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 1, ptr %pbl_kref, align 4
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then287
  %wr_log291 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 17
  %155 = ptrtoint ptr %wr_log291 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %wr_log291, align 8
  %tobool292.not = icmp eq ptr %156, null
  br i1 %tobool292.not, label %land.lhs.true.if.end295_crit_edge, label %if.then293

land.lhs.true.if.end295_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end295

if.then293:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %156) #14
  br label %if.end295

if.end295:                                        ; preds = %if.then293, %land.lhs.true.if.end295_crit_edge, %if.then287.if.end295_crit_edge
  %157 = ptrtoint ptr %status_page to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %status_page, align 8
  %159 = ptrtoint ptr %158 to i32
  tail call void @free_pages(i32 noundef %159, i32 noundef 0) #14
  br label %destroy_ocqp_pool

destroy_ocqp_pool:                                ; preds = %if.end295, %if.end241.destroy_ocqp_pool_crit_edge
  tail call void @c4iw_ocqp_pool_destroy(ptr noundef %rdev) #14
  br label %destroy_rqtpool

destroy_rqtpool:                                  ; preds = %destroy_ocqp_pool, %do.end238
  %err.1 = phi i32 [ %call233, %do.end238 ], [ -12, %destroy_ocqp_pool ]
  tail call void @c4iw_rqtpool_destroy(ptr noundef %rdev) #14
  br label %destroy_pblpool

destroy_pblpool:                                  ; preds = %destroy_rqtpool, %do.end229
  %err.2 = phi i32 [ %call224, %do.end229 ], [ %err.1, %destroy_rqtpool ]
  tail call void @c4iw_pblpool_destroy(ptr noundef %rdev) #14
  br label %destroy_resource

destroy_resource:                                 ; preds = %destroy_pblpool, %do.end220
  %err.3 = phi i32 [ %call215, %do.end220 ], [ %err.2, %destroy_pblpool ]
  tail call void @c4iw_destroy_resource(ptr noundef %rdev) #14
  br label %cleanup

cleanup:                                          ; preds = %destroy_resource, %if.end288, %do.end211, %do.end152.cleanup_crit_edge, %pci_name.exit416, %pci_name.exit410, %pci_name.exit
  %retval.0 = phi i32 [ -22, %pci_name.exit ], [ -22, %pci_name.exit410 ], [ -22, %pci_name.exit416 ], [ %call206, %do.end211 ], [ %err.3, %destroy_resource ], [ 0, %if.end288 ], [ -22, %do.end152.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_init_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_pblpool_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_rqtpool_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_ocqp_pool_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_file_size(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debugfs_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buf1 = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf1, align 4
  %pos = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos, align 4
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %3, i32 noundef %5) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qp_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %1 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private, align 4
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call7.i, align 8
  %pos = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pos, align 4
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %index, align 4
  %qps = getelementptr inbounds %struct.c4iw_dev, ptr %2, i32 0, i32 4
  %call2 = call ptr @xa_find(ptr noundef %qps, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool3.not56 = icmp eq ptr %call2, null
  br i1 %tobool3.not56, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %count.057 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %inc = add i32 %count.057, 1
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i, align 8
  %qps5 = getelementptr inbounds %struct.c4iw_dev, ptr %7, i32 0, i32 4
  %call6 = call ptr @xa_find_after(ptr noundef %qps5, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool3.not = icmp eq ptr %call6, null
  br i1 %tobool3.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %phi.bo = mul i32 %inc, 180
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 180, %if.end.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %bufsize = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %count.0.lcssa, ptr %bufsize, align 8
  %call8 = call noalias ptr @vmalloc(i32 noundef %count.0.lcssa) #19
  %buf = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %buf, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

if.end12:                                         ; preds = %for.end
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call7.i, align 8
  %qps14 = getelementptr inbounds %struct.c4iw_dev, ptr %11, i32 0, i32 4
  call void @_raw_spin_lock_irq(ptr noundef %qps14) #14
  %12 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %index, align 4
  %call17 = call ptr @xa_find(ptr noundef %qps14, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool19.not58 = icmp eq ptr %call17, null
  br i1 %tobool19.not58, label %if.end12.for.end26_crit_edge, label %if.end12.for.body20_crit_edge

if.end12.for.body20_crit_edge:                    ; preds = %if.end12
  br label %for.body20

if.end12.for.end26_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end26

for.body20:                                       ; preds = %dump_qp.exit.for.body20_crit_edge, %if.end12.for.body20_crit_edge
  %qp.159 = phi ptr [ %call25, %dump_qp.exit.for.body20_crit_edge ], [ %call17, %if.end12.for.body20_crit_edge ]
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %qid.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.159, i32 0, i32 5, i32 0, i32 10
  %15 = ptrtoint ptr %qid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp.not.i = icmp eq i32 %16, %14
  br i1 %cmp.not.i, label %if.end.i, label %for.body20.dump_qp.exit_crit_edge

for.body20.dump_qp.exit_crit_edge:                ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %dump_qp.exit

if.end.i:                                         ; preds = %for.body20
  %17 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bufsize, align 8
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pos, align 4
  %21 = xor i32 %20, -1
  %sub1.i = add i32 %18, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp2.i = icmp eq i32 %sub1.i, 0
  br i1 %cmp2.i, label %if.end.i.dump_qp.exit_crit_edge, label %if.end4.i

if.end.i.dump_qp.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dump_qp.exit

if.end4.i:                                        ; preds = %if.end.i
  %ep.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.159, i32 0, i32 3
  %22 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ep.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.else64.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end4.i
  %local_addr.i = getelementptr inbounds %struct.c4iw_ep_common, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %local_addr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %local_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp8.i = icmp eq i16 %25, 2
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %remote_addr.i.i = getelementptr inbounds %struct.c4iw_ep_common, ptr %23, i32 0, i32 8
  %tobool.not.i.i = icmp eq ptr %27, null
  %local_addr3.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %27, i32 0, i32 3
  %remote_addr4.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %27, i32 0, i32 4
  br i1 %cmp8.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %lsin.0.i = select i1 %tobool.not.i.i, ptr @zero_sin, ptr %local_addr3.i.i
  %storemerge.i.i = select i1 %tobool.not.i.i, ptr @zero_sin, ptr %remote_addr4.i.i
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 %20
  %srq.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.159, i32 0, i32 10
  %30 = ptrtoint ptr %srq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %srq.i, align 8
  %tobool15.not.i = icmp eq ptr %31, null
  %cond.i = select i1 %tobool15.not.i, ptr @.str.108, ptr @.str.107
  %idx.i = getelementptr inbounds %struct.c4iw_srq, ptr %31, i32 0, i32 7
  %qid20.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.159, i32 0, i32 5, i32 1, i32 8
  %cond21.in.i = select i1 %tobool15.not.i, ptr %qid20.i, ptr %idx.i
  %32 = ptrtoint ptr %cond21.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %cond21.i = load i32, ptr %cond21.in.i, align 4
  %state.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.159, i32 0, i32 4, i32 7
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state.i, align 4
  %flags.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.159, i32 0, i32 5, i32 0, i32 17
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flags.i, align 8
  %37 = and i16 %36, 1
  %and.i = zext i16 %37 to i32
  %hwtid.i = getelementptr inbounds %struct.c4iw_ep, ptr %23, i32 0, i32 5
  %38 = ptrtoint ptr %hwtid.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hwtid.i, align 4
  %state26.i = getelementptr inbounds %struct.c4iw_ep_common, ptr %23, i32 0, i32 4
  %40 = ptrtoint ptr %state26.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state26.i, align 4
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %lsin.0.i, i32 0, i32 2
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %lsin.0.i, i32 0, i32 1
  %42 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sin_port.i, align 2
  %conv27.i = zext i16 %43 to i32
  %sin_port28.i = getelementptr inbounds %struct.sockaddr_in, ptr %local_addr.i, i32 0, i32 1
  %44 = ptrtoint ptr %sin_port28.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sin_port28.i, align 2
  %conv29.i = zext i16 %45 to i32
  %sin_addr30.i = getelementptr inbounds %struct.sockaddr_in, ptr %storemerge.i.i, i32 0, i32 2
  %sin_port31.i = getelementptr inbounds %struct.sockaddr_in, ptr %storemerge.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %sin_port31.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sin_port31.i, align 2
  %conv32.i = zext i16 %47 to i32
  %sin_port33.i = getelementptr inbounds %struct.sockaddr_in, ptr %remote_addr.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %sin_port33.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sin_port33.i, align 2
  %conv34.i = zext i16 %49 to i32
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef %sub1.i, ptr noundef nonnull @.str.106, i32 noundef %14, ptr noundef nonnull %cond.i, i32 noundef %cond21.i, i32 noundef %34, i32 noundef %and.i, i32 noundef %39, i32 noundef %41, ptr noundef %sin_addr.i, i32 noundef %conv27.i, i32 noundef %conv29.i, ptr noundef %sin_addr30.i, i32 noundef %conv32.i, i32 noundef %conv34.i) #14
  br label %if.end82.i

if.else.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %lsin6.0.i = select i1 %tobool.not.i.i, ptr @zero_sin6, ptr %local_addr3.i.i
  %storemerge.i8.i = select i1 %tobool.not.i.i, ptr @zero_sin6, ptr %remote_addr4.i.i
  %50 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf, align 4
  %add.ptr37.i = getelementptr i8, ptr %51, i32 %20
  %qid43.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.159, i32 0, i32 5, i32 1, i32 8
  %52 = ptrtoint ptr %qid43.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %qid43.i, align 8
  %state45.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.159, i32 0, i32 4, i32 7
  %54 = ptrtoint ptr %state45.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state45.i, align 4
  %flags48.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.159, i32 0, i32 5, i32 0, i32 17
  %56 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %flags48.i, align 8
  %58 = and i16 %57, 1
  %and50.i = zext i16 %58 to i32
  %hwtid51.i = getelementptr inbounds %struct.c4iw_ep, ptr %23, i32 0, i32 5
  %59 = ptrtoint ptr %hwtid51.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hwtid51.i, align 4
  %state53.i = getelementptr inbounds %struct.c4iw_ep_common, ptr %23, i32 0, i32 4
  %61 = ptrtoint ptr %state53.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state53.i, align 4
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %lsin6.0.i, i32 0, i32 3
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %lsin6.0.i, i32 0, i32 1
  %63 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %sin6_port.i, align 2
  %conv54.i = zext i16 %64 to i32
  %sin6_port55.i = getelementptr inbounds %struct.sockaddr_in6, ptr %local_addr.i, i32 0, i32 1
  %65 = ptrtoint ptr %sin6_port55.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %sin6_port55.i, align 2
  %conv56.i = zext i16 %66 to i32
  %sin6_addr57.i = getelementptr inbounds %struct.sockaddr_in6, ptr %storemerge.i8.i, i32 0, i32 3
  %sin6_port58.i = getelementptr inbounds %struct.sockaddr_in6, ptr %storemerge.i8.i, i32 0, i32 1
  %67 = ptrtoint ptr %sin6_port58.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %sin6_port58.i, align 2
  %conv59.i = zext i16 %68 to i32
  %sin6_port60.i = getelementptr inbounds %struct.sockaddr_in6, ptr %remote_addr.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %sin6_port60.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %sin6_port60.i, align 2
  %conv61.i = zext i16 %70 to i32
  %call62.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr37.i, i32 noundef %sub1.i, ptr noundef nonnull @.str.109, i32 noundef %14, i32 noundef %53, i32 noundef %55, i32 noundef %and50.i, i32 noundef %60, i32 noundef %62, ptr noundef %sin6_addr.i, i32 noundef %conv54.i, i32 noundef %conv56.i, ptr noundef %sin6_addr57.i, i32 noundef %conv59.i, i32 noundef %conv61.i) #14
  br label %if.end82.i

if.else64.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buf, align 4
  %add.ptr67.i = getelementptr i8, ptr %72, i32 %20
  %qid73.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.159, i32 0, i32 5, i32 1, i32 8
  %73 = ptrtoint ptr %qid73.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qid73.i, align 8
  %state75.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.159, i32 0, i32 4, i32 7
  %75 = ptrtoint ptr %state75.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %state75.i, align 4
  %flags78.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.159, i32 0, i32 5, i32 0, i32 17
  %77 = ptrtoint ptr %flags78.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %flags78.i, align 8
  %79 = and i16 %78, 1
  %and80.i = zext i16 %79 to i32
  %call81.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr67.i, i32 noundef %sub1.i, ptr noundef nonnull @.str.110, i32 noundef %14, i32 noundef %74, i32 noundef %76, i32 noundef %and80.i) #14
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.else64.i, %if.else.i, %if.then10.i
  %cc.1.i = phi i32 [ %call81.i, %if.else64.i ], [ %call.i, %if.then10.i ], [ %call62.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cc.1.i, i32 %sub1.i)
  %cmp83.i = icmp slt i32 %cc.1.i, %sub1.i
  br i1 %cmp83.i, label %if.then85.i, label %if.end82.i.dump_qp.exit_crit_edge

if.end82.i.dump_qp.exit_crit_edge:                ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dump_qp.exit

if.then85.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pos, align 4
  %add.i = add i32 %81, %cc.1.i
  store i32 %add.i, ptr %pos, align 4
  br label %dump_qp.exit

dump_qp.exit:                                     ; preds = %if.then85.i, %if.end82.i.dump_qp.exit_crit_edge, %if.end.i.dump_qp.exit_crit_edge, %for.body20.dump_qp.exit_crit_edge
  %82 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call7.i, align 8
  %qps24 = getelementptr inbounds %struct.c4iw_dev, ptr %83, i32 0, i32 4
  %call25 = call ptr @xa_find_after(ptr noundef %qps24, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool19.not = icmp eq ptr %call25, null
  br i1 %tobool19.not, label %dump_qp.exit.for.end26_crit_edge, label %dump_qp.exit.for.body20_crit_edge

dump_qp.exit.for.body20_crit_edge:                ; preds = %dump_qp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body20

dump_qp.exit.for.end26_crit_edge:                 ; preds = %dump_qp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end26

for.end26:                                        ; preds = %dump_qp.exit.for.end26_crit_edge, %if.end12.for.end26_crit_edge
  %84 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call7.i, align 8
  %qps28 = getelementptr inbounds %struct.c4iw_dev, ptr %85, i32 0, i32 4
  call void @_raw_spin_unlock_irq(ptr noundef %qps28) #14
  %86 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buf, align 4
  %88 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pos, align 4
  %inc32 = add i32 %89, 1
  store i32 %inc32, ptr %pos, align 4
  %arrayidx = getelementptr i8, ptr %87, i32 %89
  %90 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %arrayidx, align 1
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %91 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end26, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end26 ], [ -12, %if.then11 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qp_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %buf = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  tail call void @vfree(ptr noundef %3) #14
  tail call void @kfree(ptr noundef nonnull %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stag_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  %tpte.i = alloca %struct.fw_ri_tpte, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %1 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private, align 4
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call7.i, align 8
  %pos = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pos, align 4
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %index, align 4
  %mrs = getelementptr inbounds %struct.c4iw_dev, ptr %2, i32 0, i32 5
  %call2 = call ptr @xa_find(ptr noundef %mrs, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool3.not52 = icmp eq ptr %call2, null
  br i1 %tobool3.not52, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %count.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %inc = add i32 %count.053, 1
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i, align 8
  %mrs5 = getelementptr inbounds %struct.c4iw_dev, ptr %7, i32 0, i32 5
  %call6 = call ptr @xa_find_after(ptr noundef %mrs5, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool3.not = icmp eq ptr %call6, null
  br i1 %tobool3.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %phi.bo = shl i32 %inc, 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 256, %if.end.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %bufsize = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %count.0.lcssa, ptr %bufsize, align 8
  %call8 = call noalias ptr @vmalloc(i32 noundef %count.0.lcssa) #19
  %buf = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %buf, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %out

if.end12:                                         ; preds = %for.end
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call7.i, align 8
  %mrs14 = getelementptr inbounds %struct.c4iw_dev, ptr %11, i32 0, i32 5
  call void @_raw_spin_lock_irq(ptr noundef %mrs14) #14
  %12 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %index, align 4
  %call17 = call ptr @xa_find(ptr noundef %mrs14, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool19.not54 = icmp eq ptr %call17, null
  br i1 %tobool19.not54, label %if.end12.for.end26_crit_edge, label %for.body20.lr.ph

if.end12.for.end26_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end26

for.body20.lr.ph:                                 ; preds = %if.end12
  %13 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte.i, i32 0, i32 3
  %15 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte.i, i32 0, i32 4
  %16 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte.i, i32 0, i32 5
  %17 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte.i, i32 0, i32 7
  br label %for.body20

for.body20:                                       ; preds = %dump_stag.exit.for.body20_crit_edge, %for.body20.lr.ph
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tpte.i) #14
  %20 = call ptr @memset(ptr %tpte.i, i32 255, i32 32)
  %21 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bufsize, align 8
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pos, align 4
  %25 = xor i32 %24, -1
  %sub1.i = add i32 %22, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp.i = icmp eq i32 %sub1.i, 0
  br i1 %cmp.i, label %for.body20.dump_stag.exit_crit_edge, label %if.end.i

for.body20.dump_stag.exit_crit_edge:              ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %dump_stag.exit

if.end.i:                                         ; preds = %for.body20
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call7.i, align 8
  %ports.i = getelementptr inbounds %struct.c4iw_dev, ptr %27, i32 0, i32 1, i32 8, i32 3
  %28 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ports.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %shl.i = shl i32 %19, 8
  %call.i = call i32 @cxgb4_read_tpte(ptr noundef %31, i32 noundef %shl.i, ptr noundef nonnull %tpte.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i, align 8
  %lldi5.i = getelementptr inbounds %struct.c4iw_dev, ptr %33, i32 0, i32 1, i32 8
  %34 = ptrtoint ptr %lldi5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lldi5.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef %call.i) #18
  br label %dump_stag.exit

if.end6.i:                                        ; preds = %if.end.i
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf, align 4
  %38 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pos, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 %39
  %40 = ptrtoint ptr %tpte.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tpte.i, align 4
  %shr.i = lshr i32 %41, 31
  %shr10.i = lshr i32 %41, 23
  %and11.i = and i32 %shr10.i, 255
  %shr13.i = lshr i32 %41, 22
  %and14.i = and i32 %shr13.i, 1
  %and17.i = and i32 %41, 1048575
  %42 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %13, align 4
  %shr18.i = lshr i32 %43, 28
  %shr21.i = lshr i32 %43, 20
  %and22.i = and i32 %shr21.i, 31
  %44 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %17, align 4
  %conv.i = zext i32 %45 to i64
  %shl23.i = shl nuw i64 %conv.i, 32
  %46 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %14, align 4
  %conv24.i = zext i32 %47 to i64
  %or.i = or i64 %shl23.i, %conv24.i
  %48 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %15, align 4
  %conv25.i = zext i32 %49 to i64
  %shl26.i = shl nuw i64 %conv25.i, 32
  %50 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %16, align 4
  %conv27.i = zext i32 %51 to i64
  %or28.i = or i64 %shl26.i, %conv27.i
  %call29.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef %sub1.i, ptr noundef nonnull @.str.117, i32 noundef %shl.i, i32 noundef %shr.i, i32 noundef %and11.i, i32 noundef %and14.i, i32 noundef %and17.i, i32 noundef %shr18.i, i32 noundef %and22.i, i64 noundef %or.i, i64 noundef %or28.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call29.i, i32 %sub1.i)
  %cmp30.i = icmp slt i32 %call29.i, %sub1.i
  br i1 %cmp30.i, label %if.then32.i, label %if.end6.i.dump_stag.exit_crit_edge

if.end6.i.dump_stag.exit_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dump_stag.exit

if.then32.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pos, align 4
  %add.i = add i32 %53, %call29.i
  store i32 %add.i, ptr %pos, align 4
  br label %dump_stag.exit

dump_stag.exit:                                   ; preds = %if.then32.i, %if.end6.i.dump_stag.exit_crit_edge, %do.end.i, %for.body20.dump_stag.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tpte.i) #14
  %54 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call7.i, align 8
  %mrs24 = getelementptr inbounds %struct.c4iw_dev, ptr %55, i32 0, i32 5
  %call25 = call ptr @xa_find_after(ptr noundef %mrs24, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool19.not = icmp eq ptr %call25, null
  br i1 %tobool19.not, label %dump_stag.exit.for.end26_crit_edge, label %dump_stag.exit.for.body20_crit_edge

dump_stag.exit.for.body20_crit_edge:              ; preds = %dump_stag.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body20

dump_stag.exit.for.end26_crit_edge:               ; preds = %dump_stag.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end26

for.end26:                                        ; preds = %dump_stag.exit.for.end26_crit_edge, %if.end12.for.end26_crit_edge
  %56 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call7.i, align 8
  %mrs28 = getelementptr inbounds %struct.c4iw_dev, ptr %57, i32 0, i32 5
  call void @_raw_spin_unlock_irq(ptr noundef %mrs28) #14
  %58 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf, align 4
  %60 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pos, align 4
  %inc32 = add i32 %61, 1
  store i32 %inc32, ptr %pos, align 4
  %arrayidx = getelementptr i8, ptr %59, i32 %61
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx, align 1
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %63 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i, ptr %private_data, align 4
  br label %out

out:                                              ; preds = %for.end26, %if.then11, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %for.end26 ], [ -12, %if.then11 ], [ -12, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stag_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %buf = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  tail call void @vfree(ptr noundef %3) #14
  tail call void @kfree(ptr noundef nonnull %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_read_tpte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_clear(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %buf, i32 noundef returned %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %stats = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 1, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #14
  %max = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 1, i32 13, i32 2, i32 2
  %max8 = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 1, i32 13, i32 1, i32 2
  %max15 = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 1, i32 13, i32 3, i32 2
  %max22 = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 1, i32 13, i32 4, i32 2
  %max29 = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 1, i32 13, i32 5, i32 2
  %max44 = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 1, i32 13, i32 8, i32 2
  %tcam_full = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 1, i32 13, i32 14
  %4 = call ptr @memset(ptr %max8, i32 0, i32 16)
  %5 = call ptr @memset(ptr %max, i32 0, i32 16)
  %6 = call ptr @memset(ptr %max15, i32 0, i32 16)
  %7 = call ptr @memset(ptr %max22, i32 0, i32 16)
  %8 = call ptr @memset(ptr %max29, i32 0, i32 16)
  %9 = call ptr @memset(ptr %max44, i32 0, i32 48)
  %10 = call ptr @memset(ptr %tcam_full, i32 0, i32 24)
  tail call void @mutex_unlock(ptr noundef %stats) #14
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @stats_show, ptr noundef %1) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124) #14
  %pd = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 2
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pd, align 8
  %cur = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 2, i32 1
  %4 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cur, align 8
  %max = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 2, i32 2
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %max, align 8
  %fail = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 2, i32 3
  %8 = ptrtoint ptr %fail to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fail, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.125, i64 noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9) #14
  %qid = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 1
  %10 = ptrtoint ptr %qid to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %qid, align 8
  %cur16 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 1, i32 1
  %12 = ptrtoint ptr %cur16 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cur16, align 8
  %max20 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 1, i32 2
  %14 = ptrtoint ptr %max20 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %max20, align 8
  %fail24 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 1, i32 3
  %16 = ptrtoint ptr %fail24 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fail24, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.126, i64 noundef %11, i64 noundef %13, i64 noundef %15, i64 noundef %17) #14
  %srqt = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 6
  %18 = ptrtoint ptr %srqt to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %srqt, align 8
  %cur31 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 6, i32 1
  %20 = ptrtoint ptr %cur31 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cur31, align 8
  %max35 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 6, i32 2
  %22 = ptrtoint ptr %max35 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %max35, align 8
  %fail39 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 6, i32 3
  %24 = ptrtoint ptr %fail39 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %fail39, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.127, i64 noundef %19, i64 noundef %21, i64 noundef %23, i64 noundef %25) #14
  %stag = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 3
  %26 = ptrtoint ptr %stag to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %stag, align 8
  %cur46 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 3, i32 1
  %28 = ptrtoint ptr %cur46 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %cur46, align 8
  %max50 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 3, i32 2
  %30 = ptrtoint ptr %max50 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %max50, align 8
  %fail54 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 3, i32 3
  %32 = ptrtoint ptr %fail54 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %fail54, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.128, i64 noundef %27, i64 noundef %29, i64 noundef %31, i64 noundef %33) #14
  %pbl = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 4
  %34 = ptrtoint ptr %pbl to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %pbl, align 8
  %cur61 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 4, i32 1
  %36 = ptrtoint ptr %cur61 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %cur61, align 8
  %max65 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 4, i32 2
  %38 = ptrtoint ptr %max65 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %max65, align 8
  %fail69 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 4, i32 3
  %40 = ptrtoint ptr %fail69 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %fail69, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.129, i64 noundef %35, i64 noundef %37, i64 noundef %39, i64 noundef %41) #14
  %rqt = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 5
  %42 = ptrtoint ptr %rqt to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rqt, align 8
  %cur76 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 5, i32 1
  %44 = ptrtoint ptr %cur76 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %cur76, align 8
  %max80 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 5, i32 2
  %46 = ptrtoint ptr %max80 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %max80, align 8
  %fail84 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 5, i32 3
  %48 = ptrtoint ptr %fail84 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %fail84, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.130, i64 noundef %43, i64 noundef %45, i64 noundef %47, i64 noundef %49) #14
  %ocqp = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 8
  %50 = ptrtoint ptr %ocqp to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ocqp, align 8
  %cur91 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 8, i32 1
  %52 = ptrtoint ptr %cur91 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %cur91, align 8
  %max95 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 8, i32 2
  %54 = ptrtoint ptr %max95 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %max95, align 8
  %fail99 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 8, i32 3
  %56 = ptrtoint ptr %fail99 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %fail99, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.131, i64 noundef %51, i64 noundef %53, i64 noundef %55, i64 noundef %57) #14
  %db_full = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 9
  %58 = ptrtoint ptr %db_full to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %db_full, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.132, i64 noundef %59) #14
  %db_empty = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 10
  %60 = ptrtoint ptr %db_empty to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %db_empty, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.133, i64 noundef %61) #14
  %db_drop = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 11
  %62 = ptrtoint ptr %db_drop to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %db_drop, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.134, i64 noundef %63) #14
  %db_state = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 8
  %64 = ptrtoint ptr %db_state to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %db_state, align 8
  %arrayidx = getelementptr [4 x ptr], ptr @db_state_str, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  %db_state_transitions = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 12
  %68 = ptrtoint ptr %db_state_transitions to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %db_state_transitions, align 8
  %db_fc_interruptions = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 13
  %70 = ptrtoint ptr %db_fc_interruptions to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %db_fc_interruptions, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.135, ptr noundef %67, i64 noundef %69, i64 noundef %71) #14
  %tcam_full = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 14
  %72 = ptrtoint ptr %tcam_full to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %tcam_full, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.136, i64 noundef %73) #14
  %act_ofld_conn_fails = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 15
  %74 = ptrtoint ptr %act_ofld_conn_fails to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %act_ofld_conn_fails, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.137, i64 noundef %75) #14
  %pas_ofld_conn_fails = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 16
  %76 = ptrtoint ptr %pas_ofld_conn_fails to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %pas_ofld_conn_fails, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.138, i64 noundef %77) #14
  %neg_adv = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 17
  %78 = ptrtoint ptr %neg_adv to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %neg_adv, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.139, i64 noundef %79) #14
  %avail_ird = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 13
  %80 = ptrtoint ptr %avail_ird to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %avail_ird, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.140, i32 noundef %81) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %1 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private, align 4
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call7.i, align 8
  %pos = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pos, align 4
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %index, align 4
  %hwtids = getelementptr inbounds %struct.c4iw_dev, ptr %2, i32 0, i32 9
  %call2 = call ptr @xa_find(ptr noundef %hwtids, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool3.not127 = icmp eq ptr %call2, null
  br i1 %tobool3.not127, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %count.0128 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %inc = add i32 %count.0128, 1
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i, align 8
  %hwtids5 = getelementptr inbounds %struct.c4iw_dev, ptr %7, i32 0, i32 9
  %call6 = call ptr @xa_find_after(ptr noundef %hwtids5, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool3.not = icmp eq ptr %call6, null
  br i1 %tobool3.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 1, %if.end.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %index, align 4
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i, align 8
  %atids = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 10
  %call8 = call ptr @xa_find(ptr noundef %atids, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool10.not129 = icmp eq ptr %call8, null
  br i1 %tobool10.not129, label %for.end.for.end17_crit_edge, label %for.end.for.body11_crit_edge

for.end.for.body11_crit_edge:                     ; preds = %for.end
  br label %for.body11

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end17

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.end.for.body11_crit_edge
  %count.1130 = phi i32 [ %inc12, %for.body11.for.body11_crit_edge ], [ %count.0.lcssa, %for.end.for.body11_crit_edge ]
  %inc12 = add i32 %count.1130, 1
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i, align 8
  %atids15 = getelementptr inbounds %struct.c4iw_dev, ptr %12, i32 0, i32 10
  %call16 = call ptr @xa_find_after(ptr noundef %atids15, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool10.not = icmp eq ptr %call16, null
  br i1 %tobool10.not, label %for.body11.for.end17_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11

for.body11.for.end17_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end17

for.end17:                                        ; preds = %for.body11.for.end17_crit_edge, %for.end.for.end17_crit_edge
  %count.1.lcssa = phi i32 [ %count.0.lcssa, %for.end.for.end17_crit_edge ], [ %inc12, %for.body11.for.end17_crit_edge ]
  %13 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %index, align 4
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i, align 8
  %stids = getelementptr inbounds %struct.c4iw_dev, ptr %15, i32 0, i32 11
  %call19 = call ptr @xa_find(ptr noundef %stids, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool21.not132 = icmp eq ptr %call19, null
  br i1 %tobool21.not132, label %for.end17.for.end28_crit_edge, label %for.end17.for.body22_crit_edge

for.end17.for.body22_crit_edge:                   ; preds = %for.end17
  br label %for.body22

for.end17.for.end28_crit_edge:                    ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end28

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.end17.for.body22_crit_edge
  %count.2133 = phi i32 [ %inc23, %for.body22.for.body22_crit_edge ], [ %count.1.lcssa, %for.end17.for.body22_crit_edge ]
  %inc23 = add i32 %count.2133, 1
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i, align 8
  %stids26 = getelementptr inbounds %struct.c4iw_dev, ptr %17, i32 0, i32 11
  %call27 = call ptr @xa_find_after(ptr noundef %stids26, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool21.not = icmp eq ptr %call27, null
  br i1 %tobool21.not, label %for.body22.for.end28_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body22

for.body22.for.end28_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end28

for.end28:                                        ; preds = %for.body22.for.end28_crit_edge, %for.end17.for.end28_crit_edge
  %count.2.lcssa = phi i32 [ %count.1.lcssa, %for.end17.for.end28_crit_edge ], [ %inc23, %for.body22.for.end28_crit_edge ]
  %mul = mul i32 %count.2.lcssa, 240
  %bufsize = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %call7.i, i32 0, i32 2
  %18 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %bufsize, align 8
  %call30 = call noalias ptr @vmalloc(i32 noundef %mul) #19
  %buf = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call30, ptr %buf, align 4
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %out

if.end34:                                         ; preds = %for.end28
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i, align 8
  %hwtids36 = getelementptr inbounds %struct.c4iw_dev, ptr %21, i32 0, i32 9
  call void @_raw_spin_lock_irq(ptr noundef %hwtids36) #14
  %22 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %index, align 4
  %23 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i, align 8
  %hwtids38 = getelementptr inbounds %struct.c4iw_dev, ptr %24, i32 0, i32 9
  %call39 = call ptr @xa_find(ptr noundef %hwtids38, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool41.not135 = icmp eq ptr %call39, null
  br i1 %tobool41.not135, label %if.end34.for.end48_crit_edge, label %if.end34.for.body42_crit_edge

if.end34.for.body42_crit_edge:                    ; preds = %if.end34
  br label %for.body42

if.end34.for.end48_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end48

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %if.end34.for.body42_crit_edge
  %ep.2136 = phi ptr [ %call47, %for.body42.for.body42_crit_edge ], [ %call39, %if.end34.for.body42_crit_edge ]
  call fastcc void @dump_ep(ptr noundef nonnull %ep.2136, ptr noundef nonnull %call7.i)
  %25 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i, align 8
  %hwtids46 = getelementptr inbounds %struct.c4iw_dev, ptr %26, i32 0, i32 9
  %call47 = call ptr @xa_find_after(ptr noundef %hwtids46, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool41.not = icmp eq ptr %call47, null
  br i1 %tobool41.not, label %for.body42.for.end48_crit_edge, label %for.body42.for.body42_crit_edge

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body42

for.body42.for.end48_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end48

for.end48:                                        ; preds = %for.body42.for.end48_crit_edge, %if.end34.for.end48_crit_edge
  %27 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i, align 8
  %hwtids50 = getelementptr inbounds %struct.c4iw_dev, ptr %28, i32 0, i32 9
  call void @_raw_spin_unlock_irq(ptr noundef %hwtids50) #14
  %29 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i, align 8
  %atids53 = getelementptr inbounds %struct.c4iw_dev, ptr %30, i32 0, i32 10
  call void @_raw_spin_lock_irq(ptr noundef %atids53) #14
  %31 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %index, align 4
  %32 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i, align 8
  %atids56 = getelementptr inbounds %struct.c4iw_dev, ptr %33, i32 0, i32 10
  %call57 = call ptr @xa_find(ptr noundef %atids56, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool59.not137 = icmp eq ptr %call57, null
  br i1 %tobool59.not137, label %for.end48.for.end66_crit_edge, label %for.end48.for.body60_crit_edge

for.end48.for.body60_crit_edge:                   ; preds = %for.end48
  br label %for.body60

for.end48.for.end66_crit_edge:                    ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end66

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.end48.for.body60_crit_edge
  %ep.3138 = phi ptr [ %call65, %for.body60.for.body60_crit_edge ], [ %call57, %for.end48.for.body60_crit_edge ]
  call fastcc void @dump_ep(ptr noundef nonnull %ep.3138, ptr noundef nonnull %call7.i)
  %34 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i, align 8
  %atids64 = getelementptr inbounds %struct.c4iw_dev, ptr %35, i32 0, i32 10
  %call65 = call ptr @xa_find_after(ptr noundef %atids64, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool59.not = icmp eq ptr %call65, null
  br i1 %tobool59.not, label %for.body60.for.end66_crit_edge, label %for.body60.for.body60_crit_edge

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body60

for.body60.for.end66_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end66

for.end66:                                        ; preds = %for.body60.for.end66_crit_edge, %for.end48.for.end66_crit_edge
  %36 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i, align 8
  %atids68 = getelementptr inbounds %struct.c4iw_dev, ptr %37, i32 0, i32 10
  call void @_raw_spin_unlock_irq(ptr noundef %atids68) #14
  %38 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i, align 8
  %stids71 = getelementptr inbounds %struct.c4iw_dev, ptr %39, i32 0, i32 11
  call void @_raw_spin_lock_irq(ptr noundef %stids71) #14
  %40 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %index, align 4
  %41 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call7.i, align 8
  %stids74 = getelementptr inbounds %struct.c4iw_dev, ptr %42, i32 0, i32 11
  %call75 = call ptr @xa_find(ptr noundef %stids74, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool77.not139 = icmp eq ptr %call75, null
  br i1 %tobool77.not139, label %for.end66.for.end84_crit_edge, label %for.end66.for.body78_crit_edge

for.end66.for.body78_crit_edge:                   ; preds = %for.end66
  br label %for.body78

for.end66.for.end84_crit_edge:                    ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end84

for.body78:                                       ; preds = %dump_listen_ep.exit.for.body78_crit_edge, %for.end66.for.body78_crit_edge
  %lep.1140 = phi ptr [ %call83, %dump_listen_ep.exit.for.body78_crit_edge ], [ %call75, %for.end66.for.body78_crit_edge ]
  %43 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bufsize, align 8
  %45 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pos, align 4
  %47 = xor i32 %46, -1
  %sub1.i = add i32 %44, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp.i = icmp eq i32 %sub1.i, 0
  br i1 %cmp.i, label %for.body78.dump_listen_ep.exit_crit_edge, label %if.end.i

for.body78.dump_listen_ep.exit_crit_edge:         ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #16
  br label %dump_listen_ep.exit

if.end.i:                                         ; preds = %for.body78
  %local_addr.i = getelementptr inbounds %struct.c4iw_ep_common, ptr %lep.1140, i32 0, i32 7
  %48 = ptrtoint ptr %local_addr.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %local_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %49)
  %cmp2.i = icmp eq i16 %49, 2
  %50 = ptrtoint ptr %lep.1140 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lep.1140, align 4
  %local_addr6.i = getelementptr inbounds %struct.iw_cm_id, ptr %51, i32 0, i32 3
  %m_local_addr.i = getelementptr inbounds %struct.iw_cm_id, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 %46
  %state.i = getelementptr inbounds %struct.c4iw_ep_common, ptr %lep.1140, i32 0, i32 4
  %54 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state.i, align 4
  %flags.i = getelementptr inbounds %struct.c4iw_ep_common, ptr %lep.1140, i32 0, i32 10
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i, align 4
  %stid.i = getelementptr inbounds %struct.c4iw_listen_ep, ptr %lep.1140, i32 0, i32 1
  %58 = ptrtoint ptr %stid.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %stid.i, align 4
  %backlog.i = getelementptr inbounds %struct.c4iw_listen_ep, ptr %lep.1140, i32 0, i32 2
  %60 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %backlog.i, align 4
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sin_addr.i = getelementptr inbounds %struct.iw_cm_id, ptr %51, i32 0, i32 3, i32 0, i32 1
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %local_addr6.i, i32 0, i32 1
  %62 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sin_port.i, align 2
  %conv14.i = zext i16 %63 to i32
  %sin_port15.i = getelementptr inbounds %struct.sockaddr_in, ptr %m_local_addr.i, i32 0, i32 1
  %64 = ptrtoint ptr %sin_port15.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %sin_port15.i, align 2
  %conv16.i = zext i16 %65 to i32
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef %sub1.i, ptr noundef nonnull @.str.147, ptr noundef nonnull %lep.1140, ptr noundef %51, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, ptr noundef %sin_addr.i, i32 noundef %conv14.i, i32 noundef %conv16.i) #14
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %sin6_addr.i = getelementptr inbounds %struct.iw_cm_id, ptr %51, i32 0, i32 3, i32 0, i32 1, i32 4
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %local_addr6.i, i32 0, i32 1
  %66 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %sin6_port.i, align 2
  %conv34.i = zext i16 %67 to i32
  %sin6_port35.i = getelementptr inbounds %struct.sockaddr_in6, ptr %m_local_addr.i, i32 0, i32 1
  %68 = ptrtoint ptr %sin6_port35.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %sin6_port35.i, align 2
  %conv36.i = zext i16 %69 to i32
  %call37.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef %sub1.i, ptr noundef nonnull @.str.148, ptr noundef nonnull %lep.1140, ptr noundef %51, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, ptr noundef %sin6_addr.i, i32 noundef %conv34.i, i32 noundef %conv36.i) #14
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i, %if.then4.i
  %cc.0.i = phi i32 [ %call.i, %if.then4.i ], [ %call37.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cc.0.i, i32 %sub1.i)
  %cmp39.i = icmp slt i32 %cc.0.i, %sub1.i
  br i1 %cmp39.i, label %if.then41.i, label %if.end38.i.dump_listen_ep.exit_crit_edge

if.end38.i.dump_listen_ep.exit_crit_edge:         ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dump_listen_ep.exit

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pos, align 4
  %add.i = add i32 %71, %cc.0.i
  store i32 %add.i, ptr %pos, align 4
  br label %dump_listen_ep.exit

dump_listen_ep.exit:                              ; preds = %if.then41.i, %if.end38.i.dump_listen_ep.exit_crit_edge, %for.body78.dump_listen_ep.exit_crit_edge
  %72 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call7.i, align 8
  %stids82 = getelementptr inbounds %struct.c4iw_dev, ptr %73, i32 0, i32 11
  %call83 = call ptr @xa_find_after(ptr noundef %stids82, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool77.not = icmp eq ptr %call83, null
  br i1 %tobool77.not, label %dump_listen_ep.exit.for.end84_crit_edge, label %dump_listen_ep.exit.for.body78_crit_edge

dump_listen_ep.exit.for.body78_crit_edge:         ; preds = %dump_listen_ep.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body78

dump_listen_ep.exit.for.end84_crit_edge:          ; preds = %dump_listen_ep.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end84

for.end84:                                        ; preds = %dump_listen_ep.exit.for.end84_crit_edge, %for.end66.for.end84_crit_edge
  %74 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i, align 8
  %stids86 = getelementptr inbounds %struct.c4iw_dev, ptr %75, i32 0, i32 11
  call void @_raw_spin_unlock_irq(ptr noundef %stids86) #14
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %76 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i, ptr %private_data, align 4
  br label %out

out:                                              ; preds = %for.end84, %if.then33, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %for.end84 ], [ -12, %if.then33 ], [ -12, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.149) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %buf = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  tail call void @vfree(ptr noundef %3) #14
  tail call void @kfree(ptr noundef nonnull %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_ep(ptr noundef %ep, ptr nocapture noundef %epd) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bufsize = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %epd, i32 0, i32 2
  %0 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bufsize, align 4
  %pos = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %epd, i32 0, i32 3
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  %4 = xor i32 %3, -1
  %sub1 = add i32 %1, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %cmp = icmp eq i32 %sub1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %local_addr = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep, i32 0, i32 7
  %5 = ptrtoint ptr %local_addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %local_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp2 = icmp eq i16 %6, 2
  %7 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ep, align 4
  %remote_addr.i = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep, i32 0, i32 8
  %tobool.not.i = icmp eq ptr %8, null
  %local_addr3.i = getelementptr inbounds %struct.iw_cm_id, ptr %8, i32 0, i32 3
  %remote_addr4.i = getelementptr inbounds %struct.iw_cm_id, ptr %8, i32 0, i32 4
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %lsin.0 = select i1 %tobool.not.i, ptr @zero_sin, ptr %local_addr3.i
  %storemerge.i = select i1 %tobool.not.i, ptr @zero_sin, ptr %remote_addr4.i
  %buf = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %epd, i32 0, i32 1
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %3
  %qp = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep, i32 0, i32 1
  %11 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qp, align 4
  %state = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep, i32 0, i32 4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep, i32 0, i32 10
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %history = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep, i32 0, i32 11
  %17 = ptrtoint ptr %history to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %history, align 4
  %hwtid = getelementptr inbounds %struct.c4iw_ep, ptr %ep, i32 0, i32 5
  %19 = ptrtoint ptr %hwtid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hwtid, align 4
  %atid = getelementptr inbounds %struct.c4iw_ep, ptr %ep, i32 0, i32 4
  %21 = ptrtoint ptr %atid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %atid, align 4
  %stats = getelementptr inbounds %struct.c4iw_ep, ptr %ep, i32 0, i32 32
  %23 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stats, align 4
  %abort_neg_adv = getelementptr inbounds %struct.c4iw_ep, ptr %ep, i32 0, i32 32, i32 1
  %25 = ptrtoint ptr %abort_neg_adv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %abort_neg_adv, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %lsin.0, i32 0, i32 2
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %lsin.0, i32 0, i32 1
  %27 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sin_port, align 2
  %conv12 = zext i16 %28 to i32
  %sin_port13 = getelementptr inbounds %struct.sockaddr_in, ptr %local_addr, i32 0, i32 1
  %29 = ptrtoint ptr %sin_port13 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sin_port13, align 2
  %conv14 = zext i16 %30 to i32
  %sin_addr15 = getelementptr inbounds %struct.sockaddr_in, ptr %storemerge.i, i32 0, i32 2
  %sin_port16 = getelementptr inbounds %struct.sockaddr_in, ptr %storemerge.i, i32 0, i32 1
  %31 = ptrtoint ptr %sin_port16 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sin_port16, align 2
  %conv17 = zext i16 %32 to i32
  %sin_port18 = getelementptr inbounds %struct.sockaddr_in, ptr %remote_addr.i, i32 0, i32 1
  %33 = ptrtoint ptr %sin_port18 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sin_port18, align 2
  %conv19 = zext i16 %34 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub1, ptr noundef nonnull @.str.145, ptr noundef %ep, ptr noundef %8, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, ptr noundef %sin_addr, i32 noundef %conv12, i32 noundef %conv14, ptr noundef %sin_addr15, i32 noundef %conv17, i32 noundef %conv19)
  br label %if.end48

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %lsin6.0 = select i1 %tobool.not.i, ptr @zero_sin6, ptr %local_addr3.i
  %storemerge.i8 = select i1 %tobool.not.i, ptr @zero_sin6, ptr %remote_addr4.i
  %buf20 = getelementptr inbounds %struct.c4iw_debugfs_data, ptr %epd, i32 0, i32 1
  %35 = ptrtoint ptr %buf20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf20, align 4
  %add.ptr22 = getelementptr i8, ptr %36, i32 %3
  %qp26 = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep, i32 0, i32 1
  %37 = ptrtoint ptr %qp26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %qp26, align 4
  %state28 = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep, i32 0, i32 4
  %39 = ptrtoint ptr %state28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state28, align 4
  %flags30 = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep, i32 0, i32 10
  %41 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags30, align 4
  %history32 = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep, i32 0, i32 11
  %43 = ptrtoint ptr %history32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %history32, align 4
  %hwtid33 = getelementptr inbounds %struct.c4iw_ep, ptr %ep, i32 0, i32 5
  %45 = ptrtoint ptr %hwtid33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hwtid33, align 4
  %atid34 = getelementptr inbounds %struct.c4iw_ep, ptr %ep, i32 0, i32 4
  %47 = ptrtoint ptr %atid34 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %atid34, align 4
  %stats35 = getelementptr inbounds %struct.c4iw_ep, ptr %ep, i32 0, i32 32
  %49 = ptrtoint ptr %stats35 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stats35, align 4
  %abort_neg_adv38 = getelementptr inbounds %struct.c4iw_ep, ptr %ep, i32 0, i32 32, i32 1
  %51 = ptrtoint ptr %abort_neg_adv38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %abort_neg_adv38, align 4
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %lsin6.0, i32 0, i32 3
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %lsin6.0, i32 0, i32 1
  %53 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %sin6_port, align 2
  %conv39 = zext i16 %54 to i32
  %sin6_port40 = getelementptr inbounds %struct.sockaddr_in6, ptr %local_addr, i32 0, i32 1
  %55 = ptrtoint ptr %sin6_port40 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %sin6_port40, align 2
  %conv41 = zext i16 %56 to i32
  %sin6_addr42 = getelementptr inbounds %struct.sockaddr_in6, ptr %storemerge.i8, i32 0, i32 3
  %sin6_port43 = getelementptr inbounds %struct.sockaddr_in6, ptr %storemerge.i8, i32 0, i32 1
  %57 = ptrtoint ptr %sin6_port43 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %sin6_port43, align 2
  %conv44 = zext i16 %58 to i32
  %sin6_port45 = getelementptr inbounds %struct.sockaddr_in6, ptr %remote_addr.i, i32 0, i32 1
  %59 = ptrtoint ptr %sin6_port45 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %sin6_port45, align 2
  %conv46 = zext i16 %60 to i32
  %call47 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr22, i32 noundef %sub1, ptr noundef nonnull @.str.146, ptr noundef %ep, ptr noundef %8, ptr noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, ptr noundef %sin6_addr, i32 noundef %conv39, i32 noundef %conv41, ptr noundef %sin6_addr42, i32 noundef %conv44, i32 noundef %conv46)
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then4
  %cc.0 = phi i32 [ %call, %if.then4 ], [ %call47, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cc.0, i32 %sub1)
  %cmp49 = icmp slt i32 %cc.0, %sub1
  br i1 %cmp49, label %if.then51, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pos, align 4
  %add = add i32 %62, %cc.0
  store i32 %add, ptr %pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end48.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wr_log_clear(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %buf, i32 noundef returned %count, ptr nocapture noundef readnone %pos) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %wr_log = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 1, i32 17
  %4 = ptrtoint ptr %wr_log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr_log, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %wr_log_size = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 1, i32 18
  %6 = ptrtoint ptr %wr_log_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wr_log_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8 = icmp sgt i32 %7, 0
  br i1 %cmp8, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %wr_log to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr_log, align 8
  %valid = getelementptr %struct.wr_log_entry, ptr %9, i32 %i.09, i32 8
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %valid, align 1
  %inc = add nuw nsw i32 %i.09, 1
  %11 = ptrtoint ptr %wr_log_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wr_log_size, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wr_log_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @wr_log_show, ptr noundef %1) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wr_log_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %wr_log_idx = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wr_log_idx, i32 noundef 4) #14
  %2 = ptrtoint ptr %wr_log_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %wr_log_idx, align 4
  %wr_log_size = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 18
  %4 = ptrtoint ptr %wr_log_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wr_log_size, align 4
  %sub = add i32 %5, -1
  %and = and i32 %sub, %3
  %sub2 = add i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2)
  %cmp = icmp slt i32 %sub2, 0
  %spec.select = select i1 %cmp, i32 %sub, i32 %sub2
  %wr_log = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 17
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %spec.select)
  %cmp7.not82 = icmp eq i32 %and, %spec.select
  br i1 %cmp7.not82, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %6 = ptrtoint ptr %wr_log to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr_log, align 8
  %arrayidx = getelementptr %struct.wr_log_entry, ptr %7, i32 %and
  %cclk_ps = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 18
  br label %while.body

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %while.body.lr.ph
  %idx.086 = phi i32 [ %and, %while.body.lr.ph ], [ %spec.store.select, %if.end40.while.body_crit_edge ]
  %prev_time_set.085 = phi i32 [ 0, %while.body.lr.ph ], [ %prev_time_set.2, %if.end40.while.body_crit_edge ]
  %lep.084 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %arrayidx50, %if.end40.while.body_crit_edge ]
  %prev_time.083 = phi i64 [ -1, %while.body.lr.ph ], [ %prev_time.2, %if.end40.while.body_crit_edge ]
  %valid = getelementptr inbounds %struct.wr_log_entry, ptr %lep.084, i32 0, i32 8
  %8 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %while.body.if.end40_crit_edge, label %if.then8

while.body.if.end40_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_time_set.085)
  %tobool9.not = icmp eq i32 %prev_time_set.085, 0
  br i1 %tobool9.not, label %if.then10, label %if.then8.if.end11_crit_edge

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %poll_host_time = getelementptr inbounds %struct.wr_log_entry, ptr %lep.084, i32 0, i32 1
  %10 = ptrtoint ptr %poll_host_time to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %poll_host_time, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8.if.end11_crit_edge
  %prev_time.1 = phi i64 [ %prev_time.083, %if.then8.if.end11_crit_edge ], [ %11, %if.then10 ]
  %poll_host_time12 = getelementptr inbounds %struct.wr_log_entry, ptr %lep.084, i32 0, i32 1
  %12 = ptrtoint ptr %poll_host_time12 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %poll_host_time12, align 8
  %sub13 = sub i64 %13, %prev_time.1
  %qid = getelementptr inbounds %struct.wr_log_entry, ptr %lep.084, i32 0, i32 5
  %14 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %qid, align 8
  %conv = zext i16 %15 to i32
  %opcode = getelementptr inbounds %struct.wr_log_entry, ptr %lep.084, i32 0, i32 7
  %16 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %opcode, align 4
  %conv15 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %17)
  %cmp18 = icmp eq i8 %17, 14
  %cond = select i1 %cmp18, ptr @.str.151, ptr @.str.152
  %wr_id = getelementptr inbounds %struct.wr_log_entry, ptr %lep.084, i32 0, i32 6
  %18 = ptrtoint ptr %wr_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %wr_id, align 2
  %conv20 = zext i16 %19 to i32
  %20 = ptrtoint ptr %lep.084 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %lep.084, align 8
  %sub22 = sub i64 %13, %21
  %post_sge_ts = getelementptr inbounds %struct.wr_log_entry, ptr %lep.084, i32 0, i32 2
  %22 = ptrtoint ptr %post_sge_ts to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %post_sge_ts, align 8
  %cqe_sge_ts = getelementptr inbounds %struct.wr_log_entry, ptr %lep.084, i32 0, i32 3
  %24 = ptrtoint ptr %cqe_sge_ts to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cqe_sge_ts, align 8
  %poll_sge_ts = getelementptr inbounds %struct.wr_log_entry, ptr %lep.084, i32 0, i32 4
  %26 = ptrtoint ptr %poll_sge_ts to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %poll_sge_ts, align 8
  %sub26 = sub i64 %27, %23
  %28 = ptrtoint ptr %cclk_ps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cclk_ps, align 4
  %conv28 = zext i32 %29 to i64
  %mul = mul i64 %sub26, %conv28
  %call29 = tail call i64 @div64_u64(i64 noundef %mul, i64 noundef 1000) #14
  %30 = ptrtoint ptr %poll_sge_ts to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %poll_sge_ts, align 8
  %32 = ptrtoint ptr %cqe_sge_ts to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %cqe_sge_ts, align 8
  %sub32 = sub i64 %31, %33
  %34 = ptrtoint ptr %cclk_ps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cclk_ps, align 4
  %conv36 = zext i32 %35 to i64
  %mul37 = mul i64 %sub32, %conv36
  %call38 = tail call i64 @div64_u64(i64 noundef %mul37, i64 noundef 1000) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.150, i32 noundef %idx.086, i64 noundef %sub13, i32 noundef %conv, i32 noundef %conv15, ptr noundef nonnull %cond, i32 noundef %conv20, i64 noundef %sub22, i64 noundef %23, i64 noundef %25, i64 noundef %27, i64 noundef %call29, i64 noundef %call38) #14
  %36 = ptrtoint ptr %poll_host_time12 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %poll_host_time12, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.end11, %while.body.if.end40_crit_edge
  %prev_time.2 = phi i64 [ %37, %if.end11 ], [ %prev_time.083, %while.body.if.end40_crit_edge ]
  %prev_time_set.2 = phi i32 [ 1, %if.end11 ], [ %prev_time_set.085, %while.body.if.end40_crit_edge ]
  %inc = add i32 %idx.086, 1
  %38 = ptrtoint ptr %wr_log_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wr_log_size, align 4
  %sub43 = add i32 %39, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub43)
  %cmp44 = icmp sgt i32 %inc, %sub43
  %spec.store.select = select i1 %cmp44, i32 0, i32 %inc
  %40 = ptrtoint ptr %wr_log to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wr_log, align 8
  %arrayidx50 = getelementptr %struct.wr_log_entry, ptr %41, i32 %spec.store.select
  %cmp7.not = icmp eq i32 %spec.store.select, %spec.select
  br i1 %cmp7.not, label %if.end40.while.end_crit_edge, label %if.end40.while.body_crit_edge

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end40.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @resume_queues(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uld_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %qps = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %qps) #14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %db_state = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %db_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %db_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %db_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %db_state, align 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %db_fc_list188 = getelementptr inbounds %struct.c4iw_dev, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %db_fc_list188 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %db_fc_list188, align 4
  %cmp.i.not189 = icmp eq ptr %10, %db_fc_list188
  br i1 %cmp.i.not189, label %if.end.if.then5_crit_edge, label %if.end.if.else47_crit_edge

if.end.if.else47_crit_edge:                       ; preds = %if.end
  br label %if.else47

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

if.then5:                                         ; preds = %if.end148.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %.lcssa = phi ptr [ %8, %if.end.if.then5_crit_edge ], [ %76, %if.end148.if.then5_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #14
  %db_state7 = getelementptr inbounds %struct.c4iw_dev, ptr %.lcssa, i32 0, i32 8
  %11 = ptrtoint ptr %db_state7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %db_state7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp8.not = icmp eq i32 %12, 1
  br i1 %cmp8.not, label %if.then5.if.end23_crit_edge, label %do.end, !prof !408

if.then5.if.end23_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1321, i32 noundef 9, ptr noundef null) #14
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.then5.if.end23_crit_edge
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %db_state31 = getelementptr inbounds %struct.c4iw_dev, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %db_state31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %db_state31, align 8
  %16 = load ptr, ptr %dev, align 4
  %db_state_transitions = getelementptr inbounds %struct.c4iw_dev, ptr %16, i32 0, i32 1, i32 13, i32 12
  %17 = ptrtoint ptr %db_state_transitions to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %db_state_transitions, align 8
  %inc = add i64 %18, 1
  store i64 %inc, ptr %db_state_transitions, align 8
  %19 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.c4iw_dev, ptr %19, i32 0, i32 1, i32 7
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end23
  %22 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %index, align 4
  %qps38 = getelementptr inbounds %struct.c4iw_dev, ptr %19, i32 0, i32 4
  %call39 = call ptr @xa_find(ptr noundef %qps38, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool40.not190 = icmp eq ptr %call39, null
  br i1 %tobool40.not190, label %if.then36.if.end46_crit_edge, label %if.then36.for.body_crit_edge

if.then36.for.body_crit_edge:                     ; preds = %if.then36
  br label %for.body

if.then36.if.end46_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then36.for.body_crit_edge
  %qp.0191 = phi ptr [ %call43, %for.body.for.body_crit_edge ], [ %call39, %if.then36.for.body_crit_edge ]
  %rq.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.0191, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rq.i, align 8
  %size.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp.0191, i32 0, i32 5, i32 1, i32 13
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %size.i, align 8
  %idxprom.i = zext i16 %26 to i32
  %arrayidx.i = getelementptr %union.t4_recv_wr, ptr %24, i32 %idxprom.i
  %db_off.i = getelementptr inbounds %struct.t4_status_page, ptr %arrayidx.i, i32 0, i32 6
  %27 = ptrtoint ptr %db_off.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %db_off.i, align 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %qps42 = getelementptr inbounds %struct.c4iw_dev, ptr %29, i32 0, i32 4
  %call43 = call ptr @xa_find_after(ptr noundef %qps42, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool40.not = icmp eq ptr %call43, null
  br i1 %tobool40.not, label %for.body.if.end46_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.if.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %status_page = getelementptr inbounds %struct.c4iw_dev, ptr %19, i32 0, i32 1, i32 15
  %30 = ptrtoint ptr %status_page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %status_page, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %31, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else, %for.body.if.end46_crit_edge, %if.then36.if.end46_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #14
  br label %out

if.else47:                                        ; preds = %if.end148.if.else47_crit_edge, %if.end.if.else47_crit_edge
  %33 = phi ptr [ %76, %if.end148.if.else47_crit_edge ], [ %8, %if.end.if.else47_crit_edge ]
  %ports = getelementptr inbounds %struct.c4iw_dev, ptr %33, i32 0, i32 1, i32 8, i32 3
  %34 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ports, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call50 = tail call i32 @cxgb4_dbfifo_count(ptr noundef %37, i32 noundef 1) #14
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %dbfifo_int_thresh = getelementptr inbounds %struct.c4iw_dev, ptr %39, i32 0, i32 1, i32 8, i32 26
  %40 = ptrtoint ptr %dbfifo_int_thresh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dbfifo_int_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call50, i32 %41)
  %cmp54 = icmp ult i32 %call50, %41
  br i1 %cmp54, label %if.else47.for.body.i_crit_edge, label %if.else47.if.end56_crit_edge

if.else47.if.end56_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.else47.for.body.i_crit_edge:                   ; preds = %if.else47
  br label %for.body.i

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %if.else47.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ 0, %if.else47.for.body.i_crit_edge ]
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %db_fc_list.i = getelementptr inbounds %struct.c4iw_dev, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %db_fc_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %db_fc_list.i, align 8
  %add.ptr.i = getelementptr i8, ptr %45, i32 -252
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %45) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %45, ptr %45, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %45, ptr %prev.i3.i.i, align 4
  tail call fastcc void @resume_rc_qp(ptr noundef %add.ptr.i) #14
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %db_fc_list2.i = getelementptr inbounds %struct.c4iw_dev, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %db_fc_list2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %db_fc_list2.i, align 4
  %cmp.i.not.i = icmp eq ptr %57, %db_fc_list2.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  %or.cond.i = select i1 %cmp.i.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %list_del_init.exit.i.if.end56_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del_init.exit.i.if.end56_crit_edge:          ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.end56:                                         ; preds = %list_del_init.exit.i.if.end56_crit_edge, %if.else47.if.end56_crit_edge
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %db_fc_list58 = getelementptr inbounds %struct.c4iw_dev, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %db_fc_list58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %db_fc_list58, align 4
  %cmp.i185.not = icmp eq ptr %61, %db_fc_list58
  br i1 %cmp.i185.not, label %if.end56.if.end148_crit_edge, label %if.then61

if.end56.if.end148_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148

if.then61:                                        ; preds = %if.end56
  %qps63 = getelementptr inbounds %struct.c4iw_dev, ptr %59, i32 0, i32 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %qps63) #14
  br label %__here

__here:                                           ; preds = %if.then61
  %62 = tail call i32 @llvm.read_register.i32(metadata !395) #14
  %and.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 212
  %66 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 ptrtoint (ptr blockaddress(@resume_queues, %__here) to i32), ptr %task_state_change, align 4
  %67 = load ptr, ptr %task, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 2, ptr %67, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !414
  %call138 = tail call i32 @schedule_timeout(i32 noundef 1) #14
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %qps140 = getelementptr inbounds %struct.c4iw_dev, ptr %70, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %qps140) #14
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %db_state143 = getelementptr inbounds %struct.c4iw_dev, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %db_state143 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %db_state143, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp144.not = icmp eq i32 %74, 1
  br i1 %cmp144.not, label %__here.if.end148_crit_edge, label %__here.out_crit_edge

__here.out_crit_edge:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

__here.if.end148_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end148

if.end148:                                        ; preds = %__here.if.end148_crit_edge, %if.end56.if.end148_crit_edge
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  %db_fc_list = getelementptr inbounds %struct.c4iw_dev, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %db_fc_list to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %db_fc_list, align 4
  %cmp.i.not = icmp eq ptr %78, %db_fc_list
  br i1 %cmp.i.not, label %if.end148.if.then5_crit_edge, label %if.end148.if.else47_crit_edge

if.end148.if.else47_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else47

if.end148.if.then5_crit_edge:                     ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

out:                                              ; preds = %__here.out_crit_edge, %if.end46, %entry.out_crit_edge
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %db_state150 = getelementptr inbounds %struct.c4iw_dev, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %db_state150 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %db_state150, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp151.not = icmp eq i32 %82, 0
  br i1 %cmp151.not, label %out.if.end157_crit_edge, label %if.then152

out.if.end157_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end157

if.then152:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %db_fc_interruptions = getelementptr inbounds %struct.c4iw_dev, ptr %80, i32 0, i32 1, i32 13, i32 13
  %83 = ptrtoint ptr %db_fc_interruptions to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %db_fc_interruptions, align 8
  %inc156 = add i64 %84, 1
  store i64 %inc156, ptr %db_fc_interruptions, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.then152, %out.if.end157_crit_edge
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  %qps159 = getelementptr inbounds %struct.c4iw_dev, ptr %86, i32 0, i32 4
  call void @_raw_spin_unlock_irq(ptr noundef %qps159) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @recover_queues(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %index = alloca i32, align 4
  %qp_list = alloca %struct.qp_list, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #14
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %index, align 4, !annotation !412
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qp_list) #14
  %1 = ptrtoint ptr %qp_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %qp_list, align 4, !annotation !412
  %2 = getelementptr inbounds %struct.qp_list, ptr %qp_list, i32 0, i32 1
  br label %__here

__here:                                           ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !395) #14
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 212
  %7 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 ptrtoint (ptr blockaddress(@recover_queues, %__here) to i32), ptr %task_state_change, align 4
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 2, ptr %8, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !415
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 1000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 1
  %call61 = tail call i32 @schedule_timeout(i32 noundef %spec.select.i) #14
  %dev = getelementptr inbounds %struct.uld_ctx, ptr %ctx, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %ports = getelementptr inbounds %struct.c4iw_dev, ptr %11, i32 0, i32 1, i32 8, i32 3
  %12 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call62 = tail call i32 @cxgb4_flush_eq_cache(ptr noundef %15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end72, label %do.end67

do.end67:                                         ; preds = %__here
  %lldi69 = getelementptr inbounds %struct.uld_ctx, ptr %ctx, i32 0, i32 1
  %16 = ptrtoint ptr %lldi69 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lldi69, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end67.pci_name.exit_crit_edge

do.end67.pci_name.exit_crit_edge:                 ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end67.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %do.end67.pci_name.exit_crit_edge ]
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %retval.0.i.i) #18
  br label %cleanup

if.end72:                                         ; preds = %__here
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %qps = getelementptr inbounds %struct.c4iw_dev, ptr %23, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %qps) #14
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %db_state = getelementptr inbounds %struct.c4iw_dev, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %db_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %db_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.not = icmp eq i32 %27, 3
  br i1 %cmp.not, label %if.end72.if.end97_crit_edge, label %do.end91, !prof !408

if.end72.if.end97_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

do.end91:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1437, i32 noundef 9, ptr noundef null) #14
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %if.end72.if.end97_crit_edge
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %db_state106 = getelementptr inbounds %struct.c4iw_dev, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %db_state106 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %db_state106, align 8
  %31 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %index, align 4
  %32 = load ptr, ptr %dev, align 4
  %qps108 = getelementptr inbounds %struct.c4iw_dev, ptr %32, i32 0, i32 4
  %call109 = call ptr @xa_find(ptr noundef %qps108, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool110.not219 = icmp eq ptr %call109, null
  br i1 %tobool110.not219, label %if.end97.for.end_crit_edge, label %if.end97.for.body_crit_edge

if.end97.for.body_crit_edge:                      ; preds = %if.end97
  br label %for.body

if.end97.for.end_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end97.for.body_crit_edge
  %count.0220 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end97.for.body_crit_edge ]
  %inc = add i32 %count.0220, 1
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %qps112 = getelementptr inbounds %struct.c4iw_dev, ptr %34, i32 0, i32 4
  %call113 = call ptr @xa_find_after(ptr noundef %qps112, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool110.not = icmp eq ptr %call113, null
  br i1 %tobool110.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end97.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end97.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count.0.lcssa, i32 4) #14
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %for.end.if.then118_crit_edge, label %if.end7.i.i, !prof !411

for.end.if.then118_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then118

if.end7.i.i:                                      ; preds = %for.end
  %37 = extractvalue { i32, i1 } %35, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 2848) #19
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call8.i.i, ptr %2, align 4
  %tobool117.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool117.not, label %if.end7.i.i.if.then118_crit_edge, label %if.end122

if.end7.i.i.if.then118_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then118

if.then118:                                       ; preds = %if.end7.i.i.if.then118_crit_edge, %for.end.if.then118_crit_edge
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %qps120 = getelementptr inbounds %struct.c4iw_dev, ptr %40, i32 0, i32 4
  call void @_raw_spin_unlock_irq(ptr noundef %qps120) #14
  br label %cleanup

if.end122:                                        ; preds = %if.end7.i.i
  %41 = ptrtoint ptr %qp_list to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %qp_list, align 4
  %42 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %index, align 4
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %qps124 = getelementptr inbounds %struct.c4iw_dev, ptr %44, i32 0, i32 4
  %call125 = call ptr @xa_find(ptr noundef %qps124, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool127.not221 = icmp eq ptr %call125, null
  br i1 %tobool127.not221, label %if.end122.for.end137_crit_edge, label %for.body128.preheader

if.end122.for.end137_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end137

for.body128.preheader:                            ; preds = %if.end122
  %45 = ptrtoint ptr %qp_list to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %qp_list.promoted = load i32, ptr %qp_list, align 1
  br label %for.body128

for.body128:                                      ; preds = %for.body128.for.body128_crit_edge, %for.body128.preheader
  %46 = phi i32 [ %inc131, %for.body128.for.body128_crit_edge ], [ %qp_list.promoted, %for.body128.preheader ]
  %qp.1222 = phi ptr [ %call136, %for.body128.for.body128_crit_edge ], [ %call125, %for.body128.preheader ]
  call void @c4iw_qp_add_ref(ptr noundef nonnull %qp.1222) #14
  %inc131 = add i32 %46, 1
  %arrayidx132 = getelementptr ptr, ptr %call8.i.i, i32 %46
  %47 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %qp.1222, ptr %arrayidx132, align 4
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %qps135 = getelementptr inbounds %struct.c4iw_dev, ptr %49, i32 0, i32 4
  %call136 = call ptr @xa_find_after(ptr noundef %qps135, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #14
  %tobool127.not = icmp eq ptr %call136, null
  br i1 %tobool127.not, label %for.end137.loopexit, label %for.body128.for.body128_crit_edge

for.body128.for.body128_crit_edge:                ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body128

for.end137.loopexit:                              ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %qp_list to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %inc131, ptr %qp_list, align 1
  br label %for.end137

for.end137:                                       ; preds = %for.end137.loopexit, %if.end122.for.end137_crit_edge
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %qps139 = getelementptr inbounds %struct.c4iw_dev, ptr %52, i32 0, i32 4
  call void @_raw_spin_unlock_irq(ptr noundef %qps139) #14
  call fastcc void @recover_lost_dbs(ptr noundef %ctx, ptr noundef nonnull %qp_list)
  %53 = ptrtoint ptr %qp_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qp_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp5.not.i = icmp eq i32 %54, 0
  br i1 %cmp5.not.i, label %for.end137.deref_qps.exit_crit_edge, label %for.end137.for.body.i_crit_edge

for.end137.for.body.i_crit_edge:                  ; preds = %for.end137
  br label %for.body.i

for.end137.deref_qps.exit_crit_edge:              ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #16
  br label %deref_qps.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end137.for.body.i_crit_edge
  %idx.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end137.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %call8.i.i, i32 %idx.06.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  call void @c4iw_qp_rem_ref(ptr noundef %56) #14
  %inc.i = add nuw i32 %idx.06.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %54
  br i1 %exitcond.not, label %for.body.i.deref_qps.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.deref_qps.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %deref_qps.exit

deref_qps.exit:                                   ; preds = %for.body.i.deref_qps.exit_crit_edge, %for.end137.deref_qps.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #14
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %qps143 = getelementptr inbounds %struct.c4iw_dev, ptr %58, i32 0, i32 4
  call void @_raw_spin_lock_irq(ptr noundef %qps143) #14
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %db_state147 = getelementptr inbounds %struct.c4iw_dev, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %db_state147 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %db_state147, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp148.not = icmp eq i32 %62, 2
  br i1 %cmp148.not, label %deref_qps.exit.if.end170_crit_edge, label %do.end164, !prof !408

deref_qps.exit.if.end170_crit_edge:               ; preds = %deref_qps.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end170

do.end164:                                        ; preds = %deref_qps.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1465, i32 noundef 9, ptr noundef null) #14
  br label %if.end170

if.end170:                                        ; preds = %do.end164, %deref_qps.exit.if.end170_crit_edge
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %db_state179 = getelementptr inbounds %struct.c4iw_dev, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %db_state179 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3, ptr %db_state179, align 8
  %66 = load ptr, ptr %dev, align 4
  %qps181 = getelementptr inbounds %struct.c4iw_dev, ptr %66, i32 0, i32 4
  call void @_raw_spin_unlock_irq(ptr noundef %qps181) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end170, %if.then118, %pci_name.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qp_list) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_dbfifo_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @resume_rc_qp(ptr noundef %qp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %wq_pidx_inc = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 0, i32 16
  %0 = ptrtoint ptr %wq_pidx_inc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %wq_pidx_inc, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !416
  tail call void @arm_heavy_mb() #14
  %bar2_va.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 0, i32 6
  %2 = ptrtoint ptr %bar2_va.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar2_va.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body49.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %conv.i = zext i16 %1 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t4_ring_sq_db.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resume_rc_qp, %if.then30.i)) #14
          to label %do.body36.i [label %if.then30.i], !srcloc !409

if.then30.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %pidx32.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 0, i32 14
  %4 = ptrtoint ptr %pidx32.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pidx32.i, align 2
  %conv33.i = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t4_ring_sq_db.__UNIQUE_ID_ddebug663, ptr noundef nonnull @.str.160, i32 noundef %conv33.i) #14
  br label %do.body36.i

do.body36.i:                                      ; preds = %if.then30.i, %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !417
  tail call void @arm_heavy_mb() #14
  %bar2_qid40.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 0, i32 9
  %6 = ptrtoint ptr %bar2_qid40.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bar2_qid40.i, align 4
  %shl41.i = shl i32 %7, 15
  %or.i = or i32 %shl41.i, %conv.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %9 = ptrtoint ptr %bar2_va.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bar2_va.i, align 8
  %add.ptr44.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %8) #14, !srcloc !418
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !419
  tail call void @arm_heavy_mb() #14
  br label %t4_ring_sq_db.exit

do.body49.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !420
  tail call void @arm_heavy_mb() #14
  %qid.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 0, i32 10
  %11 = ptrtoint ptr %qid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qid.i, align 8
  %shl52.i = shl i32 %12, 15
  %conv53.i = zext i16 %1 to i32
  %or55.i = or i32 %shl52.i, %conv53.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %or55.i) #14
  %db.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %db.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #14, !srcloc !418
  br label %t4_ring_sq_db.exit

t4_ring_sq_db.exit:                               ; preds = %do.body49.i, %do.body36.i
  %16 = ptrtoint ptr %wq_pidx_inc to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %wq_pidx_inc, align 2
  %wq_pidx_inc7 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 17
  %17 = ptrtoint ptr %wq_pidx_inc7 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %wq_pidx_inc7, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !421
  tail call void @arm_heavy_mb() #14
  %bar2_va.i19 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 4
  %19 = ptrtoint ptr %bar2_va.i19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bar2_va.i19, align 8
  %tobool.not.i20 = icmp eq ptr %20, null
  br i1 %tobool.not.i20, label %do.body49.i36, label %if.then.i22

if.then.i22:                                      ; preds = %t4_ring_sq_db.exit
  %conv.i21 = zext i16 %18 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t4_ring_rq_db.__UNIQUE_ID_ddebug665, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resume_rc_qp, %if.then30.i25)) #14
          to label %do.body36.i30 [label %if.then30.i25], !srcloc !409

if.then30.i25:                                    ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #16
  %pidx32.i23 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 15
  %21 = ptrtoint ptr %pidx32.i23 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pidx32.i23, align 4
  %conv33.i24 = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t4_ring_rq_db.__UNIQUE_ID_ddebug665, ptr noundef nonnull @.str.165, i32 noundef %conv33.i24) #14
  br label %do.body36.i30

do.body36.i30:                                    ; preds = %if.then30.i25, %if.then.i22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !422
  tail call void @arm_heavy_mb() #14
  %bar2_qid40.i26 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 7
  %23 = ptrtoint ptr %bar2_qid40.i26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bar2_qid40.i26, align 4
  %shl41.i27 = shl i32 %24, 15
  %or.i28 = or i32 %shl41.i27, %conv.i21
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i28) #14
  %26 = ptrtoint ptr %bar2_va.i19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bar2_va.i19, align 8
  %add.ptr44.i29 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i29, i32 %25) #14, !srcloc !418
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !423
  tail call void @arm_heavy_mb() #14
  br label %t4_ring_rq_db.exit

do.body49.i36:                                    ; preds = %t4_ring_sq_db.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !424
  tail call void @arm_heavy_mb() #14
  %qid.i31 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 8
  %28 = ptrtoint ptr %qid.i31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qid.i31, align 8
  %shl52.i32 = shl i32 %29, 15
  %conv53.i33 = zext i16 %18 to i32
  %or55.i34 = or i32 %shl52.i32, %conv53.i33
  %30 = tail call i32 @llvm.bswap.i32(i32 %or55.i34) #14
  %db.i35 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %db.i35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %db.i35, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #14, !srcloc !418
  br label %t4_ring_rq_db.exit

t4_ring_rq_db.exit:                               ; preds = %do.body49.i36, %do.body36.i30
  %33 = ptrtoint ptr %wq_pidx_inc7 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %wq_pidx_inc7, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_flush_eq_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_qp_add_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @recover_lost_dbs(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %qp_list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qp_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp188.not = icmp eq i32 %1, 0
  br i1 %cmp188.not, label %entry.cleanup137_crit_edge, label %for.body.lr.ph

entry.cleanup137_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup137

for.body.lr.ph:                                   ; preds = %entry
  %qps = getelementptr inbounds %struct.qp_list, ptr %qp_list, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.0189 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %qps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qps, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %idx.0189
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %rhp = getelementptr inbounds %struct.c4iw_qp, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rhp, align 4
  %qps2 = getelementptr inbounds %struct.c4iw_dev, ptr %7, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %qps2) #14
  %lock = getelementptr inbounds %struct.c4iw_qp, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %8 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rhp, align 4
  %ports = getelementptr inbounds %struct.c4iw_dev, ptr %9, i32 0, i32 1, i32 8, i32 3
  %10 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ports, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %wq = getelementptr inbounds %struct.c4iw_qp, ptr %5, i32 0, i32 5
  %qid = getelementptr inbounds %struct.c4iw_qp, ptr %5, i32 0, i32 5, i32 0, i32 10
  %14 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qid, align 8
  %conv = trunc i32 %15 to i16
  %16 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wq, align 8
  %size.i = getelementptr inbounds %struct.c4iw_qp, ptr %5, i32 0, i32 5, i32 0, i32 12
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %size.i, align 2
  %idxprom.i = zext i16 %19 to i32
  %host_wq_pidx.i = getelementptr %union.t4_wr, ptr %17, i32 %idxprom.i, i32 0, i32 2
  %20 = ptrtoint ptr %host_wq_pidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %host_wq_pidx.i, align 8
  %mul.i = mul i16 %19, 5
  %call8 = tail call i32 @cxgb4_sync_txq_pidx(ptr noundef %13, i16 noundef zeroext %conv, i16 noundef zeroext %21, i16 noundef zeroext %mul.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  %qid.le = getelementptr inbounds %struct.c4iw_qp, ptr %5, i32 0, i32 5, i32 0, i32 10
  %lldi9 = getelementptr inbounds %struct.uld_ctx, ptr %ctx, i32 0, i32 1
  %22 = ptrtoint ptr %lldi9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lldi9, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44, i32 3
  %24 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %27, %if.end.i.i ], [ %25, %do.end.pci_name.exit_crit_edge ]
  %28 = ptrtoint ptr %qid.le to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qid.le, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %retval.0.i.i, i32 noundef %29) #18
  br label %cleanup137.sink.split

if.end:                                           ; preds = %for.body
  %wq_pidx_inc = getelementptr inbounds %struct.c4iw_qp, ptr %5, i32 0, i32 5, i32 0, i32 16
  %30 = ptrtoint ptr %wq_pidx_inc to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %wq_pidx_inc, align 2
  %31 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rhp, align 4
  %ports24 = getelementptr inbounds %struct.c4iw_dev, ptr %32, i32 0, i32 1, i32 8, i32 3
  %33 = ptrtoint ptr %ports24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ports24, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %qid27 = getelementptr inbounds %struct.c4iw_qp, ptr %5, i32 0, i32 5, i32 1, i32 8
  %37 = ptrtoint ptr %qid27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qid27, align 8
  %conv28 = trunc i32 %38 to i16
  %rq.i = getelementptr inbounds %struct.c4iw_qp, ptr %5, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rq.i, align 8
  %size.i170 = getelementptr inbounds %struct.c4iw_qp, ptr %5, i32 0, i32 5, i32 1, i32 13
  %41 = ptrtoint ptr %size.i170 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %size.i170, align 8
  %idxprom.i171 = zext i16 %42 to i32
  %host_wq_pidx.i172 = getelementptr %union.t4_recv_wr, ptr %40, i32 %idxprom.i171, i32 0, i32 2
  %43 = ptrtoint ptr %host_wq_pidx.i172 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %host_wq_pidx.i172, align 8
  %mul.i174 = shl i16 %42, 1
  %call33 = tail call i32 @cxgb4_sync_txq_pidx(ptr noundef %36, i16 noundef zeroext %conv28, i16 noundef zeroext %44, i16 noundef zeroext %mul.i174) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end51, label %do.end38

do.end38:                                         ; preds = %if.end
  %qid27.le = getelementptr inbounds %struct.c4iw_qp, ptr %5, i32 0, i32 5, i32 1, i32 8
  %lldi40 = getelementptr inbounds %struct.uld_ctx, ptr %ctx, i32 0, i32 1
  %45 = ptrtoint ptr %lldi40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lldi40, align 4
  %init_name.i.i175 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44, i32 3
  %47 = ptrtoint ptr %init_name.i.i175 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i175, align 8
  %tobool.not.i.i176 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i176, label %if.end.i.i178, label %do.end38.pci_name.exit180_crit_edge

do.end38.pci_name.exit180_crit_edge:              ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit180

if.end.i.i178:                                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i177 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %49 = ptrtoint ptr %dev.i177 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i177, align 4
  br label %pci_name.exit180

pci_name.exit180:                                 ; preds = %if.end.i.i178, %do.end38.pci_name.exit180_crit_edge
  %retval.0.i.i179 = phi ptr [ %50, %if.end.i.i178 ], [ %48, %do.end38.pci_name.exit180_crit_edge ]
  %51 = ptrtoint ptr %qid27.le to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qid27.le, align 8
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef %retval.0.i.i179, i32 noundef %52) #18
  br label %cleanup137.sink.split

if.end51:                                         ; preds = %if.end
  %wq_pidx_inc54 = getelementptr inbounds %struct.c4iw_qp, ptr %5, i32 0, i32 5, i32 1, i32 17
  %53 = ptrtoint ptr %wq_pidx_inc54 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %wq_pidx_inc54, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %54 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rhp, align 4
  %qps57 = getelementptr inbounds %struct.c4iw_dev, ptr %55, i32 0, i32 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %qps57) #14
  %56 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rhp, align 4
  %ports62184 = getelementptr inbounds %struct.c4iw_dev, ptr %57, i32 0, i32 1, i32 8, i32 3
  %58 = ptrtoint ptr %ports62184 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ports62184, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call64185 = tail call i32 @cxgb4_dbfifo_count(ptr noundef %61, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64185)
  %cmp65.not186 = icmp eq i32 %call64185, 0
  br i1 %cmp65.not186, label %if.end51.for.inc_crit_edge, label %if.end51.__here_crit_edge

if.end51.__here_crit_edge:                        ; preds = %if.end51
  br label %__here

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

__here:                                           ; preds = %__here.__here_crit_edge, %if.end51.__here_crit_edge
  %62 = tail call i32 @llvm.read_register.i32(metadata !395) #14
  %and.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 212
  %66 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 ptrtoint (ptr blockaddress(@recover_lost_dbs, %__here) to i32), ptr %task_state_change, align 4
  %67 = load ptr, ptr %task, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 2, ptr %67, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !425
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 10
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 1
  %call136 = tail call i32 @schedule_timeout(i32 noundef %spec.select.i) #14
  %69 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rhp, align 4
  %ports62 = getelementptr inbounds %struct.c4iw_dev, ptr %70, i32 0, i32 1, i32 8, i32 3
  %71 = ptrtoint ptr %ports62 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ports62, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %call64 = tail call i32 @cxgb4_dbfifo_count(ptr noundef %74, i32 noundef 1) #14
  %cmp65.not = icmp eq i32 %call64, 0
  br i1 %cmp65.not, label %__here.for.inc_crit_edge, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here.for.inc_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %__here.for.inc_crit_edge, %if.end51.for.inc_crit_edge
  %inc = add nuw i32 %idx.0189, 1
  %75 = ptrtoint ptr %qp_list to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %qp_list, align 4
  %cmp = icmp ult i32 %inc, %76
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup137_crit_edge

for.inc.cleanup137_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup137

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup137.sink.split:                            ; preds = %pci_name.exit180, %pci_name.exit
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %77 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rhp, align 4
  %qps17 = getelementptr inbounds %struct.c4iw_dev, ptr %78, i32 0, i32 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %qps17) #14
  br label %cleanup137

cleanup137:                                       ; preds = %cleanup137.sink.split, %for.inc.cleanup137_crit_edge, %entry.cleanup137_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_sync_txq_pidx(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_qp_rem_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !61, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !79, !80, !81, !82, !84, !86, !88, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !224, !225, !227, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !257, !258, !259, !261, !263, !264, !265, !266, !267, !268, !270, !272, !273, !274, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !342, !343, !345, !347, !349, !351, !353, !354, !355, !356, !358, !360, !361, !362, !363, !364, !366, !367, !368, !370, !371, !372, !373, !375, !376, !377, !379, !381, !382, !383, !384, !386, !387, !388, !389, !391, !392, !393}
!llvm.named.register.sp = !{!395}
!llvm.module.flags = !{!396, !397, !398, !399, !400, !401, !402, !403}
!llvm.ident = !{!404}

!0 = !{ptr @__UNIQUE_ID_author674, !1, !"__UNIQUE_ID_author674", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_description675, !3, !"__UNIQUE_ID_description675", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 45, i32 1}
!4 = !{ptr @__UNIQUE_ID_file676, !5, !"__UNIQUE_ID_file676", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 46, i32 1}
!6 = !{ptr @__UNIQUE_ID_license677, !5, !"__UNIQUE_ID_license677", i1 false, i1 false}
!7 = !{ptr @__param_allow_db_fc_on_t5, !8, !"__param_allow_db_fc_on_t5", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 49, i32 1}
!9 = !{ptr @__UNIQUE_ID_allow_db_fc_on_t5type678, !8, !"__UNIQUE_ID_allow_db_fc_on_t5type678", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_allow_db_fc_on_t5679, !11, !"__UNIQUE_ID_allow_db_fc_on_t5679", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 50, i32 1}
!12 = !{ptr @__param_allow_db_coalescing_on_t5, !13, !"__param_allow_db_coalescing_on_t5", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 54, i32 1}
!14 = !{ptr @__UNIQUE_ID_allow_db_coalescing_on_t5type680, !13, !"__UNIQUE_ID_allow_db_coalescing_on_t5type680", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_allow_db_coalescing_on_t5681, !16, !"__UNIQUE_ID_allow_db_coalescing_on_t5681", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 55, i32 1}
!17 = !{ptr @c4iw_wr_log, !18, !"c4iw_wr_log", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 58, i32 5}
!19 = !{ptr @__param_c4iw_wr_log, !20, !"__param_c4iw_wr_log", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 59, i32 1}
!21 = !{ptr @__UNIQUE_ID_c4iw_wr_logtype682, !20, !"__UNIQUE_ID_c4iw_wr_logtype682", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_c4iw_wr_log683, !23, !"__UNIQUE_ID_c4iw_wr_log683", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 60, i32 1}
!24 = !{ptr @__param_c4iw_wr_log_size_order, !25, !"__param_c4iw_wr_log_size_order", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 63, i32 1}
!26 = !{ptr @__UNIQUE_ID_c4iw_wr_log_size_ordertype684, !25, !"__UNIQUE_ID_c4iw_wr_log_size_ordertype684", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_c4iw_wr_log_size_order685, !28, !"__UNIQUE_ID_c4iw_wr_log_size_order685", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 64, i32 1}
!29 = !{ptr @c4iw_init_dev_ucontext.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 780, i32 2}
!31 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 939, i32 2}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1517, i32 2}
!36 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @_c4iw_free_wr_wait.__UNIQUE_ID_ddebug697, !35, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!39 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1528, i32 3}
!42 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @c4iw_alloc_wr_wait.__UNIQUE_ID_ddebug698, !41, !"__UNIQUE_ID_ddebug698", i1 false, i1 false}
!44 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__initcall__kmod_iw_cxgb4__699_1571_c4iw_init_module6, !46, !"__initcall__kmod_iw_cxgb4__699_1571_c4iw_init_module6", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1571, i32 1}
!47 = !{ptr @__exitcall_c4iw_exit_module, !48, !"__exitcall_c4iw_exit_module", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1572, i32 1}
!49 = !{ptr @allow_db_fc_on_t5, !50, !"allow_db_fc_on_t5", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 48, i32 12}
!51 = !{ptr @allow_db_coalescing_on_t5, !52, !"allow_db_coalescing_on_t5", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 53, i32 12}
!53 = !{ptr @reg_workq, !54, !"reg_workq", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 69, i32 33}
!55 = !{ptr @c4iw_debugfs_root, !56, !"c4iw_debugfs_root", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 75, i32 23}
!57 = !{ptr @__param_str_allow_db_fc_on_t5, !8, !"__param_str_allow_db_fc_on_t5", i1 false, i1 false}
!58 = !{ptr @__param_str_allow_db_coalescing_on_t5, !13, !"__param_str_allow_db_coalescing_on_t5", i1 false, i1 false}
!59 = !{ptr @__param_str_c4iw_wr_log, !20, !"__param_str_c4iw_wr_log", i1 false, i1 false}
!60 = !{ptr @__param_str_c4iw_wr_log_size_order, !25, !"__param_str_c4iw_wr_log_size_order", i1 false, i1 false}
!61 = !{ptr @c4iw_wr_log_size_order, !62, !"c4iw_wr_log_size_order", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 62, i32 12}
!63 = !{ptr @.str.9, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 68, i32 8}
!65 = !{ptr @.str.10, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dev_mutex, !64, !"dev_mutex", i1 false, i1 false}
!67 = !{ptr @uld_ctx_list, !68, !"uld_ctx_list", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 67, i32 8}
!69 = !{ptr @.str.11, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 955, i32 2}
!71 = !{ptr @.str.12, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @c4iw_remove.__UNIQUE_ID_ddebug688, !70, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!73 = !{ptr @.str.13, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.14, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1543, i32 14}
!76 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.16, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1545, i32 3}
!79 = !{ptr @.str.17, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @c4iw_init_module._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @c4iw_init_module._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @c4iw_uld_info, !83, !"c4iw_uld_info", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1499, i32 30}
!84 = !{ptr @c4iw_uld_add.vers_printed, !85, !"vers_printed", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1075, i32 13}
!86 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1079, i32 3}
!88 = !{ptr @.str.19, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @c4iw_uld_add._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @c4iw_uld_add._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.20, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.21, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1089, i32 2}
!94 = !{ptr @c4iw_uld_add.__UNIQUE_ID_ddebug691, !93, !"__UNIQUE_ID_ddebug691", i1 false, i1 false}
!95 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.23, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1099, i32 3}
!98 = !{ptr @c4iw_uld_add.__UNIQUE_ID_ddebug692, !97, !"__UNIQUE_ID_ddebug692", i1 false, i1 false}
!99 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.25, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1193, i32 3}
!102 = !{ptr @.str.26, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @c4iw_uld_rx_handler._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @c4iw_uld_rx_handler._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.28, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1210, i32 3}
!107 = !{ptr @c4iw_uld_rx_handler._entry.27, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @c4iw_uld_rx_handler._entry_ptr.29, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.30, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1156, i32 3}
!111 = !{ptr @recv_rx_pkt._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @recv_rx_pkt._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.31, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1223, i32 2}
!115 = !{ptr @.str.32, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @c4iw_uld_state_change.__UNIQUE_ID_ddebug693, !114, !"__UNIQUE_ID_ddebug693", i1 false, i1 false}
!117 = !{ptr @.str.33, !114, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.34, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1226, i32 3}
!120 = !{ptr @c4iw_uld_state_change._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @c4iw_uld_state_change._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.36, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1230, i32 5}
!124 = !{ptr @c4iw_uld_state_change._entry.35, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @c4iw_uld_state_change._entry_ptr.37, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @c4iw_uld_state_change.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1237, i32 4}
!128 = !{ptr @.str.38, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.40, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1242, i32 3}
!131 = !{ptr @c4iw_uld_state_change._entry.39, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @c4iw_uld_state_change._entry_ptr.41, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.43, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1248, i32 3}
!135 = !{ptr @c4iw_uld_state_change._entry.42, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @c4iw_uld_state_change._entry_ptr.44, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1260, i32 3}
!139 = !{ptr @c4iw_uld_state_change._entry.45, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @c4iw_uld_state_change._entry_ptr.47, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.48, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 974, i32 3}
!143 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @c4iw_alloc._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @c4iw_alloc._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.51, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 979, i32 3}
!148 = !{ptr @c4iw_alloc._entry.50, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @c4iw_alloc._entry_ptr.52, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 984, i32 3}
!152 = !{ptr @c4iw_alloc._entry.53, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @c4iw_alloc._entry_ptr.55, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.56, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 990, i32 2}
!156 = !{ptr @c4iw_alloc.__UNIQUE_ID_ddebug689, !155, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!157 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1020, i32 4}
!160 = !{ptr @c4iw_alloc._entry.58, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @c4iw_alloc._entry_ptr.60, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.62, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1032, i32 4}
!164 = !{ptr @c4iw_alloc._entry.61, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @c4iw_alloc._entry_ptr.63, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.64, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1038, i32 2}
!168 = !{ptr @c4iw_alloc.__UNIQUE_ID_ddebug690, !167, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!169 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1044, i32 3}
!172 = !{ptr @c4iw_alloc._entry.66, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @c4iw_alloc._entry_ptr.68, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @c4iw_alloc.__key, !175, !"__key", i1 false, i1 false}
!175 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1055, i32 2}
!176 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @c4iw_alloc.__key.70, !178, !"__key", i1 false, i1 false}
!178 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1056, i32 2}
!179 = !{ptr @.str.71, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @c4iw_alloc.__key.72, !181, !"__key", i1 false, i1 false}
!181 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1058, i32 2}
!182 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.74, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 797, i32 3}
!185 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @c4iw_rdev_open._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @c4iw_rdev_open._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.77, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 804, i32 3}
!190 = !{ptr @c4iw_rdev_open._entry.76, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @c4iw_rdev_open._entry_ptr.78, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.80, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 813, i32 3}
!194 = !{ptr @c4iw_rdev_open._entry.79, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @c4iw_rdev_open._entry_ptr.81, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.82, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 823, i32 2}
!198 = !{ptr @c4iw_rdev_open.__UNIQUE_ID_ddebug686, !197, !"__UNIQUE_ID_ddebug686", i1 false, i1 false}
!199 = !{ptr @.str.83, !197, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 834, i32 2}
!202 = !{ptr @c4iw_rdev_open.__UNIQUE_ID_ddebug687, !201, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!203 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.87, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 853, i32 3}
!206 = !{ptr @c4iw_rdev_open._entry.86, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @c4iw_rdev_open._entry_ptr.88, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.90, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 858, i32 3}
!210 = !{ptr @c4iw_rdev_open._entry.89, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @c4iw_rdev_open._entry_ptr.91, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.93, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 863, i32 3}
!214 = !{ptr @c4iw_rdev_open._entry.92, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @c4iw_rdev_open._entry_ptr.94, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 868, i32 3}
!218 = !{ptr @c4iw_rdev_open._entry.95, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @c4iw_rdev_open._entry_ptr.97, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.98, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 893, i32 21}
!222 = !{ptr @init_completion.__key, !223, !"__key", i1 false, i1 false}
!223 = !{!"../include/linux/completion.h", i32 87, i32 2}
!224 = !{ptr @.str.99, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @xa_init_flags.__key, !226, !"__key", i1 false, i1 false}
!226 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!227 = !{ptr @.str.100, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.101, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 730, i32 27}
!230 = !{ptr @.str.102, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 733, i32 27}
!232 = !{ptr @.str.103, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 736, i32 27}
!234 = !{ptr @.str.104, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 739, i32 27}
!236 = !{ptr @.str.105, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 743, i32 28}
!238 = !{ptr @qp_debugfs_fops, !239, !"qp_debugfs_fops", i1 false, i1 false}
!239 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 364, i32 37}
!240 = !{ptr @.str.106, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 268, i32 11}
!242 = !{ptr @.str.107, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 271, i32 36}
!244 = !{ptr @.str.108, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 271, i32 44}
!246 = !{ptr @.str.109, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 289, i32 11}
!248 = !{ptr @.str.110, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 305, i32 9}
!250 = !{ptr @zero_sin, !251, !"zero_sin", i1 false, i1 false}
!251 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 199, i32 27}
!252 = !{ptr @zero_sin6, !253, !"zero_sin6", i1 false, i1 false}
!253 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 203, i32 28}
!254 = !{ptr @.str.111, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 318, i32 3}
!256 = !{ptr @.str.112, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @qp_release._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @qp_release._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @stag_debugfs_fops, !260, !"stag_debugfs_fops", i1 false, i1 false}
!260 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 459, i32 37}
!261 = !{ptr @.str.113, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 386, i32 3}
!263 = !{ptr @.str.114, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.115, !262, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.116, !262, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @dump_stag._entry, !262, !"_entry", i1 false, i1 false}
!267 = !{ptr @dump_stag._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.117, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 391, i32 9}
!270 = !{ptr @.str.118, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 411, i32 3}
!272 = !{ptr @.str.119, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @stag_release._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @stag_release._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @stats_debugfs_fops, !276, !"stats_debugfs_fops", i1 false, i1 false}
!276 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 549, i32 37}
!277 = !{ptr @.str.120, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 473, i32 18}
!279 = !{ptr @.str.121, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 473, i32 54}
!281 = !{ptr @.str.122, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 473, i32 63}
!283 = !{ptr @.str.123, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 474, i32 6}
!285 = !{ptr @.str.124, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 474, i32 13}
!287 = !{ptr @.str.125, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 475, i32 18}
!289 = !{ptr @.str.126, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 478, i32 18}
!291 = !{ptr @.str.127, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 481, i32 18}
!293 = !{ptr @.str.128, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 484, i32 18}
!295 = !{ptr @.str.129, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 487, i32 18}
!297 = !{ptr @.str.130, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 490, i32 18}
!299 = !{ptr @.str.131, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 493, i32 18}
!301 = !{ptr @.str.132, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 496, i32 18}
!303 = !{ptr @.str.133, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 497, i32 18}
!305 = !{ptr @.str.134, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 498, i32 18}
!307 = !{ptr @.str.135, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 499, i32 18}
!309 = !{ptr @.str.136, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 503, i32 18}
!311 = !{ptr @.str.137, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 504, i32 18}
!313 = !{ptr @.str.138, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 506, i32 18}
!315 = !{ptr @.str.139, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 508, i32 18}
!317 = !{ptr @.str.140, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 509, i32 18}
!319 = !{ptr @.str.141, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 467, i32 32}
!321 = !{ptr @.str.142, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 467, i32 42}
!323 = !{ptr @.str.143, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 467, i32 58}
!325 = !{ptr @.str.144, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 467, i32 70}
!327 = !{ptr @db_state_str, !328, !"db_state_str", i1 false, i1 false}
!328 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 467, i32 14}
!329 = !{ptr @ep_debugfs_fops, !330, !"ep_debugfs_fops", i1 false, i1 false}
!330 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 721, i32 37}
!331 = !{ptr @.str.145, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 575, i32 10}
!333 = !{ptr @.str.146, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 596, i32 10}
!335 = !{ptr @.str.147, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 632, i32 10}
!337 = !{ptr @.str.148, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 645, i32 10}
!339 = !{ptr @.str.149, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 661, i32 3}
!341 = !{ptr @ep_release._entry, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @ep_release._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @wr_log_debugfs_fops, !344, !"wr_log_debugfs_fops", i1 false, i1 false}
!344 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 190, i32 37}
!345 = !{ptr @.str.150, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 144, i32 20}
!347 = !{ptr @.str.151, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 154, i32 8}
!349 = !{ptr @.str.152, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 154, i32 16}
!351 = !{ptr @.str.153, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1492, i32 3}
!353 = !{ptr @.str.154, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @c4iw_uld_control._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @c4iw_uld_control._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = distinct !{null, !357, !"__already_done", i1 false, i1 false}
!357 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1340, i32 6}
!358 = !{ptr @.str.155, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 608, i32 4}
!360 = !{ptr @.str.156, !359, !"<string literal>", i1 false, i1 false}
!361 = distinct !{null, !359, !"<string literal>", i1 false, i1 false}
!362 = distinct !{null, !359, !"__UNIQUE_ID_ddebug662", i1 false, i1 false}
!363 = distinct !{null, !359, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @.str.159, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 613, i32 4}
!366 = !{ptr @t4_ring_sq_db.__UNIQUE_ID_ddebug663, !365, !"__UNIQUE_ID_ddebug663", i1 false, i1 false}
!367 = !{ptr @.str.160, !365, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @.str.161, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 633, i32 4}
!370 = distinct !{null, !369, !"<string literal>", i1 false, i1 false}
!371 = distinct !{null, !369, !"__UNIQUE_ID_ddebug664", i1 false, i1 false}
!372 = distinct !{null, !369, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.164, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 638, i32 4}
!375 = !{ptr @t4_ring_rq_db.__UNIQUE_ID_ddebug665, !374, !"__UNIQUE_ID_ddebug665", i1 false, i1 false}
!376 = !{ptr @.str.165, !374, !"<string literal>", i1 false, i1 false}
!377 = distinct !{null, !378, !"__already_done", i1 false, i1 false}
!378 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1424, i32 2}
!379 = !{ptr @.str.166, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1430, i32 3}
!381 = !{ptr @.str.167, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @recover_queues._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @recover_queues._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.168, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1383, i32 4}
!386 = !{ptr @.str.169, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @recover_lost_dbs._entry, !385, !"_entry", i1 false, i1 false}
!388 = !{ptr @recover_lost_dbs._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.171, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1397, i32 4}
!391 = !{ptr @recover_lost_dbs._entry.170, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @recover_lost_dbs._entry_ptr.172, !390, !"_entry_ptr", i1 false, i1 false}
!393 = distinct !{null, !394, !"__already_done", i1 false, i1 false}
!394 = !{!"../drivers/infiniband/hw/cxgb4/device.c", i32 1409, i32 4}
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
!405 = !{i64 2148467206}
!406 = !{i64 2148382491, i64 2148382523, i64 2148382552, i64 2148382586, i64 2148382617, i64 2148382640}
!407 = !{i64 2148467435}
!408 = !{!"branch_weights", i32 2000, i32 1}
!409 = !{i64 2148995148, i64 2148995153, i64 2148995166, i64 2148995210, i64 2148995244, i64 2148995265}
!410 = !{i64 2154879665, i64 2154880153, i64 2154879702, i64 2154879758, i64 2154879792, i64 2154879816, i64 2154879857, i64 2154879878, i64 2154879906, i64 2154879940}
!411 = !{!"branch_weights", i32 1, i32 2000}
!412 = !{!"auto-init"}
!413 = !{i8 0, i8 2}
!414 = !{i64 2160956066}
!415 = !{i64 2160970152}
!416 = !{i64 2160766347}
!417 = !{i64 2160771227}
!418 = !{i64 6608703}
!419 = !{i64 2160771680}
!420 = !{i64 2160771972}
!421 = !{i64 2160772567}
!422 = !{i64 2160777447}
!423 = !{i64 2160777900}
!424 = !{i64 2160778192}
!425 = !{i64 2160965410}
