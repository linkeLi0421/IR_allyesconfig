; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/user_mad.c_pt.bc'
source_filename = "../drivers/infiniband/core/user_mad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.195 }
%union.anon.195 = type { %struct.anon.196 }
%struct.anon.196 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.197, %struct.trace_event, ptr, ptr, %union.anon.198, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.197 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.198 = type { ptr }
%union.anon.199 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.200 = type { %struct.bpf_raw_event_map }
%union.anon.201 = type { %struct.bpf_raw_event_map }
%struct.ib_client = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.ib_umad_file = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [32 x ptr], i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ib_umad_port = type { %struct.cdev, %struct.device, %struct.cdev, %struct.device, %struct.semaphore, %struct.mutex, %struct.list_head, ptr, ptr, i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.173, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.173 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.trace_event_raw_ib_umad_template = type { %struct.trace_entry, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i8, i8, i8, i8, i32, i16, i16, i32, i64, [16 x i8], i32, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.ib_user_mad_hdr = type { i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, [16 x i8], i32, i16, [6 x i8] }
%struct.ib_mad_hdr = type { i8, i8, i8, i8, i16, i16, i64, i16, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.ib_client_nl_info = type { ptr, ptr, i32, i64 }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.ib_umad_device = type { %struct.kref, [0 x %struct.ib_umad_port] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.165 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.160 }
%struct.anon.160 = type { i64, i64 }
%union.anon.165 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_umad_packet = type { ptr, ptr, %struct.list_head, i32, %struct.ib_user_mad }
%struct.ib_user_mad = type { %struct.ib_user_mad_hdr, [0 x i64] }
%struct.ib_ah_attr = type { i16, i8 }
%struct.ib_mad_agent = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.list_head, i8, i8, i8 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ib_rmpp_hdr = type { i8, i8, i8, i8, i32, i32 }
%struct.ib_mad_send_buf = type { ptr, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_user_mad_reg_req2 = type { i32, i32, i8, i8, i16, i32, [2 x i64], i32, i8, [3 x i8] }
%struct.ib_mad_reg_req = type { i8, i8, [3 x i8], [4 x i32] }
%struct.ib_user_mad_reg_req = type { i32, [4 x i32], i8, i8, i8, [3 x i8], i8 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.112, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.112 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.135, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.136, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.137, ptr, %struct.address_space, %struct.list_head, %union.anon.138, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.135 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.136 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.137 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.138 = type { ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ib_mad_recv_wc = type { ptr, %struct.ib_mad_recv_buf, %struct.list_head, i32, i32 }
%struct.ib_mad_recv_buf = type { %struct.list_head, ptr, %union.anon.174 }
%union.anon.174 = type { ptr }
%struct.ib_mad_send_wc = type { ptr, i32, i32 }
%struct.ib_wc = type { %union.anon.139, i32, i32, i32, i32, ptr, %union.anon.140, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.139 = type { i64 }
%union.anon.140 = type { i32 }
%struct.ib_port_modify = type { i32, i32, i8 }

@__UNIQUE_ID_author496 = internal constant [29 x i8] c"ib_umad.author=Roland Dreier\00", section ".modinfo", align 1
@__UNIQUE_ID_description497 = internal constant [59 x i8] c"ib_umad.description=InfiniBand userspace MAD packet access\00", section ".modinfo", align 1
@__UNIQUE_ID_file498 = internal constant [45 x i8] c"ib_umad.file=drivers/infiniband/core/ib_umad\00", section ".modinfo", align 1
@__UNIQUE_ID_license499 = internal constant [29 x i8] c"ib_umad.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__tpstrtab_ib_umad_write = internal constant [14 x i8] c"ib_umad_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ib_umad_write = dso_local global %struct.static_call_key { ptr @__traceiter_ib_umad_write }, align 4
@__tracepoint_ib_umad_write = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ib_umad_write, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ib_umad_write, ptr null, ptr @__traceiter_ib_umad_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ib_umad_write = internal constant ptr @__tracepoint_ib_umad_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_ib_umad_read_recv = internal constant [18 x i8] c"ib_umad_read_recv\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ib_umad_read_recv = dso_local global %struct.static_call_key { ptr @__traceiter_ib_umad_read_recv }, align 4
@__tracepoint_ib_umad_read_recv = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ib_umad_read_recv, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ib_umad_read_recv, ptr null, ptr @__traceiter_ib_umad_read_recv, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ib_umad_read_recv = internal constant ptr @__tracepoint_ib_umad_read_recv, section "__tracepoints_ptrs", align 4
@__tpstrtab_ib_umad_read_send = internal constant [18 x i8] c"ib_umad_read_send\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ib_umad_read_send = dso_local global %struct.static_call_key { ptr @__traceiter_ib_umad_read_send }, align 4
@__tracepoint_ib_umad_read_send = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ib_umad_read_send, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ib_umad_read_send, ptr null, ptr @__traceiter_ib_umad_read_send, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ib_umad_read_send = internal constant ptr @__tracepoint_ib_umad_read_send, section "__tracepoints_ptrs", align 4
@str__ib_umad__trace_system_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ib_umad\00", [24 x i8] zeroinitializer }, align 32
@trace_event_fields_ib_umad_template = internal global { [29 x %struct.trace_event_fields], [168 x i8] } { [29 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.195 { %struct.anon.196 { ptr @.str.1, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.195 { %struct.anon.196 { ptr @.str.2, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.195 { %struct.anon.196 { ptr @.str.3, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.195 { %struct.anon.196 { ptr @.str.4, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.195 { %struct.anon.196 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.195 { %struct.anon.196 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.195 { %struct.anon.196 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.195 { %struct.anon.196 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.195 { %struct.anon.196 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.195 { %struct.anon.196 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.195 { %struct.anon.196 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.195 { %struct.anon.196 { ptr @.str.13, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.195 { %struct.anon.196 { ptr @.str.14, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.195 { %struct.anon.196 { ptr @.str.16, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.195 { %struct.anon.196 { ptr @.str.17, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.195 { %struct.anon.196 { ptr @.str.18, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.195 { %struct.anon.196 { ptr @.str.19, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.195 { %struct.anon.196 { ptr @.str.20, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.195 { %struct.anon.196 { ptr @.str.21, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.195 { %struct.anon.196 { ptr @.str.22, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.195 { %struct.anon.196 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.195 { %struct.anon.196 { ptr @.str.24, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.195 { %struct.anon.196 { ptr @.str.25, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.195 { %struct.anon.196 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.27, %union.anon.195 { %struct.anon.196 { ptr @.str.28, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.195 { %struct.anon.196 { ptr @.str.30, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.195 { %struct.anon.196 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.195 { %struct.anon.196 { ptr @.str.32, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [168 x i8] zeroinitializer }, align 32
@event_class_ib_umad_template = internal global %struct.trace_event_class { ptr @str__ib_umad__trace_system_name, ptr @trace_event_raw_event_ib_umad_template, ptr @perf_trace_ib_umad_template, ptr @trace_event_reg, ptr @trace_event_fields_ib_umad_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ib_umad_template, i64 24), ptr getelementptr (i8, ptr @event_class_ib_umad_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ib_umad_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ib_umad_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ib_umad_template = internal global { [915 x i8], [237 x i8] } { [915 x i8] c"\22%d:%d umad_hdr: id 0x%08x status 0x%08x ms %u ret %u len %u QP%u qkey 0x%08x lid 0x%04x sl %u path_bits 0x%x grh 0x%x gidi %u hop_lim %u traf_cl %u gid %pI6c flow 0x%08x pkeyi %u  MAD: base_ver 0x%x class 0x%x class_ver 0x%x method 0x%x status 0x%04x class_specific 0x%04x tid 0x%016llx attr_id 0x%04x attr_mod 0x%08x \22, REC->dev_index, REC->port_num, REC->id, REC->status, REC->timeout_ms, REC->retires, REC->length, (( __u32)(__be32)(REC->qpn)), (( __u32)(__be32)(REC->qkey)), (( __u16)(__be16)(REC->lid)), REC->sl, REC->path_bits, REC->grh_present, REC->gid_index, REC->hop_limit, REC->traffic_class, &REC->gid, (( __u32)(__be32)(REC->flow_label)), REC->pkey_index, REC->base_version, REC->mgmt_class, REC->class_version, REC->method, (( __u16)(__be16)(REC->mad_status)), (( __u16)(__be16)(REC->class_specific)), (( __u64)(__be64)(REC->tid)), (( __u16)(__be16)(REC->attr_id)), (( __u32)(__be32)(REC->attr_mod))\00", [237 x i8] zeroinitializer }, align 32
@event_ib_umad_write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ib_umad_template, %union.anon.197 { ptr @__tracepoint_ib_umad_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ib_umad_template }, ptr @print_fmt_ib_umad_template, ptr null, %union.anon.198 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ib_umad_write = internal global ptr @event_ib_umad_write, section "_ftrace_events", align 4
@event_ib_umad_read_recv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ib_umad_template, %union.anon.197 { ptr @__tracepoint_ib_umad_read_recv }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ib_umad_template }, ptr @print_fmt_ib_umad_template, ptr null, %union.anon.198 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ib_umad_read_recv = internal global ptr @event_ib_umad_read_recv, section "_ftrace_events", align 4
@event_ib_umad_read_send = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ib_umad_template, %union.anon.197 { ptr @__tracepoint_ib_umad_read_send }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ib_umad_template }, ptr @print_fmt_ib_umad_template, ptr null, %union.anon.198 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ib_umad_read_send = internal global ptr @event_ib_umad_read_send, section "_ftrace_events", align 4
@__bpf_trace_tp_map_ib_umad_write = internal global %union.anon.199 { %struct.bpf_raw_event_map { ptr @__tracepoint_ib_umad_write, ptr @__bpf_trace_ib_umad_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ib_umad_read_recv = internal global %union.anon.200 { %struct.bpf_raw_event_map { ptr @__tracepoint_ib_umad_read_recv, ptr @__bpf_trace_ib_umad_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ib_umad_read_send = internal global %union.anon.201 { %struct.bpf_raw_event_map { ptr @__tracepoint_ib_umad_read_send, ptr @__bpf_trace_ib_umad_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__UNIQUE_ID_alias534 = internal constant [31 x i8] c"ib_umad.alias=rdma-client-umad\00", section ".modinfo", align 1
@__UNIQUE_ID_alias535 = internal constant [31 x i8] c"ib_umad.alias=rdma-client-issm\00", section ".modinfo", align 1
@issm_client = internal global { %struct.ib_client, [32 x i8] } { %struct.ib_client { ptr @.str.34, ptr null, ptr null, ptr null, ptr @ib_issm_get_nl_info, ptr null, ptr null, %struct.refcount_struct zeroinitializer, %struct.completion zeroinitializer, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@umad_client = internal global { %struct.ib_client, [32 x i8] } { %struct.ib_client { ptr @.str.35, ptr @ib_umad_add_one, ptr @ib_umad_remove_one, ptr null, ptr @ib_umad_get_nl_info, ptr null, ptr null, %struct.refcount_struct zeroinitializer, %struct.completion zeroinitializer, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@umad_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.84, ptr null, ptr @umad_class_groups, ptr @umad_class_dev_groups, ptr null, ptr null, ptr @umad_devnode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dynamic_umad_dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_ib_umad__536_1494_ib_umad_init6 = internal global ptr @ib_umad_init, section ".initcall6.init", align 4
@__exitcall_ib_umad_cleanup = internal global ptr @ib_umad_cleanup, section ".exitcall.exit", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"port_num\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sl\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"path_bits\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"grh_present\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timeout_ms\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"retires\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"length\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"qpn\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qkey\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gid_index\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hop_limit\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lid\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"attr_id\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pkey_index\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"base_version\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mgmt_class\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"class_version\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"method\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flow_label\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mad_status\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"class_specific\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"attr_mod\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tid\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"u8[16]\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gid\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dev_index\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"traffic_class\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [320 x i8], [64 x i8] } { [320 x i8] c"%d:%d umad_hdr: id 0x%08x status 0x%08x ms %u ret %u len %u QP%u qkey 0x%08x lid 0x%04x sl %u path_bits 0x%x grh 0x%x gidi %u hop_lim %u traf_cl %u gid %pI6c flow 0x%08x pkeyi %u  MAD: base_ver 0x%x class 0x%x class_ver 0x%x method 0x%x status 0x%04x class_specific 0x%04x tid 0x%016llx attr_id 0x%04x attr_mod 0x%08x \0A\00", [64 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"issm\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"umad\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@umad_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@dynamic_issm_dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ib_umad_init_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&port->file_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"umad%d\00", [25 x i8] zeroinitializer }, align 32
@umad_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @ib_umad_read, ptr @ib_umad_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ib_umad_poll, ptr @ib_umad_ioctl, ptr null, ptr null, i32 0, ptr @ib_umad_open, ptr null, ptr @ib_umad_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"issm%d\00", [25 x i8] zeroinitializer }, align 32
@umad_sm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ib_umad_sm_open, ptr null, ptr @ib_umad_sm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"umad_ida.xa_lock\00", [47 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/infiniband/core/user_mad.c\00", [61 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/ib_umad.h\00", [33 x i8] zeroinitializer }, align 32
@trace_ib_umad_read_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_ib_umad_read_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_ib_umad_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rdma_destroy_ah.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel AH shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@ib_umad_reg_agent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.42, i32 691, ptr @.str.53, ptr @.str.54 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: invalid device\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ib_umad_reg_agent\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ib_umad_reg_agent._entry_ptr = internal global ptr @ib_umad_reg_agent._entry, section ".printk_index", align 4
@ib_umad_reg_agent._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.52, ptr @.str.42, i32 704, ptr @.str.53, ptr @.str.54 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: invalid QPN %u specified\0A\00", [34 x i8] zeroinitializer }, align 32
@ib_umad_reg_agent._entry_ptr.57 = internal global ptr @ib_umad_reg_agent._entry.55, section ".printk_index", align 4
@ib_umad_reg_agent._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.52, ptr @.str.42, i32 714, ptr @.str.53, ptr @.str.54 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Max Agents (%u) reached\0A\00", [35 x i8] zeroinitializer }, align 32
@ib_umad_reg_agent._entry_ptr.60 = internal global ptr @ib_umad_reg_agent._entry.58, section ".printk_index", align 4
@ib_umad_reg_agent._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.52, ptr @.str.42, i32 760, ptr @.str.63, ptr @.str.54 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"process %s did not enable P_Key index support.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ib_umad_reg_agent._entry_ptr.64 = internal global ptr @ib_umad_reg_agent._entry.61, section ".printk_index", align 4
@ib_umad_reg_agent._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.52, ptr @.str.42, i32 762, ptr @.str.63, ptr @.str.54 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"   Documentation/infiniband/user_mad.rst has info on the new ABI.\0A\00", [61 x i8] zeroinitializer }, align 32
@ib_umad_reg_agent._entry_ptr.67 = internal global ptr @ib_umad_reg_agent._entry.65, section ".printk_index", align 4
@ib_lid_be16.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ib_umad_reg_agent2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.68, ptr @.str.42, i32 792, ptr @.str.53, ptr @.str.54 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ib_umad_reg_agent2\00", [45 x i8] zeroinitializer }, align 32
@ib_umad_reg_agent2._entry_ptr = internal global ptr @ib_umad_reg_agent2._entry, section ".printk_index", align 4
@ib_umad_reg_agent2._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.68, ptr @.str.42, i32 804, ptr @.str.53, ptr @.str.54 }, [40 x i8] zeroinitializer }, align 32
@ib_umad_reg_agent2._entry_ptr.70 = internal global ptr @ib_umad_reg_agent2._entry.69, section ".printk_index", align 4
@ib_umad_reg_agent2._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.68, ptr @.str.42, i32 812, ptr @.str.53, ptr @.str.54 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s failed: invalid registration flags specified 0x%x; supported 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@ib_umad_reg_agent2._entry_ptr.73 = internal global ptr @ib_umad_reg_agent2._entry.71, section ".printk_index", align 4
@ib_umad_reg_agent2._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.68, ptr @.str.42, i32 828, ptr @.str.53, ptr @.str.54 }, [40 x i8] zeroinitializer }, align 32
@ib_umad_reg_agent2._entry_ptr.75 = internal global ptr @ib_umad_reg_agent2._entry.74, section ".printk_index", align 4
@ib_umad_reg_agent2._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.68, ptr @.str.42, i32 840, ptr @.str.53, ptr @.str.54 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s failed: oui invalid 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@ib_umad_reg_agent2._entry_ptr.78 = internal global ptr @ib_umad_reg_agent2._entry.76, section ".printk_index", align 4
@ib_umad_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&file->mutex\00", [19 x i8] zeroinitializer }, align 32
@ib_umad_open.__key.80 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&file->send_lock\00", [47 x i8] zeroinitializer }, align 32
@ib_umad_open.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&file->recv_wait\00", [47 x i8] zeroinitializer }, align 32
@__const.ib_umad_sm_open.props = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 2, i32 0, i8 0, [3 x i8] zeroinitializer }, align 4
@__const.ib_umad_sm_close.props = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 0, i32 2, i8 0, [3 x i8] zeroinitializer }, align 4
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infiniband_mad\00", [17 x i8] zeroinitializer }, align 32
@umad_class_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @umad_class_group, ptr null], [24 x i8] zeroinitializer }, align 32
@umad_class_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @umad_class_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@umad_class_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @umad_class_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@umad_class_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @class_attr_abi_version, ptr null], [24 x i8] zeroinitializer }, align 32
@class_attr_abi_version = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @abi_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"abi_version\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@umad_class_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @umad_class_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@umad_class_dev_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_ibdev, ptr @dev_attr_port, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_ibdev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ibdev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_port = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @port_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ibdev\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infiniband/%s\00", [18 x i8] zeroinitializer }, align 32
@ib_umad_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.42, i32 1437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013user_mad: couldn't register device number\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ib_umad_init\00", [19 x i8] zeroinitializer }, align 32
@ib_umad_init._entry_ptr = internal global ptr @ib_umad_init._entry, section ".printk_index", align 4
@ib_umad_init._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.42, i32 1445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013user_mad: couldn't register dynamic device number\0A\00", [43 x i8] zeroinitializer }, align 32
@ib_umad_init._entry_ptr.95 = internal global ptr @ib_umad_init._entry.93, section ".printk_index", align 4
@ib_umad_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ib_umad_init._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.42, i32 1452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013user_mad: couldn't create class infiniband_mad\0A\00", [46 x i8] zeroinitializer }, align 32
@ib_umad_init._entry_ptr.98 = internal global ptr @ib_umad_init._entry.96, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 6915, i64 1074010882, i64 3223067393, i64 3223853828]
@___asan_gen_.99 = private unnamed_addr constant [32 x i8] c"str__ib_umad__trace_system_name\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 36, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant [36 x i8] c"trace_event_fields_ib_umad_template\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_ib_umad_template\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [27 x i8] c"print_fmt_ib_umad_template\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"event_ib_umad_write\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 109, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant [24 x i8] c"event_ib_umad_read_recv\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [24 x i8] c"event_ib_umad_read_send\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 119, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"issm_client\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1190, i32 25 }
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"umad_client\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1169, i32 25 }
@___asan_gen_.126 = private unnamed_addr constant [11 x i8] c"umad_class\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1245, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"dynamic_umad_dev\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 140, i32 14 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 16, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1191, i32 10 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1170, i32 12 }
@___asan_gen_.240 = private unnamed_addr constant [9 x i8] c"umad_ida\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"dynamic_issm_dev\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 141, i32 14 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1297, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1302, i32 27 }
@___asan_gen_.255 = private unnamed_addr constant [10 x i8] c"umad_fops\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1060, i32 37 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1312, i32 30 }
@___asan_gen_.261 = private unnamed_addr constant [13 x i8] c"umad_sm_fops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1135, i32 37 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 143, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 33, i32 31 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 34, i32 28 }
@___asan_gen_.274 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 35, i32 39 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 393, i32 7 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 230, i32 6 }
@___asan_gen_.283 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 214, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 174, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [34 x i8] c"../include/trace/events/ib_umad.h\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 114, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 108, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 3630, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 691, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 702, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 713, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 758, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 761, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 792, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 803, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 810, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 827, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 838, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1009, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1010, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1013, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1246, i32 11 }
@___asan_gen_.390 = private unnamed_addr constant [18 x i8] c"umad_class_groups\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [22 x i8] c"umad_class_dev_groups\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c"umad_class_group\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1243, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant [17 x i8] c"umad_class_attrs\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1239, i32 26 }
@___asan_gen_.402 = private unnamed_addr constant [23 x i8] c"class_attr_abi_version\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1237, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1235, i32 25 }
@___asan_gen_.411 = private unnamed_addr constant [21 x i8] c"umad_class_dev_group\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1225, i32 1 }
@___asan_gen_.414 = private unnamed_addr constant [21 x i8] c"umad_class_dev_attrs\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1220, i32 26 }
@___asan_gen_.417 = private unnamed_addr constant [15 x i8] c"dev_attr_ibdev\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [14 x i8] c"dev_attr_port\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1206, i32 8 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1204, i32 25 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1218, i32 8 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1229, i32 31 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1437, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1445, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1450, i32 8 }
@___asan_gen_.453 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.457 = private constant [38 x i8] c"../drivers/infiniband/core/user_mad.c\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.457, i32 1452, i32 3 }
@llvm.compiler.used = appending global [155 x ptr] [ptr @__UNIQUE_ID_alias534, ptr @__UNIQUE_ID_alias535, ptr @__UNIQUE_ID_author496, ptr @__UNIQUE_ID_description497, ptr @__UNIQUE_ID_file498, ptr @__UNIQUE_ID_license499, ptr @__bpf_trace_tp_map_ib_umad_read_recv, ptr @__bpf_trace_tp_map_ib_umad_read_send, ptr @__bpf_trace_tp_map_ib_umad_write, ptr @__event_ib_umad_read_recv, ptr @__event_ib_umad_read_send, ptr @__event_ib_umad_write, ptr @__exitcall_ib_umad_cleanup, ptr @__initcall__kmod_ib_umad__536_1494_ib_umad_init6, ptr @__tracepoint_ib_umad_read_recv, ptr @__tracepoint_ib_umad_read_send, ptr @__tracepoint_ib_umad_write, ptr @__tracepoint_ptr_ib_umad_read_recv, ptr @__tracepoint_ptr_ib_umad_read_send, ptr @__tracepoint_ptr_ib_umad_write, ptr @event_class_ib_umad_template, ptr @event_ib_umad_read_recv, ptr @event_ib_umad_read_send, ptr @event_ib_umad_write, ptr @ib_umad_cleanup, ptr @ib_umad_init._entry, ptr @ib_umad_init._entry.93, ptr @ib_umad_init._entry.96, ptr @ib_umad_init._entry_ptr, ptr @ib_umad_init._entry_ptr.95, ptr @ib_umad_init._entry_ptr.98, ptr @ib_umad_reg_agent._entry, ptr @ib_umad_reg_agent._entry.55, ptr @ib_umad_reg_agent._entry.58, ptr @ib_umad_reg_agent._entry.61, ptr @ib_umad_reg_agent._entry.65, ptr @ib_umad_reg_agent._entry_ptr, ptr @ib_umad_reg_agent._entry_ptr.57, ptr @ib_umad_reg_agent._entry_ptr.60, ptr @ib_umad_reg_agent._entry_ptr.64, ptr @ib_umad_reg_agent._entry_ptr.67, ptr @ib_umad_reg_agent2._entry, ptr @ib_umad_reg_agent2._entry.69, ptr @ib_umad_reg_agent2._entry.71, ptr @ib_umad_reg_agent2._entry.74, ptr @ib_umad_reg_agent2._entry.76, ptr @ib_umad_reg_agent2._entry_ptr, ptr @ib_umad_reg_agent2._entry_ptr.70, ptr @ib_umad_reg_agent2._entry_ptr.73, ptr @ib_umad_reg_agent2._entry_ptr.75, ptr @ib_umad_reg_agent2._entry_ptr.78, ptr @str__ib_umad__trace_system_name, ptr @trace_event_fields_ib_umad_template, ptr @trace_event_type_funcs_ib_umad_template, ptr @print_fmt_ib_umad_template, ptr @issm_client, ptr @umad_client, ptr @umad_class, ptr @dynamic_umad_dev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @umad_ida, ptr @dynamic_issm_dev, ptr @ib_umad_init_port.__key, ptr @.str.36, ptr @.str.37, ptr @umad_fops, ptr @.str.38, ptr @umad_sm_fops, ptr @.str.39, ptr @sema_init.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.72, ptr @.str.77, ptr @ib_umad_open.__key, ptr @.str.79, ptr @ib_umad_open.__key.80, ptr @.str.81, ptr @ib_umad_open.__key.82, ptr @.str.83, ptr @.str.84, ptr @umad_class_groups, ptr @umad_class_dev_groups, ptr @umad_class_group, ptr @umad_class_attrs, ptr @class_attr_abi_version, ptr @.str.85, ptr @.str.86, ptr @umad_class_dev_group, ptr @umad_class_dev_attrs, ptr @dev_attr_ibdev, ptr @dev_attr_port, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @ib_umad_init.__key, ptr @.str.97], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__ib_umad__trace_system_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ib_umad_template to i32), i32 696, i32 864, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ib_umad_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ib_umad_template to i32), i32 915, i32 1152, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ib_umad_write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ib_umad_read_recv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ib_umad_read_send to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @issm_client to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umad_client to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umad_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_umad_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umad_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_issm_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_init_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umad_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umad_sm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_reg_agent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_reg_agent._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_reg_agent._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_reg_agent._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_reg_agent._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_reg_agent2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_reg_agent2._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_reg_agent2._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_reg_agent2._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_reg_agent2._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_open.__key.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_open.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umad_class_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umad_class_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umad_class_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umad_class_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_abi_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umad_class_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umad_class_dev_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ibdev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_port to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_init._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umad_init._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ib_umad_write(ptr nocapture readnone %__data, ptr noundef %file, ptr noundef %umad_hdr, ptr noundef %mad_hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ib_umad_write, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %file, ptr noundef %umad_hdr, ptr noundef %mad_hdr) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ib_umad_read_recv(ptr nocapture readnone %__data, ptr noundef %file, ptr noundef %umad_hdr, ptr noundef %mad_hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ib_umad_read_recv, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %file, ptr noundef %umad_hdr, ptr noundef %mad_hdr) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ib_umad_read_send(ptr nocapture readnone %__data, ptr noundef %file, ptr noundef %umad_hdr, ptr noundef %mad_hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ib_umad_read_send, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %file, ptr noundef %umad_hdr, ptr noundef %mad_hdr) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ib_umad_template(ptr noundef %__data, ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %umad_hdr, ptr nocapture noundef readonly %mad_hdr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !243

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !244

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 96) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %port = getelementptr inbounds %struct.ib_umad_file, ptr %file, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %ib_dev = getelementptr inbounds %struct.ib_umad_port, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ib_dev, align 4
  %index = getelementptr inbounds %struct.ib_device, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 8
  %dev_index = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 27
  %9 = ptrtoint ptr %dev_index to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dev_index, align 8
  %10 = load ptr, ptr %port, align 4
  %port_num = getelementptr inbounds %struct.ib_umad_port, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_num, align 8
  %conv = trunc i32 %12 to i8
  %port_num7 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 1
  %13 = ptrtoint ptr %port_num7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %port_num7, align 8
  %14 = ptrtoint ptr %umad_hdr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %umad_hdr, align 4
  %id8 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 5
  %16 = ptrtoint ptr %id8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %id8, align 4
  %status = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 1
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %status9 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 6
  %19 = ptrtoint ptr %status9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %status9, align 8
  %timeout_ms = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 2
  %20 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeout_ms, align 4
  %timeout_ms10 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 7
  %22 = ptrtoint ptr %timeout_ms10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %timeout_ms10, align 4
  %retries = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 3
  %23 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %retries, align 4
  %retires = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 8
  %25 = ptrtoint ptr %retires to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %retires, align 8
  %length = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 4
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  %length11 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 9
  %28 = ptrtoint ptr %length11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %length11, align 4
  %qpn = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 5
  %29 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qpn, align 4
  %qpn12 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 10
  %31 = ptrtoint ptr %qpn12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %qpn12, align 8
  %qkey = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 6
  %32 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qkey, align 4
  %qkey13 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 11
  %34 = ptrtoint ptr %qkey13 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %qkey13, align 4
  %lid = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 7
  %35 = ptrtoint ptr %lid to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %lid, align 4
  %lid14 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 14
  %37 = ptrtoint ptr %lid14 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %lid14, align 2
  %sl = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 8
  %38 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sl, align 2
  %sl15 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 2
  %40 = ptrtoint ptr %sl15 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %sl15, align 1
  %path_bits = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 9
  %41 = ptrtoint ptr %path_bits to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %path_bits, align 1
  %path_bits16 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 3
  %43 = ptrtoint ptr %path_bits16 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %path_bits16, align 2
  %grh_present = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 10
  %44 = ptrtoint ptr %grh_present to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %grh_present, align 4
  %grh_present17 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 4
  %46 = ptrtoint ptr %grh_present17 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %grh_present17, align 1
  %gid_index = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 11
  %47 = ptrtoint ptr %gid_index to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %gid_index, align 1
  %gid_index18 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 12
  %49 = ptrtoint ptr %gid_index18 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %gid_index18, align 8
  %hop_limit = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 12
  %50 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %hop_limit, align 2
  %hop_limit19 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 13
  %52 = ptrtoint ptr %hop_limit19 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %hop_limit19, align 1
  %traffic_class = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 13
  %53 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %traffic_class, align 1
  %traffic_class20 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 28
  %55 = ptrtoint ptr %traffic_class20 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %traffic_class20, align 4
  %gid = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 26
  %gid21 = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 14
  %56 = call ptr @memcpy(ptr %gid, ptr %gid21, i32 16)
  %flow_label = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 15
  %57 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flow_label, align 4
  %flow_label23 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 21
  %59 = ptrtoint ptr %flow_label23 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %flow_label23, align 4
  %pkey_index = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 16
  %60 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %pkey_index, align 4
  %pkey_index24 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 16
  %62 = ptrtoint ptr %pkey_index24 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %pkey_index24, align 2
  %63 = ptrtoint ptr %mad_hdr to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %mad_hdr, align 8
  %base_version25 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 17
  %65 = ptrtoint ptr %base_version25 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %base_version25, align 8
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 1
  %66 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mgmt_class, align 1
  %mgmt_class26 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 18
  %68 = ptrtoint ptr %mgmt_class26 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %mgmt_class26, align 1
  %class_version = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 2
  %69 = ptrtoint ptr %class_version to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %class_version, align 2
  %class_version27 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 19
  %71 = ptrtoint ptr %class_version27 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %class_version27, align 2
  %method = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 3
  %72 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %method, align 1
  %method28 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 20
  %74 = ptrtoint ptr %method28 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %method28, align 1
  %status29 = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 4
  %75 = ptrtoint ptr %status29 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %status29, align 4
  %mad_status = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 22
  %77 = ptrtoint ptr %mad_status to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %mad_status, align 8
  %class_specific = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 5
  %78 = ptrtoint ptr %class_specific to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %class_specific, align 2
  %class_specific30 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 23
  %80 = ptrtoint ptr %class_specific30 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %class_specific30, align 2
  %tid = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 6
  %81 = ptrtoint ptr %tid to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %tid, align 8
  %tid31 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 25
  %83 = ptrtoint ptr %tid31 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %tid31, align 8
  %attr_id = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 7
  %84 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %attr_id, align 8
  %attr_id32 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 15
  %86 = ptrtoint ptr %attr_id32 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %attr_id32, align 4
  %attr_mod = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 9
  %87 = ptrtoint ptr %attr_mod to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %attr_mod, align 4
  %attr_mod33 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call3, i32 0, i32 24
  %89 = ptrtoint ptr %attr_mod33 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %attr_mod33, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ib_umad_template(ptr noundef %__data, ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %umad_hdr, ptr nocapture noundef readonly %mad_hdr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !245
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !245
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 100, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !233) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %port = getelementptr inbounds %struct.ib_umad_file, ptr %file, i32 0, i32 1
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port, align 4
  %ib_dev = getelementptr inbounds %struct.ib_umad_port, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ib_dev, align 4
  %index = getelementptr inbounds %struct.ib_device, ptr %30, i32 0, i32 25
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index, align 8
  %dev_index = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 27
  %33 = ptrtoint ptr %dev_index to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dev_index, align 8
  %34 = load ptr, ptr %port, align 4
  %port_num = getelementptr inbounds %struct.ib_umad_port, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port_num, align 8
  %conv = trunc i32 %36 to i8
  %port_num18 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 1
  %37 = ptrtoint ptr %port_num18 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv, ptr %port_num18, align 8
  %38 = ptrtoint ptr %umad_hdr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %umad_hdr, align 4
  %id19 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 5
  %40 = ptrtoint ptr %id19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %id19, align 4
  %status = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 1
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status, align 4
  %status20 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 6
  %43 = ptrtoint ptr %status20 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %status20, align 8
  %timeout_ms = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 2
  %44 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %timeout_ms, align 4
  %timeout_ms21 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 7
  %46 = ptrtoint ptr %timeout_ms21 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %timeout_ms21, align 4
  %retries = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 3
  %47 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %retries, align 4
  %retires = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 8
  %49 = ptrtoint ptr %retires to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %retires, align 8
  %length = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 4
  %50 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length, align 4
  %length22 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 9
  %52 = ptrtoint ptr %length22 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %length22, align 4
  %qpn = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 5
  %53 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qpn, align 4
  %qpn23 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 10
  %55 = ptrtoint ptr %qpn23 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %qpn23, align 8
  %qkey = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 6
  %56 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qkey, align 4
  %qkey24 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 11
  %58 = ptrtoint ptr %qkey24 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %qkey24, align 4
  %lid = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 7
  %59 = ptrtoint ptr %lid to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %lid, align 4
  %lid25 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 14
  %61 = ptrtoint ptr %lid25 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %lid25, align 2
  %sl = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 8
  %62 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %sl, align 2
  %sl26 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 2
  %64 = ptrtoint ptr %sl26 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %sl26, align 1
  %path_bits = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 9
  %65 = ptrtoint ptr %path_bits to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %path_bits, align 1
  %path_bits27 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 3
  %67 = ptrtoint ptr %path_bits27 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %path_bits27, align 2
  %grh_present = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 10
  %68 = ptrtoint ptr %grh_present to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %grh_present, align 4
  %grh_present28 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 4
  %70 = ptrtoint ptr %grh_present28 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %grh_present28, align 1
  %gid_index = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 11
  %71 = ptrtoint ptr %gid_index to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %gid_index, align 1
  %gid_index29 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 12
  %73 = ptrtoint ptr %gid_index29 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %gid_index29, align 8
  %hop_limit = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 12
  %74 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %hop_limit, align 2
  %hop_limit30 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 13
  %76 = ptrtoint ptr %hop_limit30 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %hop_limit30, align 1
  %traffic_class = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 13
  %77 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %traffic_class, align 1
  %traffic_class31 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 28
  %79 = ptrtoint ptr %traffic_class31 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %traffic_class31, align 4
  %gid = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 26
  %gid32 = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 14
  %80 = call ptr @memcpy(ptr %gid, ptr %gid32, i32 16)
  %flow_label = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 15
  %81 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flow_label, align 4
  %flow_label34 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 21
  %83 = ptrtoint ptr %flow_label34 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %flow_label34, align 4
  %pkey_index = getelementptr inbounds %struct.ib_user_mad_hdr, ptr %umad_hdr, i32 0, i32 16
  %84 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %pkey_index, align 4
  %pkey_index35 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 16
  %86 = ptrtoint ptr %pkey_index35 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %pkey_index35, align 2
  %87 = ptrtoint ptr %mad_hdr to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %mad_hdr, align 8
  %base_version36 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 17
  %89 = ptrtoint ptr %base_version36 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %base_version36, align 8
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 1
  %90 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mgmt_class, align 1
  %mgmt_class37 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 18
  %92 = ptrtoint ptr %mgmt_class37 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %mgmt_class37, align 1
  %class_version = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 2
  %93 = ptrtoint ptr %class_version to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %class_version, align 2
  %class_version38 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 19
  %95 = ptrtoint ptr %class_version38 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %class_version38, align 2
  %method = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 3
  %96 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %method, align 1
  %method39 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 20
  %98 = ptrtoint ptr %method39 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %method39, align 1
  %status40 = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 4
  %99 = ptrtoint ptr %status40 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %status40, align 4
  %mad_status = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 22
  %101 = ptrtoint ptr %mad_status to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %mad_status, align 8
  %class_specific = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 5
  %102 = ptrtoint ptr %class_specific to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %class_specific, align 2
  %class_specific41 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 23
  %104 = ptrtoint ptr %class_specific41 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %class_specific41, align 2
  %tid = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 6
  %105 = ptrtoint ptr %tid to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %tid, align 8
  %tid42 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 25
  %107 = ptrtoint ptr %tid42 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %tid42, align 8
  %attr_id = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 7
  %108 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %attr_id, align 8
  %attr_id43 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 15
  %110 = ptrtoint ptr %attr_id43 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %attr_id43, align 4
  %attr_mod = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad_hdr, i32 0, i32 9
  %111 = ptrtoint ptr %attr_mod to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %attr_mod, align 4
  %attr_mod44 = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %call13, i32 0, i32 24
  %113 = ptrtoint ptr %attr_mod44 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %attr_mod44, align 4
  %114 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rctx, align 4
  %116 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 100, i32 noundef %115, ptr noundef %__data, i64 noundef 1, ptr noundef %117, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ib_umad_template(ptr noundef %__data, ptr noundef %file, ptr noundef %umad_hdr, ptr noundef %mad_hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %file to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %umad_hdr to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %mad_hdr to i32
  %conv8 = zext i32 %2 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ib_umad_cleanup() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ib_unregister_client(ptr noundef nonnull @issm_client) #14
  tail call void @ib_unregister_client(ptr noundef nonnull @umad_client) #14
  tail call void @class_unregister(ptr noundef nonnull @umad_class) #14
  tail call void @unregister_chrdev_region(i32 noundef 242221056, i32 noundef 128) #14
  %0 = load i32, ptr @dynamic_umad_dev, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 16256) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_umad_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @umad_class, align 4
  %call = tail call i32 @register_chrdev_region(i32 noundef 242221056, i32 noundef 128, ptr noundef %0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @umad_class, align 4
  %call2 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @dynamic_umad_dev, i32 noundef 0, i32 noundef 16256, ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #17
  br label %out_alloc

if.end10:                                         ; preds = %if.end
  %2 = load i32, ptr @dynamic_umad_dev, align 4
  %add = add i32 %2, 8128
  store i32 %add, ptr @dynamic_issm_dev, align 4
  %call12 = tail call i32 @__class_register(ptr noundef nonnull @umad_class, ptr noundef nonnull @ib_umad_init.__key) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #17
  br label %out_chrdev

if.end20:                                         ; preds = %if.end10
  %call21 = tail call i32 @ib_register_client(ptr noundef nonnull @umad_client) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.out_class_crit_edge

if.end20.out_class_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_class

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @ib_register_client(ptr noundef nonnull @issm_client) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %out_client

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out_client:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ib_unregister_client(ptr noundef nonnull @umad_client) #14
  br label %out_class

out_class:                                        ; preds = %out_client, %if.end20.out_class_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end20.out_class_crit_edge ], [ %call25, %out_client ]
  tail call void @class_unregister(ptr noundef nonnull @umad_class) #14
  br label %out_chrdev

out_chrdev:                                       ; preds = %out_class, %do.end17
  %ret.1 = phi i32 [ %call12, %do.end17 ], [ %ret.0, %out_class ]
  %3 = load i32, ptr @dynamic_umad_dev, align 4
  tail call void @unregister_chrdev_region(i32 noundef %3, i32 noundef 16256) #14
  br label %out_alloc

out_alloc:                                        ; preds = %out_chrdev, %do.end7
  %ret.2 = phi i32 [ %call2, %do.end7 ], [ %ret.1, %out_chrdev ]
  tail call void @unregister_chrdev_region(i32 noundef 242221056, i32 noundef 128) #14
  br label %cleanup

cleanup:                                          ; preds = %out_alloc, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end24.cleanup_crit_edge ], [ %call, %do.end ], [ %ret.2, %out_alloc ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ib_umad_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev_index = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_index, align 8
  %port_num = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_num, align 8
  %conv = zext i8 %5 to i32
  %id = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %status = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  %timeout_ms = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout_ms, align 4
  %retires = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %retires to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %retires, align 8
  %length = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %qpn = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qpn, align 8
  %qkey = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qkey, align 4
  %lid = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %lid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %lid, align 2
  %conv1 = zext i16 %21 to i32
  %sl = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sl, align 1
  %conv2 = zext i8 %23 to i32
  %path_bits = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %path_bits to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %path_bits, align 2
  %conv3 = zext i8 %25 to i32
  %grh_present = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %grh_present to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %grh_present, align 1
  %conv4 = zext i8 %27 to i32
  %gid_index = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %gid_index to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %gid_index, align 8
  %conv5 = zext i8 %29 to i32
  %hop_limit = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hop_limit, align 1
  %conv6 = zext i8 %31 to i32
  %traffic_class = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 28
  %32 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %traffic_class, align 4
  %conv7 = zext i8 %33 to i32
  %gid = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 26
  %flow_label = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 21
  %34 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flow_label, align 4
  %pkey_index = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 16
  %36 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pkey_index, align 2
  %conv8 = zext i16 %37 to i32
  %base_version = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 17
  %38 = ptrtoint ptr %base_version to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %base_version, align 8
  %conv9 = zext i8 %39 to i32
  %mgmt_class = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 18
  %40 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mgmt_class, align 1
  %conv10 = zext i8 %41 to i32
  %class_version = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 19
  %42 = ptrtoint ptr %class_version to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %class_version, align 2
  %conv11 = zext i8 %43 to i32
  %method = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 20
  %44 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %method, align 1
  %conv12 = zext i8 %45 to i32
  %mad_status = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 22
  %46 = ptrtoint ptr %mad_status to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mad_status, align 8
  %conv13 = zext i16 %47 to i32
  %class_specific = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 23
  %48 = ptrtoint ptr %class_specific to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %class_specific, align 2
  %conv14 = zext i16 %49 to i32
  %tid = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 25
  %50 = ptrtoint ptr %tid to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %tid, align 8
  %attr_id = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 15
  %52 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %attr_id, align 4
  %conv15 = zext i16 %53 to i32
  %attr_mod = getelementptr inbounds %struct.trace_event_raw_ib_umad_template, ptr %1, i32 0, i32 24
  %54 = ptrtoint ptr %attr_mod to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %attr_mod, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.33, i32 noundef %3, i32 noundef %conv, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, ptr noundef %gid, i32 noundef %35, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14, i64 noundef %51, i32 noundef %conv15, i32 noundef %55) #14
  %call16 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ib_issm_get_nl_info(ptr nocapture noundef readonly %ibdev, ptr noundef %client_data, ptr nocapture noundef %res) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.ib_client_nl_info, ptr %res, i32 0, i32 2
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port1, align 8
  %tobool.not.i = icmp eq ptr %client_data, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.end.i:                                         ; preds = %entry
  %is_switch.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 19
  %2 = ptrtoint ptr %is_switch.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i.i.i = load i8, ptr %is_switch.i.i.i.i, align 4
  %3 = xor i8 %bf.load.i.i.i.i, -1
  %4 = lshr i8 %3, 7
  %.not.i.i.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %.not.i.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %.not.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.if.then_crit_edge, label %land.rhs.i.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

land.rhs.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i.i)
  %tobool.i.i.i.i = icmp slt i8 %bf.load.i.i.i.i, 0
  br i1 %tobool.i.i.i.i, label %land.rhs.i.i.rdma_is_port_valid.exit.i_crit_edge, label %cond.false.i.i.i

land.rhs.i.i.rdma_is_port_valid.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rdma_is_port_valid.exit.i

cond.false.i.i.i:                                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %phys_port_cnt.i.i.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 21
  %5 = ptrtoint ptr %phys_port_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys_port_cnt.i.i.i, align 8
  br label %rdma_is_port_valid.exit.i

rdma_is_port_valid.exit.i:                        ; preds = %cond.false.i.i.i, %land.rhs.i.i.rdma_is_port_valid.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %6, %cond.false.i.i.i ], [ 0, %land.rhs.i.i.rdma_is_port_valid.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %1)
  %cmp2.i.not.i = icmp ult i32 %cond.i.i.i, %1
  br i1 %cmp2.i.not.i, label %rdma_is_port_valid.exit.i.if.then_crit_edge, label %if.end5.i

rdma_is_port_valid.exit.i.if.then_crit_edge:      ; preds = %rdma_is_port_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.end5.i:                                        ; preds = %rdma_is_port_valid.exit.i
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 11
  %7 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %8, i32 %1, i32 1, i32 2
  %9 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end5.i.if.then_crit_edge, label %get_port.exit

if.end5.i.if.then_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

get_port.exit:                                    ; preds = %if.end5.i
  %sub.i = sub i32 %1, %.not.i.i.i
  %arrayidx.i = getelementptr %struct.ib_umad_device, ptr %client_data, i32 0, i32 1, i32 %sub.i
  %cmp.i = icmp ugt ptr %arrayidx.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_port.exit.if.then_crit_edge, label %if.end

get_port.exit.if.then_crit_edge:                  ; preds = %get_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %get_port.exit.if.then_crit_edge, %if.end5.i.if.then_crit_edge, %rdma_is_port_valid.exit.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i10 = phi ptr [ %arrayidx.i, %get_port.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end5.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %rdma_is_port_valid.exit.i.if.then_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.if.then_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i10 to i32
  br label %cleanup

if.end:                                           ; preds = %get_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  %abi = getelementptr inbounds %struct.ib_client_nl_info, ptr %res, i32 0, i32 3
  %12 = ptrtoint ptr %abi to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 5, ptr %abi, align 8
  %sm_dev = getelementptr %struct.ib_umad_device, ptr %client_data, i32 0, i32 1, i32 %sub.i, i32 3
  %cdev = getelementptr inbounds %struct.ib_client_nl_info, ptr %res, i32 0, i32 1
  %13 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sm_dev, ptr %cdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_umad_add_one(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %is_switch.i.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 19
  %0 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %is_switch.i.i, align 4
  %1 = xor i8 %bf.load.i.i, -1
  %2 = lshr i8 %1, 7
  %.not.i = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i)
  %tobool.i.i = icmp slt i8 %bf.load.i.i, 0
  br i1 %tobool.i.i, label %entry.if.end8.i.i_crit_edge, label %cond.false.i

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 21
  %3 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_port_cnt.i, align 8
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %cond.false.i, %entry.if.end8.i.i_crit_edge
  %cond.i = phi i32 [ %4, %cond.false.i ], [ 0, %entry.if.end8.i.i_crit_edge ]
  %sub = xor i32 %.not.i, 1
  %add = add i32 %sub, %cond.i
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 2352) #14
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %8 = or i32 %7, 8
  %retval.0.i = select i1 %6, i32 -1, i32 %8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #18
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.end8.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef 4) #14
  %9 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %.not.i)
  %cmp.not85 = icmp slt i32 %cond.i, %.not.i
  br i1 %cmp.not85, label %if.end.free_crit_edge, label %for.body.lr.ph

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %free

for.body.lr.ph:                                   ; preds = %if.end
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 11
  %parent.i.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 13, i32 0, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %count.088 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %for.inc.for.body_crit_edge ]
  %i.086 = phi i32 [ %.not.i, %for.body.lr.ph ], [ %inc12, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %11, i32 %i.086, i32 1, i32 2
  %12 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %sub7 = sub i32 %i.086, %.not.i
  %arrayidx = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7
  %call.i.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @umad_ida, i32 noundef 0, i32 noundef 8191, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end6.ib_umad_init_port.exit_crit_edge, label %if.end.i

if.end6.ib_umad_init_port.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_umad_init_port.exit

if.end.i:                                         ; preds = %if.end6
  %dev_num.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 9
  %14 = ptrtoint ptr %dev_num.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i.i, ptr %dev_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call.i.i)
  %cmp1.i = icmp ugt i32 %call.i.i, 63
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = load i32, ptr @dynamic_umad_dev, align 4
  %add.i = add nsw i32 %call.i.i, -64
  %sub.i = add i32 %15, %add.i
  %16 = load i32, ptr @dynamic_issm_dev, align 4
  %sub4.i = add i32 %16, %add.i
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %add5.i = add nuw nsw i32 %call.i.i, 242221056
  %add6.i = add nuw nsw i32 %call.i.i, 242221120
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then2.i
  %base_umad.0.i = phi i32 [ %sub.i, %if.then2.i ], [ %add5.i, %if.else.i ]
  %base_issm.0.i = phi i32 [ %sub4.i, %if.then2.i ], [ %add6.i, %if.else.i ]
  %ib_dev.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 7
  %17 = ptrtoint ptr %ib_dev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %device, ptr %ib_dev.i, align 4
  %umad_dev8.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 8
  %18 = ptrtoint ptr %umad_dev8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %umad_dev8.i, align 8
  %port_num9.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 10
  %19 = ptrtoint ptr %port_num9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.086, ptr %port_num9.i, align 16
  %sm_sem.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 4
  %wait_list1.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 4, i32 2
  %20 = ptrtoint ptr %sm_sem.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sm_sem.i, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 4, i32 0, i32 2
  %22 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 16
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 4, i32 0, i32 3
  %23 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 4, i32 0, i32 4
  %24 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 4, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.40, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 4, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.75.0..sroa_idx.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 4, i32 0, i32 4, i32 4
  %27 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 4, i32 0, i32 4, i32 5
  %28 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 4, i32 1
  %29 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i, align 4
  %30 = ptrtoint ptr %wait_list1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %wait_list1.i.i, ptr %wait_list1.i.i, align 8
  %.compoundliteral.sroa.10.0..sroa_idx.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 4, i32 2, i32 1
  %31 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %wait_list1.i.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %file_mutex.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 5
  tail call void @__mutex_init(ptr noundef %file_mutex.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @ib_umad_init_port.__key) #14
  %file_list.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 6
  %32 = ptrtoint ptr %file_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %file_list.i, ptr %file_list.i, align 4
  %prev.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 6, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %file_list.i, ptr %prev.i.i, align 16
  %dev.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 1
  tail call void @device_initialize(ptr noundef %dev.i) #14
  %34 = ptrtoint ptr %umad_dev8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %umad_dev8.i, align 8
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %35, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %35, i32 1, i32 3, i32 1) #14
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #14, !srcloc !246
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end7.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !244

if.end7.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end7.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %37 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.ib_umad_init_port_dev.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !243

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.ib_umad_init_port_dev.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_umad_init_port_dev.exit.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end7.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end7.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %35, i32 noundef %.sink.i.i.i.i.i.i.i) #14
  br label %ib_umad_init_port_dev.exit.i

ib_umad_init_port_dev.exit.i:                     ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.ib_umad_init_port_dev.exit.i_crit_edge
  %class.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 1, i32 33
  %38 = ptrtoint ptr %class.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @umad_class, ptr %class.i.i, align 4
  %39 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i.i, align 8
  %parent1.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 1, i32 1
  %41 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %parent1.i.i, align 16
  %driver_data.i.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 1, i32 8
  %42 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx, ptr %driver_data.i.i.i, align 4
  %release.i.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 1, i32 35
  %43 = ptrtoint ptr %release.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @ib_umad_release_port, ptr %release.i.i, align 4
  %devt.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 1, i32 29
  %44 = ptrtoint ptr %devt.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %base_umad.0.i, ptr %devt.i, align 16
  %45 = ptrtoint ptr %dev_num.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dev_num.i, align 4
  %call13.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef %46) #14
  tail call void @cdev_init(ptr noundef %arrayidx, ptr noundef nonnull @umad_fops) #14
  %owner.i = getelementptr inbounds %struct.cdev, ptr %arrayidx, i32 0, i32 1
  %47 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %owner.i, align 16
  %call17.i = tail call i32 @cdev_device_add(ptr noundef %arrayidx, ptr noundef %dev.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i, label %if.end19.i, label %ib_umad_init_port_dev.exit.i.err_cdev.i_crit_edge

ib_umad_init_port_dev.exit.i.err_cdev.i_crit_edge: ; preds = %ib_umad_init_port_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_cdev.i

if.end19.i:                                       ; preds = %ib_umad_init_port_dev.exit.i
  %sm_dev.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 3
  tail call void @device_initialize(ptr noundef %sm_dev.i) #14
  %48 = ptrtoint ptr %umad_dev8.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %umad_dev8.i, align 8
  %call.i.i.i.i.i.i.i.i80.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %49, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %49, i32 1, i32 3, i32 1) #14
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #14, !srcloc !246
  %asmresult.i.i.i.i.i.i.i.i81.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i81.i)
  %tobool1.not.i.i.i.i.i.i82.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i81.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i82.i, label %if.end19.i.if.end15.sink.split.i.i.i.i.i.i87.i_crit_edge, label %if.else.i.i.i.i.i.i85.i, !prof !244

if.end19.i.if.end15.sink.split.i.i.i.i.i.i87.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i87.i

if.else.i.i.i.i.i.i85.i:                          ; preds = %if.end19.i
  %add.i.i.i.i.i.i83.i = add i32 %asmresult.i.i.i.i.i.i.i.i81.i, 1
  %51 = or i32 %add.i.i.i.i.i.i83.i, %asmresult.i.i.i.i.i.i.i.i81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %.not.i.i.i.i.i.i84.i = icmp sgt i32 %51, -1
  br i1 %.not.i.i.i.i.i.i84.i, label %if.else.i.i.i.i.i.i85.i.ib_umad_init_port_dev.exit93.i_crit_edge, label %if.else.i.i.i.i.i.i85.i.if.end15.sink.split.i.i.i.i.i.i87.i_crit_edge, !prof !243

if.else.i.i.i.i.i.i85.i.if.end15.sink.split.i.i.i.i.i.i87.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i87.i

if.else.i.i.i.i.i.i85.i.ib_umad_init_port_dev.exit93.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_umad_init_port_dev.exit93.i

if.end15.sink.split.i.i.i.i.i.i87.i:              ; preds = %if.else.i.i.i.i.i.i85.i.if.end15.sink.split.i.i.i.i.i.i87.i_crit_edge, %if.end19.i.if.end15.sink.split.i.i.i.i.i.i87.i_crit_edge
  %.sink.i.i.i.i.i.i86.i = phi i32 [ 2, %if.end19.i.if.end15.sink.split.i.i.i.i.i.i87.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i85.i.if.end15.sink.split.i.i.i.i.i.i87.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %49, i32 noundef %.sink.i.i.i.i.i.i86.i) #14
  br label %ib_umad_init_port_dev.exit93.i

ib_umad_init_port_dev.exit93.i:                   ; preds = %if.end15.sink.split.i.i.i.i.i.i87.i, %if.else.i.i.i.i.i.i85.i.ib_umad_init_port_dev.exit93.i_crit_edge
  %class.i88.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 3, i32 33
  %52 = ptrtoint ptr %class.i88.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @umad_class, ptr %class.i88.i, align 4
  %53 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent.i.i, align 8
  %parent1.i90.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 3, i32 1
  %55 = ptrtoint ptr %parent1.i90.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %parent1.i90.i, align 16
  %driver_data.i.i91.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx, ptr %driver_data.i.i91.i, align 4
  %release.i92.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 3, i32 35
  %57 = ptrtoint ptr %release.i92.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ib_umad_release_port, ptr %release.i92.i, align 4
  %devt21.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 3, i32 29
  %58 = ptrtoint ptr %devt21.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %base_issm.0.i, ptr %devt21.i, align 16
  %59 = ptrtoint ptr %dev_num.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dev_num.i, align 4
  %call24.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %sm_dev.i, ptr noundef nonnull @.str.38, i32 noundef %60) #14
  %sm_cdev.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 2
  tail call void @cdev_init(ptr noundef %sm_cdev.i, ptr noundef nonnull @umad_sm_fops) #14
  %owner26.i = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub7, i32 2, i32 1
  %61 = ptrtoint ptr %owner26.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %owner26.i, align 16
  %call29.i = tail call i32 @cdev_device_add(ptr noundef %sm_cdev.i, ptr noundef %sm_dev.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end11, label %err_dev.i

err_dev.i:                                        ; preds = %ib_umad_init_port_dev.exit93.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @put_device(ptr noundef %sm_dev.i) #14
  tail call void @cdev_device_del(ptr noundef %arrayidx, ptr noundef %dev.i) #14
  br label %err_cdev.i

err_cdev.i:                                       ; preds = %err_dev.i, %ib_umad_init_port_dev.exit.i.err_cdev.i_crit_edge
  %ret.0.i = phi i32 [ %call29.i, %err_dev.i ], [ %call17.i, %ib_umad_init_port_dev.exit.i.err_cdev.i_crit_edge ]
  tail call void @put_device(ptr noundef %dev.i) #14
  tail call void @ida_free(ptr noundef nonnull @umad_ida, i32 noundef %call.i.i) #14
  br label %ib_umad_init_port.exit

ib_umad_init_port.exit:                           ; preds = %err_cdev.i, %if.end6.ib_umad_init_port.exit_crit_edge
  %retval.0.i55 = phi i32 [ %ret.0.i, %err_cdev.i ], [ -1, %if.end6.ib_umad_init_port.exit_crit_edge ]
  %dec89 = add i32 %i.086, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dec89, i32 %.not.i)
  %cmp16.not90 = icmp slt i32 %dec89, %.not.i
  br i1 %cmp16.not90, label %ib_umad_init_port.exit.free_crit_edge, label %ib_umad_init_port.exit.while.body_crit_edge

ib_umad_init_port.exit.while.body_crit_edge:      ; preds = %ib_umad_init_port.exit
  br label %while.body

ib_umad_init_port.exit.free_crit_edge:            ; preds = %ib_umad_init_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %free

if.end11:                                         ; preds = %ib_umad_init_port_dev.exit93.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i32 %count.088, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %inc, %if.end11 ], [ %count.088, %for.body.for.inc_crit_edge ]
  %inc12 = add i32 %i.086, 1
  %cmp.not = icmp sgt i32 %inc12, %cond.i
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool13.not = icmp eq i32 %count.1, 0
  br i1 %tobool13.not, label %for.end.free_crit_edge, label %if.end15

for.end.free_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %free

if.end15:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ib_set_client_data(ptr noundef %device, ptr noundef nonnull @umad_client, ptr noundef nonnull %call9.i.i) #14
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %ib_umad_init_port.exit.while.body_crit_edge
  %dec91 = phi i32 [ %dec, %while.cond.backedge.while.body_crit_edge ], [ %dec89, %ib_umad_init_port.exit.while.body_crit_edge ]
  %62 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i57 = getelementptr %struct.ib_port_data, ptr %63, i32 %dec91, i32 1, i32 2
  %64 = ptrtoint ptr %core_cap_flags.i57 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %core_cap_flags.i57, align 4
  %and.i58 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.i59.not = icmp eq i32 %and.i58, 0
  br i1 %tobool.i59.not, label %while.body.while.cond.backedge_crit_edge, label %if.end19

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end19:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %sub21 = sub i32 %dec91, %.not.i
  %arrayidx22 = getelementptr %struct.ib_umad_device, ptr %call9.i.i, i32 0, i32 1, i32 %sub21
  tail call fastcc void @ib_umad_kill_port(ptr noundef %arrayidx22)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end19, %while.body.while.cond.backedge_crit_edge
  %dec = add i32 %dec91, -1
  %cmp16.not = icmp slt i32 %dec, %.not.i
  br i1 %cmp16.not, label %while.cond.backedge.free_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.backedge.free_crit_edge:               ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %free

free:                                             ; preds = %while.cond.backedge.free_crit_edge, %for.end.free_crit_edge, %ib_umad_init_port.exit.free_crit_edge, %if.end.free_crit_edge
  %ret.0 = phi i32 [ -95, %for.end.free_crit_edge ], [ %retval.0.i55, %ib_umad_init_port.exit.free_crit_edge ], [ -95, %if.end.free_crit_edge ], [ %retval.0.i55, %while.cond.backedge.free_crit_edge ]
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !247
  tail call void @llvm.prefetch.p0(ptr nonnull %call9.i.i, i32 1, i32 3, i32 1) #14
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call9.i.i, ptr nonnull %call9.i.i, i32 1, ptr nonnull elementtype(i32) %call9.i.i) #14, !srcloc !248
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i60, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %free
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !243

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call9.i.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i60:                                    ; preds = %free
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !249
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i60, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end15, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i ], [ %ret.0, %if.then.i.i60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_umad_remove_one(ptr nocapture noundef readonly %device, ptr noundef %client_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %is_switch.i.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 19
  %0 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %is_switch.i.i, align 4
  %1 = xor i8 %bf.load.i.i, -1
  %2 = lshr i8 %1, 7
  %.not.i = zext i8 %2 to i32
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 21
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %bf.load.i.i12 = phi i8 [ %bf.load.i.i12.pr, %for.inc ], [ %bf.load.i.i, %entry ]
  %i.0 = phi i32 [ %inc, %for.inc ], [ %.not.i, %entry ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i12)
  %tobool.i.i = icmp slt i8 %bf.load.i.i12, 0
  br i1 %tobool.i.i, label %for.cond.rdma_end_port.exit_crit_edge, label %cond.false.i

for.cond.rdma_end_port.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %rdma_end_port.exit

cond.false.i:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_port_cnt.i, align 8
  br label %rdma_end_port.exit

rdma_end_port.exit:                               ; preds = %cond.false.i, %for.cond.rdma_end_port.exit_crit_edge
  %cond.i = phi i32 [ %4, %cond.false.i ], [ 0, %for.cond.rdma_end_port.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %cond.i)
  %cmp.not = icmp ugt i32 %i.0, %cond.i
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %rdma_end_port.exit
  %5 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %6, i32 %i.0, i32 1, i32 2
  %7 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %9 = xor i8 %bf.load.i.i12, -1
  %10 = lshr i8 %9, 7
  %.not.i15 = zext i8 %10 to i32
  %sub = sub i32 %i.0, %.not.i15
  %arrayidx = getelementptr %struct.ib_umad_device, ptr %client_data, i32 0, i32 1, i32 %sub
  tail call fastcc void @ib_umad_kill_port(ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add i32 %i.0, 1
  %11 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i12.pr = load i8, ptr %is_switch.i.i, align 4
  br label %for.cond

for.end:                                          ; preds = %rdma_end_port.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %client_data, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !247
  tail call void @llvm.prefetch.p0(ptr %client_data, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %client_data, ptr %client_data, i32 1, ptr elementtype(i32) %client_data) #14, !srcloc !248
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ib_umad_dev_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !243

if.end5.i.i.i.i.i.ib_umad_dev_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_umad_dev_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %client_data, i32 noundef 3) #14
  br label %ib_umad_dev_put.exit

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !249
  tail call void @kfree(ptr noundef %client_data) #14
  br label %ib_umad_dev_put.exit

ib_umad_dev_put.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ib_umad_dev_put.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ib_umad_get_nl_info(ptr nocapture noundef readonly %ibdev, ptr noundef %client_data, ptr nocapture noundef %res) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.ib_client_nl_info, ptr %res, i32 0, i32 2
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port1, align 8
  %tobool.not.i = icmp eq ptr %client_data, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.end.i:                                         ; preds = %entry
  %is_switch.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 19
  %2 = ptrtoint ptr %is_switch.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i.i.i = load i8, ptr %is_switch.i.i.i.i, align 4
  %3 = xor i8 %bf.load.i.i.i.i, -1
  %4 = lshr i8 %3, 7
  %.not.i.i.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %.not.i.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %.not.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.if.then_crit_edge, label %land.rhs.i.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

land.rhs.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i.i)
  %tobool.i.i.i.i = icmp slt i8 %bf.load.i.i.i.i, 0
  br i1 %tobool.i.i.i.i, label %land.rhs.i.i.rdma_is_port_valid.exit.i_crit_edge, label %cond.false.i.i.i

land.rhs.i.i.rdma_is_port_valid.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rdma_is_port_valid.exit.i

cond.false.i.i.i:                                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %phys_port_cnt.i.i.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 21
  %5 = ptrtoint ptr %phys_port_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys_port_cnt.i.i.i, align 8
  br label %rdma_is_port_valid.exit.i

rdma_is_port_valid.exit.i:                        ; preds = %cond.false.i.i.i, %land.rhs.i.i.rdma_is_port_valid.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %6, %cond.false.i.i.i ], [ 0, %land.rhs.i.i.rdma_is_port_valid.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %1)
  %cmp2.i.not.i = icmp ult i32 %cond.i.i.i, %1
  br i1 %cmp2.i.not.i, label %rdma_is_port_valid.exit.i.if.then_crit_edge, label %if.end5.i

rdma_is_port_valid.exit.i.if.then_crit_edge:      ; preds = %rdma_is_port_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.end5.i:                                        ; preds = %rdma_is_port_valid.exit.i
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 11
  %7 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %8, i32 %1, i32 1, i32 2
  %9 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end5.i.if.then_crit_edge, label %get_port.exit

if.end5.i.if.then_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

get_port.exit:                                    ; preds = %if.end5.i
  %sub.i = sub i32 %1, %.not.i.i.i
  %arrayidx.i = getelementptr %struct.ib_umad_device, ptr %client_data, i32 0, i32 1, i32 %sub.i
  %cmp.i = icmp ugt ptr %arrayidx.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_port.exit.if.then_crit_edge, label %if.end

get_port.exit.if.then_crit_edge:                  ; preds = %get_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %get_port.exit.if.then_crit_edge, %if.end5.i.if.then_crit_edge, %rdma_is_port_valid.exit.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i10 = phi ptr [ %arrayidx.i, %get_port.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end5.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %rdma_is_port_valid.exit.i.if.then_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.if.then_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i10 to i32
  br label %cleanup

if.end:                                           ; preds = %get_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  %abi = getelementptr inbounds %struct.ib_client_nl_info, ptr %res, i32 0, i32 3
  %12 = ptrtoint ptr %abi to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 5, ptr %abi, align 8
  %dev = getelementptr %struct.ib_umad_device, ptr %client_data, i32 0, i32 1, i32 %sub.i, i32 1
  %cdev = getelementptr inbounds %struct.ib_client_nl_info, ptr %res, i32 0, i32 1
  %13 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %cdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_client_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ib_umad_kill_port(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_cdev = getelementptr inbounds %struct.ib_umad_port, ptr %port, i32 0, i32 2
  %sm_dev = getelementptr inbounds %struct.ib_umad_port, ptr %port, i32 0, i32 3
  tail call void @cdev_device_del(ptr noundef %sm_cdev, ptr noundef %sm_dev) #14
  %dev = getelementptr inbounds %struct.ib_umad_port, ptr %port, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %port, ptr noundef %dev) #14
  %file_mutex = getelementptr inbounds %struct.ib_umad_port, ptr %port, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %file_mutex, i32 noundef 0) #14
  %ib_dev = getelementptr inbounds %struct.ib_umad_port, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %ib_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ib_dev, align 4
  %file_list = getelementptr inbounds %struct.ib_umad_port, ptr %port, i32 0, i32 6
  %1 = ptrtoint ptr %file_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn40 = load ptr, ptr %file_list, align 4
  %cmp.not41 = icmp eq ptr %.pn40, %file_list
  br i1 %cmp.not41, label %entry.for.end14_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end14

for.cond.loopexit:                                ; preds = %for.inc
  %2 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn42, align 4
  %cmp.not = icmp eq ptr %.pn, %file_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end14_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.loopexit.for.end14_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end14

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn42 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn40, %entry.for.body_crit_edge ]
  %file.0 = getelementptr i8, ptr %.pn42, i32 -112
  tail call void @mutex_lock_nested(ptr noundef %file.0, i32 noundef 0) #14
  %agents_dead = getelementptr i8, ptr %.pn42, i32 232
  %3 = ptrtoint ptr %agents_dead to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %agents_dead, align 4
  %recv_wait = getelementptr i8, ptr %.pn42, i32 52
  tail call void @__wake_up(ptr noundef %recv_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  tail call void @mutex_unlock(ptr noundef %file.0) #14
  %agent = getelementptr i8, ptr %.pn42, i32 104
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body
  %id.039 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body5_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr %agent, i32 0, i32 %id.039
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body5.for.inc_crit_edge, label %if.then

for.body5.for.inc_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ib_unregister_mad_agent(ptr noundef nonnull %5) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body5.for.inc_crit_edge
  %inc = add nuw nsw i32 %id.039, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5

for.end14:                                        ; preds = %for.cond.loopexit.for.end14_crit_edge, %entry.for.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef %file_mutex) #14
  %dev_num = getelementptr inbounds %struct.ib_umad_port, ptr %port, i32 0, i32 9
  %6 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_num, align 4
  tail call void @ida_free(ptr noundef nonnull @umad_ida, i32 noundef %7) #14
  tail call void @put_device(ptr noundef %sm_dev) #14
  tail call void @put_device(ptr noundef %dev) #14
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_umad_release_port(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %umad_dev1 = getelementptr inbounds %struct.ib_umad_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %umad_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %umad_dev1, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !247
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #14, !srcloc !248
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ib_umad_dev_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !243

if.end5.i.i.i.i.i.ib_umad_dev_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_umad_dev_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #14
  br label %ib_umad_dev_put.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !249
  tail call void @kfree(ptr noundef %3) #14
  br label %ib_umad_dev_put.exit

ib_umad_dev_put.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ib_umad_dev_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_umad_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %use_pkey_index.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %use_pkey_index.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_pkey_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %cond.i = select i1 %tobool.not.i, i32 56, i32 64
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %count)
  %cmp = icmp ugt i32 %cond.i, %count
  br i1 %cmp, label %entry.cleanup60_crit_edge, label %if.end

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup60

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #14
  %agents_dead = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %agents_dead to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %agents_dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then1

while.cond.preheader:                             ; preds = %if.end
  %recv_list = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %recv_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %recv_list, align 4
  %cmp.i.not121 = icmp eq ptr %7, %recv_list
  br i1 %cmp.i.not121, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %recv_wait = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 6
  br label %while.body

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %1) #14
  br label %cleanup60

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.body.lr.ph
  call void @mutex_unlock(ptr noundef %1) #14
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %while.body.cleanup60_crit_edge

while.body.cleanup60_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup60

if.end9:                                          ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.42, i32 noundef 394) #14
  %10 = ptrtoint ptr %recv_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %recv_list, align 4
  %cmp.i95.not = icmp eq ptr %11, %recv_list
  br i1 %cmp.i95.not, label %if.then16, label %if.end9.if.end32_crit_edge

if.end9.if.end32_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then16:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call18118 = call i32 @prepare_to_wait_event(ptr noundef %recv_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %13 = ptrtoint ptr %recv_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %recv_list, align 4
  %cmp.i97.not119 = icmp eq ptr %14, %recv_list
  br i1 %cmp.i97.not119, label %if.then16.if.end23_crit_edge, label %if.then16.if.end28.thread110_crit_edge

if.then16.if.end28.thread110_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.thread110

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  br label %if.end23

if.end23:                                         ; preds = %cleanup.if.end23_crit_edge, %if.then16.if.end23_crit_edge
  %call18120 = phi i32 [ %call18, %cleanup.if.end23_crit_edge ], [ %call18118, %if.then16.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18120)
  %tobool24.not = icmp eq i32 %call18120, 0
  br i1 %tobool24.not, label %cleanup, label %if.end28

cleanup:                                          ; preds = %if.end23
  call void @schedule() #14
  %call18 = call i32 @prepare_to_wait_event(ptr noundef %recv_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %15 = ptrtoint ptr %recv_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %recv_list, align 4
  %cmp.i97.not = icmp eq ptr %16, %recv_list
  br i1 %cmp.i97.not, label %cleanup.if.end23_crit_edge, label %cleanup.if.end28.thread110_crit_edge

cleanup.if.end28.thread110_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.thread110

cleanup.if.end23_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end28.thread110:                               ; preds = %cleanup.if.end28.thread110_crit_edge, %if.then16.if.end28.thread110_crit_edge
  call void @finish_wait(ptr noundef %recv_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end32

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %cleanup60

if.end32:                                         ; preds = %if.end28.thread110, %if.end9.if.end32_crit_edge
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #14
  %17 = ptrtoint ptr %recv_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %recv_list, align 4
  %cmp.i.not = icmp eq ptr %18, %recv_list
  br i1 %cmp.i.not, label %if.end32.while.body_crit_edge, label %if.end32.while.end_crit_edge

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %if.end32.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %.lcssa = phi ptr [ %7, %while.cond.preheader.while.end_crit_edge ], [ %18, %if.end32.while.end_crit_edge ]
  %19 = ptrtoint ptr %agents_dead to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %agents_dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool35.not = icmp eq i32 %20, 0
  br i1 %tobool35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %1) #14
  br label %cleanup60

if.end38:                                         ; preds = %while.end
  %add.ptr = getelementptr i8, ptr %.lcssa, i32 -8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.lcssa) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end38.list_del.exit_crit_edge

if.end38.list_del.exit_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.lcssa, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end38.list_del.exit_crit_edge
  %27 = ptrtoint ptr %.lcssa to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %.lcssa, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @mutex_unlock(ptr noundef %1) #14
  %recv_wc = getelementptr i8, ptr %.lcssa, i32 -4
  %29 = ptrtoint ptr %recv_wc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %recv_wc, align 4
  %tobool42.not = icmp eq ptr %30, null
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call44 = call fastcc i32 @copy_recv_mad(ptr noundef %1, ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %count)
  br label %if.end46

if.else:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call45 = call fastcc i32 @copy_send_mad(ptr noundef %1, ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %count)
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then43
  %ret.0 = phi i32 [ %call44, %if.then43 ], [ %call45, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp47 = icmp slt i32 %ret.0, 0
  br i1 %cmp47, label %if.then48, label %if.else53

if.then48:                                        ; preds = %if.end46
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #14
  %31 = ptrtoint ptr %recv_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %recv_list, align 4
  %call.i.i99 = call zeroext i1 @__list_add_valid(ptr noundef %.lcssa, ptr noundef %recv_list, ptr noundef %32) #14
  br i1 %call.i.i99, label %if.end.i.i100, label %if.then48.list_add.exit_crit_edge

if.then48.list_add.exit_crit_edge:                ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i100:                                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %.lcssa, ptr %prev1.i.i, align 4
  %34 = ptrtoint ptr %.lcssa to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %.lcssa, align 4
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %recv_list, ptr %prev.i, align 4
  %36 = ptrtoint ptr %recv_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %.lcssa, ptr %recv_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i100, %if.then48.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef %1) #14
  br label %cleanup60

if.else53:                                        ; preds = %if.end46
  %37 = ptrtoint ptr %recv_wc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %recv_wc, align 4
  %tobool55.not = icmp eq ptr %38, null
  br i1 %tobool55.not, label %if.else53.if.end58_crit_edge, label %if.then56

if.else53.if.end58_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then56:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #16
  call void @ib_free_recv_mad(ptr noundef nonnull %38) #14
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.else53.if.end58_crit_edge
  call void @kfree(ptr noundef %add.ptr) #14
  br label %cleanup60

cleanup60:                                        ; preds = %if.end58, %list_add.exit, %if.then36, %if.end28, %while.body.cleanup60_crit_edge, %if.then1, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ -5, %if.then1 ], [ -5, %if.then36 ], [ -22, %entry.cleanup60_crit_edge ], [ -512, %if.end28 ], [ %ret.0, %if.end58 ], [ %ret.0, %list_add.exit ], [ -11, %while.body.cleanup60_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_umad_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %ah_attr = alloca %struct.rdma_ah_attr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ah_attr) #14
  %2 = call ptr @memset(ptr %ah_attr, i32 255, i32 56)
  %use_pkey_index.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %use_pkey_index.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %use_pkey_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %add = select i1 %tobool.not.i, i32 92, i32 100
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp = icmp ugt i32 %add, %count
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 124) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mad = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %use_pkey_index.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_pkey_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i335 = icmp eq i8 %7, 0
  %cond.i336 = select i1 %tobool.not.i335, i32 56, i32 64
  tail call void @__check_object_size(ptr noundef %mad, i32 noundef %cond.i336, i1 noundef zeroext false) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end3.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end3.if.then11.i.i_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end3
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %cond.i336, i32 -1226833920) #20, !srcloc !250
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !243

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mad, i32 noundef %cond.i336) #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !251
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %mad, ptr noundef %buf, i32 noundef %cond.i336) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #14, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end8, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !243

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end3.if.then11.i.i_crit_edge
  %res.0.i.i359 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %cond.i336, %if.end3.if.then11.i.i_crit_edge ], [ %cond.i336, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %cond.i336, %res.0.i.i359
  %add.ptr.i.i = getelementptr i8, ptr %mad, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i359)
  br label %err

if.end8:                                          ; preds = %if.end.i.i
  %13 = ptrtoint ptr %mad to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mad, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %14)
  %cmp10 = icmp ugt i32 %14, 31
  br i1 %cmp10, label %if.end8.err_crit_edge, label %if.end12

if.end8.err_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end12:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %use_pkey_index.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_pkey_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i338 = icmp eq i8 %16, 0
  %cond.i339 = select i1 %tobool.not.i338, i32 56, i32 64
  %add.ptr = getelementptr i8, ptr %buf, i32 %cond.i339
  %data = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #14
  %call.i.i284 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i284, label %if.end12.if.then11.i.i301_crit_edge, label %land.lhs.true.i.i288

if.end12.if.then11.i.i301_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i301

land.lhs.true.i.i288:                             ; preds = %if.end12
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 36, i32 -1226833920) #20, !srcloc !250
  %asmresult.i.i286 = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i286)
  %cmp.i6.i287 = icmp eq i32 %asmresult.i.i286, 0
  br i1 %cmp.i6.i287, label %if.end.i.i298, label %land.lhs.true.i.i288.if.then11.i.i301_crit_edge, !prof !243

land.lhs.true.i.i288.if.then11.i.i301_crit_edge:  ; preds = %land.lhs.true.i.i288
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i301

if.end.i.i298:                                    ; preds = %land.lhs.true.i.i288
  %call.i.i.i289 = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 36) #14
  %18 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i.i.i290 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i290 to ptr
  %cpu_domain.i.i.i.i.i291 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i291) #4, !srcloc !251
  %and.i.i.i.i292 = and i32 %20, -13
  %or.i.i.i.i293 = or i32 %and.i.i.i.i292, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i293) #14, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  %call1.i.i.i294 = tail call i32 @arm_copy_from_user(ptr noundef %data, ptr noundef %add.ptr, i32 noundef 36) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #14, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i294)
  %tobool4.not.i.i297 = icmp eq i32 %call1.i.i.i294, 0
  br i1 %tobool4.not.i.i297, label %if.end18, label %if.end.i.i298.if.then11.i.i301_crit_edge, !prof !243

if.end.i.i298.if.then11.i.i301_crit_edge:         ; preds = %if.end.i.i298
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i301

if.then11.i.i301:                                 ; preds = %if.end.i.i298.if.then11.i.i301_crit_edge, %land.lhs.true.i.i288.if.then11.i.i301_crit_edge, %if.end12.if.then11.i.i301_crit_edge
  %res.0.i.i296364 = phi i32 [ %call1.i.i.i294, %if.end.i.i298.if.then11.i.i301_crit_edge ], [ 36, %if.end12.if.then11.i.i301_crit_edge ], [ 36, %land.lhs.true.i.i288.if.then11.i.i301_crit_edge ]
  %sub.i.i299 = sub i32 36, %res.0.i.i296364
  %add.ptr.i.i300 = getelementptr i8, ptr %data, i32 %sub.i.i299
  %21 = call ptr @memset(ptr %add.ptr.i.i300, i32 0, i32 %res.0.i.i296364)
  br label %err

if.end18:                                         ; preds = %if.end.i.i298
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #14
  tail call fastcc void @trace_ib_umad_write(ptr noundef %1, ptr noundef %mad, ptr noundef %data)
  %agents_dead.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %agents_dead.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %agents_dead.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i340 = icmp eq i32 %23, 0
  br i1 %tobool.not.i340, label %__get_agent.exit, label %if.end18.err_up_crit_edge

if.end18.err_up_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_up

__get_agent.exit:                                 ; preds = %if.end18
  %24 = ptrtoint ptr %mad to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mad, align 8
  %arrayidx.i = getelementptr %struct.ib_umad_file, ptr %1, i32 0, i32 7, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %tobool27.not = icmp eq ptr %27, null
  br i1 %tobool27.not, label %__get_agent.exit.err_up_crit_edge, label %if.end29

__get_agent.exit.err_up_crit_edge:                ; preds = %__get_agent.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_up

if.end29:                                         ; preds = %__get_agent.exit
  %28 = call ptr @memset(ptr %ah_attr, i32 0, i32 56)
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %27, align 4
  %port = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port, align 4
  %port_num = getelementptr inbounds %struct.ib_umad_port, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port_num, align 8
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %30, i32 0, i32 11
  %35 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %36, i32 %34, i32 1, i32 2
  %37 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %38, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.end29.rdma_ah_set_dlid.exit_crit_edge

if.end29.rdma_ah_set_dlid.exit_crit_edge:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %rdma_ah_set_dlid.exit

if.end.i:                                         ; preds = %if.end29
  %and.i13.i = and i32 %38, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.i14.not.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.i14.not.i, label %if.end.i.rdma_ah_set_dlid.exit_crit_edge, label %if.then2.i

if.end.i.rdma_ah_set_dlid.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rdma_ah_set_dlid.exit

if.then2.i:                                       ; preds = %if.end.i
  %and.i17.i = and i32 %38, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %cmp.i.not.i = icmp eq i32 %and.i17.i, 0
  %type377 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  br i1 %cmp.i.not.i, label %if.then.i344, label %if.then4.i

rdma_ah_set_dlid.exit:                            ; preds = %if.end.i.rdma_ah_set_dlid.exit_crit_edge, %if.end29.rdma_ah_set_dlid.exit_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %if.end.i.rdma_ah_set_dlid.exit_crit_edge ], [ 2, %if.end29.rdma_ah_set_dlid.exit_crit_edge ]
  %type371 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %39 = ptrtoint ptr %type371 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i.ph, ptr %type371, align 4
  %sl = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 8
  %40 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sl, align 2
  %sl1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %42 = ptrtoint ptr %sl1.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %sl1.i, align 8
  br label %rdma_ah_set_path_bits.exit

if.then.i344:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %type377 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %type377, align 4
  %lid378 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 7
  %44 = ptrtoint ptr %lid378 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %lid378, align 4
  %46 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %45, ptr %46, align 8
  %sl382 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 8
  %48 = ptrtoint ptr %sl382 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sl382, align 2
  %sl1.i383 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %50 = ptrtoint ptr %sl1.i383 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %sl1.i383, align 8
  %path_bits384 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 9
  %51 = ptrtoint ptr %path_bits384 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %path_bits384, align 1
  %src_path_bits1.i = getelementptr inbounds %struct.ib_ah_attr, ptr %46, i32 0, i32 1
  %53 = ptrtoint ptr %src_path_bits1.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %src_path_bits1.i, align 2
  br label %rdma_ah_set_path_bits.exit

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %type377 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %type377, align 4
  %lid = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 7
  %55 = ptrtoint ptr %lid to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %lid, align 4
  %conv = zext i16 %56 to i32
  %57 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv, ptr %57, align 8
  %sl387 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 8
  %59 = ptrtoint ptr %sl387 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %sl387, align 2
  %sl1.i388 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %61 = ptrtoint ptr %sl1.i388 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %sl1.i388, align 8
  %path_bits389 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 9
  %62 = ptrtoint ptr %path_bits389 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %path_bits389, align 1
  %src_path_bits5.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6, i32 0, i32 1
  %64 = ptrtoint ptr %src_path_bits5.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %src_path_bits5.i, align 4
  br label %rdma_ah_set_path_bits.exit

rdma_ah_set_path_bits.exit:                       ; preds = %if.then4.i, %if.then.i344, %rdma_ah_set_dlid.exit
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %port, align 4
  %port_num38 = getelementptr inbounds %struct.ib_umad_port, ptr %66, i32 0, i32 10
  %67 = ptrtoint ptr %port_num38 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port_num38, align 8
  %port_num1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 3
  %69 = ptrtoint ptr %port_num1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %port_num1.i, align 4
  %grh_present = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 10
  %70 = ptrtoint ptr %grh_present to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %grh_present, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool41.not = icmp eq i8 %71, 0
  br i1 %tobool41.not, label %rdma_ah_set_path_bits.exit.if.end54_crit_edge, label %if.then42

rdma_ah_set_path_bits.exit.if.end54_crit_edge:    ; preds = %rdma_ah_set_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then42:                                        ; preds = %rdma_ah_set_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #16
  %flow_label = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 15
  %72 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flow_label, align 4
  %gid_index = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 11
  %74 = ptrtoint ptr %gid_index to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %gid_index, align 1
  %hop_limit = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 12
  %76 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %hop_limit, align 2
  %traffic_class = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 13
  %78 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %traffic_class, align 1
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 4
  %80 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %ah_flags.i, align 8
  %flow_label2.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 2
  %81 = ptrtoint ptr %flow_label2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %73, ptr %flow_label2.i, align 8
  %sgid_index3.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 3
  %82 = ptrtoint ptr %sgid_index3.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %75, ptr %sgid_index3.i, align 4
  %hop_limit4.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 4
  %83 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %77, ptr %hop_limit4.i, align 1
  %traffic_class5.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 5
  %84 = ptrtoint ptr %traffic_class5.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %79, ptr %traffic_class5.i, align 2
  %85 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %ah_attr, align 8
  %gid = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 14
  %dgid1.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1
  %86 = call ptr @memcpy(ptr %dgid1.i, ptr %gid, i32 16)
  br label %if.end54

if.end54:                                         ; preds = %if.then42, %rdma_ah_set_path_bits.exit.if.end54_crit_edge
  %qp = getelementptr inbounds %struct.ib_mad_agent, ptr %27, i32 0, i32 1
  %87 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %qp, align 4
  %pd = getelementptr inbounds %struct.ib_qp, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pd, align 4
  %call55 = call ptr @rdma_create_user_ah(ptr noundef %90, ptr noundef nonnull %ah_attr, ptr noundef null) #14
  %cmp.i = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %call55 to i32
  br label %err_up

if.end59:                                         ; preds = %if.end54
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %data, i32 0, i32 1
  %92 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %mgmt_class, align 1
  %call63 = call i32 @ib_get_mad_data_offset(i8 noundef zeroext %93) #14
  %94 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %mgmt_class, align 1
  %call66 = call i32 @ib_is_mad_class_rmpp(i8 noundef zeroext %95) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end59.if.end73_crit_edge, label %land.lhs.true

if.end59.if.end73_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

land.lhs.true:                                    ; preds = %if.end59
  %call68 = call i32 @ib_mad_kernel_rmpp_agent(ptr noundef nonnull %27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true.if.end73_crit_edge, label %if.then70

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then70:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %rmpp_hdr = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 1, i32 4
  %rmpp_rtime_flags.i = getelementptr inbounds %struct.ib_rmpp_hdr, ptr %rmpp_hdr, i32 0, i32 2
  %96 = ptrtoint ptr %rmpp_rtime_flags.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %rmpp_rtime_flags.i, align 2
  %98 = and i8 %97, 1
  %and = zext i8 %98 to i32
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %land.lhs.true.if.end73_crit_edge, %if.end59.if.end73_crit_edge
  %copy_offset.0 = phi i32 [ 36, %if.then70 ], [ 24, %land.lhs.true.if.end73_crit_edge ], [ 24, %if.end59.if.end73_crit_edge ]
  %rmpp_active.0 = phi i32 [ %and, %if.then70 ], [ 0, %land.lhs.true.if.end73_crit_edge ], [ 0, %if.end59.if.end73_crit_edge ]
  %99 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %data, align 8
  %101 = ptrtoint ptr %use_pkey_index.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %use_pkey_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i346 = icmp eq i8 %102, 0
  %cond.i347.neg = select i1 %tobool.not.i346, i32 -56, i32 -64
  %sub = add i32 %cond.i347.neg, %count
  %sub78 = sub i32 %sub, %call63
  %qpn = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 5
  %103 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %qpn, align 4
  %pkey_index = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 16
  %105 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %pkey_index, align 8
  %call83 = call ptr @ib_create_send_mad(ptr noundef nonnull %27, i32 noundef %104, i16 noundef zeroext %106, i32 noundef %rmpp_active.0, i32 noundef %call63, i32 noundef %sub78, i32 noundef 3264, i8 noundef zeroext %100) #14
  %107 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call83, ptr %call7.i.i, align 8
  %cmp.i348 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i348, label %if.then86, label %if.end89

if.then86:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  %108 = ptrtoint ptr %call83 to i32
  br label %err_ah

if.end89:                                         ; preds = %if.end73
  %ah91 = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call83, i32 0, i32 3
  %109 = ptrtoint ptr %ah91 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call55, ptr %ah91, align 4
  %timeout_ms = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %110 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %timeout_ms, align 8
  %112 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call7.i.i, align 8
  %timeout_ms95 = getelementptr inbounds %struct.ib_mad_send_buf, ptr %113, i32 0, i32 10
  %114 = ptrtoint ptr %timeout_ms95 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %111, ptr %timeout_ms95, align 4
  %retries = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  %115 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %retries, align 4
  %117 = load ptr, ptr %call7.i.i, align 8
  %retries99 = getelementptr inbounds %struct.ib_mad_send_buf, ptr %117, i32 0, i32 11
  %118 = ptrtoint ptr %retries99 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %116, ptr %retries99, align 4
  %119 = load ptr, ptr %call7.i.i, align 8
  %context = getelementptr inbounds %struct.ib_mad_send_buf, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call7.i.i, ptr %context, align 4
  %121 = load ptr, ptr %call7.i.i, align 8
  %mad102 = getelementptr inbounds %struct.ib_mad_send_buf, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %mad102 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mad102, align 4
  %124 = call ptr @memcpy(ptr %123, ptr %data, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rmpp_active.0)
  %tobool106.not = icmp eq i32 %rmpp_active.0, 0
  %125 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call7.i.i, align 8
  br i1 %tobool106.not, label %if.then107, label %if.else118

if.then107:                                       ; preds = %if.end89
  %mad109 = getelementptr inbounds %struct.ib_mad_send_buf, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %mad109 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mad109, align 4
  %add.ptr110 = getelementptr i8, ptr %128, i32 %copy_offset.0
  %add.ptr111 = getelementptr i8, ptr %add.ptr, i32 %copy_offset.0
  %sub113 = sub i32 %sub, %copy_offset.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub113)
  %cmp9.i.i = icmp slt i32 %sub113, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i311

land.rhs16.i.i:                                   ; preds = %if.then107
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.err_msg_crit_edge, label %if.then27.i.i, !prof !243

land.rhs16.i.i.err_msg_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_msg

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %err_msg

if.then.i.i.i311:                                 ; preds = %if.then107
  call void @__check_object_size(ptr noundef %add.ptr110, i32 noundef %sub113, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #14
  %call.i.i312 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i312, label %if.then.i.i.i311.if.end.i.i326_crit_edge, label %land.lhs.true.i.i316

if.then.i.i.i311.if.end.i.i326_crit_edge:         ; preds = %if.then.i.i.i311
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i326

land.lhs.true.i.i316:                             ; preds = %if.then.i.i.i311
  %129 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr111, i32 %sub113, i32 -1226833920) #20, !srcloc !250
  %asmresult.i.i314 = extractvalue { i32, i32 } %129, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i314)
  %cmp.i6.i315 = icmp eq i32 %asmresult.i.i314, 0
  br i1 %cmp.i6.i315, label %if.then.i7.i323, label %land.lhs.true.i.i316.if.end.i.i326_crit_edge, !prof !243

land.lhs.true.i.i316.if.end.i.i326_crit_edge:     ; preds = %land.lhs.true.i.i316
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i326

if.then.i7.i323:                                  ; preds = %land.lhs.true.i.i316
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i317 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr110, i32 noundef %sub113) #14
  %130 = call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i.i.i318 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i.i.i.i318 to ptr
  %cpu_domain.i.i.i.i.i319 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 4
  %132 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i319) #4, !srcloc !251
  %and.i.i.i.i320 = and i32 %132, -13
  %or.i.i.i.i321 = or i32 %and.i.i.i.i320, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i321) #14, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  %call1.i.i.i322 = call i32 @arm_copy_from_user(ptr noundef %add.ptr110, ptr noundef %add.ptr111, i32 noundef %sub113) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %132) #14, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  br label %if.end.i.i326

if.end.i.i326:                                    ; preds = %if.then.i7.i323, %land.lhs.true.i.i316.if.end.i.i326_crit_edge, %if.then.i.i.i311.if.end.i.i326_crit_edge
  %res.0.i.i324 = phi i32 [ %sub113, %if.then.i.i.i311.if.end.i.i326_crit_edge ], [ %call1.i.i.i322, %if.then.i7.i323 ], [ %sub113, %land.lhs.true.i.i316.if.end.i.i326_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i324)
  %tobool4.not.i.i325 = icmp eq i32 %res.0.i.i324, 0
  br i1 %tobool4.not.i.i325, label %if.end.i.i326.if.end124_crit_edge, label %if.then11.i.i329, !prof !243

if.end.i.i326.if.end124_crit_edge:                ; preds = %if.end.i.i326
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then11.i.i329:                                 ; preds = %if.end.i.i326
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i327 = sub i32 %sub113, %res.0.i.i324
  %add.ptr.i.i328 = getelementptr i8, ptr %add.ptr110, i32 %sub.i.i327
  %133 = call ptr @memset(ptr %add.ptr.i.i328, i32 0, i32 %res.0.i.i324)
  br label %err_msg

if.else118:                                       ; preds = %if.end89
  %call120 = call fastcc i32 @copy_rmpp_mad(ptr noundef %126, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.else118.if.end124_crit_edge, label %if.else118.err_msg_crit_edge

if.else118.err_msg_crit_edge:                     ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_msg

if.else118.if.end124_crit_edge:                   ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.end124:                                        ; preds = %if.else118.if.end124_crit_edge, %if.end.i.i326.if.end124_crit_edge
  %134 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call7.i.i, align 8
  %mad126 = getelementptr inbounds %struct.ib_mad_send_buf, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %mad126 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mad126, align 4
  %call127 = call i32 @ib_response_mad(ptr noundef %137) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then129, label %if.end124.if.end138_crit_edge

if.end124.if.end138_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138

if.then129:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  %138 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %call7.i.i, align 8
  %mad131 = getelementptr inbounds %struct.ib_mad_send_buf, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %mad131 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mad131, align 4
  %tid132 = getelementptr inbounds %struct.ib_mad_hdr, ptr %141, i32 0, i32 6
  %hi_tid = getelementptr inbounds %struct.ib_mad_agent, ptr %27, i32 0, i32 5
  %142 = ptrtoint ptr %hi_tid to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %hi_tid, align 4
  %conv133 = zext i32 %143 to i64
  %shl = shl nuw i64 %conv133, 32
  %144 = ptrtoint ptr %tid132 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %tid132, align 8
  %and135 = and i64 %145, 4294967295
  %or = or i64 %shl, %and135
  store i64 %or, ptr %tid132, align 8
  %tid137 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 1, i32 2
  %146 = ptrtoint ptr %tid137 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %or, ptr %tid137, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then129, %if.end124.if.end138_crit_edge
  %call139 = call i32 @ib_mad_kernel_rmpp_agent(ptr noundef nonnull %27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %land.lhs.true141, label %if.end138.if.else154_crit_edge

if.end138.if.else154_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else154

land.lhs.true141:                                 ; preds = %if.end138
  %147 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %mgmt_class, align 1
  %call144 = call i32 @ib_is_mad_class_rmpp(i8 noundef zeroext %148) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %land.lhs.true141.if.else154_crit_edge, label %land.lhs.true146

land.lhs.true141.if.else154_crit_edge:            ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else154

land.lhs.true146:                                 ; preds = %land.lhs.true141
  %rmpp_hdr147 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 1, i32 4
  %rmpp_rtime_flags.i349 = getelementptr inbounds %struct.ib_rmpp_hdr, ptr %rmpp_hdr147, i32 0, i32 2
  %149 = ptrtoint ptr %rmpp_rtime_flags.i349 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %rmpp_rtime_flags.i349, align 2
  %151 = and i8 %150, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool151.not = icmp eq i8 %151, 0
  br i1 %tobool151.not, label %land.lhs.true146.if.else154_crit_edge, label %if.then152

land.lhs.true146.if.else154_crit_edge:            ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else154

if.then152:                                       ; preds = %land.lhs.true146
  %send_lock = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 5
  call void @_raw_spin_lock_irq(ptr noundef %send_lock) #14
  %list = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 2
  %send_list = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 3, i32 1
  %152 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i, align 4
  %call.i.i350 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %153, ptr noundef %send_list) #14
  br i1 %call.i.i350, label %if.end.i.i351, label %if.then152.if.end166_crit_edge

if.then152.if.end166_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end166

if.end.i.i351:                                    ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #16
  %154 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %list, ptr %prev.i, align 4
  %155 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %send_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 2, i32 1
  %156 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev3.i.i, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %list, ptr %153, align 4
  br label %if.end166

if.else154:                                       ; preds = %land.lhs.true146.if.else154_crit_edge, %land.lhs.true141.if.else154_crit_edge, %if.end138.if.else154_crit_edge
  %send_lock155 = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 5
  call void @_raw_spin_lock_irq(ptr noundef %send_lock155) #14
  %call156 = call fastcc i32 @is_duplicate(ptr noundef %1, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.then158, label %if.then164.critedge

if.then158:                                       ; preds = %if.else154
  %list159 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 2
  %send_list160 = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 3
  %prev.i352 = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 3, i32 1
  %158 = ptrtoint ptr %prev.i352 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %prev.i352, align 4
  %call.i.i353 = call zeroext i1 @__list_add_valid(ptr noundef %list159, ptr noundef %159, ptr noundef %send_list160) #14
  br i1 %call.i.i353, label %if.end.i.i355, label %if.then158.if.end166_crit_edge

if.then158.if.end166_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end166

if.end.i.i355:                                    ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #16
  %160 = ptrtoint ptr %prev.i352 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %list159, ptr %prev.i352, align 4
  %161 = ptrtoint ptr %list159 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %send_list160, ptr %list159, align 8
  %prev3.i.i354 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 2, i32 1
  %162 = ptrtoint ptr %prev3.i.i354 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %159, ptr %prev3.i.i354, align 4
  %163 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %list159, ptr %159, align 4
  br label %if.end166

if.then164.critedge:                              ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock_irq(ptr noundef %send_lock155) #14
  br label %err_msg

if.end166:                                        ; preds = %if.end.i.i355, %if.then158.if.end166_crit_edge, %if.end.i.i351, %if.then152.if.end166_crit_edge
  %send_lock155.sink = phi ptr [ %send_lock, %if.then152.if.end166_crit_edge ], [ %send_lock, %if.end.i.i351 ], [ %send_lock155, %if.then158.if.end166_crit_edge ], [ %send_lock155, %if.end.i.i355 ]
  call void @_raw_spin_unlock_irq(ptr noundef %send_lock155.sink) #14
  %164 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %call7.i.i, align 8
  %call168 = call i32 @ib_post_send_mad(ptr noundef %165, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end171, label %err_send

if.end171:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %1) #14
  br label %cleanup

err_send:                                         ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @dequeue_send(ptr noundef %1, ptr noundef nonnull %call7.i.i)
  br label %err_msg

err_msg:                                          ; preds = %err_send, %if.then164.critedge, %if.else118.err_msg_crit_edge, %if.then11.i.i329, %if.then27.i.i, %land.rhs16.i.i.err_msg_crit_edge
  %ret.0 = phi i32 [ %call120, %if.else118.err_msg_crit_edge ], [ -22, %if.then164.critedge ], [ %call168, %err_send ], [ -14, %if.then11.i.i329 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.err_msg_crit_edge ]
  %166 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %call7.i.i, align 8
  call void @ib_free_send_mad(ptr noundef %167) #14
  br label %err_ah

err_ah:                                           ; preds = %err_msg, %if.then86
  %ret.1 = phi i32 [ %108, %if.then86 ], [ %ret.0, %err_msg ]
  call fastcc void @rdma_destroy_ah(ptr noundef %call55)
  br label %err_up

err_up:                                           ; preds = %err_ah, %if.then57, %__get_agent.exit.err_up_crit_edge, %if.end18.err_up_crit_edge
  %ret.2 = phi i32 [ %91, %if.then57 ], [ %ret.1, %err_ah ], [ -5, %__get_agent.exit.err_up_crit_edge ], [ -5, %if.end18.err_up_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #14
  br label %err

err:                                              ; preds = %err_up, %if.then11.i.i301, %if.end8.err_crit_edge, %if.then11.i.i
  %ret.3 = phi i32 [ %ret.2, %err_up ], [ -22, %if.end8.err_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i301 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end171, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err ], [ %count, %if.end171 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ah_attr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_umad_poll(ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #14
  %recv_wait = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %recv_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %recv_wait, ptr noundef nonnull %wait) #14
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %recv_list = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %recv_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %recv_list, align 4
  %cmp.i.not = icmp eq ptr %5, %recv_list
  %spec.select = select i1 %cmp.i.not, i32 260, i32 325
  %agents_dead = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %agents_dead to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %agents_dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  %mask.1 = select i1 %tobool1.not, i32 %spec.select, i32 8
  tail call void @mutex_unlock(ptr noundef %1) #14
  ret i32 %mask.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_umad_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %ureq.i32 = alloca %struct.ib_user_mad_reg_req2, align 8
  %req.i33 = alloca %struct.ib_mad_reg_req, align 4
  %ureq.i = alloca %struct.ib_user_mad_reg_req, align 4
  %req.i = alloca %struct.ib_mad_reg_req, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 -1071899903, label %sw.bb
    i32 1074010882, label %sw.bb1
    i32 6915, label %sw.bb4
    i32 -1071113468, label %sw.bb7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb:                                            ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %3 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ureq.i) #14
  %4 = call ptr @memset(ptr %ureq.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req.i) #14
  %5 = call ptr @memset(ptr %req.i, i32 255, i32 24)
  %port.i = getelementptr inbounds %struct.ib_umad_file, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  %file_mutex.i = getelementptr inbounds %struct.ib_umad_port, ptr %7, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %file_mutex.i, i32 noundef 0) #14
  tail call void @mutex_lock_nested(ptr noundef %2, i32 noundef 0) #14
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i, align 4
  %ib_dev.i = getelementptr inbounds %struct.ib_umad_port, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %ib_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ib_dev.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end8.i.i.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.ib_umad_port, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #17
  br label %out.i

if.end8.i.i.i:                                    ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #14
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 28, i32 -1226833920) #20, !srcloc !250
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !243

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ureq.i, i32 noundef 28) #14
  %13 = call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !251
  %and.i.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #14, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ureq.i, ptr noundef %3, i32 noundef 28) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #14, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end5.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !243

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i4.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 28, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 28, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 28, %res.0.i.i4.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ureq.i, i32 %sub.i.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i4.i)
  br label %out.i

if.end5.i:                                        ; preds = %if.end.i.i.i
  %qpn.i = getelementptr inbounds %struct.ib_user_mad_reg_req, ptr %ureq.i, i32 0, i32 2
  %17 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %qpn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %switch.i = icmp ult i8 %18, 2
  br i1 %switch.i, label %for.cond.preheader.i, label %do.end14.i

for.cond.preheader.i:                             ; preds = %if.end5.i
  %agents_dead.i.i = getelementptr inbounds %struct.ib_umad_file, ptr %2, i32 0, i32 8
  %19 = ptrtoint ptr %agents_dead.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %agents_dead.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.found.i.split_crit_edge

for.cond.preheader.i.found.i.split_crit_edge:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %found.i.split

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

do.end14.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = zext i8 %18 to i32
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port.i, align 4
  %dev16.i = getelementptr inbounds %struct.ib_umad_port, ptr %22, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev16.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.52, i32 noundef %conv.i) #17
  br label %out.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %agent_id.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ib_umad_file, ptr %2, i32 0, i32 7, i32 %agent_id.010.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool23.not.i = icmp eq ptr %24, null
  br i1 %tobool23.not.i, label %for.body.i.found.i.split_crit_edge, label %for.inc.i

for.body.i.found.i.split_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %found.i.split

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %agent_id.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %do.end28.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end28.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port.i, align 4
  %dev30.i = getelementptr inbounds %struct.ib_umad_port, ptr %26, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev30.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.52, i32 noundef 32) #17
  br label %out.i

found.i.split:                                    ; preds = %for.body.i.found.i.split_crit_edge, %for.cond.preheader.i.found.i.split_crit_edge
  %agent_id.010.lcssa.i.split = phi i32 [ 0, %for.cond.preheader.i.found.i.split_crit_edge ], [ %agent_id.010.i, %for.body.i.found.i.split_crit_edge ]
  %mgmt_class.i = getelementptr inbounds %struct.ib_user_mad_reg_req, ptr %ureq.i, i32 0, i32 3
  %27 = ptrtoint ptr %mgmt_class.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mgmt_class.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool31.not.i = icmp eq i8 %28, 0
  br i1 %tobool31.not.i, label %found.i.split.if.end60.i_crit_edge, label %if.then32.i

found.i.split.if.end60.i_crit_edge:               ; preds = %found.i.split
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60.i

if.then32.i:                                      ; preds = %found.i.split
  call void @__sanitizer_cov_trace_pc() #16
  %29 = getelementptr inbounds i8, ptr %req.i, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %29, align 4
  %31 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %28, ptr %req.i, align 4
  %mgmt_class_version.i = getelementptr inbounds %struct.ib_user_mad_reg_req, ptr %ureq.i, i32 0, i32 4
  %32 = ptrtoint ptr %mgmt_class_version.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mgmt_class_version.i, align 2
  %mgmt_class_version35.i = getelementptr inbounds %struct.ib_mad_reg_req, ptr %req.i, i32 0, i32 1
  %34 = ptrtoint ptr %mgmt_class_version35.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %mgmt_class_version35.i, align 1
  %oui.i = getelementptr inbounds %struct.ib_mad_reg_req, ptr %req.i, i32 0, i32 2
  %oui36.i = getelementptr inbounds %struct.ib_user_mad_reg_req, ptr %ureq.i, i32 0, i32 5
  %35 = call ptr @memcpy(ptr %oui.i, ptr %oui36.i, i32 3)
  %method_mask55.i = getelementptr inbounds %struct.ib_mad_reg_req, ptr %req.i, i32 0, i32 3
  %method_mask57.i = getelementptr inbounds %struct.ib_user_mad_reg_req, ptr %ureq.i, i32 0, i32 1
  %36 = call ptr @memcpy(ptr %method_mask55.i, ptr %method_mask57.i, i32 16)
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then32.i, %found.i.split.if.end60.i_crit_edge
  %req..i = phi ptr [ %req.i, %if.then32.i ], [ null, %found.i.split.if.end60.i_crit_edge ]
  %37 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port.i, align 4
  %ib_dev62.i = getelementptr inbounds %struct.ib_umad_port, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %ib_dev62.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ib_dev62.i, align 4
  %port_num.i = getelementptr inbounds %struct.ib_umad_port, ptr %38, i32 0, i32 10
  %41 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool66.not.i = icmp ne i8 %18, 0
  %cond.i = zext i1 %tobool66.not.i to i32
  %rmpp_version.i = getelementptr inbounds %struct.ib_user_mad_reg_req, ptr %ureq.i, i32 0, i32 6
  %43 = ptrtoint ptr %rmpp_version.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rmpp_version.i, align 2
  %call71.i = call ptr @ib_register_mad_agent(ptr noundef %40, i32 noundef %42, i32 noundef %cond.i, ptr noundef %req..i, i8 noundef zeroext %44, ptr noundef nonnull @send_handler, ptr noundef nonnull @recv_handler, ptr noundef %2, i32 noundef 0) #14
  %cmp.i.i = icmp ugt ptr %call71.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then73.i, label %if.end75.i

if.then73.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %call71.i to i32
  br label %out.i

if.end75.i:                                       ; preds = %if.end60.i
  call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 750) #14
  %46 = call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !251
  %and.i.i = and i32 %48, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #14, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  %49 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %agent_id.010.lcssa.i.split, i32 -1226833921) #14, !srcloc !254
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #14, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool81.not.i = icmp eq i32 %49, 0
  br i1 %tobool81.not.i, label %if.end83.i, label %if.end75.i.out.i_crit_edge

if.end75.i.out.i_crit_edge:                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end83.i:                                       ; preds = %if.end75.i
  %already_used.i = getelementptr inbounds %struct.ib_umad_file, ptr %2, i32 0, i32 10
  %50 = ptrtoint ptr %already_used.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %already_used.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool84.not.i = icmp eq i8 %51, 0
  br i1 %tobool84.not.i, label %if.then85.i, label %if.end83.i.if.end102.i_crit_edge

if.end83.i.if.end102.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102.i

if.then85.i:                                      ; preds = %if.end83.i
  %52 = ptrtoint ptr %already_used.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %already_used.i, align 1
  %use_pkey_index.i = getelementptr inbounds %struct.ib_umad_file, ptr %2, i32 0, i32 9
  %53 = ptrtoint ptr %use_pkey_index.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %use_pkey_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool87.not.i = icmp eq i8 %54, 0
  br i1 %tobool87.not.i, label %do.end91.i, label %if.then85.i.if.end102.i_crit_edge

if.then85.i.if.end102.i_crit_edge:                ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102.i

do.end91.i:                                       ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port.i, align 4
  %dev93.i = getelementptr inbounds %struct.ib_umad_port, ptr %56, i32 0, i32 1
  %57 = call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i1.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i1.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev93.i, ptr noundef nonnull @.str.62, ptr noundef %comm.i) #17
  %61 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %port.i, align 4
  %dev100.i = getelementptr inbounds %struct.ib_umad_port, ptr %62, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev100.i, ptr noundef nonnull @.str.66) #17
  br label %if.end102.i

if.end102.i:                                      ; preds = %do.end91.i, %if.then85.i.if.end102.i_crit_edge, %if.end83.i.if.end102.i_crit_edge
  %arrayidx104.i = getelementptr %struct.ib_umad_file, ptr %2, i32 0, i32 7, i32 %agent_id.010.lcssa.i.split
  %63 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call71.i, ptr %arrayidx104.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end102.i, %if.end75.i.out.i_crit_edge, %if.then73.i, %do.end28.i, %do.end14.i, %if.then11.i.i.i, %do.end.i
  %ret.0.i = phi i32 [ -22, %do.end14.i ], [ %45, %if.then73.i ], [ 0, %if.end102.i ], [ -12, %do.end28.i ], [ -32, %do.end.i ], [ -14, %if.end75.i.out.i_crit_edge ], [ -14, %if.then11.i.i.i ]
  %agent.0.i = phi ptr [ null, %do.end14.i ], [ null, %if.then73.i ], [ %call71.i, %if.end102.i ], [ null, %do.end28.i ], [ null, %do.end.i ], [ %call71.i, %if.end75.i.out.i_crit_edge ], [ null, %if.then11.i.i.i ]
  call void @mutex_unlock(ptr noundef %2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool106.not.i = icmp eq i32 %ret.0.i, 0
  %tobool108.not.i = icmp eq ptr %agent.0.i, null
  %or.cond.i = or i1 %tobool106.not.i, %tobool108.not.i
  br i1 %or.cond.i, label %out.i.ib_umad_reg_agent.exit_crit_edge, label %if.then109.i

out.i.ib_umad_reg_agent.exit_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_umad_reg_agent.exit

if.then109.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @ib_unregister_mad_agent(ptr noundef nonnull %agent.0.i) #14
  br label %ib_umad_reg_agent.exit

ib_umad_reg_agent.exit:                           ; preds = %if.then109.i, %out.i.ib_umad_reg_agent.exit_crit_edge
  %64 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port.i, align 4
  %file_mutex112.i = getelementptr inbounds %struct.ib_umad_port, ptr %65, i32 0, i32 5
  call void @mutex_unlock(ptr noundef %file_mutex112.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ureq.i) #14
  br label %return

sw.bb1:                                           ; preds = %entry
  %private_data2 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %66 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %private_data2, align 4
  %68 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 896) #14
  %69 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i15 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i15 to ptr
  %cpu_domain.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 4
  %71 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i16) #4, !srcloc !251
  %and.i.i17 = and i32 %71, -13
  %or.i.i18 = or i32 %and.i.i17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i18) #14, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  %72 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %68, i32 -1226833921) #14, !srcloc !255
  %asmresult.i = extractvalue { i32, i32 } %72, 0
  %asmresult1.i = extractvalue { i32, i32 } %72, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #14, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i19 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i19, label %if.end.i, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %asmresult1.i)
  %cmp.i = icmp ugt i32 %asmresult1.i, 31
  br i1 %cmp.i, label %if.end.i.return_crit_edge, label %if.end4.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end4.i:                                        ; preds = %if.end.i
  %port.i20 = getelementptr inbounds %struct.ib_umad_file, ptr %67, i32 0, i32 1
  %73 = ptrtoint ptr %port.i20 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %port.i20, align 4
  %file_mutex.i21 = getelementptr inbounds %struct.ib_umad_port, ptr %74, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %file_mutex.i21, i32 noundef 0) #14
  tail call void @mutex_lock_nested(ptr noundef %67, i32 noundef 0) #14
  %75 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %asmresult1.i, i32 32) #14, !srcloc !256
  %agents_dead.i.i22 = getelementptr inbounds %struct.ib_umad_file, ptr %67, i32 0, i32 8
  %76 = ptrtoint ptr %agents_dead.i.i22 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %agents_dead.i.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i.i23 = icmp eq i32 %77, 0
  br i1 %tobool.not.i.i23, label %__get_agent.exit.i25, label %if.end4.i.out.thread.i_crit_edge

if.end4.i.out.thread.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread.i

__get_agent.exit.i25:                             ; preds = %if.end4.i
  %and.i = and i32 %75, %asmresult1.i
  %arrayidx.i.i24 = getelementptr %struct.ib_umad_file, ptr %67, i32 0, i32 7, i32 %and.i
  %78 = ptrtoint ptr %arrayidx.i.i24 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i24, align 4
  %tobool11.not.i = icmp eq ptr %79, null
  br i1 %tobool11.not.i, label %__get_agent.exit.i25.out.thread.i_crit_edge, label %if.then19.i

__get_agent.exit.i25.out.thread.i_crit_edge:      ; preds = %__get_agent.exit.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread.i

out.thread.i:                                     ; preds = %__get_agent.exit.i25.out.thread.i_crit_edge, %if.end4.i.out.thread.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %67) #14
  br label %if.end20.i

if.then19.i:                                      ; preds = %__get_agent.exit.i25
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %arrayidx.i.i24 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arrayidx.i.i24, align 4
  tail call void @mutex_unlock(ptr noundef %67) #14
  tail call void @ib_unregister_mad_agent(ptr noundef nonnull %79) #14
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %out.thread.i
  %ret.042.i = phi i32 [ -22, %out.thread.i ], [ 0, %if.then19.i ]
  %81 = ptrtoint ptr %port.i20 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %port.i20, align 4
  %file_mutex22.i = getelementptr inbounds %struct.ib_umad_port, ptr %82, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %file_mutex22.i) #14
  br label %return

sw.bb4:                                           ; preds = %entry
  %private_data5 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %83 = ptrtoint ptr %private_data5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %private_data5, align 4
  tail call void @mutex_lock_nested(ptr noundef %84, i32 noundef 0) #14
  %already_used.i27 = getelementptr inbounds %struct.ib_umad_file, ptr %84, i32 0, i32 10
  %85 = ptrtoint ptr %already_used.i27 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %already_used.i27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i28 = icmp eq i8 %86, 0
  br i1 %tobool.not.i28, label %if.else.i, label %sw.bb4.ib_umad_enable_pkey.exit_crit_edge

sw.bb4.ib_umad_enable_pkey.exit_crit_edge:        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_umad_enable_pkey.exit

if.else.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  %use_pkey_index.i29 = getelementptr inbounds %struct.ib_umad_file, ptr %84, i32 0, i32 9
  %87 = ptrtoint ptr %use_pkey_index.i29 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %use_pkey_index.i29, align 4
  br label %ib_umad_enable_pkey.exit

ib_umad_enable_pkey.exit:                         ; preds = %if.else.i, %sw.bb4.ib_umad_enable_pkey.exit_crit_edge
  %ret.0.i30 = phi i32 [ 0, %if.else.i ], [ -22, %sw.bb4.ib_umad_enable_pkey.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %84) #14
  br label %return

sw.bb7:                                           ; preds = %entry
  %private_data8 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %88 = ptrtoint ptr %private_data8 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %private_data8, align 4
  %90 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ureq.i32) #14
  %91 = call ptr @memset(ptr %ureq.i32, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req.i33) #14
  %92 = call ptr @memset(ptr %req.i33, i32 255, i32 24)
  %port.i34 = getelementptr inbounds %struct.ib_umad_file, ptr %89, i32 0, i32 1
  %93 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %port.i34, align 4
  %file_mutex.i35 = getelementptr inbounds %struct.ib_umad_port, ptr %94, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %file_mutex.i35, i32 noundef 0) #14
  tail call void @mutex_lock_nested(ptr noundef %89, i32 noundef 0) #14
  %95 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %port.i34, align 4
  %ib_dev.i36 = getelementptr inbounds %struct.ib_umad_port, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %ib_dev.i36 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ib_dev.i36, align 4
  %tobool.not.i37 = icmp eq ptr %98, null
  br i1 %tobool.not.i37, label %do.end.i39, label %if.end8.i.i.i41

do.end.i39:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i38 = getelementptr inbounds %struct.ib_umad_port, ptr %96, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev.i38, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.68) #17
  br label %out.i88

if.end8.i.i.i41:                                  ; preds = %sw.bb7
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #14
  %call.i.i.i40 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i40, label %if.end8.i.i.i41.if.then11.i.i.i55_crit_edge, label %land.lhs.true.i.i.i44

if.end8.i.i.i41.if.then11.i.i.i55_crit_edge:      ; preds = %if.end8.i.i.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i55

land.lhs.true.i.i.i44:                            ; preds = %if.end8.i.i.i41
  %99 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %90, i32 40, i32 -1226833920) #20, !srcloc !250
  %asmresult.i.i.i42 = extractvalue { i32, i32 } %99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i42)
  %cmp.i6.i.i43 = icmp eq i32 %asmresult.i.i.i42, 0
  br i1 %cmp.i6.i.i43, label %if.end.i.i.i52, label %land.lhs.true.i.i.i44.if.then11.i.i.i55_crit_edge, !prof !243

land.lhs.true.i.i.i44.if.then11.i.i.i55_crit_edge: ; preds = %land.lhs.true.i.i.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i55

if.end.i.i.i52:                                   ; preds = %land.lhs.true.i.i.i44
  %call.i.i.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ureq.i32, i32 noundef 40) #14
  %100 = call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i.i.i.i46 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i.i.i.i.i46 to ptr
  %cpu_domain.i.i.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 4
  %102 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i47) #4, !srcloc !251
  %and.i.i.i.i.i48 = and i32 %102, -13
  %or.i.i.i.i.i49 = or i32 %and.i.i.i.i.i48, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i49) #14, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  %call1.i.i.i.i50 = call i32 @arm_copy_from_user(ptr noundef nonnull %ureq.i32, ptr noundef %90, i32 noundef 40) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %102) #14, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i50)
  %tobool4.not.i.i.i51 = icmp eq i32 %call1.i.i.i.i50, 0
  br i1 %tobool4.not.i.i.i51, label %if.end5.i58, label %if.end.i.i.i52.if.then11.i.i.i55_crit_edge, !prof !243

if.end.i.i.i52.if.then11.i.i.i55_crit_edge:       ; preds = %if.end.i.i.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i55

if.then11.i.i.i55:                                ; preds = %if.end.i.i.i52.if.then11.i.i.i55_crit_edge, %land.lhs.true.i.i.i44.if.then11.i.i.i55_crit_edge, %if.end8.i.i.i41.if.then11.i.i.i55_crit_edge
  %res.0.i.i157.i = phi i32 [ %call1.i.i.i.i50, %if.end.i.i.i52.if.then11.i.i.i55_crit_edge ], [ 40, %if.end8.i.i.i41.if.then11.i.i.i55_crit_edge ], [ 40, %land.lhs.true.i.i.i44.if.then11.i.i.i55_crit_edge ]
  %sub.i.i.i53 = sub i32 40, %res.0.i.i157.i
  %add.ptr.i.i.i54 = getelementptr i8, ptr %ureq.i32, i32 %sub.i.i.i53
  %103 = call ptr @memset(ptr %add.ptr.i.i.i54, i32 0, i32 %res.0.i.i157.i)
  br label %out.i88

if.end5.i58:                                      ; preds = %if.end.i.i.i52
  %qpn.i56 = getelementptr inbounds %struct.ib_user_mad_reg_req2, ptr %ureq.i32, i32 0, i32 1
  %104 = ptrtoint ptr %qpn.i56 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %qpn.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %105)
  %switch.i57 = icmp ult i32 %105, 2
  br i1 %switch.i57, label %if.end15.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end5.i58
  call void @__sanitizer_cov_trace_pc() #16
  %106 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %port.i34, align 4
  %dev13.i = getelementptr inbounds %struct.ib_umad_port, ptr %107, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev13.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.68, i32 noundef %105) #17
  br label %out.i88

if.end15.i:                                       ; preds = %if.end5.i58
  %flags.i = getelementptr inbounds %struct.ib_user_mad_reg_req2, ptr %ureq.i32, i32 0, i32 5
  %108 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %tobool16.not.i = icmp ult i32 %109, 2
  br i1 %tobool16.not.i, label %for.cond.preheader.i61, label %do.end20.i

for.cond.preheader.i61:                           ; preds = %if.end15.i
  %agents_dead.i.i59 = getelementptr inbounds %struct.ib_umad_file, ptr %89, i32 0, i32 8
  %110 = ptrtoint ptr %agents_dead.i.i59 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %agents_dead.i.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i.i60 = icmp eq i32 %111, 0
  br i1 %tobool.not.i.i60, label %for.cond.preheader.i61.for.body.i66_crit_edge, label %for.cond.preheader.i61.found.i73.split_crit_edge

for.cond.preheader.i61.found.i73.split_crit_edge: ; preds = %for.cond.preheader.i61
  call void @__sanitizer_cov_trace_pc() #16
  br label %found.i73.split

for.cond.preheader.i61.for.body.i66_crit_edge:    ; preds = %for.cond.preheader.i61
  br label %for.body.i66

do.end20.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  %112 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %port.i34, align 4
  %dev22.i = getelementptr inbounds %struct.ib_umad_port, ptr %113, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev22.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.68, i32 noundef %109, i32 noundef 1) #17
  %add.ptr.i = getelementptr i8, ptr %90, i32 12
  call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 817) #14
  %114 = call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i62 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i.i62 to ptr
  %cpu_domain.i.i.i63 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 4
  %116 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i63) #4, !srcloc !251
  %and.i.i64 = and i32 %116, -13
  %or.i.i65 = or i32 %and.i.i64, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i65) #14, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  %117 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr.i, i32 1, i32 -1226833921) #14, !srcloc !257
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %116) #14, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool29.not.i = icmp eq i32 %117, 0
  %spec.select.i = select i1 %tobool29.not.i, i32 -22, i32 -14
  br label %out.i88

for.body.i66:                                     ; preds = %for.inc.i71.for.body.i66_crit_edge, %for.cond.preheader.i61.for.body.i66_crit_edge
  %agent_id.0163.i = phi i32 [ %inc.i69, %for.inc.i71.for.body.i66_crit_edge ], [ 0, %for.cond.preheader.i61.for.body.i66_crit_edge ]
  %arrayidx.i.i67 = getelementptr %struct.ib_umad_file, ptr %89, i32 0, i32 7, i32 %agent_id.0163.i
  %118 = ptrtoint ptr %arrayidx.i.i67 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i.i67, align 4
  %tobool35.not.i = icmp eq ptr %119, null
  br i1 %tobool35.not.i, label %for.body.i66.found.i73.split_crit_edge, label %for.inc.i71

for.body.i66.found.i73.split_crit_edge:           ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #16
  br label %found.i73.split

for.inc.i71:                                      ; preds = %for.body.i66
  %inc.i69 = add nuw nsw i32 %agent_id.0163.i, 1
  %exitcond.not.i70 = icmp eq i32 %inc.i69, 32
  br i1 %exitcond.not.i70, label %do.end40.i, label %for.inc.i71.for.body.i66_crit_edge

for.inc.i71.for.body.i66_crit_edge:               ; preds = %for.inc.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i66

do.end40.i:                                       ; preds = %for.inc.i71
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %port.i34, align 4
  %dev42.i = getelementptr inbounds %struct.ib_umad_port, ptr %121, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev42.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.68, i32 noundef 32) #17
  br label %out.i88

found.i73.split:                                  ; preds = %for.body.i66.found.i73.split_crit_edge, %for.cond.preheader.i61.found.i73.split_crit_edge
  %agent_id.0163.lcssa.i.split = phi i32 [ 0, %for.cond.preheader.i61.found.i73.split_crit_edge ], [ %agent_id.0163.i, %for.body.i66.found.i73.split_crit_edge ]
  %mgmt_class.i72 = getelementptr inbounds %struct.ib_user_mad_reg_req2, ptr %ureq.i32, i32 0, i32 2
  %122 = ptrtoint ptr %mgmt_class.i72 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %mgmt_class.i72, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool43.not.i = icmp eq i8 %123, 0
  br i1 %tobool43.not.i, label %found.i73.split.if.end74.i_crit_edge, label %if.then44.i

found.i73.split.if.end74.i_crit_edge:             ; preds = %found.i73.split
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74.i

if.then44.i:                                      ; preds = %found.i73.split
  %124 = call ptr @memset(ptr %req.i33, i32 0, i32 24)
  %125 = ptrtoint ptr %req.i33 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %123, ptr %req.i33, align 4
  %mgmt_class_version.i74 = getelementptr inbounds %struct.ib_user_mad_reg_req2, ptr %ureq.i32, i32 0, i32 3
  %126 = ptrtoint ptr %mgmt_class_version.i74 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %mgmt_class_version.i74, align 1
  %mgmt_class_version47.i = getelementptr inbounds %struct.ib_mad_reg_req, ptr %req.i33, i32 0, i32 1
  %128 = ptrtoint ptr %mgmt_class_version47.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %mgmt_class_version47.i, align 1
  %oui.i75 = getelementptr inbounds %struct.ib_user_mad_reg_req2, ptr %ureq.i32, i32 0, i32 7
  %129 = ptrtoint ptr %oui.i75 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %oui.i75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %130)
  %tobool49.not.i = icmp ult i32 %130, 16777216
  br i1 %tobool49.not.i, label %if.end57.i, label %do.end53.i

do.end53.i:                                       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #16
  %131 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %port.i34, align 4
  %dev55.i = getelementptr inbounds %struct.ib_umad_port, ptr %132, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev55.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.68, i32 noundef %130) #17
  br label %out.i88

if.end57.i:                                       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i76 = trunc i32 %130 to i8
  %oui60.i = getelementptr inbounds %struct.ib_mad_reg_req, ptr %req.i33, i32 0, i32 2
  %arrayidx.i = getelementptr inbounds %struct.ib_mad_reg_req, ptr %req.i33, i32 0, i32 2, i32 2
  %133 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv.i76, ptr %arrayidx.i, align 4
  %and62.i = lshr i32 %130, 8
  %conv63.i = trunc i32 %and62.i to i8
  %arrayidx65.i = getelementptr inbounds %struct.ib_mad_reg_req, ptr %req.i33, i32 0, i32 2, i32 1
  %134 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv63.i, ptr %arrayidx65.i, align 1
  %and67.i = lshr i32 %130, 16
  %conv69.i = trunc i32 %and67.i to i8
  %135 = ptrtoint ptr %oui60.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv69.i, ptr %oui60.i, align 2
  %method_mask.i = getelementptr inbounds %struct.ib_mad_reg_req, ptr %req.i33, i32 0, i32 3
  %method_mask72.i = getelementptr inbounds %struct.ib_user_mad_reg_req2, ptr %ureq.i32, i32 0, i32 6
  %136 = call ptr @memcpy(ptr %method_mask.i, ptr %method_mask72.i, i32 16)
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end57.i, %found.i73.split.if.end74.i_crit_edge
  %req..i77 = phi ptr [ %req.i33, %if.end57.i ], [ null, %found.i73.split.if.end74.i_crit_edge ]
  %137 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %port.i34, align 4
  %ib_dev76.i = getelementptr inbounds %struct.ib_umad_port, ptr %138, i32 0, i32 7
  %139 = ptrtoint ptr %ib_dev76.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ib_dev76.i, align 4
  %port_num.i78 = getelementptr inbounds %struct.ib_umad_port, ptr %138, i32 0, i32 10
  %141 = ptrtoint ptr %port_num.i78 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %port_num.i78, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool79.not.i = icmp ne i32 %105, 0
  %cond.i79 = zext i1 %tobool79.not.i to i32
  %rmpp_version.i80 = getelementptr inbounds %struct.ib_user_mad_reg_req2, ptr %ureq.i32, i32 0, i32 8
  %143 = ptrtoint ptr %rmpp_version.i80 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %rmpp_version.i80, align 4
  %call85.i = call ptr @ib_register_mad_agent(ptr noundef %140, i32 noundef %142, i32 noundef %cond.i79, ptr noundef %req..i77, i8 noundef zeroext %144, ptr noundef nonnull @send_handler, ptr noundef nonnull @recv_handler, ptr noundef %89, i32 noundef %109) #14
  %cmp.i.i81 = icmp ugt ptr %call85.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i81, label %if.then87.i, label %if.end89.i

if.then87.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #16
  %145 = ptrtoint ptr %call85.i to i32
  br label %out.i88

if.end89.i:                                       ; preds = %if.end74.i
  call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 865) #14
  %146 = call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i151.i = and i32 %146, -16384
  %147 = inttoptr i32 %and.i.i.i151.i to ptr
  %cpu_domain.i.i152.i = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 4
  %148 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i152.i) #4, !srcloc !251
  %and.i153.i = and i32 %148, -13
  %or.i154.i = or i32 %and.i153.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i154.i) #14, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  %149 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %90, i32 %agent_id.0163.lcssa.i.split, i32 -1226833921) #14, !srcloc !258
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %148) #14, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool106.not.i82 = icmp eq i32 %149, 0
  br i1 %tobool106.not.i82, label %if.end108.i, label %if.end89.i.out.i88_crit_edge

if.end89.i.out.i88_crit_edge:                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i88

if.end108.i:                                      ; preds = %if.end89.i
  %already_used.i83 = getelementptr inbounds %struct.ib_umad_file, ptr %89, i32 0, i32 10
  %150 = ptrtoint ptr %already_used.i83 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %already_used.i83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool109.not.i = icmp eq i8 %151, 0
  br i1 %tobool109.not.i, label %if.then110.i, label %if.end108.i.if.end112.i_crit_edge

if.end108.i.if.end112.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112.i

if.then110.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #16
  %152 = ptrtoint ptr %already_used.i83 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %already_used.i83, align 1
  %use_pkey_index.i84 = getelementptr inbounds %struct.ib_umad_file, ptr %89, i32 0, i32 9
  %153 = ptrtoint ptr %use_pkey_index.i84 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %use_pkey_index.i84, align 4
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then110.i, %if.end108.i.if.end112.i_crit_edge
  %arrayidx114.i = getelementptr %struct.ib_umad_file, ptr %89, i32 0, i32 7, i32 %agent_id.0163.lcssa.i.split
  %154 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call85.i, ptr %arrayidx114.i, align 4
  br label %out.i88

out.i88:                                          ; preds = %if.end112.i, %if.end89.i.out.i88_crit_edge, %if.then87.i, %do.end53.i, %do.end40.i, %do.end20.i, %do.end11.i, %if.then11.i.i.i55, %do.end.i39
  %ret.0.i85 = phi i32 [ -22, %do.end11.i ], [ -22, %do.end53.i ], [ %145, %if.then87.i ], [ 0, %if.end112.i ], [ -12, %do.end40.i ], [ -32, %do.end.i39 ], [ %spec.select.i, %do.end20.i ], [ -14, %if.end89.i.out.i88_crit_edge ], [ -14, %if.then11.i.i.i55 ]
  %agent.0.i86 = phi ptr [ null, %do.end11.i ], [ null, %do.end53.i ], [ null, %if.then87.i ], [ %call85.i, %if.end112.i ], [ null, %do.end40.i ], [ null, %do.end.i39 ], [ null, %do.end20.i ], [ %call85.i, %if.end89.i.out.i88_crit_edge ], [ null, %if.then11.i.i.i55 ]
  call void @mutex_unlock(ptr noundef %89) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i85)
  %tobool116.not.i = icmp eq i32 %ret.0.i85, 0
  %tobool118.not.i = icmp eq ptr %agent.0.i86, null
  %or.cond.i87 = or i1 %tobool116.not.i, %tobool118.not.i
  br i1 %or.cond.i87, label %out.i88.ib_umad_reg_agent2.exit_crit_edge, label %if.then119.i

out.i88.ib_umad_reg_agent2.exit_crit_edge:        ; preds = %out.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_umad_reg_agent2.exit

if.then119.i:                                     ; preds = %out.i88
  call void @__sanitizer_cov_trace_pc() #16
  call void @ib_unregister_mad_agent(ptr noundef nonnull %agent.0.i86) #14
  br label %ib_umad_reg_agent2.exit

ib_umad_reg_agent2.exit:                          ; preds = %if.then119.i, %out.i88.ib_umad_reg_agent2.exit_crit_edge
  %155 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %port.i34, align 4
  %file_mutex122.i = getelementptr inbounds %struct.ib_umad_port, ptr %156, i32 0, i32 5
  call void @mutex_unlock(ptr noundef %file_mutex122.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i33) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ureq.i32) #14
  br label %return

return:                                           ; preds = %ib_umad_reg_agent2.exit, %ib_umad_enable_pkey.exit, %if.end20.i, %if.end.i.return_crit_edge, %sw.bb1.return_crit_edge, %ib_umad_reg_agent.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %ret.0.i85, %ib_umad_reg_agent2.exit ], [ %ret.0.i30, %ib_umad_enable_pkey.exit ], [ %ret.0.i, %ib_umad_reg_agent.exit ], [ -515, %entry.return_crit_edge ], [ %ret.042.i, %if.end20.i ], [ -14, %sw.bb1.return_crit_edge ], [ -22, %if.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_umad_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %file_mutex = getelementptr inbounds %struct.ib_umad_port, ptr %2, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %file_mutex, i32 noundef 0) #14
  %ib_dev = getelementptr inbounds %struct.ib_umad_port, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ib_dev, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 110
  %9 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_ns, align 4
  %call2 = tail call zeroext i1 @rdma_dev_access_netns(ptr noundef nonnull %4, ptr noundef %12) #14
  br i1 %call2, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 352) #19
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %do.body

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body:                                          ; preds = %if.end4
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @ib_umad_open.__key) #14
  %send_lock = getelementptr inbounds %struct.ib_umad_file, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %send_lock, ptr noundef nonnull @.str.81, ptr noundef nonnull @ib_umad_open.__key.80, i16 noundef signext 3) #14
  %recv_list = getelementptr inbounds %struct.ib_umad_file, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %recv_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %recv_list, ptr %recv_list, align 8
  %prev.i = getelementptr inbounds %struct.ib_umad_file, ptr %call7.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %recv_list, ptr %prev.i, align 4
  %send_list = getelementptr inbounds %struct.ib_umad_file, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %send_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %send_list, ptr %send_list, align 8
  %prev.i34 = getelementptr inbounds %struct.ib_umad_file, ptr %call7.i.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %send_list, ptr %prev.i34, align 4
  %recv_wait = getelementptr inbounds %struct.ib_umad_file, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %recv_wait, ptr noundef nonnull @.str.83, ptr noundef nonnull @ib_umad_open.__key.82) #14
  %port16 = getelementptr inbounds %struct.ib_umad_file, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %port16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %2, ptr %port16, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %19 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %private_data, align 4
  %port_list = getelementptr inbounds %struct.ib_umad_file, ptr %call7.i.i, i32 0, i32 4
  %file_list = getelementptr inbounds %struct.ib_umad_port, ptr %2, i32 0, i32 6
  %prev.i35 = getelementptr inbounds %struct.ib_umad_port, ptr %2, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %prev.i35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i35, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %port_list, ptr noundef %21, ptr noundef %file_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %do.body.list_add_tail.exit_crit_edge

do.body.list_add_tail.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %prev.i35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %port_list, ptr %prev.i35, align 4
  %23 = ptrtoint ptr %port_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %file_list, ptr %port_list, align 8
  %prev3.i.i = getelementptr inbounds %struct.ib_umad_file, ptr %call7.i.i, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %port_list, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body.list_add_tail.exit_crit_edge
  %call17 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %filp) #14
  br label %out

out:                                              ; preds = %list_add_tail.exit, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %list_add_tail.exit ], [ -6, %entry.out_crit_edge ], [ -1, %if.end.out_crit_edge ], [ -12, %if.end4.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %file_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_umad_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %file_mutex = getelementptr inbounds %struct.ib_umad_port, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %file_mutex, i32 noundef 0) #14
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #14
  %agents_dead = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %agents_dead to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %agents_dead, align 4
  store i32 1, ptr %agents_dead, align 4
  %recv_list = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %recv_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recv_list, align 4
  %cmp.not56 = icmp eq ptr %7, %recv_list
  br i1 %cmp.not56, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in57 = phi ptr [ %.pn59, %if.end.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %packet.058 = getelementptr i8, ptr %.pn.in57, i32 -8
  %8 = ptrtoint ptr %.pn.in57 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn59 = load ptr, ptr %.pn.in57, align 8
  %recv_wc = getelementptr i8, ptr %.pn.in57, i32 -4
  %9 = ptrtoint ptr %recv_wc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %recv_wc, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ib_free_recv_mad(ptr noundef nonnull %10) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  tail call void @kfree(ptr noundef %packet.058) #14
  %cmp.not = icmp eq ptr %.pn59, %recv_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %port_list = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %port_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %17 = ptrtoint ptr %port_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %port_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool16.not = icmp eq i32 %5, 0
  br i1 %tobool16.not, label %list_del.exit.for.body20_crit_edge, label %list_del.exit.if.end28_crit_edge

list_del.exit.if.end28_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

list_del.exit.for.body20_crit_edge:               ; preds = %list_del.exit
  br label %for.body20

for.body20:                                       ; preds = %for.inc26.for.body20_crit_edge, %list_del.exit.for.body20_crit_edge
  %i.060 = phi i32 [ %inc, %for.inc26.for.body20_crit_edge ], [ 0, %list_del.exit.for.body20_crit_edge ]
  %arrayidx = getelementptr %struct.ib_umad_file, ptr %1, i32 0, i32 7, i32 %i.060
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool21.not = icmp eq ptr %20, null
  br i1 %tobool21.not, label %for.body20.for.inc26_crit_edge, label %if.then22

for.body20.for.inc26_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc26

if.then22:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ib_unregister_mad_agent(ptr noundef nonnull %20) #14
  br label %for.inc26

for.inc26:                                        ; preds = %if.then22, %for.body20.for.inc26_crit_edge
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc26.if.end28_crit_edge, label %for.inc26.for.body20_crit_edge

for.inc26.for.body20_crit_edge:                   ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body20

for.inc26.if.end28_crit_edge:                     ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.end28:                                         ; preds = %for.inc26.if.end28_crit_edge, %list_del.exit.if.end28_crit_edge
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port, align 4
  %file_mutex30 = getelementptr inbounds %struct.ib_umad_port, ptr %22, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %file_mutex30) #14
  tail call void @mutex_destroy(ptr noundef %1) #14
  tail call void @kfree(ptr noundef %1) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_recv_mad(ptr noundef %file, ptr noundef %buf, ptr noundef %packet, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_wc = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %recv_wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_wc, align 4
  %recv_buf1 = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %1, i32 0, i32 1
  %mad_seg_size = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mad_seg_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mad_seg_size, align 4
  %length = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 0, i32 3
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not = icmp ugt i32 %5, %3
  %use_pkey_index.i149 = getelementptr inbounds %struct.ib_umad_file, ptr %file, i32 0, i32 9
  %6 = ptrtoint ptr %use_pkey_index.i149 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_pkey_index.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i150 = icmp eq i8 %7, 0
  %cond.i151 = select i1 %tobool.not.i150, i32 56, i32 64
  br i1 %cmp.not, label %land.lhs.true7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %add = add i32 %cond.i151, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp4 = icmp ugt i32 %add, %count
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true7:                                   ; preds = %entry
  %add9 = add i32 %cond.i151, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %count)
  %cmp10 = icmp ugt i32 %add9, %count
  br i1 %cmp10, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %mad = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 0, i32 4
  %use_pkey_index.i152 = getelementptr inbounds %struct.ib_umad_file, ptr %file, i32 0, i32 9
  %8 = ptrtoint ptr %use_pkey_index.i152 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_pkey_index.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i153 = icmp eq i8 %9, 0
  %cond.i154 = select i1 %tobool.not.i153, i32 56, i32 64
  tail call void @__check_object_size(ptr noundef %mad, i32 noundef %cond.i154, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %cond.i154, i32 -1226833920) #20, !srcloc !259
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mad, i32 noundef %cond.i154) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %mad, i32 noundef %cond.i154) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool.not, label %if.end14, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %copy_to_user.exit
  %11 = ptrtoint ptr %use_pkey_index.i152 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_pkey_index.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i156 = icmp eq i8 %12, 0
  %cond.i157 = select i1 %tobool.not.i156, i32 56, i32 64
  %add.ptr = getelementptr i8, ptr %buf, i32 %cond.i157
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 8
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 %3)
  %16 = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %1, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.i.i = icmp slt i32 %15, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i115

land.rhs16.i.i:                                   ; preds = %if.end14
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !243

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.then.i.i.i115:                                 ; preds = %if.end14
  tail call void @__check_object_size(ptr noundef %18, i32 noundef %15, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #14
  %call.i.i116 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i116, label %if.then.i.i.i115.copy_to_user.exit125_crit_edge, label %if.end.i.i120

if.then.i.i.i115.copy_to_user.exit125_crit_edge:  ; preds = %if.then.i.i.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit125

if.end.i.i120:                                    ; preds = %if.then.i.i.i115
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %15, i32 -1226833920) #20, !srcloc !259
  %asmresult.i.i118 = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i118)
  %cmp.i6.i119 = icmp eq i32 %asmresult.i.i118, 0
  br i1 %cmp.i6.i119, label %if.then2.i.i123, label %if.end.i.i120.copy_to_user.exit125_crit_edge

if.end.i.i120.copy_to_user.exit125_crit_edge:     ; preds = %if.end.i.i120
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit125

if.then2.i.i123:                                  ; preds = %if.end.i.i120
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i121 = tail call zeroext i1 @__kasan_check_read(ptr noundef %18, i32 noundef %15) #14
  %call.i12.i.i122 = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %18, i32 noundef %15) #14
  br label %copy_to_user.exit125

copy_to_user.exit125:                             ; preds = %if.then2.i.i123, %if.end.i.i120.copy_to_user.exit125_crit_edge, %if.then.i.i.i115.copy_to_user.exit125_crit_edge
  %n.addr.0.i124 = phi i32 [ %15, %if.then.i.i.i115.copy_to_user.exit125_crit_edge ], [ %call.i12.i.i122, %if.then2.i.i123 ], [ %15, %if.end.i.i120.copy_to_user.exit125_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i124)
  %tobool19.not = icmp eq i32 %n.addr.0.i124, 0
  br i1 %tobool19.not, label %if.end21, label %copy_to_user.exit125.cleanup_crit_edge

copy_to_user.exit125.cleanup_crit_edge:           ; preds = %copy_to_user.exit125
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %copy_to_user.exit125
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %21)
  %cmp23 = icmp slt i32 %15, %21
  br i1 %cmp23, label %if.then24, label %if.end21.if.end51_crit_edge

if.end21.if.end51_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then24:                                        ; preds = %if.end21
  %22 = ptrtoint ptr %use_pkey_index.i152 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %use_pkey_index.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i159 = icmp eq i8 %23, 0
  %cond.i160 = select i1 %tobool.not.i159, i32 56, i32 64
  %add27 = add i32 %cond.i160, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %count)
  %cmp28 = icmp ugt i32 %add27, %count
  br i1 %cmp28, label %if.then24.cleanup_crit_edge, label %if.end30

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end30:                                         ; preds = %if.then24
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %16, align 4
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mgmt_class, align 1
  %call31 = tail call i32 @ib_get_mad_data_offset(i8 noundef zeroext %27) #14
  %sub = sub i32 %3, %call31
  %28 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length, align 8
  %sub33 = sub i32 %29, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33)
  %tobool35.not178 = icmp eq i32 %sub33, 0
  br i1 %tobool35.not178, label %if.end30.if.end51_crit_edge, label %for.body.preheader

if.end30.if.end51_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.body.preheader:                               ; preds = %if.end30
  %add.ptr34 = getelementptr i8, ptr %add.ptr, i32 %15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %buf.addr.0181 = phi ptr [ %add.ptr50, %for.inc.for.body_crit_edge ], [ %add.ptr34, %for.body.preheader ]
  %recv_buf.0180 = phi ptr [ %31, %for.inc.for.body_crit_edge ], [ %recv_buf1, %for.body.preheader ]
  %left.0179 = phi i32 [ %sub49, %for.inc.for.body_crit_edge ], [ %sub33, %for.body.preheader ]
  %30 = ptrtoint ptr %recv_buf.0180 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %recv_buf.0180, align 4
  %32 = tail call i32 @llvm.smin.i32(i32 %left.0179, i32 %sub)
  %33 = getelementptr inbounds %struct.ib_mad_recv_buf, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %add.ptr44 = getelementptr i8, ptr %35, i32 %call31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp9.i.i132 = icmp slt i32 %32, 0
  br i1 %cmp9.i.i132, label %land.rhs16.i.i135, label %if.then.i.i.i138

land.rhs16.i.i135:                                ; preds = %for.body
  %.b71.i.i134 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i134, label %land.rhs16.i.i135.cleanup_crit_edge, label %if.then27.i.i136, !prof !243

land.rhs16.i.i135.cleanup_crit_edge:              ; preds = %land.rhs16.i.i135
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27.i.i136:                                 ; preds = %land.rhs16.i.i135
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.then.i.i.i138:                                 ; preds = %for.body
  tail call void @__check_object_size(ptr noundef %add.ptr44, i32 noundef %32, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #14
  %call.i.i139 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i139, label %if.then.i.i.i138.copy_to_user.exit148_crit_edge, label %if.end.i.i143

if.then.i.i.i138.copy_to_user.exit148_crit_edge:  ; preds = %if.then.i.i.i138
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit148

if.end.i.i143:                                    ; preds = %if.then.i.i.i138
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0181, i32 %32, i32 -1226833920) #20, !srcloc !259
  %asmresult.i.i141 = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i141)
  %cmp.i6.i142 = icmp eq i32 %asmresult.i.i141, 0
  br i1 %cmp.i6.i142, label %if.then2.i.i146, label %if.end.i.i143.copy_to_user.exit148_crit_edge

if.end.i.i143.copy_to_user.exit148_crit_edge:     ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit148

if.then2.i.i146:                                  ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i144 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr44, i32 noundef %32) #14
  %call.i12.i.i145 = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.0181, ptr noundef %add.ptr44, i32 noundef %32) #14
  br label %copy_to_user.exit148

copy_to_user.exit148:                             ; preds = %if.then2.i.i146, %if.end.i.i143.copy_to_user.exit148_crit_edge, %if.then.i.i.i138.copy_to_user.exit148_crit_edge
  %n.addr.0.i147 = phi i32 [ %32, %if.then.i.i.i138.copy_to_user.exit148_crit_edge ], [ %call.i12.i.i145, %if.then2.i.i146 ], [ %32, %if.end.i.i143.copy_to_user.exit148_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i147)
  %tobool46.not = icmp eq i32 %n.addr.0.i147, 0
  br i1 %tobool46.not, label %for.inc, label %copy_to_user.exit148.cleanup_crit_edge

copy_to_user.exit148.cleanup_crit_edge:           ; preds = %copy_to_user.exit148
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %copy_to_user.exit148
  %sub49 = sub i32 %left.0179, %32
  %add.ptr50 = getelementptr i8, ptr %buf.addr.0181, i32 %32
  %tobool35.not = icmp eq i32 %sub49, 0
  br i1 %tobool35.not, label %for.inc.if.end51_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.if.end51_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.end51:                                         ; preds = %for.inc.if.end51_crit_edge, %if.end30.if.end51_crit_edge, %if.end21.if.end51_crit_edge
  %recv_buf.1 = phi ptr [ %recv_buf1, %if.end21.if.end51_crit_edge ], [ %recv_buf1, %if.end30.if.end51_crit_edge ], [ %31, %for.inc.if.end51_crit_edge ]
  %37 = getelementptr inbounds %struct.ib_mad_recv_buf, ptr %recv_buf.1, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  tail call fastcc void @trace_ib_umad_read_recv(ptr noundef %file, ptr noundef %mad, ptr noundef %39)
  %40 = ptrtoint ptr %use_pkey_index.i152 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %use_pkey_index.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i162 = icmp eq i8 %41, 0
  %cond.i163 = select i1 %tobool.not.i162, i32 56, i32 64
  %42 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length, align 8
  %add56 = add i32 %cond.i163, %43
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %copy_to_user.exit148.cleanup_crit_edge, %if.then27.i.i136, %land.rhs16.i.i135.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %copy_to_user.exit125.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %add56, %if.end51 ], [ -22, %land.lhs.true7.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit125.cleanup_crit_edge ], [ -28, %if.then24.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ -14, %if.then27.i.i136 ], [ -14, %land.rhs16.i.i135.cleanup_crit_edge ], [ -14, %copy_to_user.exit148.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_send_mad(ptr noundef %file, ptr noundef %buf, ptr noundef %packet, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %use_pkey_index.i = getelementptr inbounds %struct.ib_umad_file, ptr %file, i32 0, i32 9
  %0 = ptrtoint ptr %use_pkey_index.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_pkey_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %cond.i = select i1 %tobool.not.i, i32 56, i32 64
  %length = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 0, i32 3
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 8
  %add = add i32 %cond.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp = icmp ugt i32 %add, %count
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mad = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 0, i32 4
  tail call void @__check_object_size(ptr noundef %mad, i32 noundef %cond.i, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %cond.i, i32 -1226833920) #20, !srcloc !259
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mad, i32 noundef %cond.i) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %mad, i32 noundef %cond.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool.not, label %if.end4, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %copy_to_user.exit
  %5 = ptrtoint ptr %use_pkey_index.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %use_pkey_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i48 = icmp eq i8 %6, 0
  %cond.i49 = select i1 %tobool.not.i48, i32 56, i32 64
  %add.ptr = getelementptr i8, ptr %buf, i32 %cond.i49
  %data = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.i.i = icmp slt i32 %8, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i33

land.rhs16.i.i:                                   ; preds = %if.end4
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !243

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.then.i.i.i33:                                  ; preds = %if.end4
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %8, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #14
  %call.i.i34 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i34, label %if.then.i.i.i33.copy_to_user.exit43_crit_edge, label %if.end.i.i38

if.then.i.i.i33.copy_to_user.exit43_crit_edge:    ; preds = %if.then.i.i.i33
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit43

if.end.i.i38:                                     ; preds = %if.then.i.i.i33
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %8, i32 -1226833920) #20, !srcloc !259
  %asmresult.i.i36 = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i36)
  %cmp.i6.i37 = icmp eq i32 %asmresult.i.i36, 0
  br i1 %cmp.i6.i37, label %if.then2.i.i41, label %if.end.i.i38.copy_to_user.exit43_crit_edge

if.end.i.i38.copy_to_user.exit43_crit_edge:       ; preds = %if.end.i.i38
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit43

if.then2.i.i41:                                   ; preds = %if.end.i.i38
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef %data, i32 noundef %8) #14
  %call.i12.i.i40 = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %data, i32 noundef %8) #14
  br label %copy_to_user.exit43

copy_to_user.exit43:                              ; preds = %if.then2.i.i41, %if.end.i.i38.copy_to_user.exit43_crit_edge, %if.then.i.i.i33.copy_to_user.exit43_crit_edge
  %n.addr.0.i42 = phi i32 [ %8, %if.then.i.i.i33.copy_to_user.exit43_crit_edge ], [ %call.i12.i.i40, %if.then2.i.i41 ], [ %8, %if.end.i.i38.copy_to_user.exit43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i42)
  %tobool9.not = icmp eq i32 %n.addr.0.i42, 0
  br i1 %tobool9.not, label %if.end11, label %copy_to_user.exit43.cleanup_crit_edge

copy_to_user.exit43.cleanup_crit_edge:            ; preds = %copy_to_user.exit43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %copy_to_user.exit43
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trace_ib_umad_read_send(ptr noundef %file, ptr noundef %mad, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %copy_to_user.exit43.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit43.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_recv_mad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_get_mad_data_offset(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ib_umad_read_recv(ptr noundef %file, ptr noundef %umad_hdr, ptr noundef %mad_hdr) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ib_umad_read_recv, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_ib_umad_read_recv, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !260

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !243

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !261
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ib_umad_read_recv, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %file, ptr noundef %umad_hdr, ptr noundef %mad_hdr) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !262
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !262
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !243

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !263
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ib_umad_read_recv, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ib_umad_read_recv.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ib_umad_read_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 117, ptr noundef nonnull @.str.47) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !264
  %38 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ib_umad_read_send(ptr noundef %file, ptr noundef %umad_hdr, ptr noundef %mad_hdr) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ib_umad_read_send, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_ib_umad_read_send, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !260

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !243

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !265
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ib_umad_read_send, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %file, ptr noundef %umad_hdr, ptr noundef %mad_hdr) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !266
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !266
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !243

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !263
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ib_umad_read_send, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ib_umad_read_send.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ib_umad_read_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 122, ptr noundef nonnull @.str.47) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !264
  %38 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ib_umad_write(ptr noundef %file, ptr noundef %umad_hdr, ptr noundef %mad_hdr) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ib_umad_write, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_ib_umad_write, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !260

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !243

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !267
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ib_umad_write, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %file, ptr noundef %umad_hdr, ptr noundef %mad_hdr) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !268
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !268
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !243

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !263
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ib_umad_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ib_umad_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ib_umad_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 112, ptr noundef nonnull @.str.47) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !264
  %38 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_create_user_ah(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_is_mad_class_rmpp(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_mad_kernel_rmpp_agent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_send_mad(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_rmpp_mad(ptr noundef %msg, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr_len = getelementptr inbounds %struct.ib_mad_send_buf, ptr %msg, i32 0, i32 5
  %0 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %1)
  %cmp = icmp sgt i32 %1, 36
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mad = getelementptr inbounds %struct.ib_mad_send_buf, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %mad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mad, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 36
  %add.ptr1 = getelementptr i8, ptr %buf, i32 36
  %sub = add nsw i32 %1, -36
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %sub, i1 noundef zeroext false) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %land.lhs.true.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true.if.then11.i.i_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr1, i32 %sub, i32 -1226833920) #20, !srcloc !250
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !243

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %sub) #14
  %5 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !251
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %add.ptr1, i32 noundef %sub) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !243

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %land.lhs.true.if.then11.i.i_crit_edge
  %res.0.i.i69 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %sub, %land.lhs.true.if.then11.i.i_crit_edge ], [ %sub, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %sub, %res.0.i.i69
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i69)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %data_len = getelementptr inbounds %struct.ib_mad_send_buf, ptr %msg, i32 0, i32 6
  %9 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp581 = icmp sgt i32 %10, 0
  br i1 %cmp581, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %11 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hdr_len, align 4
  %add.ptr4 = getelementptr i8, ptr %buf, i32 %12
  %seg_size = getelementptr inbounds %struct.ib_mad_send_buf, ptr %msg, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %seg.085 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %left.084 = phi i32 [ %10, %for.body.lr.ph ], [ %sub13, %for.inc.for.body_crit_edge ]
  %buf.addr.082 = phi ptr [ %add.ptr4, %for.body.lr.ph ], [ %add.ptr15, %for.inc.for.body_crit_edge ]
  %call6 = tail call ptr @ib_get_rmpp_segment(ptr noundef %msg, i32 noundef %seg.085) #14
  %13 = ptrtoint ptr %seg_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seg_size, align 4
  %15 = tail call i32 @llvm.smin.i32(i32 %left.084, i32 %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.i.i40 = icmp slt i32 %15, 0
  br i1 %cmp9.i.i40, label %land.rhs16.i.i43, label %if.then.i.i.i46

land.rhs16.i.i43:                                 ; preds = %for.body
  %.b71.i.i42 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i42, label %land.rhs16.i.i43.cleanup_crit_edge, label %if.then27.i.i44, !prof !243

land.rhs16.i.i43.cleanup_crit_edge:               ; preds = %land.rhs16.i.i43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27.i.i44:                                  ; preds = %land.rhs16.i.i43
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.then.i.i.i46:                                  ; preds = %for.body
  tail call void @__check_object_size(ptr noundef %call6, i32 noundef %15, i1 noundef zeroext false) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #14
  %call.i.i47 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i47, label %if.then.i.i.i46.if.end.i.i61_crit_edge, label %land.lhs.true.i.i51

if.then.i.i.i46.if.end.i.i61_crit_edge:           ; preds = %if.then.i.i.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i61

land.lhs.true.i.i51:                              ; preds = %if.then.i.i.i46
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.082, i32 %15, i32 -1226833920) #20, !srcloc !250
  %asmresult.i.i49 = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i49)
  %cmp.i6.i50 = icmp eq i32 %asmresult.i.i49, 0
  br i1 %cmp.i6.i50, label %if.then.i7.i58, label %land.lhs.true.i.i51.if.end.i.i61_crit_edge, !prof !243

land.lhs.true.i.i51.if.end.i.i61_crit_edge:       ; preds = %land.lhs.true.i.i51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i61

if.then.i7.i58:                                   ; preds = %land.lhs.true.i.i51
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %call6, i32 noundef %15) #14
  %17 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i.i.i.i.i.i53 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i53 to ptr
  %cpu_domain.i.i.i.i.i54 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i54) #4, !srcloc !251
  %and.i.i.i.i55 = and i32 %19, -13
  %or.i.i.i.i56 = or i32 %and.i.i.i.i55, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i56) #14, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  %call1.i.i.i57 = tail call i32 @arm_copy_from_user(ptr noundef %call6, ptr noundef %buf.addr.082, i32 noundef %15) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #14, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  br label %if.end.i.i61

if.end.i.i61:                                     ; preds = %if.then.i7.i58, %land.lhs.true.i.i51.if.end.i.i61_crit_edge, %if.then.i.i.i46.if.end.i.i61_crit_edge
  %res.0.i.i59 = phi i32 [ %15, %if.then.i.i.i46.if.end.i.i61_crit_edge ], [ %call1.i.i.i57, %if.then.i7.i58 ], [ %15, %land.lhs.true.i.i51.if.end.i.i61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i59)
  %tobool4.not.i.i60 = icmp eq i32 %res.0.i.i59, 0
  br i1 %tobool4.not.i.i60, label %for.inc, label %if.then11.i.i64, !prof !243

if.then11.i.i64:                                  ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i62 = sub i32 %15, %res.0.i.i59
  %add.ptr.i.i63 = getelementptr i8, ptr %call6, i32 %sub.i.i62
  %20 = call ptr @memset(ptr %add.ptr.i.i63, i32 0, i32 %res.0.i.i59)
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.i61
  %inc = add i32 %seg.085, 1
  %21 = ptrtoint ptr %seg_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %seg_size, align 4
  %sub13 = sub i32 %left.084, %22
  %add.ptr15 = getelementptr i8, ptr %buf.addr.082, i32 %22
  %cmp5 = icmp sgt i32 %sub13, 0
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then11.i.i64, %if.then27.i.i44, %land.rhs16.i.i43.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i64 ], [ -14, %if.then27.i.i44 ], [ -14, %land.rhs16.i.i43.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_response_mad(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @is_duplicate(ptr noundef readonly %file, ptr noundef %packet) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 1
  %send_list = getelementptr inbounds %struct.ib_umad_file, ptr %file, i32 0, i32 3
  %0 = ptrtoint ptr %send_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn49 = load ptr, ptr %send_list, align 4
  %cmp.not50 = icmp eq ptr %.pn49, %send_list
  br i1 %cmp.not50, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tid = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 1, i32 2
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %data, i32 0, i32 1
  %grh_present.i = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 0, i32 4, i32 0, i32 10
  %gid.i = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 0, i32 4, i32 0, i32 14
  %lid.i = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 0, i32 4, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn51 = phi ptr [ %.pn49, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %data3 = getelementptr i8, ptr %.pn51, i32 80
  %1 = ptrtoint ptr %tid to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %tid, align 8
  %tid5 = getelementptr i8, ptr %.pn51, i32 88
  %3 = ptrtoint ptr %tid5 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tid5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %4)
  %cmp6.not = icmp eq i64 %2, %4
  br i1 %cmp6.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %5 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mgmt_class, align 1
  %mgmt_class7 = getelementptr i8, ptr %.pn51, i32 81
  %7 = ptrtoint ptr %mgmt_class7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mgmt_class7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp9.not = icmp eq i8 %6, %8
  br i1 %cmp9.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @ib_response_mad(ptr noundef %data) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %call12 = tail call i32 @ib_response_mad(ptr noundef %data3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %if.then11.for.inc_crit_edge

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool13.not, label %if.else.for.inc_crit_edge, label %if.end20

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end20:                                         ; preds = %if.else
  %9 = ptrtoint ptr %grh_present.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %grh_present.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %grh_present1.i = getelementptr i8, ptr %.pn51, i32 48
  %11 = ptrtoint ptr %grh_present1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %grh_present1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %land.lhs.true9.i

land.lhs.true.i:                                  ; preds = %if.end20
  br i1 %tobool2.not.i, label %same_destination.exit, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true9.i:                                 ; preds = %if.end20
  br i1 %tobool2.not.i, label %land.lhs.true9.i.for.inc_crit_edge, label %if.then13.i

land.lhs.true9.i.for.inc_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then13.i:                                      ; preds = %land.lhs.true9.i
  %gid14.i = getelementptr i8, ptr %.pn51, i32 52
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %gid.i, ptr noundef dereferenceable(16) %gid14.i, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool16.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool16.not.i, label %if.then13.i.cleanup_crit_edge, label %if.then13.i.for.inc_crit_edge

if.then13.i.for.inc_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

same_destination.exit:                            ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %lid.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %lid.i, align 4
  %lid3.i = getelementptr i8, ptr %.pn51, i32 44
  %15 = ptrtoint ptr %lid3.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %lid3.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp.i = icmp eq i16 %14, %16
  br i1 %cmp.i, label %same_destination.exit.cleanup_crit_edge, label %same_destination.exit.for.inc_crit_edge

same_destination.exit.for.inc_crit_edge:          ; preds = %same_destination.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

same_destination.exit.cleanup_crit_edge:          ; preds = %same_destination.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %same_destination.exit.for.inc_crit_edge, %if.then13.i.for.inc_crit_edge, %land.lhs.true9.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then11.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn51, align 4
  %cmp.not = icmp eq ptr %.pn, %send_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %same_destination.exit.cleanup_crit_edge, %if.then13.i.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then13.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 1, %same_destination.exit.cleanup_crit_edge ], [ 1, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_post_send_mad(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dequeue_send(ptr noundef %file, ptr noundef %packet) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %send_lock = getelementptr inbounds %struct.ib_umad_file, ptr %file, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %send_lock) #14
  %list = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 0, i32 2, i32 1
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
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ib_umad_packet, ptr %packet, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %send_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_send_mad(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rdma_destroy_ah(ptr noundef %ah) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @rdma_destroy_ah_user(ptr noundef %ah, i32 noundef 1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !243

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.50) #14
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_get_rmpp_segment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_destroy_ah_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_register_mad_agent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_handler(ptr noundef readonly %agent, ptr nocapture noundef readonly %send_wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 4
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %send_wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send_wc, align 4
  %context1 = getelementptr inbounds %struct.ib_mad_send_buf, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context1, align 4
  %send_lock.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %send_lock.i) #14
  %list.i = getelementptr inbounds %struct.ib_umad_packet, ptr %5, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.dequeue_send.exit_crit_edge

entry.dequeue_send.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dequeue_send.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.ib_umad_packet, ptr %5, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %dequeue_send.exit

dequeue_send.exit:                                ; preds = %if.end.i.i.i, %entry.dequeue_send.exit_crit_edge
  %12 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ib_umad_packet, ptr %5, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %send_lock.i) #14
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %ah = getelementptr inbounds %struct.ib_mad_send_buf, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ah, align 4
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef %17, i32 noundef 1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %dequeue_send.exit.rdma_destroy_ah.exit_crit_edge, label %land.rhs.i

dequeue_send.exit.rdma_destroy_ah.exit_crit_edge: ; preds = %dequeue_send.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rdma_destroy_ah.exit

land.rhs.i:                                       ; preds = %dequeue_send.exit
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.rdma_destroy_ah.exit_crit_edge, label %if.then.i, !prof !243

land.rhs.i.rdma_destroy_ah.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rdma_destroy_ah.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.50) #14
  br label %rdma_destroy_ah.exit

rdma_destroy_ah.exit:                             ; preds = %if.then.i, %land.rhs.i.rdma_destroy_ah.exit_crit_edge, %dequeue_send.exit.rdma_destroy_ah.exit_crit_edge
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 8
  tail call void @ib_free_send_mad(ptr noundef %19) #14
  %status = getelementptr inbounds %struct.ib_mad_send_wc, ptr %send_wc, i32 0, i32 1
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %21)
  %cmp = icmp eq i32 %21, 20
  br i1 %cmp, label %if.then, label %rdma_destroy_ah.exit.if.end5_crit_edge

rdma_destroy_ah.exit.if.end5_crit_edge:           ; preds = %rdma_destroy_ah.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %rdma_destroy_ah.exit
  %length = getelementptr inbounds %struct.ib_umad_packet, ptr %5, i32 0, i32 3
  %22 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 24, ptr %length, align 8
  %status3 = getelementptr inbounds %struct.ib_umad_packet, ptr %5, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 110, ptr %status3, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #14
  %mad.i = getelementptr inbounds %struct.ib_umad_packet, ptr %5, i32 0, i32 4
  %agents_dead.i.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %mad.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %mad.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %__get_agent.exit.i
  %inc.i = add nuw nsw i32 %storemerge20.i, 1
  %25 = ptrtoint ptr %mad.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %inc.i, ptr %mad.i, align 8
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %queue_packet.exit, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then
  %storemerge20.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %agents_dead.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %agents_dead.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %for.body.i.__get_agent.exit.i_crit_edge

for.body.i.__get_agent.exit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__get_agent.exit.i

cond.false.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i = getelementptr %struct.ib_umad_file, ptr %1, i32 0, i32 7, i32 %storemerge20.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  br label %__get_agent.exit.i

__get_agent.exit.i:                               ; preds = %cond.false.i.i, %for.body.i.__get_agent.exit.i_crit_edge
  %cond.i.i = phi ptr [ %29, %cond.false.i.i ], [ null, %for.body.i.__get_agent.exit.i_crit_edge ]
  %cmp7.i = icmp eq ptr %cond.i.i, %agent
  br i1 %cmp7.i, label %if.then.i19, label %for.cond.i

if.then.i19:                                      ; preds = %__get_agent.exit.i
  %recv_list.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 2
  %prev.i.i17 = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %prev.i.i17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i17, align 4
  %call.i.i.i18 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %31, ptr noundef %recv_list.i) #14
  br i1 %call.i.i.i18, label %if.end.i.i.i20, label %if.then.i19.queue_packet.exit.thread_crit_edge

if.then.i19.queue_packet.exit.thread_crit_edge:   ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %queue_packet.exit.thread

if.end.i.i.i20:                                   ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %prev.i.i17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list.i, ptr %prev.i.i17, align 4
  %33 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %recv_list.i, ptr %list.i, align 4
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %list.i, ptr %31, align 4
  br label %queue_packet.exit.thread

queue_packet.exit.thread:                         ; preds = %if.end.i.i.i20, %if.then.i19.queue_packet.exit.thread_crit_edge
  %recv_wait.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %recv_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  tail call void @mutex_unlock(ptr noundef %1) #14
  br label %cleanup

queue_packet.exit:                                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %1) #14
  br label %if.end5

if.end5:                                          ; preds = %queue_packet.exit, %rdma_destroy_ah.exit.if.end5_crit_edge
  tail call void @kfree(ptr noundef %5) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %queue_packet.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recv_handler(ptr noundef readonly %agent, ptr nocapture noundef readnone %send_buf, ptr noundef %mad_recv_wc) #0 align 64 {
entry:
  %ah_attr = alloca %struct.rdma_ah_attr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 4
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %mad_recv_wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mad_recv_wc, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.err1_crit_edge

entry.err1_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 88) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.err1_crit_edge, label %if.end2

if.end.err1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

if.end2:                                          ; preds = %if.end
  %mad_len = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %mad_recv_wc, i32 0, i32 3
  %7 = ptrtoint ptr %mad_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mad_len, align 4
  %length = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %length, align 8
  %recv_wc = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %recv_wc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mad_recv_wc, ptr %recv_wc, align 4
  %status3 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %status3, align 4
  %use_pkey_index.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %use_pkey_index.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %use_pkey_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %cond.i = select i1 %tobool.not.i, i32 56, i32 64
  %add = add i32 %cond.i, %8
  %length8 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 4
  %14 = ptrtoint ptr %length8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %length8, align 8
  %15 = ptrtoint ptr %mad_recv_wc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mad_recv_wc, align 4
  %src_qp = getelementptr inbounds %struct.ib_wc, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %src_qp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_qp, align 8
  %qpn = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 5
  %19 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %qpn, align 4
  %20 = ptrtoint ptr %agent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %agent, align 4
  %port_num = getelementptr inbounds %struct.ib_mad_agent, ptr %agent, i32 0, i32 9
  %22 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_num, align 4
  %conv = zext i8 %23 to i32
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %21, i32 0, i32 11
  %24 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %25, i32 %conv, i32 1, i32 2
  %26 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp ne i32 %and.i, 0
  %slid19 = getelementptr inbounds %struct.ib_wc, ptr %16, i32 0, i32 8
  %28 = ptrtoint ptr %slid19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slid19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %29)
  %tobool.not.i124 = icmp ult i32 %29, 65536
  %or.cond = select i1 %tobool.i.not, i1 true, i1 %tobool.not.i124
  br i1 %or.cond, label %if.end2.if.end24_crit_edge, label %land.rhs.i

if.end2.if.end24_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.rhs.i:                                       ; preds = %if.end2
  %.b39.i = load i1, ptr @ib_lid_be16.__already_done, align 1
  br i1 %.b39.i, label %land.rhs.i.if.end24_crit_edge, label %if.then.i, !prof !243

land.rhs.i.if.end24_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ib_lid_be16.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 4616, i32 noundef 9, ptr noundef null) #14
  br label %if.end24

if.end24:                                         ; preds = %if.then.i, %land.rhs.i.if.end24_crit_edge, %if.end2.if.end24_crit_edge
  %conv.i125 = trunc i32 %29 to i16
  %lid23 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 7
  %30 = ptrtoint ptr %lid23 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i125, ptr %lid23, align 4
  %31 = ptrtoint ptr %mad_recv_wc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mad_recv_wc, align 4
  %sl = getelementptr inbounds %struct.ib_wc, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sl, align 2
  %sl28 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 8
  %35 = ptrtoint ptr %sl28 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %sl28, align 2
  %dlid_path_bits = getelementptr inbounds %struct.ib_wc, ptr %32, i32 0, i32 12
  %36 = ptrtoint ptr %dlid_path_bits to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dlid_path_bits, align 1
  %path_bits = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 9
  %38 = ptrtoint ptr %path_bits to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %path_bits, align 1
  %pkey_index = getelementptr inbounds %struct.ib_wc, ptr %32, i32 0, i32 10
  %39 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pkey_index, align 4
  %pkey_index35 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 16
  %41 = ptrtoint ptr %pkey_index35 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %pkey_index35, align 8
  %wc_flags = getelementptr inbounds %struct.ib_wc, ptr %32, i32 0, i32 9
  %42 = ptrtoint ptr %wc_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wc_flags, align 8
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %grh_present = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 10
  %46 = ptrtoint ptr %grh_present to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %grh_present, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool46.not = icmp eq i8 %45, 0
  br i1 %tobool46.not, label %if.end24.if.end73_crit_edge, label %if.then47

if.end24.if.end73_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then47:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ah_attr) #14
  %47 = call ptr @memset(ptr %ah_attr, i32 255, i32 56)
  %48 = ptrtoint ptr %agent to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %agent, align 4
  %50 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %port_num, align 4
  %conv50 = zext i8 %51 to i32
  %grh52 = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %mad_recv_wc, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %grh52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %grh52, align 4
  %call53 = call i32 @ib_init_ah_attr_from_wc(ptr noundef %49, i32 noundef %conv50, ptr noundef %32, ptr noundef %53, ptr noundef nonnull %ah_attr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  %sgid_index = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 3
  %54 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sgid_index, align 4
  %gid_index = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 11
  %56 = ptrtoint ptr %gid_index to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %gid_index, align 1
  %hop_limit = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 4
  %57 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %hop_limit, align 1
  %hop_limit62 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 12
  %59 = ptrtoint ptr %hop_limit62 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %hop_limit62, align 2
  %traffic_class = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 5
  %60 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %traffic_class, align 2
  %traffic_class65 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 13
  %62 = ptrtoint ptr %traffic_class65 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %traffic_class65, align 1
  %gid = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 14
  %dgid = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1
  %63 = call ptr @memcpy(ptr %gid, ptr %dgid, i32 16)
  %flow_label = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 2
  %64 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flow_label, align 8
  %flow_label70 = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 15
  %66 = ptrtoint ptr %flow_label70 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %flow_label70, align 4
  call void @rdma_destroy_ah_attr(ptr noundef nonnull %ah_attr) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ah_attr) #14
  br label %if.end73

cleanup:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ah_attr) #14
  br label %err2

if.end73:                                         ; preds = %cleanup.thread, %if.end24.if.end73_crit_edge
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #14
  %mad.i = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 4
  %agents_dead.i.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 8
  %67 = ptrtoint ptr %mad.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %mad.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %__get_agent.exit.i
  %inc.i = add nuw nsw i32 %storemerge20.i, 1
  %68 = ptrtoint ptr %mad.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %inc.i, ptr %mad.i, align 8
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %queue_packet.exit, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end73
  %storemerge20.i = phi i32 [ 0, %if.end73 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %69 = ptrtoint ptr %agents_dead.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %agents_dead.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %for.body.i.__get_agent.exit.i_crit_edge

for.body.i.__get_agent.exit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__get_agent.exit.i

cond.false.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i = getelementptr %struct.ib_umad_file, ptr %1, i32 0, i32 7, i32 %storemerge20.i
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i, align 4
  br label %__get_agent.exit.i

__get_agent.exit.i:                               ; preds = %cond.false.i.i, %for.body.i.__get_agent.exit.i_crit_edge
  %cond.i.i = phi ptr [ %72, %cond.false.i.i ], [ null, %for.body.i.__get_agent.exit.i_crit_edge ]
  %cmp7.i = icmp eq ptr %cond.i.i, %agent
  br i1 %cmp7.i, label %if.then.i126, label %for.cond.i

if.then.i126:                                     ; preds = %__get_agent.exit.i
  %list.i = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 2
  %recv_list.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %74, ptr noundef %recv_list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i126.queue_packet.exit.thread_crit_edge

if.then.i126.queue_packet.exit.thread_crit_edge:  ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_pc() #16
  br label %queue_packet.exit.thread

if.end.i.i.i:                                     ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %list.i, ptr %prev.i.i, align 4
  %76 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %recv_list.i, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.ib_umad_packet, ptr %call7.i.i, i32 0, i32 2, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %list.i, ptr %74, align 4
  br label %queue_packet.exit.thread

queue_packet.exit.thread:                         ; preds = %if.end.i.i.i, %if.then.i126.queue_packet.exit.thread_crit_edge
  %recv_wait.i = getelementptr inbounds %struct.ib_umad_file, ptr %1, i32 0, i32 6
  call void @__wake_up(ptr noundef %recv_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  call void @mutex_unlock(ptr noundef %1) #14
  br label %cleanup78

queue_packet.exit:                                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %1) #14
  br label %err2

err2:                                             ; preds = %queue_packet.exit, %cleanup
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %err1

err1:                                             ; preds = %err2, %if.end.err1_crit_edge, %entry.err1_crit_edge
  call void @ib_free_recv_mad(ptr noundef %mad_recv_wc) #14
  br label %cleanup78

cleanup78:                                        ; preds = %err1, %queue_packet.exit.thread
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_mad_agent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_init_ah_attr_from_wc(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_ah_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rdma_dev_access_netns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_umad_sm_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  %props = alloca %struct.ib_port_modify, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %props) #14
  %0 = call ptr @memcpy(ptr %props, ptr @__const.ib_umad_sm_open.props, i32 12)
  %1 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -1088
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %sm_sem3 = getelementptr i8, ptr %3, i32 1088
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @down_trylock(ptr noundef %sm_sem3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @down_interruptible(ptr noundef %sm_sem3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else.if.end8_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %ib_dev = getelementptr i8, ptr %3, i32 1244
  %6 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ib_dev, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !233) #14
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 110
  %12 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_ns, align 4
  %call10 = tail call zeroext i1 @rdma_dev_access_netns(ptr noundef %7, ptr noundef %15) #14
  br i1 %call10, label %if.end12, label %if.end8.err_up_sem_crit_edge

if.end8.err_up_sem_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_up_sem

if.end12:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ib_dev, align 4
  %port_num = getelementptr i8, ptr %3, i32 1256
  %18 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_num, align 8
  %call14 = call i32 @ib_modify_port(ptr noundef %17, i32 noundef %19, i32 noundef 0, ptr noundef nonnull %props) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.err_up_sem_crit_edge

if.end12.err_up_sem_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_up_sem

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %private_data, align 4
  %call18 = call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #14
  br label %cleanup

err_up_sem:                                       ; preds = %if.end12.err_up_sem_crit_edge, %if.end8.err_up_sem_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end12.err_up_sem_crit_edge ], [ -1, %if.end8.err_up_sem_crit_edge ]
  %sm_sem19 = getelementptr i8, ptr %3, i32 1088
  call void @up(ptr noundef %sm_sem19) #14
  br label %cleanup

cleanup:                                          ; preds = %err_up_sem, %if.end17, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %ret.0, %err_up_sem ], [ -11, %if.then.cleanup_crit_edge ], [ -512, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %props) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_umad_sm_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  %props = alloca %struct.ib_port_modify, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %props) #14
  %2 = call ptr @memcpy(ptr %props, ptr @__const.ib_umad_sm_close.props, i32 12)
  %file_mutex = getelementptr inbounds %struct.ib_umad_port, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %file_mutex, i32 noundef 0) #14
  %ib_dev = getelementptr inbounds %struct.ib_umad_port, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ib_dev, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %port_num = getelementptr inbounds %struct.ib_umad_port, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_num, align 8
  %call = call i32 @ib_modify_port(ptr noundef nonnull %4, i32 noundef %6, i32 noundef 0, ptr noundef nonnull %props) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %file_mutex) #14
  %sm_sem = getelementptr inbounds %struct.ib_umad_port, ptr %1, i32 0, i32 4
  call void @up(ptr noundef %sm_sem) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %props) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_port(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @umad_devnode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.90, ptr noundef %retval.0.i) #14
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abi_version_show(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.86, i32 noundef 5) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ibdev_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %ib_dev = getelementptr inbounds %struct.ib_umad_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ib_dev, align 4
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %6 = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.88, ptr noundef %retval.0.i) #14
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %dev_name.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %port_num = getelementptr inbounds %struct.ib_umad_port, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_num, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.86, i32 noundef %3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readnone }
attributes #21 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !84, !86, !88, !90, !92, !93, !95, !97, !99, !100, !102, !104, !106, !108, !110, !112, !114, !115, !117, !119, !120, !121, !122, !123, !125, !126, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !162, !163, !164, !166, !167, !169, !170, !171, !173, !174, !176, !177, !178, !180, !181, !183, !184, !186, !187, !189, !191, !193, !195, !196, !198, !200, !201, !203, !205, !206, !208, !210, !211, !213, !215, !216, !218, !220, !221, !222, !223, !225, !226, !227, !229, !231, !232}
!llvm.named.register.sp = !{!233}
!llvm.module.flags = !{!234, !235, !236, !237, !238, !239, !240, !241}
!llvm.ident = !{!242}

!0 = !{ptr @__UNIQUE_ID_author496, !1, !"__UNIQUE_ID_author496", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/user_mad.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_description497, !3, !"__UNIQUE_ID_description497", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/user_mad.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_file498, !5, !"__UNIQUE_ID_file498", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/user_mad.c", i32 64, i32 1}
!6 = !{ptr @__UNIQUE_ID_license499, !5, !"__UNIQUE_ID_license499", i1 false, i1 false}
!7 = !{ptr @__tracepoint_ib_umad_write, !8, !"__tracepoint_ib_umad_write", i1 false, i1 false}
!8 = !{!"../include/trace/events/ib_umad.h", i32 109, i32 1}
!9 = !{ptr @__tracepoint_ptr_ib_umad_write, !8, !"__tracepoint_ptr_ib_umad_write", i1 false, i1 false}
!10 = !{ptr @__SCK__tp_func_ib_umad_write, !8, !"__SCK__tp_func_ib_umad_write", i1 false, i1 false}
!11 = !{ptr @__tracepoint_ib_umad_read_recv, !12, !"__tracepoint_ib_umad_read_recv", i1 false, i1 false}
!12 = !{!"../include/trace/events/ib_umad.h", i32 114, i32 1}
!13 = !{ptr @__tracepoint_ptr_ib_umad_read_recv, !12, !"__tracepoint_ptr_ib_umad_read_recv", i1 false, i1 false}
!14 = !{ptr @__SCK__tp_func_ib_umad_read_recv, !12, !"__SCK__tp_func_ib_umad_read_recv", i1 false, i1 false}
!15 = !{ptr @__tracepoint_ib_umad_read_send, !16, !"__tracepoint_ib_umad_read_send", i1 false, i1 false}
!16 = !{!"../include/trace/events/ib_umad.h", i32 119, i32 1}
!17 = !{ptr @__tracepoint_ptr_ib_umad_read_send, !16, !"__tracepoint_ptr_ib_umad_read_send", i1 false, i1 false}
!18 = !{ptr @__SCK__tp_func_ib_umad_read_send, !16, !"__SCK__tp_func_ib_umad_read_send", i1 false, i1 false}
!19 = !{ptr @event_class_ib_umad_template, !20, !"event_class_ib_umad_template", i1 false, i1 false}
!20 = !{!"../include/trace/events/ib_umad.h", i32 16, i32 1}
!21 = !{ptr @event_ib_umad_write, !8, !"event_ib_umad_write", i1 false, i1 false}
!22 = !{ptr @__event_ib_umad_write, !8, !"__event_ib_umad_write", i1 false, i1 false}
!23 = !{ptr @event_ib_umad_read_recv, !12, !"event_ib_umad_read_recv", i1 false, i1 false}
!24 = !{ptr @__event_ib_umad_read_recv, !12, !"__event_ib_umad_read_recv", i1 false, i1 false}
!25 = !{ptr @event_ib_umad_read_send, !16, !"event_ib_umad_read_send", i1 false, i1 false}
!26 = !{ptr @__event_ib_umad_read_send, !16, !"__event_ib_umad_read_send", i1 false, i1 false}
!27 = !{ptr @__bpf_trace_tp_map_ib_umad_write, !8, !"__bpf_trace_tp_map_ib_umad_write", i1 false, i1 false}
!28 = !{ptr @__bpf_trace_tp_map_ib_umad_read_recv, !12, !"__bpf_trace_tp_map_ib_umad_read_recv", i1 false, i1 false}
!29 = !{ptr @__bpf_trace_tp_map_ib_umad_read_send, !16, !"__bpf_trace_tp_map_ib_umad_read_send", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_alias534, !31, !"__UNIQUE_ID_alias534", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/core/user_mad.c", i32 1175, i32 1}
!32 = !{ptr @__UNIQUE_ID_alias535, !33, !"__UNIQUE_ID_alias535", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/core/user_mad.c", i32 1194, i32 1}
!34 = !{ptr @__initcall__kmod_ib_umad__536_1494_ib_umad_init6, !35, !"__initcall__kmod_ib_umad__536_1494_ib_umad_init6", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/core/user_mad.c", i32 1494, i32 1}
!36 = !{ptr @__exitcall_ib_umad_cleanup, !37, !"__exitcall_ib_umad_cleanup", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/core/user_mad.c", i32 1495, i32 1}
!38 = !{ptr @dynamic_umad_dev, !39, !"dynamic_umad_dev", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/core/user_mad.c", i32 140, i32 14}
!40 = !{ptr @__tpstrtab_ib_umad_write, !8, !"__tpstrtab_ib_umad_write", i1 false, i1 false}
!41 = !{ptr @__tpstrtab_ib_umad_read_recv, !12, !"__tpstrtab_ib_umad_read_recv", i1 false, i1 false}
!42 = !{ptr @__tpstrtab_ib_umad_read_send, !16, !"__tpstrtab_ib_umad_read_send", i1 false, i1 false}
!43 = !{ptr @str__ib_umad__trace_system_name, !44, !"str__ib_umad__trace_system_name", i1 false, i1 false}
!44 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!45 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.15, !20, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.16, !20, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.17, !20, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.18, !20, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.19, !20, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.20, !20, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.21, !20, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.22, !20, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.23, !20, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.24, !20, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.25, !20, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.26, !20, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.27, !20, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.28, !20, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.29, !20, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.30, !20, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.31, !20, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.32, !20, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @trace_event_fields_ib_umad_template, !20, !"trace_event_fields_ib_umad_template", i1 false, i1 false}
!79 = !{ptr @trace_event_type_funcs_ib_umad_template, !20, !"trace_event_type_funcs_ib_umad_template", i1 false, i1 false}
!80 = !{ptr @.str.33, !20, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @print_fmt_ib_umad_template, !20, !"print_fmt_ib_umad_template", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/core/user_mad.c", i32 1191, i32 10}
!84 = !{ptr @issm_client, !85, !"issm_client", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/core/user_mad.c", i32 1190, i32 25}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/core/user_mad.c", i32 1170, i32 12}
!88 = !{ptr @umad_client, !89, !"umad_client", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/core/user_mad.c", i32 1169, i32 25}
!90 = !{ptr @ib_umad_init_port.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/infiniband/core/user_mad.c", i32 1297, i32 2}
!92 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/infiniband/core/user_mad.c", i32 1302, i32 27}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/core/user_mad.c", i32 1312, i32 30}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/infiniband/core/user_mad.c", i32 143, i32 8}
!99 = !{ptr @umad_ida, !98, !"umad_ida", i1 false, i1 false}
!100 = !{ptr @dynamic_issm_dev, !101, !"dynamic_issm_dev", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/core/user_mad.c", i32 141, i32 14}
!102 = !{ptr @sema_init.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!108 = !{ptr @umad_fops, !109, !"umad_fops", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/core/user_mad.c", i32 1060, i32 37}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/core/user_mad.c", i32 393, i32 7}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!114 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!119 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!120 = !{ptr @.str.46, !12, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!122 = !{ptr @.str.47, !12, !"<string literal>", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!125 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!127 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!128 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!129 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../include/rdma/ib_verbs.h", i32 3630, i32 2}
!132 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/infiniband/core/user_mad.c", i32 691, i32 3}
!136 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ib_umad_reg_agent._entry, !135, !"_entry", i1 false, i1 false}
!140 = !{ptr @ib_umad_reg_agent._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/core/user_mad.c", i32 702, i32 3}
!143 = !{ptr @ib_umad_reg_agent._entry.55, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @ib_umad_reg_agent._entry_ptr.57, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/infiniband/core/user_mad.c", i32 713, i32 2}
!147 = !{ptr @ib_umad_reg_agent._entry.58, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @ib_umad_reg_agent._entry_ptr.60, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/infiniband/core/user_mad.c", i32 758, i32 4}
!151 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @ib_umad_reg_agent._entry.61, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @ib_umad_reg_agent._entry_ptr.64, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/infiniband/core/user_mad.c", i32 761, i32 4}
!156 = !{ptr @ib_umad_reg_agent._entry.65, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @ib_umad_reg_agent._entry_ptr.67, !155, !"_entry_ptr", i1 false, i1 false}
!158 = distinct !{null, !159, !"__already_done", i1 false, i1 false}
!159 = !{!"../include/rdma/ib_verbs.h", i32 4616, i32 2}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/infiniband/core/user_mad.c", i32 792, i32 3}
!162 = !{ptr @ib_umad_reg_agent2._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @ib_umad_reg_agent2._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @ib_umad_reg_agent2._entry.69, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/infiniband/core/user_mad.c", i32 803, i32 3}
!166 = !{ptr @ib_umad_reg_agent2._entry_ptr.70, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/infiniband/core/user_mad.c", i32 810, i32 3}
!169 = !{ptr @ib_umad_reg_agent2._entry.71, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @ib_umad_reg_agent2._entry_ptr.73, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @ib_umad_reg_agent2._entry.74, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/infiniband/core/user_mad.c", i32 827, i32 2}
!173 = !{ptr @ib_umad_reg_agent2._entry_ptr.75, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/infiniband/core/user_mad.c", i32 838, i32 4}
!176 = !{ptr @ib_umad_reg_agent2._entry.76, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @ib_umad_reg_agent2._entry_ptr.78, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @ib_umad_open.__key, !179, !"__key", i1 false, i1 false}
!179 = !{!"../drivers/infiniband/core/user_mad.c", i32 1009, i32 2}
!180 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @ib_umad_open.__key.80, !182, !"__key", i1 false, i1 false}
!182 = !{!"../drivers/infiniband/core/user_mad.c", i32 1010, i32 2}
!183 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @ib_umad_open.__key.82, !185, !"__key", i1 false, i1 false}
!185 = !{!"../drivers/infiniband/core/user_mad.c", i32 1013, i32 2}
!186 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @umad_sm_fops, !188, !"umad_sm_fops", i1 false, i1 false}
!188 = !{!"../drivers/infiniband/core/user_mad.c", i32 1135, i32 37}
!189 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/infiniband/core/user_mad.c", i32 1246, i32 11}
!191 = !{ptr @umad_class, !192, !"umad_class", i1 false, i1 false}
!192 = !{!"../drivers/infiniband/core/user_mad.c", i32 1245, i32 21}
!193 = !{ptr @umad_class_groups, !194, !"umad_class_groups", i1 false, i1 false}
!194 = !{!"../drivers/infiniband/core/user_mad.c", i32 1243, i32 1}
!195 = !{ptr @umad_class_group, !194, !"umad_class_group", i1 false, i1 false}
!196 = !{ptr @umad_class_attrs, !197, !"umad_class_attrs", i1 false, i1 false}
!197 = !{!"../drivers/infiniband/core/user_mad.c", i32 1239, i32 26}
!198 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/infiniband/core/user_mad.c", i32 1237, i32 8}
!200 = !{ptr @class_attr_abi_version, !199, !"class_attr_abi_version", i1 false, i1 false}
!201 = !{ptr @.str.86, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/infiniband/core/user_mad.c", i32 1235, i32 25}
!203 = !{ptr @umad_class_dev_groups, !204, !"umad_class_dev_groups", i1 false, i1 false}
!204 = !{!"../drivers/infiniband/core/user_mad.c", i32 1225, i32 1}
!205 = !{ptr @umad_class_dev_group, !204, !"umad_class_dev_group", i1 false, i1 false}
!206 = !{ptr @umad_class_dev_attrs, !207, !"umad_class_dev_attrs", i1 false, i1 false}
!207 = !{!"../drivers/infiniband/core/user_mad.c", i32 1220, i32 26}
!208 = !{ptr @.str.87, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/infiniband/core/user_mad.c", i32 1206, i32 8}
!210 = !{ptr @dev_attr_ibdev, !209, !"dev_attr_ibdev", i1 false, i1 false}
!211 = !{ptr @.str.88, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/infiniband/core/user_mad.c", i32 1204, i32 25}
!213 = !{ptr @.str.89, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/infiniband/core/user_mad.c", i32 1218, i32 8}
!215 = !{ptr @dev_attr_port, !214, !"dev_attr_port", i1 false, i1 false}
!216 = !{ptr @.str.90, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/infiniband/core/user_mad.c", i32 1229, i32 31}
!218 = !{ptr @.str.91, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/infiniband/core/user_mad.c", i32 1437, i32 3}
!220 = !{ptr @.str.92, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @ib_umad_init._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @ib_umad_init._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.94, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/infiniband/core/user_mad.c", i32 1445, i32 3}
!225 = !{ptr @ib_umad_init._entry.93, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @ib_umad_init._entry_ptr.95, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @ib_umad_init.__key, !228, !"__key", i1 false, i1 false}
!228 = !{!"../drivers/infiniband/core/user_mad.c", i32 1450, i32 8}
!229 = !{ptr @.str.97, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/infiniband/core/user_mad.c", i32 1452, i32 3}
!231 = !{ptr @ib_umad_init._entry.96, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @ib_umad_init._entry_ptr.98, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{!"sp"}
!234 = !{i32 1, !"wchar_size", i32 2}
!235 = !{i32 1, !"min_enum_size", i32 4}
!236 = !{i32 8, !"branch-target-enforcement", i32 0}
!237 = !{i32 8, !"sign-return-address", i32 0}
!238 = !{i32 8, !"sign-return-address-all", i32 0}
!239 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!240 = !{i32 7, !"uwtable", i32 1}
!241 = !{i32 7, !"frame-pointer", i32 2}
!242 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!243 = !{!"branch_weights", i32 2000, i32 1}
!244 = !{!"branch_weights", i32 1, i32 2000}
!245 = !{!"auto-init"}
!246 = !{i64 2148376521, i64 2148376553, i64 2148376582, i64 2148376616, i64 2148376647, i64 2148376670}
!247 = !{i64 2148464546}
!248 = !{i64 2148378986, i64 2148379018, i64 2148379047, i64 2148379081, i64 2148379112, i64 2148379135}
!249 = !{i64 2149340660}
!250 = !{i64 2152678373, i64 2152678398}
!251 = !{i64 5173928}
!252 = !{i64 5174125}
!253 = !{i64 2152659358}
!254 = !{i64 2158754139, i64 2158754419, i64 2158754753, i64 2158755087}
!255 = !{i64 2158797355, i64 2158797635, i64 2158797969, i64 2158798303}
!256 = !{i64 635001, i64 635018}
!257 = !{i64 2158773076, i64 2158773356, i64 2158773690, i64 2158774024}
!258 = !{i64 2158785866, i64 2158786146, i64 2158786480, i64 2158786814}
!259 = !{i64 2152679054, i64 2152679079}
!260 = !{i64 2148988368, i64 2148988373, i64 2148988386, i64 2148988430, i64 2148988464, i64 2148988485}
!261 = !{i64 2157909776}
!262 = !{i64 2157910019}
!263 = !{i64 2149399709}
!264 = !{i64 2149400745}
!265 = !{i64 2157927429}
!266 = !{i64 2157927672}
!267 = !{i64 2157888278}
!268 = !{i64 2157888513}
