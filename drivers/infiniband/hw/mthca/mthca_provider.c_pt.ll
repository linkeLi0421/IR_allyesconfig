; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_provider.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_provider.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ib_smp = type { i8, i8, i8, i8, i16, i8, i8, i64, i16, i16, i32, i64, i16, i16, [28 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.173, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.173 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mthca_dev = type { %struct.ib_device, ptr, i32, i32, i32, i32, [64 x i8], i64, %union.anon.186, i64, i64, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, %union.anon.189, %struct.mthca_cmd, %struct.mthca_limits, %struct.mthca_uar_table, %struct.mthca_pd_table, %struct.mthca_mr_table, %struct.mthca_eq_table, %struct.mthca_cq_table, %struct.mthca_srq_table, %struct.mthca_qp_table, %struct.mthca_av_table, %struct.mthca_mcg_table, %struct.mthca_catas_err, %struct.mthca_uar, ptr, %struct.mthca_pd, %struct.mthca_mr, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x i8], i8 }
%union.anon.186 = type { %struct.anon.188 }
%struct.anon.188 = type { i64, i64, i64, ptr, ptr, i16 }
%union.anon.189 = type { %struct.anon.191 }
%struct.anon.191 = type { ptr, ptr }
%struct.mthca_cmd = type { ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, i32, %struct.spinlock, i32, ptr, i16, i32, ptr, [8 x i16] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mthca_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.mthca_uar_table = type { %struct.mthca_alloc, i64, i32 }
%struct.mthca_alloc = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.mthca_pd_table = type { %struct.mthca_alloc }
%struct.mthca_mr_table = type { %struct.mthca_alloc, %struct.mthca_buddy, ptr, i64, i64, ptr, ptr, %struct.anon.192 }
%struct.mthca_buddy = type { ptr, ptr, i32, %struct.spinlock }
%struct.anon.192 = type { ptr, ptr, %struct.mthca_buddy }
%struct.mthca_eq_table = type { %struct.mthca_alloc, ptr, i32, i32, [3 x %struct.mthca_eq], i64, ptr, i32, i32, i8 }
%struct.mthca_eq = type { ptr, i32, i32, i32, i16, i16, i32, i32, ptr, %struct.mthca_mr, [64 x i8] }
%struct.mthca_cq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_array = type { ptr }
%struct.mthca_srq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_qp_table = type { %struct.mthca_alloc, i32, i32, i32, %struct.spinlock, %struct.mthca_array, ptr, ptr, ptr }
%struct.mthca_av_table = type { ptr, i32, i64, ptr, %struct.mthca_alloc }
%struct.mthca_mcg_table = type { %struct.mutex, %struct.mthca_alloc, ptr }
%struct.mthca_catas_err = type { i64, ptr, i32, %struct.timer_list, %struct.list_head }
%struct.mthca_uar = type { i32, i32 }
%struct.mthca_pd = type { %struct.ib_pd, i32, %struct.atomic_t, %struct.mthca_mr, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mthca_mr = type { %struct.ib_mr, ptr, ptr }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.127, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.127 = type { %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.185, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.185 = type { ptr }
%struct.mthca_create_srq = type { i32, i32, i64 }
%struct.ib_srq_init_attr = type { ptr, ptr, %struct.ib_srq_attr, i32, %struct.anon.164 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.anon.164 = type { ptr, %union.anon.165 }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { ptr }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.168 }
%union.anon.168 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.169, i16, i16, i8 }
%union.anon.169 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mthca_ucontext = type { %struct.ib_ucontext, %struct.mthca_uar, ptr, i32 }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.mthca_srq = type { %struct.ib_srq, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i16, i32, ptr, ptr, i32, ptr, %union.mthca_buf, %struct.mthca_mr, %struct.wait_queue_head, %struct.mutex }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.130, %struct.rdma_restrack_entry }
%struct.anon.130 = type { ptr, %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, i32 }
%union.mthca_buf = type { %struct.mthca_buf_list }
%struct.mthca_buf_list = type { ptr, i32 }
%struct.ib_device_modify = type { i64, [64 x i8] }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.mthca_set_ib_param = type { i32, i32, i64, i32 }
%struct.ib_port_modify = type { i32, i32, i8 }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.mthca_alloc_ucontext_resp = type { i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.mthca_create_qp = type { i32, i32, i64, i64, i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.mthca_qp = type { %struct.ib_qp, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.mthca_mr, %struct.mthca_wq, %struct.mthca_wq, i32, i32, i32, ptr, %union.mthca_buf, %struct.wait_queue_head, %struct.mutex, ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.mthca_wq = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr }
%struct.mthca_create_cq = type { i32, i32, i64, i64, i32, i32 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.mthca_cq = type { %struct.ib_cq, %struct.spinlock, i32, i32, i32, %struct.mthca_cq_buf, ptr, i32, i32, ptr, i32, ptr, i32, %struct.wait_queue_head, %struct.mutex }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.139, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.139 = type { %struct.work_struct }
%struct.mthca_cq_buf = type { %union.mthca_buf, %struct.mthca_mr, i32 }
%struct.mthca_resize_cq = type { i32, i32 }
%struct.mthca_cq_resize = type { %struct.mthca_cq_buf, i32, i32 }
%struct.ib_block_iter = type { ptr, i32, i32, i32, i32 }
%struct.mthca_reg_mr = type { i32, i32 }
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
%struct.rb_root = type { ptr }
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
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }

@mthca_dev_arbel_srq_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mthca_arbel_post_srq_recv, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mthca_create_srq, ptr @mthca_modify_srq, ptr @mthca_query_srq, ptr @mthca_destroy_srq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 528, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@mthca_dev_tavor_srq_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mthca_tavor_post_srq_recv, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mthca_create_srq, ptr @mthca_modify_srq, ptr @mthca_query_srq, ptr @mthca_destroy_srq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 528, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@mthca_dev_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 5, i32 1, i8 -128, ptr @mthca_attr_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mthca_poll_cq, ptr null, ptr null, ptr null, ptr @mthca_process_mad, ptr @mthca_query_device, ptr @mthca_modify_device, ptr @get_dev_fw_str, ptr null, ptr @mthca_query_port, ptr @mthca_modify_port, ptr @mthca_port_immutable, ptr null, ptr null, ptr null, ptr null, ptr @mthca_query_gid, ptr null, ptr null, ptr @mthca_query_pkey, ptr @mthca_alloc_ucontext, ptr @mthca_dealloc_ucontext, ptr @mthca_mmap_uar, ptr null, ptr null, ptr @mthca_alloc_pd, ptr @mthca_dealloc_pd, ptr @mthca_ah_create, ptr null, ptr null, ptr @mthca_ah_query, ptr @mthca_ah_destroy, ptr null, ptr null, ptr null, ptr null, ptr @mthca_create_qp, ptr @mthca_modify_qp, ptr @mthca_query_qp, ptr @mthca_destroy_qp, ptr @mthca_create_cq, ptr null, ptr @mthca_destroy_cq, ptr @mthca_resize_cq, ptr @mthca_get_dma_mr, ptr @mthca_reg_user_mr, ptr null, ptr null, ptr @mthca_dereg_mr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mthca_multicast_attach, ptr @mthca_multicast_detach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 36, i32 0, i32 608, i32 0, i32 280, i32 768, i32 0, i32 0, i32 164, i32 0 }, [148 x i8] zeroinitializer }, align 32
@mthca_dev_arbel_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr @mthca_arbel_post_send, ptr @mthca_arbel_post_receive, ptr null, ptr null, ptr null, ptr null, ptr @mthca_arbel_arm_cq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@mthca_dev_tavor_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr @mthca_tavor_post_send, ptr @mthca_tavor_post_receive, ptr null, ptr null, ptr null, ptr null, ptr @mthca_tavor_arm_cq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@mthca_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dev->cap_mask_mutex\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mthca%d\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mthca_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mthca_dev_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@mthca_dev_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_hw_rev, ptr @dev_attr_hca_type, ptr @dev_attr_board_id, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_hw_rev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hw_rev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hca_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hca_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_board_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @board_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hw_rev\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hca_type\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MT23108\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MT25208 (MT23108 compat mode)\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MT25208\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MT25204\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"board_id\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@mthca_reg_user_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 843, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Process '%s' did not pass in MR attrs.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mthca_reg_user_mr\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/infiniband/hw/mthca/mthca_provider.c\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mthca_reg_user_mr._entry_ptr = internal global ptr @mthca_reg_user_mr._entry, section ".printk_index", align 4
@mthca_reg_user_mr._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.19, i32 844, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"  Update libmthca to fix this.\0A\00", [32 x i8] zeroinitializer }, align 32
@mthca_reg_user_mr._entry_ptr.24 = internal global ptr @mthca_reg_user_mr._entry.22, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 16, i64 23108, i64 24204, i64 25204, i64 25208, i64 25218]
@___asan_gen_.26 = private unnamed_addr constant [24 x i8] c"mthca_dev_arbel_srq_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1102, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"mthca_dev_tavor_srq_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1112, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"mthca_dev_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1057, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"mthca_dev_arbel_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1122, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"mthca_dev_tavor_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1128, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1163, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1165, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 230, i32 6 }
@___asan_gen_.54 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 214, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 156, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"mthca_attr_group\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 986, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"mthca_dev_attributes\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 979, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"dev_attr_hw_rev\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"dev_attr_hca_type\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"dev_attr_board_id\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 940, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 938, i32 25 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 967, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 965, i32 25 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 946, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 948, i32 10 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 950, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 953, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 956, i32 9 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 977, i32 8 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 975, i32 25 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1051, i32 40 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 842, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [48 x i8] c"../drivers/infiniband/hw/mthca/mthca_provider.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 844, i32 4 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @mthca_reg_user_mr._entry, ptr @mthca_reg_user_mr._entry.22, ptr @mthca_reg_user_mr._entry_ptr, ptr @mthca_reg_user_mr._entry_ptr.24, ptr @mthca_dev_arbel_srq_ops, ptr @mthca_dev_tavor_srq_ops, ptr @mthca_dev_ops, ptr @mthca_dev_arbel_ops, ptr @mthca_dev_tavor_ops, ptr @mthca_register_device.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mthca_attr_group, ptr @mthca_dev_attributes, ptr @dev_attr_hw_rev, ptr @dev_attr_hca_type, ptr @dev_attr_board_id, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_dev_arbel_srq_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_dev_tavor_srq_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_dev_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_dev_arbel_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_dev_tavor_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_dev_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hw_rev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hca_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_board_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reg_user_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_reg_user_mr._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_register_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %entry.mthca_init_node_data.exit_crit_edge, label %if.end.i

entry.mthca_init_node_data.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mthca_init_node_data.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i.i, align 8
  %attr_id.i = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 16, ptr %attr_id.i, align 8
  %call3.i = tail call i32 @mthca_MAD_IFC(ptr noundef %dev, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.mthca_init_node_data.exit_crit_edge

if.end.i.mthca_init_node_data.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mthca_init_node_data.exit

if.end6.i:                                        ; preds = %if.end.i
  %node_desc.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 16
  %data.i = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15
  %4 = call ptr @memcpy(ptr %node_desc.i, ptr %data.i, i32 64)
  %5 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 17, ptr %attr_id.i, align 8
  %call9.i = tail call i32 @mthca_MAD_IFC(ptr noundef %dev, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end6.i.mthca_init_node_data.exit_crit_edge

if.end6.i.mthca_init_node_data.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mthca_init_node_data.exit

if.end12.i:                                       ; preds = %if.end6.i
  %mthca_flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool14.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end19.i_crit_edge, label %if.then15.i

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 32
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 8
  %rev_id.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %rev_id.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rev_id.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end19.i_crit_edge
  %node_guid.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 17
  %add.ptr23.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 12
  %11 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %add.ptr23.i, align 4
  %13 = ptrtoint ptr %node_guid.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %node_guid.i, align 8
  br label %mthca_init_node_data.exit

mthca_init_node_data.exit:                        ; preds = %if.end19.i, %if.end6.i.mthca_init_node_data.exit_crit_edge, %if.end.i.mthca_init_node_data.exit_crit_edge, %entry.mthca_init_node_data.exit_crit_edge
  %err.0.i = phi i32 [ %call3.i, %if.end.i.mthca_init_node_data.exit_crit_edge ], [ %call9.i, %if.end6.i.mthca_init_node_data.exit_crit_edge ], [ 0, %if.end19.i ], [ -12, %entry.mthca_init_node_data.exit_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i.i) #10
  tail call void @kfree(ptr noundef %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool.not, label %if.end, label %mthca_init_node_data.exit.cleanup_crit_edge

mthca_init_node_data.exit.cleanup_crit_edge:      ; preds = %mthca_init_node_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %mthca_init_node_data.exit
  %node_type = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 20
  %14 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %node_type, align 1
  %limits = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18
  %15 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %limits, align 8
  %phys_port_cnt = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 21
  %17 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %phys_port_cnt, align 8
  %num_comp_vectors = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 12
  %18 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %num_comp_vectors, align 4
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %parent = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev3, ptr %parent, align 8
  %mthca_flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %22 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mthca_flags, align 8
  %and = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not = icmp eq i32 %and.i, 0
  %mthca_dev_tavor_srq_ops.mthca_dev_arbel_srq_ops = select i1 %tobool8.not, ptr @mthca_dev_tavor_srq_ops, ptr @mthca_dev_arbel_srq_ops
  tail call void @ib_set_device_ops(ptr noundef %dev, ptr noundef nonnull %mthca_dev_tavor_srq_ops.mthca_dev_arbel_srq_ops) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.end.if.end13_crit_edge
  tail call void @ib_set_device_ops(ptr noundef %dev, ptr noundef nonnull @mthca_dev_ops) #10
  %24 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mthca_flags, align 8
  %and.i51 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool16.not = icmp eq i32 %and.i51, 0
  %mthca_dev_tavor_ops.mthca_dev_arbel_ops = select i1 %tobool16.not, ptr @mthca_dev_tavor_ops, ptr @mthca_dev_arbel_ops
  tail call void @ib_set_device_ops(ptr noundef %dev, ptr noundef nonnull %mthca_dev_tavor_ops.mthca_dev_arbel_ops) #10
  %cap_mask_mutex = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %cap_mask_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @mthca_register_device.__key) #10
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %call25 = tail call i32 @ib_register_device(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %dev24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mthca_start_catas_poll(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end13.cleanup_crit_edge, %mthca_init_node_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ %err.0.i, %mthca_init_node_data.exit.cleanup_crit_edge ], [ %call25, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_device_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_start_catas_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_unregister_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mthca_stop_catas_poll(ptr noundef %dev) #10
  tail call void @ib_unregister_device(ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_stop_catas_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_MAD_IFC(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_arbel_post_srq_recv(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_create_srq(ptr noundef %ibsrq, ptr noundef %init_attr, ptr noundef %udata) #0 align 64 {
entry:
  %ucmd = alloca %struct.mthca_create_srq, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ucmd) #10
  %0 = getelementptr inbounds %struct.mthca_create_srq, ptr %ucmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mthca_create_srq, ptr %ucmd, i32 0, i32 2
  %tobool.not = icmp eq ptr %udata, null
  %2 = call ptr @memset(ptr %ucmd, i32 255, i32 16)
  br i1 %tobool.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %entry
  %srq_type = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 3
  %3 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %srq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %cond.end.if.end17_crit_edge, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end.if.end17_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

cond.end.thread:                                  ; preds = %entry
  %context1 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %5 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context1, align 4
  %srq_type79 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 3
  %7 = ptrtoint ptr %srq_type79 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %srq_type79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not80 = icmp eq i32 %8, 0
  br i1 %cmp.not80, label %if.then4, label %cond.end.thread.cleanup_crit_edge

cond.end.thread.cleanup_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %cond.end.thread
  %9 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.then4.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then4.if.then11.i.i.i_crit_edge:               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then4
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 16, i32 -1226833920) #14, !srcloc !75
  %asmresult.i.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !76

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd, i32 noundef 16) #10
  %12 = call i32 @llvm.read_register.i32(metadata !65) #10
  %and.i.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !77
  %and.i.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd, ptr noundef %10, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end8, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !76

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then4.if.then11.i.i.i_crit_edge
  %res.0.i.i.i88 = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %if.then4.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.0.i.i.i88
  %add.ptr.i.i.i = getelementptr i8, ptr %ucmd, i32 %sub.i.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i88)
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.i.i
  %16 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ibsrq, align 4
  %uar = getelementptr inbounds %struct.mthca_ucontext, ptr %6, i32 0, i32 1
  %db_tab = getelementptr inbounds %struct.mthca_ucontext, ptr %6, i32 0, i32 2
  %18 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %db_tab, align 4
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %1, align 8
  %call10 = call i32 @mthca_map_user_db(ptr noundef %17, ptr noundef %uar, ptr noundef %19, i32 noundef %21, i64 noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %ucmd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ucmd, align 8
  %lkey14 = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 16, i32 0, i32 2
  %26 = ptrtoint ptr %lkey14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %lkey14, align 8
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %0, align 4
  %db_index16 = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 10
  %29 = ptrtoint ptr %db_index16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %db_index16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %cond.end.if.end17_crit_edge
  %cond82 = phi ptr [ %6, %if.end13 ], [ null, %cond.end.if.end17_crit_edge ]
  %30 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ibsrq, align 4
  %pd = getelementptr inbounds %struct.ib_srq, ptr %ibsrq, i32 0, i32 1
  %32 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pd, align 4
  %attr = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 2
  %call21 = call i32 @mthca_alloc_srq(ptr noundef %31, ptr noundef %33, ptr noundef %attr, ptr noundef %ibsrq, ptr noundef %udata) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  %brmerge = or i1 %tobool.not, %tobool22.not
  br i1 %brmerge, label %if.end17.if.end30_crit_edge, label %if.then24

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ibsrq, align 4
  %uar27 = getelementptr inbounds %struct.mthca_ucontext, ptr %cond82, i32 0, i32 1
  %db_tab28 = getelementptr inbounds %struct.mthca_ucontext, ptr %cond82, i32 0, i32 2
  %36 = ptrtoint ptr %db_tab28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %db_tab28, align 4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %0, align 4
  call void @mthca_unmap_user_db(ptr noundef %35, ptr noundef %uar27, ptr noundef %37, i32 noundef %39) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end17.if.end30_crit_edge
  br i1 %tobool22.not, label %if.end33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %tobool34.not = icmp eq ptr %cond82, null
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %land.lhs.true35

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true35:                                  ; preds = %if.end33
  %srqn = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 3
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %40 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %outbuf.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #10
  %call.i.i.i73 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i73, label %land.lhs.true35.if.then38_crit_edge, label %if.end.i.i.i76

land.lhs.true35.if.then38_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

if.end.i.i.i76:                                   ; preds = %land.lhs.true35
  %42 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %41, i32 4, i32 -1226833920) #14, !srcloc !80
  %asmresult.i.i.i74 = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i74)
  %cmp.i6.i.i75 = icmp eq i32 %asmresult.i.i.i74, 0
  br i1 %cmp.i6.i.i75, label %copy_to_user.exit.i, label %if.end.i.i.i76.if.then38_crit_edge

if.end.i.i.i76.if.then38_crit_edge:               ; preds = %if.end.i.i.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i76
  %call.i.i.i.i77 = call zeroext i1 @__kasan_check_read(ptr noundef %srqn, i32 noundef 4) #10
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %41, ptr noundef %srqn, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.i.cleanup_crit_edge, label %copy_to_user.exit.i.if.then38_crit_edge

copy_to_user.exit.i.if.then38_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

copy_to_user.exit.i.cleanup_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then38:                                        ; preds = %copy_to_user.exit.i.if.then38_crit_edge, %if.end.i.i.i76.if.then38_crit_edge, %land.lhs.true35.if.then38_crit_edge
  %43 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ibsrq, align 4
  call void @mthca_free_srq(ptr noundef %44, ptr noundef %ibsrq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %copy_to_user.exit.i.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then11.i.i.i, %cond.end.thread.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then38 ], [ -95, %cond.end.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call21, %if.end30.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ -95, %cond.end.thread.cleanup_crit_edge ], [ 0, %copy_to_user.exit.i.cleanup_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_modify_srq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_query_srq(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_destroy_srq(ptr noundef %srq, ptr noundef readonly %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %cond.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %context2 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %0 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context2, align 4
  %2 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srq, align 4
  %uar = getelementptr inbounds %struct.mthca_ucontext, ptr %1, i32 0, i32 1
  %db_tab = getelementptr inbounds %struct.mthca_ucontext, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %db_tab, align 4
  %db_index = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 10
  %6 = ptrtoint ptr %db_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %db_index, align 8
  tail call void @mthca_unmap_user_db(ptr noundef %3, ptr noundef %uar, ptr noundef %5, i32 noundef %7) #10
  br label %if.end

if.end:                                           ; preds = %cond.true, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %srq, align 4
  tail call void @mthca_free_srq(ptr noundef %9, ptr noundef %srq) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_map_user_db(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc_srq(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_unmap_user_db(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_copy_to_udata(ptr nocapture noundef readonly %udata, ptr noundef %src, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %outbuf = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outbuf, align 4
  tail call void @__check_object_size(ptr noundef %src, i32 noundef %len, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %len, i32 -1226833920) #14, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef %len) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %src, i32 noundef %len) #10
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %n.addr.0.i = phi i32 [ %len, %entry.copy_to_user.exit.thread_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %len, %if.end.i.i.copy_to_user.exit.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_srq(ptr noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_tavor_post_srq_recv(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_poll_cq(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_process_mad(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_query_device(ptr noundef %ibdev, ptr noundef %props, ptr nocapture noundef readonly %uhw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %uhw, i32 0, i32 2
  %0 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %uhw, i32 0, i32 3
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 256) #13
  %tobool4.not = icmp eq ptr %call7.i.i, null
  %tobool6.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %if.end
  %6 = call ptr @memset(ptr %props, i32 0, i32 296)
  %fw_ver = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 7
  %7 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fw_ver, align 8
  %9 = ptrtoint ptr %props to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %props, align 8
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 17, ptr %attr_id, align 8
  %call10 = tail call i32 @mthca_MAD_IFC(ptr noundef %ibdev, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %device_cap_flags = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 4
  %12 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device_cap_flags, align 4
  %conv = zext i32 %13 to i64
  %device_cap_flags14 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 9
  %14 = ptrtoint ptr %device_cap_flags14 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %device_cap_flags14, align 8
  %add.ptr = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 36
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  %and = and i32 %16, 16777215
  %vendor_id = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 4
  %17 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %vendor_id, align 8
  %add.ptr18 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 30
  %18 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr18, align 2
  %conv20 = zext i16 %19 to i32
  %vendor_part_id = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 5
  %20 = ptrtoint ptr %vendor_part_id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv20, ptr %vendor_part_id, align 4
  %add.ptr23 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 32
  %21 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr23, align 8
  %hw_ver = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 6
  %23 = ptrtoint ptr %hw_ver to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %hw_ver, align 8
  %sys_image_guid = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 1
  %add.ptr27 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 4
  %24 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %add.ptr27, align 4
  %26 = ptrtoint ptr %sys_image_guid to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %sys_image_guid, align 8
  %max_mr_size = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 2
  %27 = ptrtoint ptr %max_mr_size to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 -1, ptr %max_mr_size, align 8
  %page_size_cap = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 36
  %28 = ptrtoint ptr %page_size_cap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %page_size_cap, align 8
  %conv28 = zext i32 %29 to i64
  %page_size_cap29 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 3
  %30 = ptrtoint ptr %page_size_cap29 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv28, ptr %page_size_cap29, align 8
  %num_qps = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 8
  %31 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_qps, align 8
  %reserved_qps = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 12
  %33 = ptrtoint ptr %reserved_qps to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reserved_qps, align 8
  %sub = sub i32 %32, %34
  %max_qp = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 7
  %35 = ptrtoint ptr %max_qp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %max_qp, align 4
  %max_wqes = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 9
  %36 = ptrtoint ptr %max_wqes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_wqes, align 4
  %max_qp_wr = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 8
  %38 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %max_qp_wr, align 8
  %max_sg = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 7
  %39 = ptrtoint ptr %max_sg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_sg, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 10
  %41 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_send_sge, align 8
  %42 = load i32, ptr %max_sg, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 11
  %43 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %max_recv_sge, align 4
  %44 = load i32, ptr %max_sg, align 4
  %max_sge_rd = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 12
  %45 = ptrtoint ptr %max_sge_rd to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %max_sge_rd, align 8
  %num_cqs = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 19
  %46 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_cqs, align 4
  %reserved_cqs = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 21
  %48 = ptrtoint ptr %reserved_cqs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reserved_cqs, align 4
  %sub40 = sub i32 %47, %49
  %max_cq = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 13
  %50 = ptrtoint ptr %max_cq to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub40, ptr %max_cq, align 4
  %max_cqes = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 20
  %51 = ptrtoint ptr %max_cqes to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_cqes, align 8
  %max_cqe = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 14
  %53 = ptrtoint ptr %max_cqe to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %max_cqe, align 8
  %num_mpts = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 24
  %54 = ptrtoint ptr %num_mpts to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_mpts, align 8
  %reserved_mrws = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 29
  %56 = ptrtoint ptr %reserved_mrws to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reserved_mrws, align 4
  %sub44 = sub i32 %55, %57
  %max_mr = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 15
  %58 = ptrtoint ptr %max_mr to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub44, ptr %max_mr, align 4
  %num_pds = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 34
  %59 = ptrtoint ptr %num_pds to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_pds, align 8
  %reserved_pds = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 35
  %61 = ptrtoint ptr %reserved_pds to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reserved_pds, align 4
  %sub47 = sub i32 %60, %62
  %max_pd = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 16
  %63 = ptrtoint ptr %max_pd to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub47, ptr %max_pd, align 8
  %rdb_shift = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 25, i32 2
  %64 = ptrtoint ptr %rdb_shift to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rdb_shift, align 4
  %shl = shl nuw i32 1, %65
  %max_qp_rd_atom = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 17
  %66 = ptrtoint ptr %max_qp_rd_atom to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shl, ptr %max_qp_rd_atom, align 4
  %max_qp_init_rdma = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 11
  %67 = ptrtoint ptr %max_qp_init_rdma to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_qp_init_rdma, align 4
  %max_qp_init_rd_atom = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 20
  %69 = ptrtoint ptr %max_qp_init_rd_atom to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %max_qp_init_rd_atom, align 8
  %mul = shl i32 %sub, %65
  %max_res_rd_atom = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 19
  %70 = ptrtoint ptr %max_res_rd_atom to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mul, ptr %max_res_rd_atom, align 4
  %num_srqs = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 13
  %71 = ptrtoint ptr %num_srqs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_srqs, align 4
  %reserved_srqs = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 16
  %73 = ptrtoint ptr %reserved_srqs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %reserved_srqs, align 8
  %sub53 = sub i32 %72, %74
  %max_srq = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 33
  %75 = ptrtoint ptr %max_srq to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub53, ptr %max_srq, align 4
  %max_srq_wqes = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 14
  %76 = ptrtoint ptr %max_srq_wqes to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_srq_wqes, align 8
  %max_srq_wr = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 34
  %78 = ptrtoint ptr %max_srq_wr to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %max_srq_wr, align 8
  %max_srq_sge = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 15
  %79 = ptrtoint ptr %max_srq_sge to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_srq_sge, align 4
  %max_srq_sge56 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 35
  %81 = ptrtoint ptr %max_srq_sge56 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %max_srq_sge56, align 4
  %local_ca_ack_delay = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 5
  %82 = ptrtoint ptr %local_ca_ack_delay to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %local_ca_ack_delay, align 4
  %conv58 = trunc i32 %83 to i8
  %local_ca_ack_delay59 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 39
  %84 = ptrtoint ptr %local_ca_ack_delay59 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv58, ptr %local_ca_ack_delay59, align 2
  %flags = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 37
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 4
  %and61 = lshr i32 %86, 18
  %and61.lobit = and i32 %and61, 1
  %atomic_cap = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 22
  %87 = ptrtoint ptr %atomic_cap to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and61.lobit, ptr %atomic_cap, align 8
  %pkey_table_len = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 4
  %88 = ptrtoint ptr %pkey_table_len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pkey_table_len, align 8
  %conv64 = trunc i32 %89 to i16
  %max_pkeys = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 38
  %90 = ptrtoint ptr %max_pkeys to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv64, ptr %max_pkeys, align 8
  %num_mgms = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 31
  %91 = ptrtoint ptr %num_mgms to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_mgms, align 4
  %num_amgms = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 32
  %93 = ptrtoint ptr %num_amgms to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_amgms, align 8
  %add = add i32 %94, %92
  %max_mcast_grp = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 29
  %95 = ptrtoint ptr %max_mcast_grp to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add, ptr %max_mcast_grp, align 4
  %max_mcast_qp_attach = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 30
  %96 = ptrtoint ptr %max_mcast_qp_attach to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 56, ptr %max_mcast_qp_attach, align 8
  %mul69 = mul i32 %add, 56
  %max_total_mcast_qp_attach = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 31
  %97 = ptrtoint ptr %max_total_mcast_qp_attach to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %mul69, ptr %max_total_mcast_qp_attach, align 4
  br label %out

out:                                              ; preds = %if.end13, %if.end8.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call10, %if.end8.out_crit_edge ], [ 0, %if.end13 ], [ -12, %if.end.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #10
  tail call void @kfree(ptr noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_modify_device(ptr noundef %ibdev, i32 noundef %mask, ptr nocapture noundef readonly %props) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %and1 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.then3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then3:                                         ; preds = %if.end
  %cap_mask_mutex = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 12
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %cap_mask_mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.return_crit_edge

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %node_desc = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 16
  %node_desc8 = getelementptr inbounds %struct.ib_device_modify, ptr %props, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %node_desc, ptr %node_desc8, i32 64)
  tail call void @mutex_unlock(ptr noundef %cap_mask_mutex) #10
  br label %return

return:                                           ; preds = %if.end7, %if.then3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -512, %if.then3.return_crit_edge ], [ 0, %if.end7 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_dev_fw_str(ptr nocapture noundef readonly %device, ptr nocapture noundef writeonly %str) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_ver = getelementptr inbounds %struct.mthca_dev, ptr %device, i32 0, i32 7
  %0 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %fw_ver, align 8
  %shr = lshr i64 %1, 32
  %conv = trunc i64 %shr to i32
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 16
  %and6 = and i32 %2, 65535
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %3, i32 noundef %and6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_query_port(ptr noundef %ibdev, i32 noundef %port, ptr nocapture noundef writeonly %props) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 21, ptr %attr_id, align 8
  %attr_mod = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %port, ptr %attr_mod, align 4
  %call4 = tail call i32 @mthca_MAD_IFC(ptr noundef %ibdev, i32 noundef 1, i32 noundef 1, i32 noundef %port, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 16
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr, align 8
  %conv = zext i16 %6 to i32
  %lid = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 13
  %7 = ptrtoint ptr %lid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %lid, align 8
  %arrayidx = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 34
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 2
  %10 = and i8 %9, 7
  %lmc = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 14
  %11 = ptrtoint ptr %lmc to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %lmc, align 4
  %add.ptr14 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 18
  %12 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr14, align 2
  %conv16 = zext i16 %13 to i32
  %sm_lid = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 12
  %14 = ptrtoint ptr %sm_lid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv16, ptr %sm_lid, align 4
  %arrayidx18 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 36
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx18, align 4
  %17 = and i8 %16, 15
  %sm_sl = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 16
  %18 = ptrtoint ptr %sm_sl to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %sm_sl, align 2
  %arrayidx23 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 32
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx23, align 8
  %21 = and i8 %20, 15
  %and25 = zext i8 %21 to i32
  %state = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 1
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and25, ptr %state, align 8
  %arrayidx27 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 33
  %23 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx27, align 1
  %25 = lshr i8 %24, 4
  %phys_state = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 21
  %26 = ptrtoint ptr %phys_state to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %phys_state, align 4
  %add.ptr32 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 20
  %27 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr32, align 4
  %port_cap_flags = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 7
  %29 = ptrtoint ptr %port_cap_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %port_cap_flags, align 8
  %gid_table_len = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 3
  %30 = ptrtoint ptr %gid_table_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gid_table_len, align 4
  %gid_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 5
  %32 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %gid_tbl_len, align 8
  %max_msg_sz = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 8
  %33 = ptrtoint ptr %max_msg_sz to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -2147483648, ptr %max_msg_sz, align 4
  %pkey_table_len = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 18, i32 4
  %34 = ptrtoint ptr %pkey_table_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pkey_table_len, align 8
  %conv37 = trunc i32 %35 to i16
  %pkey_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 11
  %36 = ptrtoint ptr %pkey_tbl_len to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv37, ptr %pkey_tbl_len, align 8
  %add.ptr40 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 46
  %37 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr40, align 2
  %conv42 = zext i16 %38 to i32
  %bad_pkey_cntr = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 9
  %39 = ptrtoint ptr %bad_pkey_cntr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv42, ptr %bad_pkey_cntr, align 8
  %add.ptr45 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 48
  %40 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr45, align 8
  %conv47 = zext i16 %41 to i32
  %qkey_viol_cntr = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 10
  %42 = ptrtoint ptr %qkey_viol_cntr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv47, ptr %qkey_viol_cntr, align 4
  %arrayidx49 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 31
  %43 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx49, align 1
  %45 = and i8 %44, 15
  %active_width = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 19
  %46 = ptrtoint ptr %active_width to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %active_width, align 1
  %arrayidx54 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 35
  %47 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx54, align 1
  %49 = lshr i8 %48, 4
  %conv57 = zext i8 %49 to i16
  %active_speed = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 20
  %50 = ptrtoint ptr %active_speed to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv57, ptr %active_speed, align 2
  %arrayidx59 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 41
  %51 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx59, align 1
  %53 = and i8 %52, 15
  %and61 = zext i8 %53 to i32
  %max_mtu = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 2
  %54 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and61, ptr %max_mtu, align 4
  %55 = lshr i8 %16, 4
  %56 = zext i8 %55 to i32
  %active_mtu = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 3
  %57 = ptrtoint ptr %active_mtu to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %active_mtu, align 8
  %arrayidx67 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 51
  %58 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx67, align 1
  %60 = and i8 %59, 31
  %subnet_timeout = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 17
  %61 = ptrtoint ptr %subnet_timeout to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %subnet_timeout, align 1
  %arrayidx72 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 37
  %62 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx72, align 1
  %64 = lshr i8 %63, 4
  %max_vl_num = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 15
  %65 = ptrtoint ptr %max_vl_num to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %max_vl_num, align 1
  %66 = lshr i8 %52, 4
  %init_type_reply = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 18
  %67 = ptrtoint ptr %init_type_reply to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %init_type_reply, align 8
  br label %out

out:                                              ; preds = %if.end7, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ 0, %if.end7 ], [ -12, %entry.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #10
  tail call void @kfree(ptr noundef %call7.i) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_modify_port(ptr noundef %ibdev, i32 noundef %port, i32 noundef %port_modify_mask, ptr nocapture noundef readonly %props) #0 align 64 {
entry:
  %set_ib = alloca %struct.mthca_set_ib_param, align 8
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %set_ib) #10
  %0 = call ptr @memset(ptr %set_ib, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #10
  %1 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %cap_mask_mutex = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 12
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %cap_mask_mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port, ptr noundef nonnull %attr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %set_ib to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %set_ib, align 8
  %and = lshr i32 %port_modify_mask, 3
  %and.lobit = and i32 %and, 1
  %reset_qkey_viol = getelementptr inbounds %struct.mthca_set_ib_param, ptr %set_ib, i32 0, i32 1
  %3 = ptrtoint ptr %reset_qkey_viol to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and.lobit, ptr %reset_qkey_viol, align 4
  %port_cap_flags = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 7
  %4 = ptrtoint ptr %port_cap_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_cap_flags, align 8
  %6 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %props, align 4
  %or = or i32 %7, %5
  %clr_port_cap_mask = getelementptr inbounds %struct.ib_port_modify, ptr %props, i32 0, i32 1
  %8 = ptrtoint ptr %clr_port_cap_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clr_port_cap_mask, align 4
  %neg = xor i32 %9, -1
  %and8 = and i32 %or, %neg
  %cap_mask = getelementptr inbounds %struct.mthca_set_ib_param, ptr %set_ib, i32 0, i32 3
  %10 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and8, ptr %cap_mask, align 8
  %call10 = call i32 @mthca_SET_IB(ptr noundef %ibdev, ptr noundef nonnull %set_ib, i32 noundef %port) #10
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call10, %if.end5 ]
  call void @mutex_unlock(ptr noundef %cap_mask_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -512, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %set_ib) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_port_immutable(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef writeonly %immutable) #0 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #10
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %core_cap_flags = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 2
  %1 = ptrtoint ptr %core_cap_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1052695, ptr %core_cap_flags, align 4
  %call = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pkey_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 11
  %2 = ptrtoint ptr %pkey_tbl_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pkey_tbl_len, align 8
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %immutable to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %immutable, align 4
  %gid_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 5
  %5 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gid_tbl_len, align 8
  %gid_tbl_len2 = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 1
  %7 = ptrtoint ptr %gid_tbl_len2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %gid_tbl_len2, align 4
  %max_mad_size = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 3
  %8 = ptrtoint ptr %max_mad_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 256, ptr %max_mad_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_query_gid(ptr noundef %ibdev, i32 noundef %port, i32 noundef %index, ptr nocapture noundef writeonly %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 21, ptr %attr_id, align 8
  %attr_mod = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %port, ptr %attr_mod, align 4
  %call4 = tail call i32 @mthca_MAD_IFC(ptr noundef %ibdev, i32 noundef 1, i32 noundef 1, i32 noundef %port, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end7:                                          ; preds = %if.end
  %add.ptr = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr, align 8
  %7 = ptrtoint ptr %gid to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %gid, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16843009, ptr %call7.i.i, align 8
  %9 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 20, ptr %attr_id, align 8
  %div = sdiv i32 %index, 8
  %10 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %attr_mod, align 4
  %call12 = tail call i32 @mthca_MAD_IFC(ptr noundef %ibdev, i32 noundef 1, i32 noundef 1, i32 noundef %port, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.ib_smp, ptr %call7.i, i32 0, i32 15
  %add.ptr17 = getelementptr i8, ptr %gid, i32 8
  %11 = mul i32 %div, 8
  %rem.decomposed = sub i32 %index, %11
  %mul = shl nsw i32 %rem.decomposed, 3
  %add.ptr20 = getelementptr i8, ptr %data, i32 %mul
  %12 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr20, align 8
  %14 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %add.ptr17, align 1
  br label %out

out:                                              ; preds = %if.end15, %if.end7.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ %call12, %if.end7.out_crit_edge ], [ 0, %if.end15 ], [ -12, %entry.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #10
  tail call void @kfree(ptr noundef %call7.i) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_query_pkey(ptr noundef %ibdev, i32 noundef %port, i16 noundef zeroext %index, ptr nocapture noundef writeonly %pkey) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 22, ptr %attr_id, align 8
  %conv = zext i16 %index to i32
  %div19 = lshr i32 %conv, 5
  %attr_mod = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div19, ptr %attr_mod, align 4
  %call4 = tail call i32 @mthca_MAD_IFC(ptr noundef %ibdev, i32 noundef 1, i32 noundef 1, i32 noundef %port, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.ib_smp, ptr %call7.i, i32 0, i32 15
  %rem = and i32 %conv, 31
  %arrayidx = getelementptr i16, ptr %data, i32 %rem
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %7 = ptrtoint ptr %pkey to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %pkey, align 2
  br label %out

out:                                              ; preds = %if.end7, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ 0, %if.end7 ], [ -12, %entry.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #10
  tail call void @kfree(ptr noundef %call7.i) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_alloc_ucontext(ptr noundef %uctx, ptr nocapture noundef readonly %udata) #0 align 64 {
entry:
  %uresp = alloca %struct.mthca_alloc_ucontext_resp, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uctx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uresp) #10
  %active = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active, align 2, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_qps = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 18, i32 8
  %4 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_qps, align 8
  %6 = ptrtoint ptr %uresp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %uresp, align 8
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not = icmp eq i32 %and.i, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %uarc_size = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 19, i32 2
  %9 = ptrtoint ptr %uarc_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uarc_size, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %.sink = phi i32 [ %10, %if.then6 ], [ 0, %if.end.if.end10_crit_edge ]
  %11 = getelementptr inbounds %struct.mthca_alloc_ucontext_resp, ptr %uresp, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %11, align 4
  %uar = getelementptr inbounds %struct.mthca_ucontext, ptr %uctx, i32 0, i32 1
  %call12 = tail call i32 @mthca_uar_alloc(ptr noundef %1, ptr noundef %uar) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call17 = tail call ptr @mthca_init_user_db_tab(ptr noundef %1) #10
  %db_tab = getelementptr inbounds %struct.mthca_ucontext, ptr %uctx, i32 0, i32 2
  %13 = ptrtoint ptr %db_tab to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %db_tab, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call17 to i32
  tail call void @mthca_uar_free(ptr noundef %1, ptr noundef %uar) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %15 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %outbuf.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.end25.if.then28_crit_edge, label %if.end.i.i.i

if.end25.if.then28_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end.i.i.i:                                     ; preds = %if.end25
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 8, i32 -1226833920) #14, !srcloc !80
  %asmresult.i.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.if.then28_crit_edge

if.end.i.i.i.if.then28_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uresp, i32 noundef 8) #10
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %16, ptr noundef nonnull %uresp, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %if.end34, label %copy_to_user.exit.i.if.then28_crit_edge

copy_to_user.exit.i.if.then28_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.then28:                                        ; preds = %copy_to_user.exit.i.if.then28_crit_edge, %if.end.i.i.i.if.then28_crit_edge, %if.end25.if.then28_crit_edge
  %18 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %db_tab, align 4
  call void @mthca_cleanup_user_db_tab(ptr noundef %1, ptr noundef %uar, ptr noundef %19) #10
  call void @mthca_uar_free(ptr noundef %1, ptr noundef %uar) #10
  br label %cleanup

if.end34:                                         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %reg_mr_warned = getelementptr inbounds %struct.mthca_ucontext, ptr %uctx, i32 0, i32 3
  %20 = ptrtoint ptr %reg_mr_warned to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %reg_mr_warned, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then28, %if.then20, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then20 ], [ -14, %if.then28 ], [ 0, %if.end34 ], [ -11, %entry.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uresp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mthca_dealloc_ucontext(ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %uar = getelementptr inbounds %struct.mthca_ucontext, ptr %context, i32 0, i32 1
  %db_tab = getelementptr inbounds %struct.mthca_ucontext, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_tab, align 4
  tail call void @mthca_cleanup_user_db_tab(ptr noundef %1, ptr noundef %uar, ptr noundef %3) #10
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  tail call void @mthca_uar_free(ptr noundef %5, ptr noundef %uar) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_mmap_uar(ptr nocapture noundef readonly %context, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp.not = icmp eq i32 %sub, 4096
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %4 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %5, -61
  store i32 %and, ptr %vm_page_prot, align 4
  %uar = getelementptr inbounds %struct.mthca_ucontext, ptr %context, i32 0, i32 1
  %6 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uar, align 4
  %call.i = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %3, i32 noundef %7, i32 noundef 4096, i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool.not, i32 0, i32 -11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_alloc_pd(ptr noundef %ibpd, ptr noundef readonly %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %ibpd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %tobool.not = icmp eq ptr %udata, null
  %lnot.ext = zext i1 %tobool.not to i32
  %call2 = tail call i32 @mthca_pd_alloc(ptr noundef %1, i32 noundef %lnot.ext, ptr noundef %ibpd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp ne i32 %call2, 0
  %brmerge = or i1 %tobool.not, %tobool3.not
  br i1 %brmerge, label %entry.cleanup_crit_edge, label %if.then5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %entry
  %pd_num = getelementptr inbounds %struct.mthca_pd, ptr %ibpd, i32 0, i32 1
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %2 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outbuf.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.then5.if.then8_crit_edge, label %if.end.i.i.i

if.then5.if.then8_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.end.i.i.i:                                     ; preds = %if.then5
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #14, !srcloc !80
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.if.then8_crit_edge

if.end.i.i.i.if.then8_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pd_num, i32 noundef 4) #10
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %pd_num, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.i.cleanup_crit_edge, label %copy_to_user.exit.i.if.then8_crit_edge

copy_to_user.exit.i.if.then8_crit_edge:           ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

copy_to_user.exit.i.cleanup_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %copy_to_user.exit.i.if.then8_crit_edge, %if.end.i.i.i.if.then8_crit_edge, %if.then5.if.then8_crit_edge
  tail call void @mthca_pd_free(ptr noundef %1, ptr noundef %ibpd) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %copy_to_user.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then8 ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %copy_to_user.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_dealloc_pd(ptr noundef %pd, ptr nocapture noundef readnone %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  tail call void @mthca_pd_free(ptr noundef %1, ptr noundef %pd) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_ah_create(ptr noundef %ibah, ptr nocapture noundef readonly %init_attr, ptr nocapture noundef readnone %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibah, align 4
  %pd = getelementptr inbounds %struct.ib_ah, ptr %ibah, i32 0, i32 1
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %4 = ptrtoint ptr %init_attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_attr, align 4
  %call3 = tail call i32 @mthca_create_ah(ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %ibah) #10
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_ah_query(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_ah_destroy(ptr noundef %ah, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call2 = tail call i32 @mthca_destroy_ah(ptr noundef %1, ptr noundef %ah) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_create_qp(ptr noundef %ibqp, ptr noundef %init_attr, ptr noundef %udata) #0 align 64 {
entry:
  %ucmd = alloca %struct.mthca_create_qp, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %context1 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ucmd) #10
  %2 = getelementptr inbounds %struct.mthca_create_qp, ptr %ucmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mthca_create_qp, ptr %ucmd, i32 0, i32 3
  %4 = getelementptr inbounds %struct.mthca_create_qp, ptr %ucmd, i32 0, i32 4
  %5 = getelementptr inbounds %struct.mthca_create_qp, ptr %ucmd, i32 0, i32 5
  %6 = call ptr @memset(ptr %ucmd, i32 255, i32 32)
  %7 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ibqp, align 4
  %create_flags = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 9
  %9 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %create_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 8
  %11 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qp_type, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 3, label %if.end.sw.bb_crit_edge153
    i32 4, label %if.end.sw.bb_crit_edge154
    i32 0, label %if.end.sw.bb45_crit_edge
    i32 1, label %if.end.sw.bb45_crit_edge155
  ]

if.end.sw.bb45_crit_edge155:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

if.end.sw.bb45_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

if.end.sw.bb_crit_edge154:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge153:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge153, %if.end.sw.bb_crit_edge154
  br i1 %tobool.not, label %sw.bb.if.end28_crit_edge, label %if.then6

sw.bb.if.end28_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then6:                                         ; preds = %sw.bb
  %14 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.then6.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then6.if.then11.i.i.i_crit_edge:               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then6
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 32, i32 -1226833920) #14, !srcloc !75
  %asmresult.i.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !76

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd, i32 noundef 32) #10
  %17 = call i32 @llvm.read_register.i32(metadata !65) #10
  %and.i.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !77
  %and.i.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd, ptr noundef %15, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #10, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end10, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !76

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then6.if.then11.i.i.i_crit_edge
  %res.0.i.i.i151 = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %if.then6.if.then11.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 32, %res.0.i.i.i151
  %add.ptr.i.i.i = getelementptr i8, ptr %ucmd, i32 %sub.i.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i151)
  br label %cleanup

if.end10:                                         ; preds = %if.end.i.i.i
  %uar = getelementptr inbounds %struct.mthca_ucontext, ptr %cond, i32 0, i32 1
  %db_tab = getelementptr inbounds %struct.mthca_ucontext, ptr %cond, i32 0, i32 2
  %21 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %db_tab, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %4, align 8
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %2, align 8
  %call11 = call i32 @mthca_map_user_db(ptr noundef %8, ptr noundef %uar, ptr noundef %22, i32 noundef %24, i64 noundef %26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %27 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %db_tab, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %5, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %3, align 8
  %call17 = call i32 @mthca_map_user_db(ptr noundef %8, ptr noundef %uar, ptr noundef %28, i32 noundef %30, i64 noundef %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end23, label %if.then19

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %db_tab, align 4
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %4, align 8
  call void @mthca_unmap_user_db(ptr noundef %8, ptr noundef %uar, ptr noundef %34, i32 noundef %36) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %ucmd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ucmd, align 8
  %lkey24 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 2
  %39 = ptrtoint ptr %lkey24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %lkey24, align 8
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %4, align 8
  %db_index = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 9
  %42 = ptrtoint ptr %db_index to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %db_index, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 4
  %db_index27 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 9
  %45 = ptrtoint ptr %db_index27 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %db_index27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end23, %sw.bb.if.end28_crit_edge
  %pd = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 1
  %46 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pd, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 2
  %48 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %send_cq, align 4
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 3
  %50 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %recv_cq, align 4
  %52 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %qp_type, align 4
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 7
  %54 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sq_sig_type, align 4
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6
  %call33 = call i32 @mthca_alloc_qp(ptr noundef %8, ptr noundef %47, ptr noundef %49, ptr noundef %51, i32 noundef %53, i32 noundef %55, ptr noundef %cap, ptr noundef %ibqp, ptr noundef %udata) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  %brmerge = or i1 %tobool.not, %tobool34.not
  br i1 %brmerge, label %if.end28.if.end43_crit_edge, label %if.then36

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %uar37 = getelementptr inbounds %struct.mthca_ucontext, ptr %cond, i32 0, i32 1
  %db_tab38 = getelementptr inbounds %struct.mthca_ucontext, ptr %cond, i32 0, i32 2
  %56 = ptrtoint ptr %db_tab38 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %db_tab38, align 4
  %58 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %4, align 8
  call void @mthca_unmap_user_db(ptr noundef %8, ptr noundef %uar37, ptr noundef %57, i32 noundef %59) #10
  %60 = ptrtoint ptr %db_tab38 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %db_tab38, align 4
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %5, align 4
  call void @mthca_unmap_user_db(ptr noundef %8, ptr noundef %uar37, ptr noundef %61, i32 noundef %63) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %if.end28.if.end43_crit_edge
  %qpn = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 2
  %64 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qpn, align 8
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %66 = ptrtoint ptr %qp_num to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %qp_num, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end.sw.bb45_crit_edge, %if.end.sw.bb45_crit_edge155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3520, i32 noundef 208) #13
  %sqp = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 20
  %68 = ptrtoint ptr %sqp to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i, ptr %sqp, align 8
  %tobool48.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool48.not, label %sw.bb45.cleanup_crit_edge, label %if.end50

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end50:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp = icmp ne i32 %70, 0
  %cond52 = zext i1 %cmp to i32
  %qp_num54 = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %71 = ptrtoint ptr %qp_num54 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond52, ptr %qp_num54, align 4
  %pd55 = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 1
  %72 = ptrtoint ptr %pd55 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pd55, align 4
  %send_cq57 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 2
  %74 = ptrtoint ptr %send_cq57 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %send_cq57, align 4
  %recv_cq59 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 3
  %76 = ptrtoint ptr %recv_cq59 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %recv_cq59, align 4
  %sq_sig_type61 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 7
  %78 = ptrtoint ptr %sq_sig_type61 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sq_sig_type61, align 4
  %cap62 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6
  %port_num = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 10
  %80 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port_num, align 4
  %call65 = tail call i32 @mthca_alloc_sqp(ptr noundef %8, ptr noundef %73, ptr noundef %75, ptr noundef %77, i32 noundef %79, ptr noundef %cap62, i32 noundef %cond52, i32 noundef %81, ptr noundef %ibqp, ptr noundef %udata) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end50, %if.end43
  %err.0 = phi i32 [ %call65, %if.end50 ], [ %call33, %if.end43 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool66.not = icmp eq i32 %err.0, 0
  br i1 %tobool66.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %sqp68 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 20
  %82 = ptrtoint ptr %sqp68 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sqp68, align 8
  call void @kfree(ptr noundef %83) #10
  br label %cleanup

if.end69:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %max = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 1
  %84 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max, align 4
  %cap71 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6
  %86 = ptrtoint ptr %cap71 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %cap71, align 4
  %max73 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 1
  %87 = ptrtoint ptr %max73 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max73, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 1
  %89 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %max_recv_wr, align 4
  %max_gs = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 7
  %90 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_gs, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 2
  %92 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %max_send_sge, align 4
  %max_gs78 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 7
  %93 = ptrtoint ptr %max_gs78 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_gs78, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 3
  %95 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %max_recv_sge, align 4
  %max_inline_data = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 15
  %96 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_inline_data, align 8
  %max_inline_data81 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 4
  %98 = ptrtoint ptr %max_inline_data81 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %max_inline_data81, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then67, %sw.bb45.cleanup_crit_edge, %if.then19, %if.end10.cleanup_crit_edge, %if.then11.i.i.i, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.then67 ], [ 0, %if.end69 ], [ %call17, %if.then19 ], [ -95, %cond.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ -12, %sw.bb45.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ucmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_modify_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_query_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_destroy_qp(ptr noundef %qp, ptr noundef readonly %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %cond.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %context2 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %0 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context2, align 4
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  %uar = getelementptr inbounds %struct.mthca_ucontext, ptr %1, i32 0, i32 1
  %db_tab = getelementptr inbounds %struct.mthca_ucontext, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %db_tab, align 4
  %db_index = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 9
  %6 = ptrtoint ptr %db_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %db_index, align 4
  tail call void @mthca_unmap_user_db(ptr noundef %3, ptr noundef %uar, ptr noundef %5, i32 noundef %7) #10
  %8 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qp, align 4
  %10 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %db_tab, align 4
  %db_index10 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 9
  %12 = ptrtoint ptr %db_index10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %db_index10, align 4
  tail call void @mthca_unmap_user_db(ptr noundef %9, ptr noundef %uar, ptr noundef %11, i32 noundef %13) #10
  br label %if.end

if.end:                                           ; preds = %cond.true, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qp, align 4
  tail call void @mthca_free_qp(ptr noundef %15, ptr noundef %qp) #10
  %sqp = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 20
  %16 = ptrtoint ptr %sqp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sqp, align 8
  tail call void @kfree(ptr noundef %17) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_create_cq(ptr noundef %ibcq, ptr nocapture noundef readonly %attr, ptr noundef readonly %udata) #0 align 64 {
entry:
  %ucmd = alloca %struct.mthca_create_cq, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ucmd) #10
  %4 = getelementptr inbounds %struct.mthca_create_cq, ptr %ucmd, i32 0, i32 1
  %5 = getelementptr inbounds %struct.mthca_create_cq, ptr %ucmd, i32 0, i32 2
  %6 = getelementptr inbounds %struct.mthca_create_cq, ptr %ucmd, i32 0, i32 3
  %7 = getelementptr inbounds %struct.mthca_create_cq, ptr %ucmd, i32 0, i32 4
  %8 = getelementptr inbounds %struct.mthca_create_cq, ptr %ucmd, i32 0, i32 5
  %tobool.not = icmp eq ptr %udata, null
  %9 = call ptr @memset(ptr %ucmd, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %context1 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %10 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %11, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %flags = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not = icmp eq i32 %13, 0
  br i1 %tobool2.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %max_cqes = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 18, i32 20
  %14 = ptrtoint ptr %max_cqes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_cqes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %15)
  %cmp4 = icmp sgt i32 %3, %15
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  br i1 %tobool.not, label %if.end6.for.cond.preheader_crit_edge, label %if.then8

if.end6.for.cond.preheader_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

if.then8:                                         ; preds = %if.end6
  %16 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.then8.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then8.if.then11.i.i.i_crit_edge:               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then8
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 32, i32 -1226833920) #14, !srcloc !75
  %asmresult.i.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !76

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd, i32 noundef 32) #10
  %19 = call i32 @llvm.read_register.i32(metadata !65) #10
  %and.i.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !77
  %and.i.i.i.i.i = and i32 %21, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd, ptr noundef %17, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end12, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !76

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then8.if.then11.i.i.i_crit_edge
  %res.0.i.i.i114 = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %if.then8.if.then11.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 32, %res.0.i.i.i114
  %add.ptr.i.i.i = getelementptr i8, ptr %ucmd, i32 %sub.i.i.i
  %22 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i114)
  br label %cleanup

if.end12:                                         ; preds = %if.end.i.i.i
  %uar = getelementptr inbounds %struct.mthca_ucontext, ptr %cond, i32 0, i32 1
  %db_tab = getelementptr inbounds %struct.mthca_ucontext, ptr %cond, i32 0, i32 2
  %23 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %db_tab, align 4
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %8, align 4
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %6, align 8
  %call14 = call i32 @mthca_map_user_db(ptr noundef %1, ptr noundef %uar, ptr noundef %24, i32 noundef %26, i64 noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %29 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %db_tab, align 4
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %7, align 8
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %5, align 8
  %call21 = call i32 @mthca_map_user_db(ptr noundef %1, ptr noundef %uar, ptr noundef %30, i32 noundef %32, i64 noundef %34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then28, label %if.end17.if.then60_crit_edge

if.end17.if.then60_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60

if.then28:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %ucmd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ucmd, align 8
  %lkey29 = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 5, i32 1, i32 0, i32 2
  %37 = ptrtoint ptr %lkey29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %lkey29, align 8
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %8, align 4
  %set_ci_db_index = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 8
  %40 = ptrtoint ptr %set_ci_db_index to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %set_ci_db_index, align 8
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %7, align 8
  %arm_db_index32 = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 10
  %43 = ptrtoint ptr %arm_db_index32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arm_db_index32, align 8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then28, %if.end6.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %for.cond.preheader
  %nent.0 = phi i32 [ %shl, %for.cond.for.cond_crit_edge ], [ 1, %for.cond.preheader ]
  %cmp34.not = icmp sgt i32 %nent.0, %3
  %shl = shl i32 %nent.0, 1
  br i1 %cmp34.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %tobool.not, label %cond.end40, label %cond.end40.thread

cond.end40:                                       ; preds = %for.end
  %pd_num = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 31, i32 1
  %44 = ptrtoint ptr %pd_num to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pd_num, align 8
  %call42 = call i32 @mthca_init_cq(ptr noundef %1, i32 noundef %nent.0, ptr noundef %cond, i32 noundef %45, ptr noundef %ibcq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cond.end40.if.end51_crit_edge, label %cond.end40.cleanup_crit_edge

cond.end40.cleanup_crit_edge:                     ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end40.if.end51_crit_edge:                    ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

cond.end40.thread:                                ; preds = %for.end
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %4, align 4
  %call42117 = call i32 @mthca_init_cq(ptr noundef %1, i32 noundef %nent.0, ptr noundef %cond, i32 noundef %47, ptr noundef %ibcq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42117)
  %tobool43.not118 = icmp eq i32 %call42117, 0
  br i1 %tobool43.not118, label %land.lhs.true, label %cond.end40.thread.if.then53_crit_edge

cond.end40.thread.if.then53_crit_edge:            ; preds = %cond.end40.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then53

land.lhs.true:                                    ; preds = %cond.end40.thread
  %cqn = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 3
  %call47 = call fastcc i32 @ib_copy_to_udata(ptr noundef nonnull %udata, ptr noundef %cqn, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true.if.end51_crit_edge, label %if.then49

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @mthca_free_cq(ptr noundef %1, ptr noundef %ibcq) #10
  br label %if.then53

if.end51:                                         ; preds = %land.lhs.true.if.end51_crit_edge, %cond.end40.if.end51_crit_edge
  %resize_buf = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 6
  %48 = ptrtoint ptr %resize_buf to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %resize_buf, align 8
  br label %cleanup

if.then53:                                        ; preds = %if.then49, %cond.end40.thread.if.then53_crit_edge
  %err.0120 = phi i32 [ %call42117, %cond.end40.thread.if.then53_crit_edge ], [ -14, %if.then49 ]
  %uar55 = getelementptr inbounds %struct.mthca_ucontext, ptr %cond, i32 0, i32 1
  %db_tab56 = getelementptr inbounds %struct.mthca_ucontext, ptr %cond, i32 0, i32 2
  %49 = ptrtoint ptr %db_tab56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %db_tab56, align 4
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %7, align 8
  call void @mthca_unmap_user_db(ptr noundef %1, ptr noundef %uar55, ptr noundef %50, i32 noundef %52) #10
  br label %if.then60

if.then60:                                        ; preds = %if.then53, %if.end17.if.then60_crit_edge
  %err.1.ph = phi i32 [ %err.0120, %if.then53 ], [ %call21, %if.end17.if.then60_crit_edge ]
  %uar62 = getelementptr inbounds %struct.mthca_ucontext, ptr %cond, i32 0, i32 1
  %db_tab63 = getelementptr inbounds %struct.mthca_ucontext, ptr %cond, i32 0, i32 2
  %53 = ptrtoint ptr %db_tab63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %db_tab63, align 4
  %55 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %8, align 4
  call void @mthca_unmap_user_db(ptr noundef %1, ptr noundef %uar62, ptr noundef %54, i32 noundef %56) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end51, %cond.end40.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then11.i.i.i, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ -95, %cond.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %err.1.ph, %if.then60 ], [ -14, %if.then11.i.i.i ], [ %call42, %cond.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ucmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_destroy_cq(ptr noundef %cq, ptr noundef readonly %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %cond.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %context2 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %0 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context2, align 4
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq, align 8
  %uar = getelementptr inbounds %struct.mthca_ucontext, ptr %1, i32 0, i32 1
  %db_tab = getelementptr inbounds %struct.mthca_ucontext, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %db_tab, align 4
  %arm_db_index = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 10
  %6 = ptrtoint ptr %arm_db_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arm_db_index, align 8
  tail call void @mthca_unmap_user_db(ptr noundef %3, ptr noundef %uar, ptr noundef %5, i32 noundef %7) #10
  %8 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cq, align 8
  %10 = ptrtoint ptr %db_tab to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %db_tab, align 4
  %set_ci_db_index = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 8
  %12 = ptrtoint ptr %set_ci_db_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %set_ci_db_index, align 8
  tail call void @mthca_unmap_user_db(ptr noundef %9, ptr noundef %uar, ptr noundef %11, i32 noundef %13) #10
  br label %if.end

if.end:                                           ; preds = %cond.true, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cq, align 8
  tail call void @mthca_free_cq(ptr noundef %15, ptr noundef %cq) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_resize_cq(ptr noundef %ibcq, i32 noundef %entries, ptr nocapture noundef readonly %udata) #0 align 64 {
entry:
  %ucmd = alloca %struct.mthca_resize_cq, align 4
  %tbuf = alloca %struct.mthca_cq_buf, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ucmd) #10
  %2 = ptrtoint ptr %ucmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ucmd, align 4, !annotation !82
  %3 = getelementptr inbounds %struct.mthca_resize_cq, ptr %ucmd, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %entries)
  %cmp = icmp slt i32 %entries, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_cqes = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 18, i32 20
  %5 = ptrtoint ptr %max_cqes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_cqes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %entries)
  %cmp2 = icmp slt i32 %6, %entries
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %7 = tail call i32 @llvm.ctlz.i32(i32 %entries, i1 true) #10, !range !83
  %sub.i.i.i = sub nuw nsw i32 32, %7
  %cond29 = shl nuw i32 1, %sub.i.i.i
  %cqe = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %8 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cqe, align 4
  %add30 = add i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond29, i32 %add30)
  %cmp31 = icmp eq i32 %cond29, %add30
  br i1 %cmp31, label %if.end.out_crit_edge, label %if.end34

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end34:                                         ; preds = %if.end
  %is_kernel = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 7
  %10 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %is_kernel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end34
  %lock.i = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #10
  %resize_buf.i = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 6
  %12 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resize_buf.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then35.mthca_alloc_resize_buf.exit.thread_crit_edge

if.then35.mthca_alloc_resize_buf.exit.thread_crit_edge: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %mthca_alloc_resize_buf.exit.thread

if.end.i:                                         ; preds = %if.then35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 2592, i32 noundef 176) #13
  %15 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %resize_buf.i, align 8
  %tobool3.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.mthca_alloc_resize_buf.exit.thread_crit_edge, label %if.end10.i

if.end.i.mthca_alloc_resize_buf.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mthca_alloc_resize_buf.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.mthca_cq_resize, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #10
  %17 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resize_buf.i, align 8
  %call12.i = tail call i32 @mthca_alloc_cq_buf(ptr noundef %1, ptr noundef %18, i32 noundef %cond29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end39, label %if.then14.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #10
  %19 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resize_buf.i, align 8
  tail call void @kfree(ptr noundef %20) #10
  %21 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %resize_buf.i, align 8
  br label %mthca_alloc_resize_buf.exit.thread

mthca_alloc_resize_buf.exit.thread:               ; preds = %if.then14.i, %if.end.i.mthca_alloc_resize_buf.exit.thread_crit_edge, %if.then35.mthca_alloc_resize_buf.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -16, %if.then35.mthca_alloc_resize_buf.exit.thread_crit_edge ], [ -12, %if.end.i.mthca_alloc_resize_buf.exit.thread_crit_edge ], [ %call12.i, %if.then14.i ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #10
  br label %out

if.end39:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i164 = add i32 %cond29, -1
  %22 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resize_buf.i, align 8
  %cqe.i = getelementptr inbounds %struct.mthca_cq_resize, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %cqe.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i164, ptr %cqe.i, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #10
  %25 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resize_buf.i, align 8
  %state23.i = getelementptr inbounds %struct.mthca_cq_resize, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %state23.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %state23.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #10
  %28 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resize_buf.i, align 8
  %lkey40 = getelementptr inbounds %struct.mthca_cq_buf, ptr %29, i32 0, i32 1, i32 0, i32 2
  br label %if.end46

if.else:                                          ; preds = %if.end34
  %30 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.else.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.else.if.then11.i.i.i_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %31, i32 8, i32 -1226833920) #14, !srcloc !75
  %asmresult.i.i.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !76

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd, i32 noundef 8) #10
  %33 = call i32 @llvm.read_register.i32(metadata !65) #10
  %and.i.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !77
  %and.i.i.i.i.i = and i32 %35, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd, ptr noundef %31, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #10, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end46_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !76

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i.if.end46_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.else.if.then11.i.i.i_crit_edge
  %res.0.i.i.i171 = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.else.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i165 = sub i32 8, %res.0.i.i.i171
  %add.ptr.i.i.i = getelementptr i8, ptr %ucmd, i32 %sub.i.i.i165
  %36 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i171)
  br label %out

if.end46:                                         ; preds = %if.end.i.i.i.if.end46_crit_edge, %if.end39
  %lkey.0.in = phi ptr [ %lkey40, %if.end39 ], [ %ucmd, %if.end.i.i.i.if.end46_crit_edge ]
  %37 = ptrtoint ptr %lkey.0.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %lkey.0 = load i32, ptr %lkey.0.in, align 4
  %cqn = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 3
  %38 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cqn, align 8
  %40 = call i32 @llvm.ctlz.i32(i32 %cond29, i1 true) #10, !range !83
  %41 = trunc i32 %40 to i8
  %conv61 = xor i8 %41, 31
  %call62 = call i32 @mthca_RESIZE_CQ(ptr noundef %1, i32 noundef %39, i32 noundef %lkey.0, i8 noundef zeroext %conv61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end76, label %if.then64

if.then64:                                        ; preds = %if.end46
  %resize_buf65 = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 6
  %42 = ptrtoint ptr %resize_buf65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %resize_buf65, align 8
  %tobool66.not = icmp eq ptr %43, null
  br i1 %tobool66.not, label %if.then64.out_crit_edge, label %if.then67

if.then64.out_crit_edge:                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %cqe71 = getelementptr inbounds %struct.mthca_cq_resize, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %cqe71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cqe71, align 8
  call void @mthca_free_cq_buf(ptr noundef %1, ptr noundef nonnull %43, i32 noundef %45) #10
  %46 = ptrtoint ptr %resize_buf65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %resize_buf65, align 8
  call void @kfree(ptr noundef %47) #10
  %lock = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %48 = ptrtoint ptr %resize_buf65 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %resize_buf65, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %out

if.end76:                                         ; preds = %if.end46
  %49 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %is_kernel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool78.not = icmp eq i32 %50, 0
  br i1 %tobool78.not, label %if.else104, label %if.then79

if.then79:                                        ; preds = %if.end76
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %tbuf) #10
  %lock80 = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock80) #10
  %resize_buf81 = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 6
  %51 = ptrtoint ptr %resize_buf81 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %resize_buf81, align 8
  %state = getelementptr inbounds %struct.mthca_cq_resize, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp82 = icmp eq i32 %54, 1
  br i1 %cmp82, label %if.then84, label %if.else95

if.then84:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  call void @mthca_cq_resize_copy_cqes(ptr noundef %ibcq) #10
  %buf85 = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 5
  %55 = call ptr @memcpy(ptr %tbuf, ptr %buf85, i32 168)
  %56 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cqe, align 4
  %58 = ptrtoint ptr %resize_buf81 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %resize_buf81, align 8
  %60 = call ptr @memcpy(ptr %buf85, ptr %59, i32 168)
  %cqe92 = getelementptr inbounds %struct.mthca_cq_resize, ptr %59, i32 0, i32 1
  %61 = ptrtoint ptr %cqe92 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cqe92, align 8
  store i32 %62, ptr %cqe, align 4
  br label %if.end100

if.else95:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  %63 = call ptr @memcpy(ptr %tbuf, ptr %52, i32 168)
  %cqe99 = getelementptr inbounds %struct.mthca_cq_resize, ptr %52, i32 0, i32 1
  %64 = ptrtoint ptr %cqe99 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cqe99, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.else95, %if.then84
  %tcqe.0 = phi i32 [ %57, %if.then84 ], [ %65, %if.else95 ]
  %66 = ptrtoint ptr %resize_buf81 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %resize_buf81, align 8
  call void @kfree(ptr noundef %67) #10
  %68 = ptrtoint ptr %resize_buf81 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %resize_buf81, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock80) #10
  call void @mthca_free_cq_buf(ptr noundef %1, ptr noundef nonnull %tbuf, i32 noundef %tcqe.0) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %tbuf) #10
  br label %out

if.else104:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %sub105 = add i32 %cond29, -1
  %69 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub105, ptr %cqe, align 4
  br label %out

out:                                              ; preds = %if.else104, %if.end100, %if.then67, %if.then64.out_crit_edge, %if.then11.i.i.i, %mthca_alloc_resize_buf.exit.thread, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call62, %if.then67 ], [ %call62, %if.then64.out_crit_edge ], [ 0, %if.end100 ], [ 0, %if.else104 ], [ 0, %if.end.out_crit_edge ], [ %retval.0.i.ph, %mthca_alloc_resize_buf.exit.thread ], [ -14, %if.then11.i.i.i ]
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ucmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mthca_get_dma_mr(ptr nocapture noundef readonly %pd, i32 noundef %acc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 152) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %pd_num = getelementptr inbounds %struct.mthca_pd, ptr %pd, i32 0, i32 1
  %3 = ptrtoint ptr %pd_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pd_num, align 8
  %and.i = shl i32 %acc, 11
  %5 = and i32 %and.i, 16384
  %and1.i = shl i32 %acc, 12
  %6 = and i32 %and1.i, 8192
  %and4.i = shl i32 %acc, 10
  %7 = and i32 %and4.i, 4096
  %8 = and i32 %and.i, 2048
  %or.i = or i32 %5, %6
  %or7.i = or i32 %or.i, %7
  %or11.i = or i32 %or7.i, %8
  %or12.i = or i32 %or11.i, 1024
  %call5 = tail call i32 @mthca_mr_alloc_notrans(ptr noundef %2, i32 noundef %4, i32 noundef %or12.i, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  %9 = inttoptr i32 %call5 to ptr
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %umem = getelementptr inbounds %struct.mthca_mr, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %umem, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.then7 ], [ %call7.i, %if.end9 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mthca_reg_user_mr(ptr nocapture noundef readonly %pd, i64 noundef %start, i64 noundef %length, i64 noundef %virt, i32 noundef %acc, ptr noundef readonly %udata) #0 align 64 {
entry:
  %biter = alloca %struct.ib_block_iter, align 4
  %ucmd = alloca %struct.mthca_reg_mr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %biter) #10
  %2 = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 4
  %tobool.not = icmp eq ptr %udata, null
  %4 = call ptr @memset(ptr %biter, i32 255, i32 20)
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %context2 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %5 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %6, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ucmd) #10
  %7 = ptrtoint ptr %ucmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ucmd, align 4, !annotation !82
  %8 = getelementptr inbounds %struct.mthca_reg_mr, ptr %ucmd, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !82
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %10 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp = icmp ult i32 %11, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %reg_mr_warned = getelementptr inbounds %struct.mthca_ucontext, ptr %cond, i32 0, i32 3
  %12 = ptrtoint ptr %reg_mr_warned to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_mr_warned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %16 = tail call i32 @llvm.read_register.i32(metadata !65) #10
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.17, ptr noundef %comm) #15
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef nonnull @.str.23) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %22 = ptrtoint ptr %reg_mr_warned to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_mr_warned, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %reg_mr_warned, align 4
  %24 = ptrtoint ptr %ucmd to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ucmd, align 4
  br label %if.end18

if.else:                                          ; preds = %cond.end
  %25 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.else.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.else.if.then11.i.i.i_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 8, i32 -1226833920) #14, !srcloc !75
  %asmresult.i.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !76

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd, i32 noundef 8) #10
  %28 = call i32 @llvm.read_register.i32(metadata !65) #10
  %and.i.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !77
  %and.i.i.i.i.i = and i32 %30, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd, ptr noundef %26, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #10, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end18_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !76

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i.if.end18_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.else.if.then11.i.i.i_crit_edge
  %res.0.i.i.i147 = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.else.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.0.i.i.i147
  %add.ptr.i.i.i = getelementptr i8, ptr %ucmd, i32 %sub.i.i.i
  %31 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i147)
  br label %cleanup

if.end18:                                         ; preds = %if.end.i.i.i.if.end18_crit_edge, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3264, i32 noundef 152) #13
  %tobool20.not = icmp eq ptr %call7.i, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  %conv = trunc i64 %start to i32
  %conv25 = trunc i64 %length to i32
  %call26 = call ptr @ib_umem_get(ptr noundef %34, i32 noundef %conv, i32 noundef %conv25, i32 noundef %acc) #10
  %umem = getelementptr inbounds %struct.mthca_mr, ptr %call7.i, i32 0, i32 1
  %35 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call26, ptr %umem, align 8
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %call26 to i32
  br label %err84

if.end32:                                         ; preds = %if.end23
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %call26, i32 0, i32 2
  %37 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %call26, i32 0, i32 3
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %40 to i64
  %add.i = add i64 %38, 4095
  %add2.i = add i64 %add.i, %conv.i
  %and.i142 = and i64 %add2.i, 4294963200
  %and15.i = and i64 %38, 4294963200
  %sub16.i = sub nsw i64 %and.i142, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div1.i = lshr exact i32 %conv17.i, 12
  %call35 = call ptr @mthca_alloc_mtt(ptr noundef %1, i32 noundef %div1.i) #10
  %mtt = getelementptr inbounds %struct.mthca_mr, ptr %call7.i, i32 0, i32 2
  %41 = ptrtoint ptr %mtt to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call35, ptr %mtt, align 4
  %cmp.i143 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %call35 to i32
  br label %err_umem

if.end41:                                         ; preds = %if.end32
  %call42 = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #10
  %43 = inttoptr i32 %call42 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end41.err_mtt_crit_edge, label %if.end45

if.end41.err_mtt_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_mtt

if.end45:                                         ; preds = %if.end41
  %call46 = call i32 @mthca_write_mtt_size(ptr noundef %1) #10
  %44 = call i32 @llvm.smin.i32(i32 %call46, i32 512)
  %45 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %umem, align 8
  %sgt_append.i = getelementptr inbounds %struct.ib_umem, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %sgt_append.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sgt_append.i, align 8
  %nents.i = getelementptr inbounds %struct.ib_umem, ptr %46, i32 0, i32 7, i32 0, i32 1
  %49 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nents.i, align 4
  call void @__rdma_block_iter_start(ptr noundef nonnull %biter, ptr noundef %48, i32 noundef %50, i32 noundef 4096) #10
  %call55156 = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter) #10
  br i1 %call55156, label %if.end45.for.body_crit_edge, label %if.end45.mtt_done.thread_crit_edge

if.end45.mtt_done.thread_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtt_done.thread

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  br label %for.body

for.body:                                         ; preds = %if.end67.for.body_crit_edge, %if.end45.for.body_crit_edge
  %i.0158 = phi i32 [ %i.1, %if.end67.for.body_crit_edge ], [ 0, %if.end45.for.body_crit_edge ]
  %n.0157 = phi i32 [ %n.1, %if.end67.for.body_crit_edge ], [ 0, %if.end45.for.body_crit_edge ]
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %2, align 4
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %3, align 4
  %sh_prom.i = zext i32 %54 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %55 = trunc i64 %notmask.i to i32
  %conv1.i = and i32 %52, %55
  %conv57 = zext i32 %conv1.i to i64
  %inc58 = add i32 %i.0158, 1
  %arrayidx = getelementptr i64, ptr %43, i32 %i.0158
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv57, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc58, i32 %44)
  %cmp59 = icmp eq i32 %inc58, %44
  br i1 %cmp59, label %if.then61, label %for.body.if.end67_crit_edge

for.body.if.end67_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then61:                                        ; preds = %for.body
  %57 = ptrtoint ptr %mtt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mtt, align 4
  %call63 = call i32 @mthca_write_mtt(ptr noundef %1, ptr noundef %58, i32 noundef %n.0157, ptr noundef nonnull %43, i32 noundef %44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %mtt_done.thread151

mtt_done.thread151:                               ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  call void @free_pages(i32 noundef %call42, i32 noundef 0) #10
  br label %err_mtt

if.end66:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %44, %n.0157
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %for.body.if.end67_crit_edge
  %n.1 = phi i32 [ %add, %if.end66 ], [ %n.0157, %for.body.if.end67_crit_edge ]
  %i.1 = phi i32 [ 0, %if.end66 ], [ %inc58, %for.body.if.end67_crit_edge ]
  %call55 = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter) #10
  br i1 %call55, label %if.end67.for.body_crit_edge, label %for.end

if.end67.for.body_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %tobool68.not = icmp eq i32 %i.1, 0
  br i1 %tobool68.not, label %for.end.mtt_done.thread_crit_edge, label %mtt_done

for.end.mtt_done.thread_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtt_done.thread

mtt_done.thread:                                  ; preds = %for.end.mtt_done.thread_crit_edge, %if.end45.mtt_done.thread_crit_edge
  call void @free_pages(i32 noundef %call42, i32 noundef 0) #10
  br label %if.end75

mtt_done:                                         ; preds = %for.end
  %59 = ptrtoint ptr %mtt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mtt, align 4
  %call71 = call i32 @mthca_write_mtt(ptr noundef %1, ptr noundef %60, i32 noundef %n.1, ptr noundef nonnull %43, i32 noundef %i.1) #10
  call void @free_pages(i32 noundef %call42, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool73.not = icmp eq i32 %call71, 0
  br i1 %tobool73.not, label %mtt_done.if.end75_crit_edge, label %mtt_done.err_mtt_crit_edge

mtt_done.err_mtt_crit_edge:                       ; preds = %mtt_done
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_mtt

mtt_done.if.end75_crit_edge:                      ; preds = %mtt_done
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.end75:                                         ; preds = %mtt_done.if.end75_crit_edge, %mtt_done.thread
  %pd_num = getelementptr inbounds %struct.mthca_pd, ptr %pd, i32 0, i32 1
  %61 = ptrtoint ptr %pd_num to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pd_num, align 8
  %and.i144 = shl i32 %acc, 11
  %63 = and i32 %and.i144, 16384
  %and1.i = shl i32 %acc, 12
  %64 = and i32 %and1.i, 8192
  %and4.i = shl i32 %acc, 10
  %65 = and i32 %and4.i, 4096
  %66 = and i32 %and.i144, 2048
  %or.i = or i32 %63, %64
  %or7.i = or i32 %or.i, %65
  %or11.i = or i32 %or7.i, %66
  %or12.i = or i32 %or11.i, 1024
  %call78 = call i32 @mthca_mr_alloc(ptr noundef %1, i32 noundef %62, i32 noundef 12, i64 noundef %virt, i64 noundef %length, i32 noundef %or12.i, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end75.cleanup_crit_edge, label %if.end75.err_mtt_crit_edge

if.end75.err_mtt_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_mtt

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_mtt:                                          ; preds = %if.end75.err_mtt_crit_edge, %mtt_done.err_mtt_crit_edge, %mtt_done.thread151, %if.end41.err_mtt_crit_edge
  %err.3 = phi i32 [ %call71, %mtt_done.err_mtt_crit_edge ], [ %call78, %if.end75.err_mtt_crit_edge ], [ -12, %if.end41.err_mtt_crit_edge ], [ %call63, %mtt_done.thread151 ]
  %67 = ptrtoint ptr %mtt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mtt, align 4
  call void @mthca_free_mtt(ptr noundef %1, ptr noundef %68) #10
  br label %err_umem

err_umem:                                         ; preds = %err_mtt, %if.then38
  %err.4 = phi i32 [ %42, %if.then38 ], [ %err.3, %err_mtt ]
  %69 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %umem, align 8
  call void @ib_umem_release(ptr noundef %70) #10
  br label %err84

err84:                                            ; preds = %err_umem, %if.then29
  %err.5 = phi i32 [ %36, %if.then29 ], [ %err.4, %err_umem ]
  call void @kfree(ptr noundef nonnull %call7.i) #10
  %71 = inttoptr i32 %err.5 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err84, %if.end75.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then11.i.i.i
  %retval.0 = phi ptr [ %71, %err84 ], [ %call7.i, %if.end75.cleanup_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then11.i.i.i ], [ inttoptr (i32 -12 to ptr), %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ucmd) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %biter) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mthca_dereg_mr(ptr noundef %mr, ptr nocapture noundef readnone %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr, align 8
  tail call void @mthca_free_mr(ptr noundef %1, ptr noundef %mr) #10
  %umem = getelementptr inbounds %struct.mthca_mr, ptr %mr, i32 0, i32 1
  %2 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %umem, align 8
  tail call void @ib_umem_release(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %mr) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_multicast_attach(ptr noundef, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_multicast_detach(ptr noundef, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rev_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  %rev_id = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rev_id, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %3) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hca_type_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %device1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device1, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %5, label %sw.epilog.i [
    i16 23108, label %entry.hca_type_string.exit_crit_edge
    i16 25208, label %sw.bb1.i
    i16 25218, label %sw.bb2.i
    i16 25204, label %entry.sw.bb3.i_crit_edge
    i16 24204, label %entry.sw.bb3.i_crit_edge4
  ]

entry.sw.bb3.i_crit_edge4:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

entry.hca_type_string.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hca_type_string.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hca_type_string.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hca_type_string.exit

sw.bb3.i:                                         ; preds = %entry.sw.bb3.i_crit_edge, %entry.sw.bb3.i_crit_edge4
  br label %hca_type_string.exit

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hca_type_string.exit

hca_type_string.exit:                             ; preds = %sw.epilog.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.hca_type_string.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.13, %sw.epilog.i ], [ @.str.12, %sw.bb3.i ], [ @.str.11, %sw.bb2.i ], [ @.str.10, %sw.bb1.i ], [ @.str.9, %entry.hca_type_string.exit_crit_edge ]
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, ptr noundef nonnull %retval.0.i) #10
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @board_id_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  %board_id = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 6
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef 64, ptr noundef %board_id) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_SET_IB(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_uar_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mthca_init_user_db_tab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_uar_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cleanup_user_db_tab(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_pd_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_pd_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_create_ah(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_destroy_ah(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc_qp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc_sqp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_qp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_init_cq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_cq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_RESIZE_CQ(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_cq_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cq_resize_copy_cqes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc_cq_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_mr_alloc_notrans(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mthca_alloc_mtt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_write_mtt_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__rdma_block_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_write_mtt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_mr_alloc(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_mtt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rdma_block_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_mr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_arbel_post_send(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_arbel_post_receive(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_arbel_arm_cq(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_tavor_post_send(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_tavor_post_receive(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_tavor_arm_cq(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !49, !51, !52, !53, !54, !55, !56, !57, !59, !60, !61, !63}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @mthca_register_device.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 1163, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 1165, i32 41}
!5 = !{ptr @mthca_dev_arbel_srq_ops, !6, !"mthca_dev_arbel_srq_ops", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 1102, i32 35}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!14 = !{ptr @mthca_dev_tavor_srq_ops, !15, !"mthca_dev_tavor_srq_ops", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 1112, i32 35}
!16 = !{ptr @mthca_dev_ops, !17, !"mthca_dev_ops", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 1057, i32 35}
!18 = !{ptr @mthca_attr_group, !19, !"mthca_attr_group", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 986, i32 37}
!20 = !{ptr @mthca_dev_attributes, !21, !"mthca_dev_attributes", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 979, i32 26}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 940, i32 8}
!24 = !{ptr @dev_attr_hw_rev, !23, !"dev_attr_hw_rev", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 938, i32 25}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 967, i32 8}
!29 = !{ptr @dev_attr_hca_type, !28, !"dev_attr_hca_type", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 965, i32 25}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 946, i32 10}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 948, i32 10}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 950, i32 10}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 953, i32 10}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 956, i32 9}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 977, i32 8}
!44 = !{ptr @dev_attr_board_id, !43, !"dev_attr_board_id", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 975, i32 25}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 1051, i32 40}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 842, i32 4}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mthca_reg_user_mr._entry, !50, !"_entry", i1 false, i1 false}
!56 = !{ptr @mthca_reg_user_mr._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 844, i32 4}
!59 = !{ptr @mthca_reg_user_mr._entry.22, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mthca_reg_user_mr._entry_ptr.24, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mthca_dev_arbel_ops, !62, !"mthca_dev_arbel_ops", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 1122, i32 35}
!63 = !{ptr @mthca_dev_tavor_ops, !64, !"mthca_dev_tavor_ops", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/hw/mthca/mthca_provider.c", i32 1128, i32 35}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2152498221, i64 2152498246}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 4993776}
!78 = !{i64 4993973}
!79 = !{i64 2152479206}
!80 = !{i64 2152498902, i64 2152498927}
!81 = !{i8 0, i8 2}
!82 = !{!"auto-init"}
!83 = !{i32 0, i32 33}
