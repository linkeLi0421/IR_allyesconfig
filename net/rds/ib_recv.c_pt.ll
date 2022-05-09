; ModuleID = '/llk/IR_all_yes/net/rds/ib_recv.c_pt.bc'
source_filename = "../net/rds/ib_recv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rds_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.rds_ib_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpumask = type { [1 x i32] }
%struct.rds_ib_connection = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [32 x %struct.ib_wc], [32 x %struct.ib_wc], %struct.atomic_t, %struct.atomic_t, %struct.tasklet_struct, %struct.tasklet_struct, %struct.rds_ib_work_ring, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.mutex, %struct.rds_ib_work_ring, ptr, i32, ptr, ptr, ptr, i64, %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache, %struct.atomic_t, i32, %struct.atomic64_t, ptr, %struct.ib_send_wr, %struct.ib_sge, i32, i32, %struct.atomic_t, i8, i32, i8, %struct.atomic_t, i32, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.180, i32 }
%union.anon.180 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rds_ib_work_ring = type { i32, i32, i32, i32, %struct.atomic_t }
%struct.rds_ib_refill_cache = type { ptr, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.rds_ib_recv_work = type { ptr, ptr, %struct.ib_recv_wr, [2 x %struct.ib_sge] }
%struct.ib_recv_wr = type { ptr, %union.anon.161, ptr, i32 }
%union.anon.161 = type { i64 }
%struct.rds_ib_cache_head = type { ptr, i32 }
%struct.rds_incoming = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.rds_header, i32, %struct.in6_addr, %struct.rds_inc_usercopy, [4 x i64] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rds_header = type { i64, i64, i32, i16, i16, i8, i8, [4 x i8], i16, [16 x i8] }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.rds_inc_usercopy = type { i64, i64 }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rds_page_frag = type { %struct.list_head, %struct.list_head, %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rds_ib_incoming = type { %struct.list_head, %struct.list_head, %struct.rds_incoming }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.__kernel_sockaddr_storage = type { %union.anon.172 }
%union.anon.172 = type { ptr, [124 x i8] }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%struct.rds_ib_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i8, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.refcount_struct, %struct.work_struct, ptr }
%struct.rds_ib_ack_state = type { i64, i64, i8 }
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
%struct.rds_cong_map = type { %struct.rb_node, %struct.in6_addr, %struct.wait_queue_head, %struct.list_head, [2 x i32] }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/rds/ib_recv.c\00", [46 x i8] zeroinitializer }, align 32
@rds_ib_incoming_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rds_ib_allocation = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@rds_ib_frag_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rds_ib_inc_free.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rds_rdma\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rds_ib_inc_free\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): freeing ibinc %p inc %p\0A\00", [33 x i8] zeroinitializer }, align 32
@rds_ib_recv_refill._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015Argh - ring alloc returned pos=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_ib_recv_refill\00", [45 x i8] zeroinitializer }, align 32
@rds_ib_recv_refill._entry_ptr = internal global ptr @rds_ib_recv_refill._entry, section ".printk_index", align 4
@rds_ib_recv_refill.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str, ptr @.str.6, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): recv %p ibinc %p page %p addr %lu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014RDS/IB: recv post on %pI6c returned %d, disconnecting and reconnecting\0A\00", [54 x i8] zeroinitializer }, align 32
@rds_wq = external dso_local local_unnamed_addr global ptr, align 4
@rds_stats = external dso_local global %struct.rds_statistics, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rds_ib_stats = external dso_local global %struct.rds_ib_statistics, section ".data..percpu..shared_aligned", align 128
@rds_ib_recv_cqe_handler.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rds_ib_recv_cqe_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s(): wc wr_id 0x%llx status %u (%s) byte_len %u imm_data %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"\014RDS/IB: recv completion on <%pI6c,%pI6c, %d> had status %u (%s), vendor err 0x%x, disconnecting and reconnecting\0A\00", [44 x i8] zeroinitializer }, align 32
@rds_ib_recv_path.__UNIQUE_ID_ddebug560 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str, ptr @.str.12, i8 1, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rds_ib_recv_path\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(): conn %p\0A\00", [17 x i8] zeroinitializer }, align 32
@rds_ib_sysctl_max_recv_allocation = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rds_ib_incoming\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rds_ib_frag\00", [20 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@rds_ib_frag_free.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rds_ib_frag_free\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): frag %p page %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/rds/rds.h\00", [18 x i8] zeroinitializer }, align 32
@rds_ib_send_ack.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str, ptr @.str.22, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rds_ib_send_ack\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): send_ack: ic %p ack %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014RDS/IB: sending ack failed\0A\00", [34 x i8] zeroinitializer }, align 32
@rds_ib_process_recv.__UNIQUE_ID_ddebug557 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str, ptr @.str.25, i8 0, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rds_ib_process_recv\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): ic %p ibinc %p recv %p byte len %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\014RDS/IB: incoming message from %pI6c didn't include a header, disconnecting and reconnecting\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014RDS/IB: incoming message from %pI6c has corrupted header - forcing a reconnect\0A\00", [46 x i8] zeroinitializer }, align 32
@rds_ib_process_recv.__UNIQUE_ID_ddebug558 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str, ptr @.str.28, i8 0, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): ic %p ibinc %p rem %u flag 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014RDS/IB: fragment header mismatch; forcing reconnect\0A\00", [41 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 169, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"rds_ib_incoming_slab\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 43, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"rds_ib_allocation\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 45, i32 17 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"rds_ib_frag_slab\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 44, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 219, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 401, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 413, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 420, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 989, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1008, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1045, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1065, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1075, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 195, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"../net/rds/rds.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 835, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 664, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 687, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 858, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 862, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 877, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 933, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [21 x i8] c"../net/rds/ib_recv.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 943, i32 4 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @rds_ib_recv_refill._entry, ptr @rds_ib_recv_refill._entry_ptr, ptr @.str, ptr @rds_ib_incoming_slab, ptr @rds_ib_allocation, ptr @rds_ib_frag_slab, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_incoming_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_allocation to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_frag_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_recv_refill._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_recv_init_ring(ptr nocapture noundef readonly %ic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_recv_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 20
  %0 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_recv_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35.not = icmp eq i32 %1, 0
  br i1 %cmp35.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %i_recvs = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 25
  %2 = ptrtoint ptr %i_recvs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_recvs, align 8
  %i_recv_hdrs_dma = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 24
  %i_pd = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %recv.037 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %recv.037 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %recv.037, align 8
  %r_frag = getelementptr inbounds %struct.rds_ib_recv_work, ptr %recv.037, i32 0, i32 1
  %5 = ptrtoint ptr %r_frag to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %r_frag, align 4
  %r_wr = getelementptr inbounds %struct.rds_ib_recv_work, ptr %recv.037, i32 0, i32 2
  %6 = ptrtoint ptr %r_wr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %r_wr, align 8
  %conv = zext i32 %i.036 to i64
  %7 = getelementptr inbounds %struct.rds_ib_recv_work, ptr %recv.037, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %7, align 8
  %r_sge = getelementptr inbounds %struct.rds_ib_recv_work, ptr %recv.037, i32 0, i32 3
  %sg_list = getelementptr inbounds %struct.rds_ib_recv_work, ptr %recv.037, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %r_sge, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.rds_ib_recv_work, ptr %recv.037, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %num_sge, align 4
  %11 = ptrtoint ptr %i_recv_hdrs_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_recv_hdrs_dma, align 4
  %arrayidx5 = getelementptr i32, ptr %12, i32 %i.036
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5, align 4
  %conv6 = zext i32 %14 to i64
  %15 = ptrtoint ptr %r_sge to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv6, ptr %r_sge, align 8
  %length = getelementptr inbounds %struct.rds_ib_recv_work, ptr %recv.037, i32 0, i32 3, i32 0, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 48, ptr %length, align 8
  %17 = ptrtoint ptr %i_pd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_pd, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %lkey = getelementptr inbounds %struct.rds_ib_recv_work, ptr %recv.037, i32 0, i32 3, i32 0, i32 2
  %21 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %lkey, align 4
  %arrayidx8 = getelementptr %struct.rds_ib_recv_work, ptr %recv.037, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %arrayidx8, align 8
  %length10 = getelementptr %struct.rds_ib_recv_work, ptr %recv.037, i32 0, i32 3, i32 1, i32 1
  %23 = ptrtoint ptr %length10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4096, ptr %length10, align 8
  %24 = load ptr, ptr %i_pd, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %lkey13 = getelementptr %struct.rds_ib_recv_work, ptr %recv.037, i32 0, i32 3, i32 1, i32 2
  %27 = ptrtoint ptr %lkey13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %lkey13, align 4
  %inc = add nuw i32 %i.036, 1
  %incdec.ptr = getelementptr %struct.rds_ib_recv_work, ptr %recv.037, i32 1
  %28 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_recv_ring, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_recv_alloc_caches(ptr nocapture noundef %ic, i32 noundef %gfp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_cache_incs = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 27
  %call.i = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 8, i32 noundef 4, i32 noundef %gfp) #15
  %0 = ptrtoint ptr %i_cache_incs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %i_cache_incs, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end5_crit_edge, label %for.cond.preheader.i

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

for.cond.preheader.i:                             ; preds = %entry
  %call213.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call213.i, i32 %1)
  %cmp14.i = icmp ult i32 %call213.i, %1
  br i1 %cmp14.i, label %for.cond.preheader.i.do.body.i_crit_edge, label %for.cond.preheader.i.if.then_crit_edge

for.cond.preheader.i.if.then_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.preheader.i.do.body.i_crit_edge:         ; preds = %for.cond.preheader.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.cond.preheader.i.do.body.i_crit_edge
  %call215.i = phi i32 [ %call2.i, %do.body.i.do.body.i_crit_edge ], [ %call213.i, %for.cond.preheader.i.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %i_cache_incs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_cache_incs, align 4
  %4 = ptrtoint ptr %3 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call215.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %6, %4
  %7 = inttoptr i32 %add.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %7, align 4
  %count.i = getelementptr inbounds %struct.rds_ib_cache_head, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %count.i, align 4
  %call2.i = tail call i32 @cpumask_next(i32 noundef %call215.i, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call2.i, %10
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.if.then_crit_edge

do.body.i.if.then_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.then:                                          ; preds = %do.body.i.if.then_crit_edge, %for.cond.preheader.i.if.then_crit_edge
  %xfer.i = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 27, i32 1
  %11 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %xfer.i, align 4
  %ready.i = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 27, i32 2
  %12 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ready.i, align 4
  %i_cache_frags = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 28
  %call.i11 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 8, i32 noundef 4, i32 noundef %gfp) #15
  %13 = ptrtoint ptr %i_cache_frags to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i11, ptr %i_cache_frags, align 4
  %tobool.not.i12 = icmp eq ptr %call.i11, null
  br i1 %tobool.not.i12, label %if.then3, label %for.cond.preheader.i15

for.cond.preheader.i15:                           ; preds = %if.then
  %call213.i13 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call213.i13, i32 %14)
  %cmp14.i14 = icmp ult i32 %call213.i13, %14
  br i1 %cmp14.i14, label %for.cond.preheader.i15.do.body.i22_crit_edge, label %for.cond.preheader.i15.rds_ib_recv_alloc_cache.exit27.thread_crit_edge

for.cond.preheader.i15.rds_ib_recv_alloc_cache.exit27.thread_crit_edge: ; preds = %for.cond.preheader.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_ib_recv_alloc_cache.exit27.thread

for.cond.preheader.i15.do.body.i22_crit_edge:     ; preds = %for.cond.preheader.i15
  br label %do.body.i22

do.body.i22:                                      ; preds = %do.body.i22.do.body.i22_crit_edge, %for.cond.preheader.i15.do.body.i22_crit_edge
  %call215.i16 = phi i32 [ %call2.i20, %do.body.i22.do.body.i22_crit_edge ], [ %call213.i13, %for.cond.preheader.i15.do.body.i22_crit_edge ]
  %15 = ptrtoint ptr %i_cache_frags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_cache_frags, align 4
  %17 = ptrtoint ptr %16 to i32
  %arrayidx.i17 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call215.i16
  %18 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i17, align 4
  %add.i18 = add i32 %19, %17
  %20 = inttoptr i32 %add.i18 to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %20, align 4
  %count.i19 = getelementptr inbounds %struct.rds_ib_cache_head, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %count.i19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %count.i19, align 4
  %call2.i20 = tail call i32 @cpumask_next(i32 noundef %call215.i16, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i21 = icmp ult i32 %call2.i20, %23
  br i1 %cmp.i21, label %do.body.i22.do.body.i22_crit_edge, label %do.body.i22.rds_ib_recv_alloc_cache.exit27.thread_crit_edge

do.body.i22.rds_ib_recv_alloc_cache.exit27.thread_crit_edge: ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_ib_recv_alloc_cache.exit27.thread

do.body.i22.do.body.i22_crit_edge:                ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i22

rds_ib_recv_alloc_cache.exit27.thread:            ; preds = %do.body.i22.rds_ib_recv_alloc_cache.exit27.thread_crit_edge, %for.cond.preheader.i15.rds_ib_recv_alloc_cache.exit27.thread_crit_edge
  %xfer.i23 = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 28, i32 1
  %24 = ptrtoint ptr %xfer.i23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %xfer.i23, align 4
  %ready.i24 = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 28, i32 2
  %25 = ptrtoint ptr %ready.i24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ready.i24, align 4
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %i_cache_incs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_cache_incs, align 8
  tail call void @free_percpu(ptr noundef %27) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %rds_ib_recv_alloc_cache.exit27.thread, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.if.end5_crit_edge ], [ 0, %rds_ib_recv_alloc_cache.exit27.thread ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_recv_free_caches(ptr noundef %ic) local_unnamed_addr #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %i_cache_incs = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 27
  %xfer.i = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 27, i32 1
  %call.i.i116 = call zeroext i1 @__kasan_check_write(ptr noundef %xfer.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !78
  call void @llvm.prefetch.p0(ptr %xfer.i, i32 1, i32 3, i32 1) #12
  %3 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %xfer.i) #12, !srcloc !79
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  %4 = inttoptr i32 %asmresult.i.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i, label %entry.rds_ib_cache_xfer_to_ready.exit_crit_edge, label %if.then.i

entry.rds_ib_cache_xfer_to_ready.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_ib_cache_xfer_to_ready.exit

if.then.i:                                        ; preds = %entry
  %ready.i = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 27, i32 2
  %5 = ptrtoint ptr %ready.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ready.i, align 4
  %tobool16.not.i = icmp eq ptr %6, null
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.then.i
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %10, %8
  br i1 %cmp.i.not.i.i.i, label %if.then17.i.list_splice_tail.exit.i.i_crit_edge, label %if.then.i.i.i

if.then17.i.list_splice_tail.exit.i.i_crit_edge:  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %10, ptr %12, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %6, ptr %14, align 4
  store ptr %14, ptr %prev.i.i.i, align 4
  br label %list_splice_tail.exit.i.i

list_splice_tail.exit.i.i:                        ; preds = %if.then.i.i.i, %if.then17.i.list_splice_tail.exit.i.i_crit_edge
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i3.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %19, ptr noundef nonnull %6) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %list_splice_tail.exit.i.i.rds_ib_cache_xfer_to_ready.exit_crit_edge

list_splice_tail.exit.i.i.rds_ib_cache_xfer_to_ready.exit_crit_edge: ; preds = %list_splice_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_ib_cache_xfer_to_ready.exit

if.end.i.i.i.i:                                   ; preds = %list_splice_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %8, ptr %prev.i3.i.i, align 4
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %6, ptr %8, align 4
  %prev3.i.i4.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i4.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i4.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %8, ptr %19, align 4
  br label %rds_ib_cache_xfer_to_ready.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %4, ptr %ready.i, align 4
  br label %rds_ib_cache_xfer_to_ready.exit

rds_ib_cache_xfer_to_ready.exit:                  ; preds = %if.else.i, %if.end.i.i.i.i, %list_splice_tail.exit.i.i.rds_ib_cache_xfer_to_ready.exit_crit_edge, %entry.rds_ib_cache_xfer_to_ready.exit_crit_edge
  call fastcc void @rds_ib_cache_splice_all_lists(ptr noundef %i_cache_incs, ptr noundef nonnull %list)
  %25 = ptrtoint ptr %i_cache_incs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_cache_incs, align 8
  call void @free_percpu(ptr noundef %26) #12
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list, align 4
  %cmp.not150 = icmp eq ptr %28, %list
  br i1 %cmp.not150, label %rds_ib_cache_xfer_to_ready.exit.for.end_crit_edge, label %rds_ib_cache_xfer_to_ready.exit.for.body_crit_edge

rds_ib_cache_xfer_to_ready.exit.for.body_crit_edge: ; preds = %rds_ib_cache_xfer_to_ready.exit
  br label %for.body

rds_ib_cache_xfer_to_ready.exit.for.end_crit_edge: ; preds = %rds_ib_cache_xfer_to_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %rds_ib_cache_xfer_to_ready.exit.for.body_crit_edge
  %.pn.in151 = phi ptr [ %.pn154, %if.end.for.body_crit_edge ], [ %28, %rds_ib_cache_xfer_to_ready.exit.for.body_crit_edge ]
  %inc.0153 = getelementptr i8, ptr %.pn.in151, i32 -8
  %29 = ptrtoint ptr %.pn.in151 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn154 = load ptr, ptr %.pn.in151, align 8
  %call.i.i117 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in151) #12
  br i1 %call.i.i117, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i118 = getelementptr inbounds %struct.list_head, ptr %.pn.in151, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i118 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i118, align 4
  %32 = ptrtoint ptr %.pn.in151 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.pn.in151, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %36 = ptrtoint ptr %.pn.in151 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in151, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in151, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %38 = ptrtoint ptr %inc.0153 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %inc.0153, align 4
  %cmp.i.not = icmp eq ptr %39, %inc.0153
  br i1 %cmp.i.not, label %list_del.exit.if.end_crit_edge, label %do.end, !prof !81

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %list_del.exit.if.end_crit_edge
  %40 = load ptr, ptr @rds_ib_incoming_slab, align 4
  call void @kmem_cache_free(ptr noundef %40, ptr noundef %inc.0153) #12
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rds_ib_allocation, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @rds_ib_allocation, i32 1, i32 3, i32 1) #12
  %41 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rds_ib_allocation, ptr nonnull @rds_ib_allocation, i32 1, ptr nonnull elementtype(i32) @rds_ib_allocation) #12, !srcloc !82
  %cmp.not = icmp eq ptr %.pn154, %list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %rds_ib_cache_xfer_to_ready.exit.for.end_crit_edge
  %i_cache_frags = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 28
  %xfer.i119 = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 28, i32 1
  %call.i.i120 = call zeroext i1 @__kasan_check_write(ptr noundef %xfer.i119, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !78
  call void @llvm.prefetch.p0(ptr %xfer.i119, i32 1, i32 3, i32 1) #12
  %42 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %xfer.i119) #12, !srcloc !79
  %asmresult.i.i121 = extractvalue { i32, i32 } %42, 0
  %43 = inttoptr i32 %asmresult.i.i121 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i121)
  %tobool.not.i122 = icmp eq i32 %asmresult.i.i121, 0
  br i1 %tobool.not.i122, label %for.end.rds_ib_cache_xfer_to_ready.exit139_crit_edge, label %if.then.i125

for.end.rds_ib_cache_xfer_to_ready.exit139_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_ib_cache_xfer_to_ready.exit139

if.then.i125:                                     ; preds = %for.end
  %ready.i123 = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 28, i32 2
  %44 = ptrtoint ptr %ready.i123 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ready.i123, align 4
  %tobool16.not.i124 = icmp eq ptr %45, null
  br i1 %tobool16.not.i124, label %if.else.i138, label %if.then17.i128

if.then17.i128:                                   ; preds = %if.then.i125
  %prev.i.i126 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i126, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %47, align 4
  %cmp.i.not.i.i.i127 = icmp eq ptr %49, %47
  br i1 %cmp.i.not.i.i.i127, label %if.then17.i128.list_splice_tail.exit.i.i135_crit_edge, label %if.then.i.i.i132

if.then17.i128.list_splice_tail.exit.i.i135_crit_edge: ; preds = %if.then17.i128
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail.exit.i.i135

if.then.i.i.i132:                                 ; preds = %if.then17.i128
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i129 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i129, align 4
  %prev2.i.i.i.i130 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev2.i.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev2.i.i.i.i130, align 4
  %prev3.i.i.i.i131 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i.i131 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i.i.i131, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %49, ptr %51, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %45, ptr %53, align 4
  store ptr %53, ptr %prev.i.i.i129, align 4
  br label %list_splice_tail.exit.i.i135

list_splice_tail.exit.i.i135:                     ; preds = %if.then.i.i.i132, %if.then17.i128.list_splice_tail.exit.i.i135_crit_edge
  %prev.i3.i.i133 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i3.i.i133 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i3.i.i133, align 4
  %call.i.i.i.i134 = call zeroext i1 @__list_add_valid(ptr noundef %47, ptr noundef %58, ptr noundef nonnull %45) #12
  br i1 %call.i.i.i.i134, label %if.end.i.i.i.i137, label %list_splice_tail.exit.i.i135.rds_ib_cache_xfer_to_ready.exit139_crit_edge

list_splice_tail.exit.i.i135.rds_ib_cache_xfer_to_ready.exit139_crit_edge: ; preds = %list_splice_tail.exit.i.i135
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_ib_cache_xfer_to_ready.exit139

if.end.i.i.i.i137:                                ; preds = %list_splice_tail.exit.i.i135
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %prev.i3.i.i133 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %47, ptr %prev.i3.i.i133, align 4
  %60 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %45, ptr %47, align 4
  %prev3.i.i4.i.i136 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i4.i.i136 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i4.i.i136, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %47, ptr %58, align 4
  br label %rds_ib_cache_xfer_to_ready.exit139

if.else.i138:                                     ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %ready.i123 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %43, ptr %ready.i123, align 4
  br label %rds_ib_cache_xfer_to_ready.exit139

rds_ib_cache_xfer_to_ready.exit139:               ; preds = %if.else.i138, %if.end.i.i.i.i137, %list_splice_tail.exit.i.i135.rds_ib_cache_xfer_to_ready.exit139_crit_edge, %for.end.rds_ib_cache_xfer_to_ready.exit139_crit_edge
  call fastcc void @rds_ib_cache_splice_all_lists(ptr noundef %i_cache_frags, ptr noundef nonnull %list)
  %64 = ptrtoint ptr %i_cache_frags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_cache_frags, align 4
  call void @free_percpu(ptr noundef %65) #12
  %66 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %list, align 4
  %cmp50.not157 = icmp eq ptr %67, %list
  br i1 %cmp50.not157, label %rds_ib_cache_xfer_to_ready.exit139.for.end95_crit_edge, label %rds_ib_cache_xfer_to_ready.exit139.for.body53_crit_edge

rds_ib_cache_xfer_to_ready.exit139.for.body53_crit_edge: ; preds = %rds_ib_cache_xfer_to_ready.exit139
  br label %for.body53

rds_ib_cache_xfer_to_ready.exit139.for.end95_crit_edge: ; preds = %rds_ib_cache_xfer_to_ready.exit139
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end95

for.body53:                                       ; preds = %if.end81.for.body53_crit_edge, %rds_ib_cache_xfer_to_ready.exit139.for.body53_crit_edge
  %.pn113.in158 = phi ptr [ %.pn113161, %if.end81.for.body53_crit_edge ], [ %67, %rds_ib_cache_xfer_to_ready.exit139.for.body53_crit_edge ]
  %frag.0160 = getelementptr i8, ptr %.pn113.in158, i32 -8
  %68 = ptrtoint ptr %.pn113.in158 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn113161 = load ptr, ptr %.pn113.in158, align 4
  %call.i.i140 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn113.in158) #12
  br i1 %call.i.i140, label %if.end.i.i143, label %for.body53.list_del.exit145_crit_edge

for.body53.list_del.exit145_crit_edge:            ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit145

if.end.i.i143:                                    ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i141 = getelementptr inbounds %struct.list_head, ptr %.pn113.in158, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i141 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i141, align 4
  %71 = ptrtoint ptr %.pn113.in158 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %.pn113.in158, align 4
  %prev1.i.i.i142 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i142 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev1.i.i.i142, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %70, align 4
  br label %list_del.exit145

list_del.exit145:                                 ; preds = %if.end.i.i143, %for.body53.list_del.exit145_crit_edge
  %75 = ptrtoint ptr %.pn113.in158 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn113.in158, align 4
  %prev.i144 = getelementptr inbounds %struct.list_head, ptr %.pn113.in158, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i144 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i144, align 4
  %77 = ptrtoint ptr %frag.0160 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %frag.0160, align 4
  %cmp.i146.not = icmp eq ptr %78, %frag.0160
  br i1 %cmp.i146.not, label %list_del.exit145.if.end81_crit_edge, label %do.end75, !prof !81

list_del.exit145.if.end81_crit_edge:              ; preds = %list_del.exit145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

do.end75:                                         ; preds = %list_del.exit145
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 180, i32 noundef 9, ptr noundef null) #12
  br label %if.end81

if.end81:                                         ; preds = %do.end75, %list_del.exit145.if.end81_crit_edge
  %79 = load ptr, ptr @rds_ib_frag_slab, align 4
  call void @kmem_cache_free(ptr noundef %79, ptr noundef %frag.0160) #12
  %cmp50.not = icmp eq ptr %.pn113161, %list
  br i1 %cmp50.not, label %if.end81.for.end95_crit_edge, label %if.end81.for.body53_crit_edge

if.end81.for.body53_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53

if.end81.for.end95_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end95

for.end95:                                        ; preds = %if.end81.for.end95_crit_edge, %rds_ib_cache_xfer_to_ready.exit139.for.end95_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_ib_cache_splice_all_lists(ptr nocapture noundef %cache, ptr noundef %caller_list) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call30 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call30, i32 %0)
  %cmp31 = icmp ult i32 %call30, %0
  br i1 %cmp31, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %caller_list, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %do.body.lr.ph
  %call32 = phi i32 [ %call30, %do.body.lr.ph ], [ %call, %if.end.do.body_crit_edge ]
  %1 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cache, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call32
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %do.body
  %prev.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  %cmp.i.not.i.i = icmp eq ptr %12, %10
  br i1 %cmp.i.not.i.i, label %if.then.list_splice_tail.exit.i_crit_edge, label %if.then.i.i

if.then.list_splice_tail.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %14, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %caller_list, ptr %16, align 4
  store ptr %16, ptr %prev.i.i, align 4
  br label %list_splice_tail.exit.i

list_splice_tail.exit.i:                          ; preds = %if.then.i.i, %if.then.list_splice_tail.exit.i_crit_edge
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef %21, ptr noundef %caller_list) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_splice_tail.exit.i.list_splice_entire_tail.exit_crit_edge

list_splice_tail.exit.i.list_splice_entire_tail.exit_crit_edge: ; preds = %list_splice_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_entire_tail.exit

if.end.i.i.i:                                     ; preds = %list_splice_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %10, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %caller_list, ptr %10, align 4
  %prev3.i.i4.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i4.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %10, ptr %21, align 4
  br label %list_splice_entire_tail.exit

list_splice_entire_tail.exit:                     ; preds = %if.end.i.i.i, %list_splice_tail.exit.i.list_splice_entire_tail.exit_crit_edge
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %6, align 4
  br label %if.end

if.end:                                           ; preds = %list_splice_entire_tail.exit, %do.body.if.end_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call32, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %27
  br i1 %cmp, label %if.end.do.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %ready = getelementptr inbounds %struct.rds_ib_refill_cache, ptr %cache, i32 0, i32 2
  %28 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ready, align 4
  %tobool4.not = icmp eq ptr %29, null
  br i1 %tobool4.not, label %for.end.if.end8_crit_edge, label %if.then5

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %for.end
  %prev.i18 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i18, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %31, align 4
  %cmp.i.not.i.i19 = icmp eq ptr %33, %31
  br i1 %cmp.i.not.i.i19, label %if.then5.list_splice_tail.exit.i26_crit_edge, label %if.then.i.i23

if.then5.list_splice_tail.exit.i26_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail.exit.i26

if.then.i.i23:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i20 = getelementptr inbounds %struct.list_head, ptr %caller_list, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i20, align 4
  %prev2.i.i.i21 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %prev2.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev2.i.i.i21, align 4
  %prev3.i.i.i22 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i22, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %33, ptr %35, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %caller_list, ptr %37, align 4
  store ptr %37, ptr %prev.i.i20, align 4
  br label %list_splice_tail.exit.i26

list_splice_tail.exit.i26:                        ; preds = %if.then.i.i23, %if.then5.list_splice_tail.exit.i26_crit_edge
  %prev.i3.i24 = getelementptr inbounds %struct.list_head, ptr %caller_list, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i3.i24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i3.i24, align 4
  %call.i.i.i25 = tail call zeroext i1 @__list_add_valid(ptr noundef %31, ptr noundef %42, ptr noundef %caller_list) #12
  br i1 %call.i.i.i25, label %if.end.i.i.i28, label %list_splice_tail.exit.i26.list_splice_entire_tail.exit29_crit_edge

list_splice_tail.exit.i26.list_splice_entire_tail.exit29_crit_edge: ; preds = %list_splice_tail.exit.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_entire_tail.exit29

if.end.i.i.i28:                                   ; preds = %list_splice_tail.exit.i26
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %prev.i3.i24 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %31, ptr %prev.i3.i24, align 4
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %caller_list, ptr %31, align 4
  %prev3.i.i4.i27 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i4.i27 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i4.i27, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %31, ptr %42, align 4
  br label %list_splice_entire_tail.exit29

list_splice_entire_tail.exit29:                   ; preds = %if.end.i.i.i28, %list_splice_tail.exit.i26.list_splice_entire_tail.exit29_crit_edge
  %47 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %ready, align 4
  br label %if.end8

if.end8:                                          ; preds = %list_splice_entire_tail.exit29, %for.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_inc_free(ptr noundef %inc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_conn = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 2
  %0 = ptrtoint ptr %i_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_conn, align 4
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp_transport_data, align 8
  %add.ptr = getelementptr i8, ptr %inc, i32 -16
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %cmp.not53 = icmp eq ptr %7, %add.ptr
  br i1 %cmp.not53, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %frag.054 = phi ptr [ %pos.0, %list_del_init.exit.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %8 = ptrtoint ptr %frag.054 to i32
  call void @__asan_load4_noabort(i32 %8)
  %pos.0 = load ptr, ptr %frag.054, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %frag.054) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %frag.054, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %frag.054 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %frag.054, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %frag.054 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %frag.054, ptr %frag.054, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %frag.054, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %frag.054, ptr %prev.i3.i, align 4
  tail call fastcc void @rds_ib_frag_free(ptr noundef %5, ptr noundef %frag.054)
  %cmp.not = icmp eq ptr %pos.0, %add.ptr
  br i1 %cmp.not, label %list_del_init.exit.do.body_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del_init.exit.do.body_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %list_del_init.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not = icmp eq ptr %18, %add.ptr
  br i1 %cmp.i.not, label %do.body27, label %do.body21, !prof !81

do.body21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_recv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #12, !srcloc !83
  unreachable

do.body27:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_inc_free.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_inc_free, %if.then37)) #12
          to label %do.end40 [label %if.then37], !srcloc !84

if.then37:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_inc_free.__UNIQUE_ID_ddebug547, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef %add.ptr, ptr noundef %inc) #12
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body27
  %ii_cache_entry = getelementptr i8, ptr %inc, i32 -8
  %i_cache_incs = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 27
  tail call fastcc void @rds_ib_recv_cache_put(ptr noundef %ii_cache_entry, ptr noundef %i_cache_incs)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_ib_frag_free(ptr noundef %ic, ptr noundef %frag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_frag_free.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_frag_free, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  %f_sg = getelementptr inbounds %struct.rds_page_frag, ptr %frag, i32 0, i32 2
  %0 = ptrtoint ptr %f_sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_sg, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !81

do.body2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !85
  unreachable

sg_page.exit:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %and.i = and i32 %1, -4
  %2 = inttoptr i32 %and.i to ptr
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_frag_free.__UNIQUE_ID_ddebug546, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %frag, ptr noundef %2) #12
  br label %do.end

do.end:                                           ; preds = %sg_page.exit, %entry
  call void @__sanitizer_cov_trace_pc() #14
  %f_cache_entry = getelementptr inbounds %struct.rds_page_frag, ptr %frag, i32 0, i32 1
  %i_cache_frags = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 28
  tail call fastcc void @rds_ib_recv_cache_put(ptr noundef %f_cache_entry, ptr noundef %i_cache_frags)
  %i_cache_allocs = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_cache_allocs, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %i_cache_allocs, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_cache_allocs, ptr %i_cache_allocs, i32 4, ptr elementtype(i32) %i_cache_allocs) #12, !srcloc !86
  %4 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %7, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !87
  %8 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i24 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i24 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, ptrtoint (ptr @rds_ib_stats to i32)
  %14 = inttoptr i32 %add to ptr
  %s_ib_recv_added_to_cache = getelementptr inbounds %struct.rds_ib_statistics, ptr %14, i32 0, i32 39
  %15 = ptrtoint ptr %s_ib_recv_added_to_cache to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %s_ib_recv_added_to_cache, align 8
  %add13 = add i64 %16, 4096
  store i64 %add13, ptr %s_ib_recv_added_to_cache, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !88
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i22 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i22 to ptr
  %preempt_count.i.i23 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i23, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i23, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_ib_recv_cache_put(ptr noundef %new_item, ptr noundef %cache) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !89
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %1 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cache, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i244 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i244 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool25.not = icmp eq ptr %12, null
  br i1 %tobool25.not, label %if.then26, label %if.else

if.then26:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %new_item to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %new_item, ptr %new_item, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %new_item, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %new_item, ptr %prev.i, align 4
  br label %if.end27

if.else:                                          ; preds = %do.end11
  %prev.i245 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i245 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i245, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new_item, ptr noundef %16, ptr noundef nonnull %12) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %prev.i245 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %new_item, ptr %prev.i245, align 4
  %18 = ptrtoint ptr %new_item to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %new_item, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %new_item, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %new_item, ptr %16, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end.i.i, %if.else.if.end27_crit_edge, %if.then26
  %21 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cache, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu, align 4
  %arrayidx45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %27, %23
  %28 = inttoptr i32 %add46 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %new_item, ptr %28, align 4
  %30 = load ptr, ptr %cache, align 4
  %count = getelementptr inbounds %struct.rds_ib_cache_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %count to i32
  %32 = load i32, ptr %cpu, align 4
  %arrayidx67 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx67, align 4
  %add68 = add i32 %34, %31
  %35 = inttoptr i32 %add68 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add69 = add i32 %37, 1
  store i32 %add69, ptr %35, align 4
  %38 = load ptr, ptr %cache, align 4
  %count88 = getelementptr inbounds %struct.rds_ib_cache_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %count88 to i32
  %40 = load i32, ptr %cpu, align 4
  %arrayidx92 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx92, align 4
  %add93 = add i32 %42, %39
  %43 = inttoptr i32 %add93 to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %45)
  %cmp95 = icmp ult i32 %45, 32
  br i1 %cmp95, label %if.end27.do.body193_crit_edge, label %do.body99.preheader

if.end27.do.body193_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body193

do.body99.preheader:                              ; preds = %if.end27
  %xfer = getelementptr inbounds %struct.rds_ib_refill_cache, ptr %cache, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %46 = ptrtoint ptr %12 to i32
  br label %do.body99

do.body99:                                        ; preds = %__cmpxchg.exit.do.body99_crit_edge, %do.body99.preheader
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xfer, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %xfer, i32 1, i32 3, i32 1) #12
  %47 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %xfer) #12, !srcloc !79
  %asmresult.i = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool119.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool119.not, label %do.body99.if.end121_crit_edge, label %if.then120

do.body99.if.end121_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then120:                                       ; preds = %do.body99
  %48 = inttoptr i32 %asmresult.i to ptr
  %prev.i246 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i246 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i246, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %50, align 4
  %cmp.i.not.i.i = icmp eq ptr %52, %50
  br i1 %cmp.i.not.i.i, label %if.then120.list_splice_tail.exit.i_crit_edge, label %if.then.i.i

if.then120.list_splice_tail.exit.i_crit_edge:     ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail.exit.i

if.then.i.i:                                      ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %52, ptr %54, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %12, ptr %56, align 4
  store ptr %56, ptr %prev.i.i, align 4
  br label %list_splice_tail.exit.i

list_splice_tail.exit.i:                          ; preds = %if.then.i.i, %if.then120.list_splice_tail.exit.i_crit_edge
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %50, ptr noundef %61, ptr noundef %12) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_splice_tail.exit.i.if.end121_crit_edge

list_splice_tail.exit.i.if.end121_crit_edge:      ; preds = %list_splice_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.end.i.i.i:                                     ; preds = %list_splice_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %50, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %12, ptr %50, align 4
  %prev3.i.i4.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %64 = ptrtoint ptr %prev3.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i4.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %50, ptr %61, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.end.i.i.i, %list_splice_tail.exit.i.if.end121_crit_edge, %do.body99.if.end121_crit_edge
  %call.i243 = tail call zeroext i1 @__kasan_check_write(ptr noundef %xfer, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %xfer, i32 1, i32 3, i32 1) #12
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end121
  %66 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %xfer, i32 0, i32 %46) #12, !srcloc !93
  %asmresult.i247 = extractvalue { i32, i32 } %66, 0
  %tobool.not.i = icmp eq i32 %asmresult.i247, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %66, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  %tobool145.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool145.not, label %do.end146, label %__cmpxchg.exit.do.body99_crit_edge

__cmpxchg.exit.do.body99_crit_edge:               ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body99

do.end146:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cache, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu, align 4
  %arrayidx164 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx164, align 4
  %add165 = add i32 %73, %69
  %74 = inttoptr i32 %add165 to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %74, align 4
  %76 = load ptr, ptr %cache, align 4
  %count183 = getelementptr inbounds %struct.rds_ib_cache_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %count183 to i32
  %78 = load i32, ptr %cpu, align 4
  %arrayidx187 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx187, align 4
  %add188 = add i32 %80, %77
  %81 = inttoptr i32 %add188 to ptr
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %81, align 4
  br label %do.body193

do.body193:                                       ; preds = %do.end146, %if.end27.do.body193_crit_edge
  br i1 %tobool.not, label %if.then202, label %do.body193.do.body204_crit_edge

do.body193.do.body204_crit_edge:                  ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body204

if.then202:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body204

do.body204:                                       ; preds = %if.then202, %do.body193.do.body204_crit_edge
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !95
  %and.i.i = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool212.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool212.not, label %if.then216, label %do.body204.do.end219_crit_edge, !prof !96

do.body204.do.end219_crit_edge:                   ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end219

if.then216:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end219

do.end219:                                        ; preds = %if.then216, %do.body204.do.end219_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !97
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_recv_clear_ring(ptr noundef %ic) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_recv_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 20
  %0 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_recv_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %i_recvs = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 25
  %i_cm_id.i = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %rds_ib_recv_clear_one.exit.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rds_ib_recv_clear_one.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %i_recvs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_recvs, align 8
  %arrayidx = getelementptr %struct.rds_ib_recv_work, ptr %3, i32 %i.06
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %ii_inc.i = getelementptr inbounds %struct.rds_ib_incoming, ptr %5, i32 0, i32 2
  tail call void @rds_inc_put(ptr noundef %ii_inc.i) #12
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %r_frag.i = getelementptr %struct.rds_ib_recv_work, ptr %3, i32 %i.06, i32 1
  %7 = ptrtoint ptr %r_frag.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %r_frag.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %if.end.i.rds_ib_recv_clear_one.exit_crit_edge, label %if.then4.i

if.end.i.rds_ib_recv_clear_one.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_ib_recv_clear_one.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %i_cm_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_cm_id.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %f_sg.i = getelementptr inbounds %struct.rds_page_frag, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %f_sg.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %15 = ptrtoint ptr %r_frag.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %r_frag.i, align 4
  tail call fastcc void @rds_ib_frag_free(ptr noundef %ic, ptr noundef %16) #12
  %17 = ptrtoint ptr %r_frag.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %r_frag.i, align 4
  br label %rds_ib_recv_clear_one.exit

rds_ib_recv_clear_one.exit:                       ; preds = %if.then4.i, %if.end.i.rds_ib_recv_clear_one.exit_crit_edge
  %inc = add nuw i32 %i.06, 1
  %18 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_recv_ring, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %rds_ib_recv_clear_one.exit.for.body_crit_edge, label %rds_ib_recv_clear_one.exit.for.end_crit_edge

rds_ib_recv_clear_one.exit.for.end_crit_edge:     ; preds = %rds_ib_recv_clear_one.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

rds_ib_recv_clear_one.exit.for.body_crit_edge:    ; preds = %rds_ib_recv_clear_one.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %rds_ib_recv_clear_one.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_recv_refill(ptr noundef %conn, i32 noundef %prefill, i32 noundef %gfp) local_unnamed_addr #2 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  %and = and i32 %gfp, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #12
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pos, align 4, !annotation !98
  %cp_flags.i = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 16
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %cp_flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prefill)
  %tobool3.not = icmp eq i32 %prefill, 0
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 8
  %i_recv_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 20
  %i_recvs = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 25
  %spec.select.i = select i1 %tobool.not, i32 %gfp, i32 3264
  %spec.select117.i = select i1 %tobool.not, i32 %gfp, i32 1051842
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %posted.0 = phi i32 [ 0, %while.cond.preheader ], [ %inc, %while.cond.backedge ]
  br i1 %tobool3.not, label %lor.lhs.false, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

lor.lhs.false:                                    ; preds = %while.cond
  %5 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %c_trans.i, align 4
  %t_mp_capable.i = getelementptr inbounds %struct.rds_transport, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %t_mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %t_mp_capable.i, align 4
  %8 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.rds_conn_up.exit_crit_edge, label %do.end.i, !prof !81

lor.lhs.false.rds_conn_up.exit_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_conn_up.exit

do.end.i:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 835, i32 noundef 9, ptr noundef null) #12
  br label %rds_conn_up.exit

rds_conn_up.exit:                                 ; preds = %do.end.i, %lor.lhs.false.rds_conn_up.exit_crit_edge
  %9 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c_path, align 4
  %cp_state.i.i = getelementptr inbounds %struct.rds_conn_path, ptr %10, i32 0, i32 14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i, i32 noundef 4) #12
  %11 = ptrtoint ptr %cp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %cp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i.i.not = icmp eq i32 %12, 3
  br i1 %cmp.i.i.not, label %rds_conn_up.exit.land.rhs_crit_edge, label %rds_conn_up.exit.while.end_crit_edge

rds_conn_up.exit.while.end_crit_edge:             ; preds = %rds_conn_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

rds_conn_up.exit.land.rhs_crit_edge:              ; preds = %rds_conn_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

land.rhs:                                         ; preds = %rds_conn_up.exit.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge
  %call6 = call i32 @rds_ib_ring_alloc(ptr noundef %i_recv_ring, i32 noundef 1, ptr noundef nonnull %pos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pos, align 4
  %15 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_recv_ring, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not = icmp ult i32 %14, %16
  br i1 %cmp.not, label %if.end11, label %do.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %14) #17
  br label %while.end

if.end11:                                         ; preds = %while.body
  %17 = ptrtoint ptr %i_recvs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_recvs, align 8
  %arrayidx12 = getelementptr %struct.rds_ib_recv_work, ptr %18, i32 %14
  %19 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %c_path, align 4
  %cp_transport_data.i = getelementptr inbounds %struct.rds_conn_path, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %cp_transport_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cp_transport_data.i, align 8
  %ready.i = getelementptr inbounds %struct.rds_ib_connection, ptr %22, i32 0, i32 27, i32 2
  %23 = ptrtoint ptr %ready.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ready.i, align 8
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end11.if.end4.i_crit_edge

if.end11.if.end4.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end11
  %xfer.i.i = getelementptr inbounds %struct.rds_ib_connection, ptr %22, i32 0, i32 27, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %xfer.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !78
  call void @llvm.prefetch.p0(ptr %xfer.i.i, i32 1, i32 3, i32 1) #12
  %25 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %xfer.i.i) #12, !srcloc !79
  %asmresult.i.i.i = extractvalue { i32, i32 } %25, 0
  %26 = inttoptr i32 %asmresult.i.i.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then2.i.if.end4.i_crit_edge, label %if.then.i.i

if.then2.i.if.end4.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i.i:                                      ; preds = %if.then2.i
  %27 = ptrtoint ptr %ready.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ready.i, align 4
  %tobool16.not.i.i = icmp eq ptr %28, null
  br i1 %tobool16.not.i.i, label %if.else.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.then.i.i
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %30, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %32, %30
  br i1 %cmp.i.not.i.i.i.i, label %if.then17.i.i.list_splice_tail.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then17.i.i.list_splice_tail.exit.i.i.i_crit_edge: ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i.i, align 4
  %prev2.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %prev2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev2.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %32, ptr %34, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %28, ptr %36, align 4
  store ptr %36, ptr %prev.i.i.i.i, align 4
  br label %list_splice_tail.exit.i.i.i

list_splice_tail.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %if.then17.i.i.list_splice_tail.exit.i.i.i_crit_edge
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i3.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %30, ptr noundef %41, ptr noundef nonnull %28) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %list_splice_tail.exit.i.i.i.if.end4.i_crit_edge

list_splice_tail.exit.i.i.i.if.end4.i_crit_edge:  ; preds = %list_splice_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end.i.i.i.i.i:                                 ; preds = %list_splice_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %30, ptr %prev.i3.i.i.i, align 4
  %43 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %28, ptr %30, align 4
  %prev3.i.i4.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i4.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %30, ptr %41, align 4
  br label %if.end4.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %26, ptr %ready.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i.i, %if.end.i.i.i.i.i, %list_splice_tail.exit.i.i.i.if.end4.i_crit_edge, %if.then2.i.if.end4.i_crit_edge, %if.end11.if.end4.i_crit_edge
  %ready5.i = getelementptr inbounds %struct.rds_ib_connection, ptr %22, i32 0, i32 28, i32 2
  %47 = ptrtoint ptr %ready5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ready5.i, align 4
  %tobool6.not.i = icmp eq ptr %48, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end4.i.if.end9.i_crit_edge

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  %xfer.i118.i = getelementptr inbounds %struct.rds_ib_connection, ptr %22, i32 0, i32 28, i32 1
  %call.i.i119.i = call zeroext i1 @__kasan_check_write(ptr noundef %xfer.i118.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !78
  call void @llvm.prefetch.p0(ptr %xfer.i118.i, i32 1, i32 3, i32 1) #12
  %49 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %xfer.i118.i) #12, !srcloc !79
  %asmresult.i.i120.i = extractvalue { i32, i32 } %49, 0
  %50 = inttoptr i32 %asmresult.i.i120.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i120.i)
  %tobool.not.i121.i = icmp eq i32 %asmresult.i.i120.i, 0
  br i1 %tobool.not.i121.i, label %if.then7.i.if.end9.i_crit_edge, label %if.then.i124.i

if.then7.i.if.end9.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then.i124.i:                                   ; preds = %if.then7.i
  %51 = ptrtoint ptr %ready5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ready5.i, align 4
  %tobool16.not.i123.i = icmp eq ptr %52, null
  br i1 %tobool16.not.i123.i, label %if.else.i137.i, label %if.then17.i127.i

if.then17.i127.i:                                 ; preds = %if.then.i124.i
  %prev.i.i125.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i125.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %54, align 4
  %cmp.i.not.i.i.i126.i = icmp eq ptr %56, %54
  br i1 %cmp.i.not.i.i.i126.i, label %if.then17.i127.i.list_splice_tail.exit.i.i134.i_crit_edge, label %if.then.i.i.i131.i

if.then17.i127.i.list_splice_tail.exit.i.i134.i_crit_edge: ; preds = %if.then17.i127.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail.exit.i.i134.i

if.then.i.i.i131.i:                               ; preds = %if.then17.i127.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i128.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i128.i, align 4
  %prev2.i.i.i.i129.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev2.i.i.i.i129.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev2.i.i.i.i129.i, align 4
  %prev3.i.i.i.i130.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i.i.i130.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %56, ptr %58, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %52, ptr %60, align 4
  store ptr %60, ptr %prev.i.i.i128.i, align 4
  br label %list_splice_tail.exit.i.i134.i

list_splice_tail.exit.i.i134.i:                   ; preds = %if.then.i.i.i131.i, %if.then17.i127.i.list_splice_tail.exit.i.i134.i_crit_edge
  %prev.i3.i.i132.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i3.i.i132.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i3.i.i132.i, align 4
  %call.i.i.i.i133.i = call zeroext i1 @__list_add_valid(ptr noundef %54, ptr noundef %65, ptr noundef nonnull %52) #12
  br i1 %call.i.i.i.i133.i, label %if.end.i.i.i.i136.i, label %list_splice_tail.exit.i.i134.i.if.end9.i_crit_edge

list_splice_tail.exit.i.i134.i.if.end9.i_crit_edge: ; preds = %list_splice_tail.exit.i.i134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.end.i.i.i.i136.i:                              ; preds = %list_splice_tail.exit.i.i134.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %prev.i3.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %54, ptr %prev.i3.i.i132.i, align 4
  %67 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %52, ptr %54, align 4
  %prev3.i.i4.i.i135.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i4.i.i135.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i4.i.i135.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %54, ptr %65, align 4
  br label %if.end9.i

if.else.i137.i:                                   ; preds = %if.then.i124.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %ready5.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %50, ptr %ready5.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i137.i, %if.end.i.i.i.i136.i, %list_splice_tail.exit.i.i134.i.if.end9.i_crit_edge, %if.then7.i.if.end9.i_crit_edge, %if.end4.i.if.end9.i_crit_edge
  %71 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx12, align 8
  %tobool10.not.i = icmp eq ptr %72, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end9.i.if.end17.i_crit_edge

if.end9.i.if.end17.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.end9.i
  %73 = ptrtoint ptr %ready.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ready.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i.i, label %if.else.i142.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then11.i
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %74, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %76, %74
  br i1 %cmp.i.not.i.i.i, label %if.else.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  %77 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %ready.i, align 4
  %call.i.i.i.i139.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %74) #12
  br i1 %call.i.i.i.i139.i, label %if.end.i.i.i.i140.i, label %if.then2.i.i.i.list_del_init.exit.i.i.i_crit_edge

if.then2.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i140.i:                              ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %80 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %74, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i.i.i.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i140.i, %if.then2.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %84 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %74, ptr %74, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %74, ptr %prev.i3.i.i.i.i, align 4
  br label %if.then.i141.i

if.else.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %ready.i, align 4
  br label %if.then.i141.i

if.then.i141.i:                                   ; preds = %if.else.i.i.i, %list_del_init.exit.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 -8
  br label %rds_ib_refill_one_inc.exit.i

if.else.i142.i:                                   ; preds = %if.then11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_sysctl_max_recv_allocation to i32))
  %87 = load i32, ptr @rds_ib_sysctl_max_recv_allocation, align 4
  %call.i.i.i.i115 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rds_ib_allocation, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  call void @llvm.prefetch.p0(ptr nonnull @rds_ib_allocation, i32 1, i32 3, i32 1) #12
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rds_ib_allocation, ptr nonnull @rds_ib_allocation, i32 %87, i32 1, ptr nonnull elementtype(i32) @rds_ib_allocation) #12, !srcloc !100
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %87)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, %87
  br i1 %cmp.not.i.i.i.i.i, label %do.body4.i.i, label %if.end.i.i

do.body4.i.i:                                     ; preds = %if.else.i142.i
  call void @__sanitizer_cov_trace_pc() #14
  %89 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %92, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  %93 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %98, ptrtoint (ptr @rds_ib_stats to i32)
  %99 = inttoptr i32 %add.i.i to ptr
  %s_ib_rx_alloc_limit.i.i = getelementptr inbounds %struct.rds_ib_statistics, ptr %99, i32 0, i32 14
  %100 = ptrtoint ptr %s_ib_rx_alloc_limit.i.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %s_ib_rx_alloc_limit.i.i, align 8
  %inc.i.i = add i64 %101, 1
  store i64 %inc.i.i, ptr %s_ib_rx_alloc_limit.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %102 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i53.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i53.i.i to ptr
  %preempt_count.i.i54.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i54.i.i, align 4
  %sub.i.i.i = add i32 %105, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i54.i.i, align 4
  br label %rds_ib_refill_one_inc.exit.thread.i

if.end.i.i:                                       ; preds = %if.else.i142.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %106 = load ptr, ptr @rds_ib_incoming_slab, align 4
  %call17.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %106, i32 noundef %spec.select.i) #12
  %tobool18.not.i.i = icmp eq ptr %call17.i.i, null
  br i1 %tobool18.not.i.i, label %if.then19.i.i, label %do.body22.i.i

if.then19.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i55.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rds_ib_allocation, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @rds_ib_allocation, i32 1, i32 3, i32 1) #12
  %107 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rds_ib_allocation, ptr nonnull @rds_ib_allocation, i32 1, ptr nonnull elementtype(i32) @rds_ib_allocation) #12, !srcloc !82
  br label %rds_ib_refill_one_inc.exit.thread.i

do.body22.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %108 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i56.i.i = and i32 %108, -16384
  %109 = inttoptr i32 %and.i.i.i56.i.i to ptr
  %preempt_count.i.i57.i.i = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %preempt_count.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %preempt_count.i.i57.i.i, align 4
  %add.i58.i.i = add i32 %111, 1
  store volatile i32 %add.i58.i.i, ptr %preempt_count.i.i57.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !104
  %112 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i62.i.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i62.i.i to ptr
  %cpu34.i.i = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %cpu34.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cpu34.i.i, align 4
  %arrayidx35.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %115
  %116 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx35.i.i, align 4
  %add36.i.i = add i32 %117, ptrtoint (ptr @rds_ib_stats to i32)
  %118 = inttoptr i32 %add36.i.i to ptr
  %s_ib_rx_total_incs.i.i = getelementptr inbounds %struct.rds_ib_statistics, ptr %118, i32 0, i32 16
  %119 = ptrtoint ptr %s_ib_rx_total_incs.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %s_ib_rx_total_incs.i.i, align 8
  %inc37.i.i = add i64 %120, 1
  store i64 %inc37.i.i, ptr %s_ib_rx_total_incs.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !105
  %121 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i59.i.i = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i59.i.i to ptr
  %preempt_count.i.i60.i.i = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %preempt_count.i.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %preempt_count.i.i60.i.i, align 4
  %sub.i61.i.i = add i32 %124, -1
  store volatile i32 %sub.i61.i.i, ptr %preempt_count.i.i60.i.i, align 4
  br label %rds_ib_refill_one_inc.exit.i

rds_ib_refill_one_inc.exit.thread.i:              ; preds = %if.then19.i.i, %do.body4.i.i
  %125 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %arrayidx12, align 8
  br label %while.end

rds_ib_refill_one_inc.exit.i:                     ; preds = %do.body22.i.i, %if.then.i141.i
  %ibinc.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i141.i ], [ %call17.i.i, %do.body22.i.i ]
  %126 = ptrtoint ptr %ibinc.0.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %ibinc.0.i.i, ptr %ibinc.0.i.i, align 4
  %prev.i.i143.i = getelementptr inbounds %struct.list_head, ptr %ibinc.0.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %prev.i.i143.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %ibinc.0.i.i, ptr %prev.i.i143.i, align 4
  %ii_inc.i.i = getelementptr inbounds %struct.rds_ib_incoming, ptr %ibinc.0.i.i, i32 0, i32 2
  %conn.i.i = getelementptr inbounds %struct.rds_ib_connection, ptr %22, i32 0, i32 2
  %128 = ptrtoint ptr %conn.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %conn.i.i, align 4
  %c_faddr.i.i = getelementptr inbounds %struct.rds_connection, ptr %129, i32 0, i32 2
  call void @rds_inc_init(ptr noundef %ii_inc.i.i, ptr noundef %129, ptr noundef %c_faddr.i.i) #12
  %130 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %ibinc.0.i.i, ptr %arrayidx12, align 8
  %tobool14.not.i = icmp eq ptr %ibinc.0.i.i, null
  br i1 %tobool14.not.i, label %rds_ib_refill_one_inc.exit.i.while.end_crit_edge, label %rds_ib_refill_one_inc.exit.i.if.end17.i_crit_edge

rds_ib_refill_one_inc.exit.i.if.end17.i_crit_edge: ; preds = %rds_ib_refill_one_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

rds_ib_refill_one_inc.exit.i.while.end_crit_edge: ; preds = %rds_ib_refill_one_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end17.i:                                       ; preds = %rds_ib_refill_one_inc.exit.i.if.end17.i_crit_edge, %if.end9.i.if.end17.i_crit_edge
  %r_frag.i = getelementptr %struct.rds_ib_recv_work, ptr %18, i32 %14, i32 1
  %131 = ptrtoint ptr %r_frag.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %r_frag.i, align 4
  %tobool18.not.i = icmp eq ptr %132, null
  br i1 %tobool18.not.i, label %if.end17.i.if.end33.i_crit_edge, label %do.end.i116, !prof !81

if.end17.i.if.end33.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

do.end.i116:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 336, i32 noundef 9, ptr noundef null) #12
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end.i116, %if.end17.i.if.end33.i_crit_edge
  %133 = ptrtoint ptr %ready5.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ready5.i, align 4
  %tobool.not.i.i145.i = icmp eq ptr %134, null
  br i1 %tobool.not.i.i145.i, label %if.else.i167.i, label %if.then.i.i147.i

if.then.i.i147.i:                                 ; preds = %if.end33.i
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile ptr, ptr %134, align 4
  %cmp.i.not.i.i146.i = icmp eq ptr %136, %134
  br i1 %cmp.i.not.i.i146.i, label %if.else.i.i155.i, label %if.then2.i.i149.i

if.then2.i.i149.i:                                ; preds = %if.then.i.i147.i
  %137 = ptrtoint ptr %ready5.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %136, ptr %ready5.i, align 4
  %call.i.i.i.i148.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %134) #12
  br i1 %call.i.i.i.i148.i, label %if.end.i.i.i.i152.i, label %if.then2.i.i149.i.list_del_init.exit.i.i154.i_crit_edge

if.then2.i.i149.i.list_del_init.exit.i.i154.i_crit_edge: ; preds = %if.then2.i.i149.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i154.i

if.end.i.i.i.i152.i:                              ; preds = %if.then2.i.i149.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i150.i = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %138 = ptrtoint ptr %prev.i.i.i.i150.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %prev.i.i.i.i150.i, align 4
  %140 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %134, align 4
  %prev1.i.i.i.i.i151.i = getelementptr inbounds %struct.list_head, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %prev1.i.i.i.i.i151.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %139, ptr %prev1.i.i.i.i.i151.i, align 4
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %141, ptr %139, align 4
  br label %list_del_init.exit.i.i154.i

list_del_init.exit.i.i154.i:                      ; preds = %if.end.i.i.i.i152.i, %if.then2.i.i149.i.list_del_init.exit.i.i154.i_crit_edge
  %144 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %134, ptr %134, align 4
  %prev.i3.i.i.i153.i = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %145 = ptrtoint ptr %prev.i3.i.i.i153.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %134, ptr %prev.i3.i.i.i153.i, align 4
  br label %if.then.i165.i

if.else.i.i155.i:                                 ; preds = %if.then.i.i147.i
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %ready5.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %ready5.i, align 4
  br label %if.then.i165.i

if.then.i165.i:                                   ; preds = %if.else.i.i155.i, %list_del_init.exit.i.i154.i
  %add.ptr.i156.i = getelementptr i8, ptr %134, i32 -8
  %i_cache_allocs.i.i = getelementptr inbounds %struct.rds_ib_connection, ptr %22, i32 0, i32 29
  %call.i.i.i157.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_cache_allocs.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %i_cache_allocs.i.i, i32 1, i32 3, i32 1) #12
  %147 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_cache_allocs.i.i, ptr %i_cache_allocs.i.i, i32 4, ptr elementtype(i32) %i_cache_allocs.i.i) #12, !srcloc !82
  %148 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i.i158.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i.i158.i to ptr
  %preempt_count.i.i.i159.i = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %preempt_count.i.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %preempt_count.i.i.i159.i, align 4
  %add.i.i160.i = add i32 %151, 1
  store volatile i32 %add.i.i160.i, ptr %preempt_count.i.i.i159.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !106
  %152 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i161.i = and i32 %152, -16384
  %153 = inttoptr i32 %and.i.i161.i to ptr
  %cpu.i162.i = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %cpu.i162.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %cpu.i162.i, align 4
  %arrayidx.i163.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %155
  %156 = ptrtoint ptr %arrayidx.i163.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i163.i, align 4
  %add.i164.i = add i32 %157, ptrtoint (ptr @rds_ib_stats to i32)
  %158 = inttoptr i32 %add.i164.i to ptr
  %s_ib_recv_added_to_cache.i.i = getelementptr inbounds %struct.rds_ib_statistics, ptr %158, i32 0, i32 39
  %159 = ptrtoint ptr %s_ib_recv_added_to_cache.i.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %s_ib_recv_added_to_cache.i.i, align 8
  %add9.i.i = add i64 %160, 4096
  store i64 %add9.i.i, ptr %s_ib_recv_added_to_cache.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  br label %rds_ib_refill_one_frag.exit.i

if.else.i167.i:                                   ; preds = %if.end33.i
  %161 = load ptr, ptr @rds_ib_frag_slab, align 4
  %call15.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %161, i32 noundef %spec.select.i) #12
  %tobool16.not.i166.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool16.not.i166.i, label %if.else.i167.i.rds_ib_refill_one_frag.exit.thread.i_crit_edge, label %if.end.i168.i

if.else.i167.i.rds_ib_refill_one_frag.exit.thread.i_crit_edge: ; preds = %if.else.i167.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_ib_refill_one_frag.exit.thread.i

if.end.i168.i:                                    ; preds = %if.else.i167.i
  %f_sg.i.i = getelementptr inbounds %struct.rds_page_frag, ptr %call15.i.i, i32 0, i32 2
  call void @sg_init_table(ptr noundef %f_sg.i.i, i32 noundef 1) #12
  %call19.i.i = call i32 @rds_page_remainder_alloc(ptr noundef %f_sg.i.i, i32 noundef 4096, i32 noundef %spec.select117.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %do.body24.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.end.i168.i
  call void @__sanitizer_cov_trace_pc() #14
  %162 = load ptr, ptr @rds_ib_frag_slab, align 4
  call void @kmem_cache_free(ptr noundef %162, ptr noundef nonnull %call15.i.i) #12
  br label %rds_ib_refill_one_frag.exit.thread.i

do.body24.i.i:                                    ; preds = %if.end.i168.i
  call void @__sanitizer_cov_trace_pc() #14
  %163 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i56.i169.i = and i32 %163, -16384
  %164 = inttoptr i32 %and.i.i.i56.i169.i to ptr
  %preempt_count.i.i57.i170.i = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %preempt_count.i.i57.i170.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %preempt_count.i.i57.i170.i, align 4
  %add.i58.i171.i = add i32 %166, 1
  store volatile i32 %add.i58.i171.i, ptr %preempt_count.i.i57.i170.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !108
  %167 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i62.i172.i = and i32 %167, -16384
  %168 = inttoptr i32 %and.i62.i172.i to ptr
  %cpu36.i.i = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %cpu36.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %cpu36.i.i, align 4
  %arrayidx37.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %170
  %171 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx37.i.i, align 4
  %add38.i.i = add i32 %172, ptrtoint (ptr @rds_ib_stats to i32)
  %173 = inttoptr i32 %add38.i.i to ptr
  %s_ib_rx_total_frags.i.i = getelementptr inbounds %struct.rds_ib_statistics, ptr %173, i32 0, i32 15
  %174 = ptrtoint ptr %s_ib_rx_total_frags.i.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %s_ib_rx_total_frags.i.i, align 8
  %inc.i173.i = add i64 %175, 1
  store i64 %inc.i173.i, ptr %s_ib_rx_total_frags.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  br label %rds_ib_refill_one_frag.exit.i

rds_ib_refill_one_frag.exit.thread.i:             ; preds = %if.then21.i.i, %if.else.i167.i.rds_ib_refill_one_frag.exit.thread.i_crit_edge
  %176 = ptrtoint ptr %r_frag.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %r_frag.i, align 4
  br label %while.end

rds_ib_refill_one_frag.exit.i:                    ; preds = %do.body24.i.i, %if.then.i165.i
  %frag.0.i.i = phi ptr [ %add.ptr.i156.i, %if.then.i165.i ], [ %call15.i.i, %do.body24.i.i ]
  %177 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i59.i174.i = and i32 %177, -16384
  %178 = inttoptr i32 %and.i.i.i59.i174.i to ptr
  %preempt_count.i.i60.i175.i = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %preempt_count.i.i60.i175.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %preempt_count.i.i60.i175.i, align 4
  %sub.i61.i176.i = add i32 %180, -1
  store volatile i32 %sub.i61.i176.i, ptr %preempt_count.i.i60.i175.i, align 4
  %181 = ptrtoint ptr %frag.0.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile ptr %frag.0.i.i, ptr %frag.0.i.i, align 4
  %prev.i.i177.i = getelementptr inbounds %struct.list_head, ptr %frag.0.i.i, i32 0, i32 1
  %182 = ptrtoint ptr %prev.i.i177.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %frag.0.i.i, ptr %prev.i.i177.i, align 4
  %183 = ptrtoint ptr %r_frag.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %frag.0.i.i, ptr %r_frag.i, align 4
  %tobool43.not.i = icmp eq ptr %frag.0.i.i, null
  br i1 %tobool43.not.i, label %rds_ib_refill_one_frag.exit.i.while.end_crit_edge, label %if.end45.i

rds_ib_refill_one_frag.exit.i.while.end_crit_edge: ; preds = %rds_ib_refill_one_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end45.i:                                       ; preds = %rds_ib_refill_one_frag.exit.i
  %i_cm_id.i = getelementptr inbounds %struct.rds_ib_connection, ptr %22, i32 0, i32 3
  %184 = ptrtoint ptr %i_cm_id.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %i_cm_id.i, align 8
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 4
  %f_sg.i = getelementptr inbounds %struct.rds_page_frag, ptr %frag.0.i.i, i32 0, i32 2
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 8
  %call2.i.i.i = call i32 @dma_map_sg_attrs(ptr noundef %189, ptr noundef %f_sg.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i.i)
  %cmp.not.i = icmp eq i32 %call2.i.i.i, 1
  br i1 %cmp.not.i, label %if.end45.i.do.body17_crit_edge, label %do.end64.i, !prof !81

if.end45.i.do.body17_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body17

do.end64.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 343, i32 noundef 9, ptr noundef null) #12
  br label %do.body17

do.body17:                                        ; preds = %do.end64.i, %if.end45.i.do.body17_crit_edge
  %r_sge.i = getelementptr %struct.rds_ib_recv_work, ptr %18, i32 %14, i32 3
  %i_recv_hdrs_dma.i = getelementptr inbounds %struct.rds_ib_connection, ptr %22, i32 0, i32 24
  %190 = ptrtoint ptr %i_recv_hdrs_dma.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %i_recv_hdrs_dma.i, align 4
  %i_recvs.i = getelementptr inbounds %struct.rds_ib_connection, ptr %22, i32 0, i32 25
  %192 = ptrtoint ptr %i_recvs.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %i_recvs.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %193 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 6
  %arrayidx79.i = getelementptr i32, ptr %191, i32 %sub.ptr.div.i
  %194 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx79.i, align 4
  %conv.i117 = zext i32 %195 to i64
  %196 = ptrtoint ptr %r_sge.i to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 %conv.i117, ptr %r_sge.i, align 8
  %length.i = getelementptr %struct.rds_ib_recv_work, ptr %18, i32 %14, i32 3, i32 0, i32 1
  %197 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 48, ptr %length.i, align 8
  %arrayidx81.i = getelementptr %struct.rds_ib_recv_work, ptr %18, i32 %14, i32 3, i32 1
  %198 = ptrtoint ptr %r_frag.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %r_frag.i, align 4
  %dma_address.i = getelementptr inbounds %struct.rds_page_frag, ptr %199, i32 0, i32 2, i32 3
  %200 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dma_address.i, align 4
  %conv84.i = zext i32 %201 to i64
  %202 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %conv84.i, ptr %arrayidx81.i, align 8
  %dma_length.i = getelementptr inbounds %struct.rds_page_frag, ptr %199, i32 0, i32 2, i32 4
  %203 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %dma_length.i, align 4
  %length88.i = getelementptr %struct.rds_ib_recv_work, ptr %18, i32 %14, i32 3, i32 1, i32 1
  %205 = ptrtoint ptr %length88.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %length88.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_recv_refill.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_recv_refill, %if.then25)) #12
          to label %do.end31 [label %if.then25], !srcloc !84

if.then25:                                        ; preds = %do.body17
  %206 = ptrtoint ptr %r_frag.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %r_frag.i, align 4
  %f_sg = getelementptr inbounds %struct.rds_page_frag, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %f_sg to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %f_sg, align 4
  %and.i.i118 = and i32 %209, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i118)
  %tobool.i.not.i = icmp eq i32 %and.i.i118, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !81

do.body2.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !85
  unreachable

sg_page.exit:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %210 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx12, align 8
  %and.i119 = and i32 %209, -4
  %212 = inttoptr i32 %and.i119 to ptr
  %dma_address = getelementptr inbounds %struct.rds_page_frag, ptr %207, i32 0, i32 2, i32 3
  %213 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %dma_address, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_recv_refill.__UNIQUE_ID_ddebug548, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef %arrayidx12, ptr noundef %211, ptr noundef %212, i32 noundef %214) #12
  br label %do.end31

do.end31:                                         ; preds = %sg_page.exit, %do.body17
  %215 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %i_cm_id, align 8
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %216, i32 0, i32 2
  %217 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %qp, align 4
  %r_wr = getelementptr %struct.rds_ib_recv_work, ptr %18, i32 %14, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #12
  %219 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !98
  %220 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %218, align 4
  %post_recv.i = getelementptr inbounds %struct.ib_device, ptr %221, i32 0, i32 1, i32 7
  %222 = ptrtoint ptr %post_recv.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %post_recv.i, align 4
  %call.i120 = call i32 %223(ptr noundef %218, ptr noundef %r_wr, ptr noundef nonnull %dummy.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool33.not = icmp eq i32 %call.i120, 0
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  call void (ptr, ptr, ...) @__rds_ib_conn_error(ptr noundef %conn, ptr noundef nonnull @.str.7, ptr noundef %c_faddr, i32 noundef %call.i120) #12
  br label %while.end

if.end35:                                         ; preds = %do.end31
  %inc = add i32 %posted.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc)
  %cmp36 = icmp ugt i32 %inc, 128
  br i1 %cmp36, label %land.lhs.true, label %if.end35.while.cond.backedge_crit_edge

if.end35.while.cond.backedge_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end35
  %224 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i = and i32 %224, -16384
  %225 = inttoptr i32 %and.i.i to ptr
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load volatile i32, ptr %225, align 16384
  %228 = and i32 %227, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool.i = icmp ne i32 %228, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %inc)
  %cmp39 = icmp ugt i32 %inc, 8192
  %or.cond = select i1 %tobool.i, i1 true, i1 %cmp39
  br i1 %or.cond, label %land.lhs.true.while.end_crit_edge, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.backedge:                              ; preds = %land.lhs.true.while.cond.backedge_crit_edge, %if.end35.while.cond.backedge_crit_edge
  br label %while.cond

while.end:                                        ; preds = %land.lhs.true.while.end_crit_edge, %if.then34, %rds_ib_refill_one_frag.exit.i.while.end_crit_edge, %rds_ib_refill_one_frag.exit.thread.i, %rds_ib_refill_one_inc.exit.i.while.end_crit_edge, %rds_ib_refill_one_inc.exit.thread.i, %do.end, %land.rhs.while.end_crit_edge, %rds_conn_up.exit.while.end_crit_edge
  %must_wake.0.off0 = phi i1 [ false, %do.end ], [ false, %if.then34 ], [ true, %rds_ib_refill_one_inc.exit.thread.i ], [ true, %rds_ib_refill_one_frag.exit.thread.i ], [ true, %rds_ib_refill_one_inc.exit.i.while.end_crit_edge ], [ true, %rds_ib_refill_one_frag.exit.i.while.end_crit_edge ], [ true, %land.lhs.true.while.end_crit_edge ], [ false, %rds_conn_up.exit.while.end_crit_edge ], [ false, %land.rhs.while.end_crit_edge ]
  %tobool47.not = phi i1 [ true, %do.end ], [ false, %if.then34 ], [ false, %rds_ib_refill_one_inc.exit.thread.i ], [ false, %rds_ib_refill_one_frag.exit.thread.i ], [ false, %rds_ib_refill_one_inc.exit.i.while.end_crit_edge ], [ false, %rds_ib_refill_one_frag.exit.i.while.end_crit_edge ], [ true, %land.lhs.true.while.end_crit_edge ], [ true, %rds_conn_up.exit.while.end_crit_edge ], [ true, %land.rhs.while.end_crit_edge ]
  %posted.1 = phi i32 [ %posted.0, %do.end ], [ %posted.0, %if.then34 ], [ %posted.0, %rds_ib_refill_one_inc.exit.thread.i ], [ %posted.0, %rds_ib_refill_one_frag.exit.thread.i ], [ %posted.0, %rds_ib_refill_one_inc.exit.i.while.end_crit_edge ], [ %posted.0, %rds_ib_refill_one_frag.exit.i.while.end_crit_edge ], [ %inc, %land.lhs.true.while.end_crit_edge ], [ %posted.0, %rds_conn_up.exit.while.end_crit_edge ], [ %posted.0, %land.rhs.while.end_crit_edge ]
  %i_flowctl = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 38
  %229 = ptrtoint ptr %i_flowctl to i32
  call void @__asan_load1_noabort(i32 %229)
  %bf.load = load i8, ptr %i_flowctl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool42.not = icmp sgt i8 %bf.load, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %posted.1)
  %tobool44.not = icmp eq i32 %posted.1, 0
  %or.cond111 = select i1 %tobool42.not, i1 true, i1 %tobool44.not
  br i1 %or.cond111, label %while.end.if.end46_crit_edge, label %if.then45

while.end.if.end46_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then45:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @rds_ib_advertise_credits(ptr noundef %conn, i32 noundef %posted.1) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %while.end.if.end46_crit_edge
  br i1 %tobool47.not, label %if.end46.if.end50_crit_edge, label %if.then48

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  call void @rds_ib_ring_unalloc(ptr noundef %i_recv_ring, i32 noundef 1) #12
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end46.if.end50_crit_edge
  %230 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %c_path, align 4
  %cp_flags.i122 = getelementptr inbounds %struct.rds_conn_path, ptr %231, i32 0, i32 16
  call void @_clear_bit(i32 noundef 3, ptr noundef %cp_flags.i122) #12
  %232 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %c_path, align 4
  %head.i.i = getelementptr inbounds %struct.rds_conn_path, ptr %233, i32 0, i32 23, i32 1
  %234 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %235, %head.i.i
  br i1 %cmp.i.i.not.i, label %if.end50.release_refill.exit_crit_edge, label %if.then.i

if.end50.release_refill.exit_crit_edge:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_refill.exit

if.then.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %cp_waitq.i = getelementptr inbounds %struct.rds_conn_path, ptr %233, i32 0, i32 23
  call void @__wake_up(ptr noundef %cp_waitq.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %release_refill.exit

release_refill.exit:                              ; preds = %if.then.i, %if.end50.release_refill.exit_crit_edge
  %236 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %c_trans.i, align 4
  %t_mp_capable.i124 = getelementptr inbounds %struct.rds_transport, ptr %237, i32 0, i32 3
  %238 = ptrtoint ptr %t_mp_capable.i124 to i32
  call void @__asan_load1_noabort(i32 %238)
  %bf.load.i125 = load i8, ptr %t_mp_capable.i124, align 4
  %239 = and i8 %bf.load.i125, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool.not.i126 = icmp eq i8 %239, 0
  br i1 %tobool.not.i126, label %release_refill.exit.rds_conn_up.exit133_crit_edge, label %do.end.i127, !prof !81

release_refill.exit.rds_conn_up.exit133_crit_edge: ; preds = %release_refill.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_conn_up.exit133

do.end.i127:                                      ; preds = %release_refill.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 835, i32 noundef 9, ptr noundef null) #12
  br label %rds_conn_up.exit133

rds_conn_up.exit133:                              ; preds = %do.end.i127, %release_refill.exit.rds_conn_up.exit133_crit_edge
  %240 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %c_path, align 4
  %cp_state.i.i129 = getelementptr inbounds %struct.rds_conn_path, ptr %241, i32 0, i32 14
  %call.i.i.i.i130 = call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i129, i32 noundef 4) #12
  %242 = ptrtoint ptr %cp_state.i.i129 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile i32, ptr %cp_state.i.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %243)
  %cmp.i.i131.not = icmp eq i32 %243, 3
  br i1 %cmp.i.i131.not, label %land.lhs.true53, label %rds_conn_up.exit133.if.end69_crit_edge

rds_conn_up.exit133.if.end69_crit_edge:           ; preds = %rds_conn_up.exit133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

land.lhs.true53:                                  ; preds = %rds_conn_up.exit133
  br i1 %must_wake.0.off0, label %land.lhs.true53.if.then65_crit_edge, label %lor.lhs.false55

land.lhs.true53.if.then65_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then65

lor.lhs.false55:                                  ; preds = %land.lhs.true53
  br i1 %tobool.not, label %lor.lhs.false55.lor.lhs.false61_crit_edge, label %land.lhs.true57

lor.lhs.false55.lor.lhs.false61_crit_edge:        ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false61

land.lhs.true57:                                  ; preds = %lor.lhs.false55
  %call59 = call i32 @rds_ib_ring_low(ptr noundef %i_recv_ring) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true57.lor.lhs.false61_crit_edge, label %land.lhs.true57.if.then65_crit_edge

land.lhs.true57.if.then65_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then65

land.lhs.true57.lor.lhs.false61_crit_edge:        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %land.lhs.true57.lor.lhs.false61_crit_edge, %lor.lhs.false55.lor.lhs.false61_crit_edge
  %call63 = call i32 @rds_ib_ring_empty(ptr noundef %i_recv_ring) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %lor.lhs.false61.if.end69_crit_edge, label %lor.lhs.false61.if.then65_crit_edge

lor.lhs.false61.if.then65_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then65

lor.lhs.false61.if.end69_crit_edge:               ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then65:                                        ; preds = %lor.lhs.false61.if.then65_crit_edge, %land.lhs.true57.if.then65_crit_edge, %land.lhs.true53.if.then65_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %244 = load ptr, ptr @rds_wq, align 4
  %245 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %c_path, align 4
  %cp_recv_w = getelementptr inbounds %struct.rds_conn_path, ptr %246, i32 0, i32 19
  %call.i134 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %244, ptr noundef %cp_recv_w, i32 noundef 1) #12
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %lor.lhs.false61.if.end69_crit_edge, %rds_conn_up.exit133.if.end69_crit_edge
  br i1 %tobool.not, label %if.end69.cleanup_crit_edge, label %if.then71

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 461, i32 noundef 0) #12
  %call.i135 = call i32 @__cond_resched() #12
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %if.end69.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_ring_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rds_ib_conn_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_advertise_credits(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_ring_unalloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_ring_low(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_ring_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_inc_copy_to_user(ptr nocapture noundef readonly %inc, ptr noundef %to) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %h_len = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h_len, align 8
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not74 = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp75 = icmp ne i32 %1, 0
  %or.cond76 = select i1 %tobool.not74, i1 %cmp75, i1 false
  br i1 %or.cond76, label %while.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %add.ptr = getelementptr i8, ptr %inc, i32 -16
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  br label %while.body

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %while.body.preheader
  %6 = phi i32 [ %34, %if.end40.while.body_crit_edge ], [ %3, %while.body.preheader ]
  %frag.079 = phi ptr [ %frag.1, %if.end40.while.body_crit_edge ], [ %5, %while.body.preheader ]
  %frag_off.078 = phi i32 [ %add41, %if.end40.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %copied.077 = phi i32 [ %add42, %if.end40.while.body_crit_edge ], [ 0, %while.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %frag_off.078)
  %cmp4 = icmp eq i32 %frag_off.078, 4096
  br i1 %cmp4, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %frag.079 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %frag.079, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %frag_off.1 = phi i32 [ 0, %if.then ], [ %frag_off.078, %while.body.if.end_crit_edge ]
  %frag.1 = phi ptr [ %8, %if.then ], [ %frag.079, %while.body.if.end_crit_edge ]
  %sub = sub i32 4096, %frag_off.1
  %9 = tail call i32 @llvm.umin.i32(i32 %6, i32 %sub)
  %sub12 = sub i32 %1, %copied.077
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %sub12)
  %conv = zext i32 %10 to i64
  %11 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %14, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !110
  %15 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %add = add i32 %20, ptrtoint (ptr @rds_stats to i32)
  %21 = inttoptr i32 %add to ptr
  %s_copy_to_user = getelementptr inbounds %struct.rds_statistics, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %s_copy_to_user to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %s_copy_to_user, align 8
  %add27 = add i64 %23, %conv
  store i64 %add27, ptr %s_copy_to_user, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !111
  %24 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i70 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i70 to ptr
  %preempt_count.i.i71 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i71 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i71, align 4
  %sub.i = add i32 %27, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i71, align 4
  %f_sg = getelementptr inbounds %struct.rds_page_frag, ptr %frag.1, i32 0, i32 2
  %28 = ptrtoint ptr %f_sg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f_sg, align 4
  %and.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !81

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !85
  unreachable

sg_page.exit:                                     ; preds = %if.end
  %and.i73 = and i32 %29, -4
  %30 = inttoptr i32 %and.i73 to ptr
  %offset = getelementptr inbounds %struct.rds_page_frag, ptr %frag.1, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset, align 4
  %add35 = add i32 %32, %frag_off.1
  %call36 = tail call i32 @copy_page_to_iter(ptr noundef %30, i32 noundef %add35, i32 noundef %10, ptr noundef %to) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call36, i32 %10)
  %cmp37.not = icmp eq i32 %call36, %10
  br i1 %cmp37.not, label %if.end40, label %sg_page.exit.cleanup_crit_edge

sg_page.exit.cleanup_crit_edge:                   ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %sg_page.exit
  %add41 = add i32 %10, %frag_off.1
  %add42 = add i32 %10, %copied.077
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp ne i32 %34, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add42)
  %cmp = icmp ugt i32 %1, %add42
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end40.while.body_crit_edge, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup:                                          ; preds = %if.end40.cleanup_crit_edge, %sg_page.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %add42, %if.end40.cleanup_crit_edge ], [ -14, %sg_page.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rds_ib_recv_init_ack(ptr noundef %ic) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ack_sge = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 34
  %i_ack_dma = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 35
  %0 = ptrtoint ptr %i_ack_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ack_dma, align 8
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %i_ack_sge to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %i_ack_sge, align 8
  %length = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 34, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 48, ptr %length, align 8
  %i_pd = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 4
  %4 = ptrtoint ptr %i_pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_pd, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %lkey = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 34, i32 2
  %8 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lkey, align 4
  %sg_list = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 33, i32 2
  %9 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %i_ack_sge, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 33, i32 3
  %10 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_sge, align 4
  %opcode = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 33, i32 4
  %11 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %opcode, align 8
  %12 = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 33, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %12, align 8
  %send_flags = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 33, i32 5
  %14 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %send_flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_set_ack(ptr noundef %ic, i64 noundef %seq, i32 noundef %ack_required) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ack_next = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_ack_next, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %i_ack_next, i64 noundef %seq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ack_required)
  %tobool.not = icmp eq i32 %ack_required, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !112
  %i_ack_flags = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 30
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_ack_flags) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_attempt_ack(ptr noundef %ic) local_unnamed_addr #2 align 64 {
entry:
  %adv_credits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adv_credits) #12
  %0 = ptrtoint ptr %adv_credits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %adv_credits, align 4, !annotation !98
  %i_ack_flags = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 30
  %1 = ptrtoint ptr %i_ack_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %i_ack_flags, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %i_ack_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end17, label %do.body5

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %7, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !113
  %8 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, ptrtoint (ptr @rds_ib_stats to i32)
  %14 = inttoptr i32 %add to ptr
  %s_ib_ack_send_delayed = getelementptr inbounds %struct.rds_ib_statistics, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %s_ib_ack_send_delayed to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %s_ib_ack_send_delayed, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %s_ib_ack_send_delayed, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !114
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i51 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i51 to ptr
  %preempt_count.i.i52 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i52, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i52, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %call18 = call i32 @rds_ib_send_grab_credits(ptr noundef %ic, i32 noundef 1, ptr noundef nonnull %adv_credits, i32 noundef 0, i32 noundef 255) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body22, label %if.end44

do.body22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %21 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i53 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i53 to ptr
  %preempt_count.i.i54 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i54, align 4
  %add.i55 = add i32 %24, 1
  store volatile i32 %add.i55, ptr %preempt_count.i.i54, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %25 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i59 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i59 to ptr
  %cpu34 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu34, align 4
  %arrayidx35 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx35, align 4
  %add36 = add i32 %30, ptrtoint (ptr @rds_ib_stats to i32)
  %31 = inttoptr i32 %add36 to ptr
  %s_ib_tx_throttle = getelementptr inbounds %struct.rds_ib_statistics, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %s_ib_tx_throttle to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %s_ib_tx_throttle, align 8
  %inc37 = add i64 %33, 1
  store i64 %inc37, ptr %s_ib_tx_throttle, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !116
  %34 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i56 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i56 to ptr
  %preempt_count.i.i57 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i57, align 4
  %sub.i58 = add i32 %37, -1
  store volatile i32 %sub.i58, ptr %preempt_count.i.i57, align 4
  call void @_clear_bit(i32 noundef 0, ptr noundef %i_ack_flags) #12
  br label %cleanup

if.end44:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  call void @_clear_bit(i32 noundef 1, ptr noundef %i_ack_flags) #12
  %38 = ptrtoint ptr %adv_credits to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %adv_credits, align 4
  call fastcc void @rds_ib_send_ack(ptr noundef %ic, i32 noundef %39)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.body22, %do.body5, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adv_credits) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_send_grab_credits(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_ib_send_ack(ptr noundef %ic, i32 noundef %adv_credits) unnamed_addr #2 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ack = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 32
  %0 = ptrtoint ptr %i_ack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_ack, align 8
  %i_ack_flags.i = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 30
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %i_ack_flags.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !117
  %i_ack_next.i = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 31
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_ack_next.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_ack_next.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_send_ack.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_send_ack, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_send_ack.__UNIQUE_ID_ddebug553, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, ptr noundef %ic, i64 noundef %call.i.i) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rds_ibdev = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 1
  %2 = ptrtoint ptr %rds_ibdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rds_ibdev, align 8
  %dev = getelementptr inbounds %struct.rds_ib_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %i_ack_dma = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 35
  %6 = ptrtoint ptr %i_ack_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ack_dma, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %9, i32 noundef %7, i32 noundef 48, i32 noundef 1) #12
  tail call void @rds_message_populate_header(ptr noundef %1, i16 noundef zeroext 0, i16 noundef zeroext 0, i64 noundef 0) #12
  %h_ack = getelementptr inbounds %struct.rds_header, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %h_ack to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call.i.i, ptr %h_ack, align 8
  %conv4 = trunc i32 %adv_credits to i8
  %h_credit = getelementptr inbounds %struct.rds_header, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %h_credit to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4, ptr %h_credit, align 1
  %h_csum.i = getelementptr inbounds %struct.rds_header, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %h_csum.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %h_csum.i, align 2
  %13 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %1, i32 12) #12, !srcloc !118
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %13, 0
  %14 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #18, !srcloc !119
  %neg.i.i.i = xor i32 %14, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %15 = ptrtoint ptr %h_csum.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i.i.i, ptr %h_csum.i, align 2
  %16 = ptrtoint ptr %rds_ibdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rds_ibdev, align 8
  %dev6 = getelementptr inbounds %struct.rds_ib_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev6, align 4
  %20 = ptrtoint ptr %i_ack_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ack_dma, align 8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %23, i32 noundef %21, i32 noundef 48, i32 noundef 1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %i_ack_queued = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 36
  %25 = ptrtoint ptr %i_ack_queued to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %i_ack_queued, align 4
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 3
  %26 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_cm_id, align 8
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qp, align 4
  %i_ack_wr = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #12
  %30 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !98
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %29, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %32, i32 0, i32 1, i32 6
  %33 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %34(ptr noundef %29, ptr noundef %i_ack_wr, ptr noundef nonnull %dummy.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %do.body36, label %if.then17, !prof !81

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @_clear_bit(i32 noundef 0, ptr noundef %i_ack_flags.i) #12
  call void @_set_bit(i32 noundef 1, ptr noundef %i_ack_flags.i) #12
  %35 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %38, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !120
  %39 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %add = add i32 %44, ptrtoint (ptr @rds_ib_stats to i32)
  %45 = inttoptr i32 %add to ptr
  %s_ib_ack_send_failure = getelementptr inbounds %struct.rds_ib_statistics, ptr %45, i32 0, i32 19
  %46 = ptrtoint ptr %s_ib_ack_send_failure to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %s_ib_ack_send_failure, align 8
  %inc = add i64 %47, 1
  store i64 %inc, ptr %s_ib_ack_send_failure, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !121
  %48 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i74 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  %conn = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 2
  %52 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %conn, align 4
  call void (ptr, ptr, ...) @__rds_ib_conn_error(ptr noundef %53, ptr noundef nonnull @.str.23) #12
  br label %if.end57

do.body36:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %54 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i76 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i76 to ptr
  %preempt_count.i.i77 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i77 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i77, align 4
  %add.i78 = add i32 %57, 1
  store volatile i32 %add.i78, ptr %preempt_count.i.i77, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !122
  %58 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i82 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i82 to ptr
  %cpu48 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %cpu48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu48, align 4
  %arrayidx49 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %63, ptrtoint (ptr @rds_ib_stats to i32)
  %64 = inttoptr i32 %add50 to ptr
  %s_ib_ack_sent = getelementptr inbounds %struct.rds_ib_statistics, ptr %64, i32 0, i32 18
  %65 = ptrtoint ptr %s_ib_ack_sent to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %s_ib_ack_sent, align 8
  %inc51 = add i64 %66, 1
  store i64 %inc51, ptr %s_ib_ack_sent, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !123
  %67 = call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i79 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i79 to ptr
  %preempt_count.i.i80 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i80 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i80, align 4
  %sub.i81 = add i32 %70, -1
  store volatile i32 %sub.i81, ptr %preempt_count.i.i80, align 4
  br label %if.end57

if.end57:                                         ; preds = %do.body36, %if.then17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_ack_send_complete(ptr noundef %ic) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ack_flags = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 30
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %i_ack_flags) #12
  tail call void @rds_ib_attempt_ack(ptr noundef %ic)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @rds_ib_piggyb_ack(ptr noundef %ic) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ack_flags = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 30
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %i_ack_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !124
  %4 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @rds_ib_stats to i32)
  %10 = inttoptr i32 %add to ptr
  %s_ib_ack_send_piggybacked = getelementptr inbounds %struct.rds_ib_statistics, ptr %10, i32 0, i32 21
  %11 = ptrtoint ptr %s_ib_ack_send_piggybacked to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %s_ib_ack_send_piggybacked, align 8
  %inc = add i64 %12, 1
  store i64 %inc, ptr %s_ib_ack_send_piggybacked, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !125
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i14 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i14 to ptr
  %preempt_count.i.i15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i15, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i15, align 4
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %i_ack_flags) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !117
  %i_ack_next.i = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 31
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_ack_next.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_ack_next.i) #12
  ret i64 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_recv_cqe_handler(ptr noundef %ic, ptr nocapture noundef readonly %wc, ptr nocapture noundef %state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 2
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_recv_cqe_handler.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_recv_cqe_handler, %if.then)) #12
          to label %do.body7 [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wc, align 8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  %call5 = tail call ptr @ib_wc_status_msg(i32 noundef %5) #19
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %6 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %byte_len, align 4
  %ex = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 6
  %8 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ex, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_recv_cqe_handler.__UNIQUE_ID_ddebug559, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i64 noundef %3, i32 noundef %5, ptr noundef %call5, i32 noundef %7, i32 noundef %9) #12
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %10 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %13, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !126
  %14 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, ptrtoint (ptr @rds_ib_stats to i32)
  %20 = inttoptr i32 %add to ptr
  %s_ib_rx_cq_event = getelementptr inbounds %struct.rds_ib_statistics, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %s_ib_rx_cq_event to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %s_ib_rx_cq_event, align 8
  %inc = add i64 %22, 1
  store i64 %inc, ptr %s_ib_rx_cq_event, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !127
  %23 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i125 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i125 to ptr
  %preempt_count.i.i126 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i126 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i126, align 4
  %sub.i = add i32 %26, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i126, align 4
  %i_recvs = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 25
  %27 = ptrtoint ptr %i_recvs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_recvs, align 8
  %i_recv_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 20
  %call22 = tail call i32 @rds_ib_ring_oldest(ptr noundef %i_recv_ring) #12
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 3
  %29 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_cm_id, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %r_frag = getelementptr %struct.rds_ib_recv_work, ptr %28, i32 %call22, i32 1
  %33 = ptrtoint ptr %r_frag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %r_frag, align 4
  %f_sg = getelementptr inbounds %struct.rds_page_frag, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %36, ptr noundef %f_sg, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %status24 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %37 = ptrtoint ptr %status24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp = icmp eq i32 %38, 0
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx23 = getelementptr %struct.rds_ib_recv_work, ptr %28, i32 %call22
  %byte_len26 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %39 = ptrtoint ptr %byte_len26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %byte_len26, align 4
  tail call fastcc void @rds_ib_process_recv(ptr noundef %1, ptr noundef %arrayidx23, i32 noundef %40, ptr noundef %state)
  br label %if.end36

if.else:                                          ; preds = %do.body7
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %c_trans.i, align 4
  %t_mp_capable.i = getelementptr inbounds %struct.rds_transport, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %t_mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i = load i8, ptr %t_mp_capable.i, align 4
  %44 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i, label %if.else.rds_conn_up.exit_crit_edge, label %do.end.i, !prof !81

if.else.rds_conn_up.exit_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_conn_up.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 835, i32 noundef 9, ptr noundef null) #12
  br label %rds_conn_up.exit

rds_conn_up.exit:                                 ; preds = %do.end.i, %if.else.rds_conn_up.exit_crit_edge
  %c_path.i = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 17
  %45 = ptrtoint ptr %c_path.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %c_path.i, align 4
  %cp_state.i.i = getelementptr inbounds %struct.rds_conn_path, ptr %46, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i, i32 noundef 4) #12
  %47 = ptrtoint ptr %cp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %cp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp.i.i.not = icmp eq i32 %48, 3
  br i1 %cmp.i.i.not, label %rds_conn_up.exit.if.then31_crit_edge, label %lor.lhs.false

rds_conn_up.exit.if.then31_crit_edge:             ; preds = %rds_conn_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

lor.lhs.false:                                    ; preds = %rds_conn_up.exit
  %49 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %c_trans.i, align 4
  %t_mp_capable.i140 = getelementptr inbounds %struct.rds_transport, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %t_mp_capable.i140 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i141 = load i8, ptr %t_mp_capable.i140, align 4
  %52 = and i8 %bf.load.i141, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i142 = icmp eq i8 %52, 0
  br i1 %tobool.not.i142, label %lor.lhs.false.rds_conn_connecting.exit_crit_edge, label %do.end.i143, !prof !81

lor.lhs.false.rds_conn_connecting.exit_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_conn_connecting.exit

do.end.i143:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 848, i32 noundef 9, ptr noundef null) #12
  br label %rds_conn_connecting.exit

rds_conn_connecting.exit:                         ; preds = %do.end.i143, %lor.lhs.false.rds_conn_connecting.exit_crit_edge
  %53 = ptrtoint ptr %c_path.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %c_path.i, align 4
  %cp_state.i.i145 = getelementptr inbounds %struct.rds_conn_path, ptr %54, i32 0, i32 14
  %call.i.i.i.i146 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i145, i32 noundef 4) #12
  %55 = ptrtoint ptr %cp_state.i.i145 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %cp_state.i.i145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i.i147.not = icmp eq i32 %56, 1
  br i1 %cmp.i.i147.not, label %rds_conn_connecting.exit.if.then31_crit_edge, label %rds_conn_connecting.exit.if.end36_crit_edge

rds_conn_connecting.exit.if.end36_crit_edge:      ; preds = %rds_conn_connecting.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

rds_conn_connecting.exit.if.then31_crit_edge:     ; preds = %rds_conn_connecting.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

if.then31:                                        ; preds = %rds_conn_connecting.exit.if.then31_crit_edge, %rds_conn_up.exit.if.then31_crit_edge
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 1
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 2
  %c_tos = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 14
  %57 = ptrtoint ptr %c_tos to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %c_tos, align 4
  %conv = zext i8 %58 to i32
  %59 = ptrtoint ptr %status24 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %status24, align 8
  %call34 = tail call ptr @ib_wc_status_msg(i32 noundef %60) #19
  %vendor_err = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %61 = ptrtoint ptr %vendor_err to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vendor_err, align 8
  tail call void (ptr, ptr, ...) @__rds_ib_conn_error(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef %c_laddr, ptr noundef %c_faddr, i32 noundef %conv, i32 noundef %60, ptr noundef %call34, i32 noundef %62) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %rds_conn_connecting.exit.if.end36_crit_edge, %if.then25
  %63 = ptrtoint ptr %r_frag to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %r_frag, align 4
  %tobool38.not = icmp eq ptr %64, null
  br i1 %tobool38.not, label %if.end36.if.end42_crit_edge, label %if.then39

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rds_ib_frag_free(ptr noundef %ic, ptr noundef nonnull %64)
  %65 = ptrtoint ptr %r_frag to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %r_frag, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  tail call void @rds_ib_ring_free(ptr noundef %i_recv_ring, i32 noundef 1) #12
  %call45 = tail call i32 @rds_ib_ring_empty(ptr noundef %i_recv_ring) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end42.if.end70_crit_edge, label %do.body49

if.end42.if.end70_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

do.body49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %66 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i127 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i127 to ptr
  %preempt_count.i.i128 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i128 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i128, align 4
  %add.i129 = add i32 %69, 1
  store volatile i32 %add.i129, ptr %preempt_count.i.i128, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !128
  %70 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu, align 4
  %arrayidx62 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx62, align 4
  %add63 = add i32 %73, ptrtoint (ptr @rds_ib_stats to i32)
  %74 = inttoptr i32 %add63 to ptr
  %s_ib_rx_ring_empty = getelementptr inbounds %struct.rds_ib_statistics, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %s_ib_rx_ring_empty to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %s_ib_rx_ring_empty, align 8
  %inc64 = add i64 %76, 1
  store i64 %inc64, ptr %s_ib_rx_ring_empty, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  %77 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i130 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i130 to ptr
  %preempt_count.i.i131 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i131 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i131, align 4
  %sub.i132 = add i32 %80, -1
  store volatile i32 %sub.i132, ptr %preempt_count.i.i131, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.body49, %if.end42.if.end70_crit_edge
  %call72 = tail call i32 @rds_ib_ring_low(ptr noundef %i_recv_ring) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end70.if.end97_crit_edge, label %if.then74

if.end70.if.end97_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rds_ib_recv_refill(ptr noundef %1, i32 noundef 0, i32 noundef 10240)
  %81 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i133 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i133 to ptr
  %preempt_count.i.i134 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i134 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i134, align 4
  %add.i135 = add i32 %84, 1
  store volatile i32 %add.i135, ptr %preempt_count.i.i134, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %85 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cpu, align 4
  %arrayidx89 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx89, align 4
  %add90 = add i32 %88, ptrtoint (ptr @rds_ib_stats to i32)
  %89 = inttoptr i32 %add90 to ptr
  %s_ib_rx_refill_from_cq = getelementptr inbounds %struct.rds_ib_statistics, ptr %89, i32 0, i32 12
  %90 = ptrtoint ptr %s_ib_rx_refill_from_cq to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %s_ib_rx_refill_from_cq, align 8
  %inc91 = add i64 %91, 1
  store i64 %inc91, ptr %s_ib_rx_refill_from_cq, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %92 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i136 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i136 to ptr
  %preempt_count.i.i137 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i137 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i137, align 4
  %sub.i138 = add i32 %95, -1
  store volatile i32 %sub.i138, ptr %preempt_count.i.i137, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then74, %if.end70.if.end97_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_wc_status_msg(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_ring_oldest(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_ib_process_recv(ptr noundef %conn, ptr noundef %recv, i32 noundef %data_len, ptr nocapture noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  %i_ibinc = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %i_ibinc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_ibinc, align 8
  %i_recv_hdrs_dma = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %i_recv_hdrs_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_recv_hdrs_dma, align 4
  %i_recvs = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 25
  %8 = ptrtoint ptr %i_recvs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_recvs, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %recv to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 6
  %arrayidx1 = getelementptr i32, ptr %7, i32 %sub.ptr.div
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_process_recv.__UNIQUE_ID_ddebug557, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_process_recv, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_process_recv.__UNIQUE_ID_ddebug557, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, ptr noundef %3, ptr noundef %5, ptr noundef %recv, i32 noundef %data_len) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %data_len)
  %cmp = icmp ult i32 %data_len, 48
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__rds_ib_conn_error(ptr noundef %conn, ptr noundef nonnull @.str.26, ptr noundef %c_faddr) #12
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %i_recv_hdrs = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 23
  %12 = ptrtoint ptr %i_recv_hdrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_recv_hdrs, align 8
  %14 = ptrtoint ptr %i_recvs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_recvs, align 8
  %sub.ptr.rhs.cast8 = ptrtoint ptr %15 to i32
  %sub.ptr.sub9 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast8
  %sub.ptr.div10 = ashr exact i32 %sub.ptr.sub9, 6
  %arrayidx11 = getelementptr ptr, ptr %13, i32 %sub.ptr.div10
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx11, align 4
  %rds_ibdev = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %rds_ibdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rds_ibdev, align 8
  %dev = getelementptr inbounds %struct.rds_ib_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %23, i32 noundef %11, i32 noundef 48, i32 noundef 2) #12
  %h_csum.i = getelementptr inbounds %struct.rds_header, ptr %17, i32 0, i32 8
  %24 = ptrtoint ptr %h_csum.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %h_csum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i = icmp eq i16 %25, 0
  br i1 %tobool.not.i, label %if.end5.if.end33_crit_edge, label %rds_message_verify_checksum.exit

if.end5.if.end33_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

rds_message_verify_checksum.exit:                 ; preds = %if.end5
  %26 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %17, i32 12) #12, !srcloc !118
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %26, 0
  %27 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #18, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %27)
  %cmp.i = icmp ult i32 %27, -65536
  br i1 %cmp.i, label %if.then14, label %rds_message_verify_checksum.exit.if.end33_crit_edge

rds_message_verify_checksum.exit.if.end33_crit_edge: ; preds = %rds_message_verify_checksum.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then14:                                        ; preds = %rds_message_verify_checksum.exit
  call void @__sanitizer_cov_trace_pc() #14
  %c_faddr15 = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__rds_ib_conn_error(ptr noundef %conn, ptr noundef nonnull @.str.27, ptr noundef %c_faddr15) #12
  %28 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %31, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !132
  %32 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu, align 4
  %arrayidx27 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx27, align 4
  %add = add i32 %37, ptrtoint (ptr @rds_stats to i32)
  %38 = inttoptr i32 %add to ptr
  %s_recv_drop_bad_checksum = getelementptr inbounds %struct.rds_statistics, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %s_recv_drop_bad_checksum to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %s_recv_drop_bad_checksum, align 8
  %inc = add i64 %40, 1
  store i64 %inc, ptr %s_recv_drop_bad_checksum, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !133
  %41 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i267 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i267 to ptr
  %preempt_count.i.i268 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i268 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i268, align 4
  %sub.i = add i32 %44, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i268, align 4
  br label %done

if.end33:                                         ; preds = %rds_message_verify_checksum.exit.if.end33_crit_edge, %if.end5.if.end33_crit_edge
  %h_ack = getelementptr inbounds %struct.rds_header, ptr %17, i32 0, i32 1
  %45 = ptrtoint ptr %h_ack to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %h_ack, align 8
  %ack_recv = getelementptr inbounds %struct.rds_ib_ack_state, ptr %state, i32 0, i32 1
  %47 = ptrtoint ptr %ack_recv to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %ack_recv, align 8
  %ack_recv_valid = getelementptr inbounds %struct.rds_ib_ack_state, ptr %state, i32 0, i32 2
  %48 = ptrtoint ptr %ack_recv_valid to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load = load i8, ptr %ack_recv_valid, align 8
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %ack_recv_valid, align 8
  %h_credit = getelementptr inbounds %struct.rds_header, ptr %17, i32 0, i32 6
  %49 = ptrtoint ptr %h_credit to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %h_credit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool34.not = icmp eq i8 %50, 0
  br i1 %tobool34.not, label %if.end33.if.end38_crit_edge, label %if.then35

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %conv37 = zext i8 %50 to i32
  tail call void @rds_ib_send_add_credits(ptr noundef %conn, i32 noundef %conv37) #12
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end33.if.end38_crit_edge
  %h_sport = getelementptr inbounds %struct.rds_header, ptr %17, i32 0, i32 3
  %51 = ptrtoint ptr %h_sport to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %h_sport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp40 = icmp eq i16 %52, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end38.if.end72_crit_edge

if.end38.if.end72_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

land.lhs.true:                                    ; preds = %if.end38
  %h_dport = getelementptr inbounds %struct.rds_header, ptr %17, i32 0, i32 4
  %53 = ptrtoint ptr %h_dport to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %h_dport, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp43 = icmp eq i16 %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %data_len)
  %cmp46 = icmp eq i32 %data_len, 48
  %or.cond = and i1 %cmp46, %cmp43
  br i1 %or.cond, label %do.body50, label %land.lhs.true.if.end72_crit_edge

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

do.body50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %55 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i269 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i269 to ptr
  %preempt_count.i.i270 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i270 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i270, align 4
  %add.i271 = add i32 %58, 1
  store volatile i32 %add.i271, ptr %preempt_count.i.i270, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !134
  %59 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i284 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i284 to ptr
  %cpu62 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %cpu62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu62, align 4
  %arrayidx63 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx63, align 4
  %add64 = add i32 %64, ptrtoint (ptr @rds_ib_stats to i32)
  %65 = inttoptr i32 %add64 to ptr
  %s_ib_ack_received = getelementptr inbounds %struct.rds_ib_statistics, ptr %65, i32 0, i32 22
  %66 = ptrtoint ptr %s_ib_ack_received to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %s_ib_ack_received, align 8
  %inc65 = add i64 %67, 1
  store i64 %inc65, ptr %s_ib_ack_received, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !135
  %68 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i272 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i272 to ptr
  %preempt_count.i.i273 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i273 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i273, align 4
  %sub.i274 = add i32 %71, -1
  store volatile i32 %sub.i274, ptr %preempt_count.i.i273, align 4
  %r_frag = getelementptr inbounds %struct.rds_ib_recv_work, ptr %recv, i32 0, i32 1
  %72 = ptrtoint ptr %r_frag to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %r_frag, align 4
  tail call fastcc void @rds_ib_frag_free(ptr noundef %3, ptr noundef %73)
  %74 = ptrtoint ptr %r_frag to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %r_frag, align 4
  br label %done

if.end72:                                         ; preds = %land.lhs.true.if.end72_crit_edge, %if.end38.if.end72_crit_edge
  %tobool73.not = icmp eq ptr %5, null
  br i1 %tobool73.not, label %if.then74, label %if.else

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %recv, align 8
  store ptr null, ptr %recv, align 8
  %77 = ptrtoint ptr %i_ibinc to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %i_ibinc, align 8
  %i_hdr = getelementptr inbounds %struct.rds_ib_incoming, ptr %76, i32 0, i32 2, i32 4
  %call.i = tail call i64 @sched_clock() #12
  %i_rx_lat_trace = getelementptr inbounds %struct.rds_ib_incoming, ptr %76, i32 0, i32 2, i32 8
  %78 = ptrtoint ptr %i_rx_lat_trace to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %call.i, ptr %i_rx_lat_trace, align 8
  %79 = call ptr @memcpy(ptr %i_hdr, ptr %17, i32 48)
  %h_len = getelementptr inbounds %struct.rds_ib_incoming, ptr %76, i32 0, i32 2, i32 4, i32 2
  %80 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %h_len, align 8
  %i_recv_data_rem = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 22
  %82 = ptrtoint ptr %i_recv_data_rem to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %i_recv_data_rem, align 4
  %call.i285 = tail call i64 @sched_clock() #12
  %arrayidx83 = getelementptr %struct.rds_ib_incoming, ptr %76, i32 0, i32 2, i32 8, i32 1
  %83 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %call.i285, ptr %arrayidx83, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_process_recv.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_process_recv, %if.then96)) #12
          to label %if.end127 [label %if.then96], !srcloc !84

if.then96:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %i_recv_data_rem to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i_recv_data_rem, align 4
  %h_flags = getelementptr inbounds %struct.rds_ib_incoming, ptr %76, i32 0, i32 2, i32 4, i32 5
  %86 = ptrtoint ptr %h_flags to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %h_flags, align 8
  %conv98 = zext i8 %87 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_process_recv.__UNIQUE_ID_ddebug558, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef %3, ptr noundef %76, i32 noundef %85, i32 noundef %conv98) #12
  br label %if.end127

if.else:                                          ; preds = %if.end72
  %i_hdr103 = getelementptr inbounds %struct.rds_ib_incoming, ptr %5, i32 0, i32 2, i32 4
  %88 = ptrtoint ptr %i_hdr103 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %i_hdr103, align 8
  %90 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %89, i64 %91)
  %cmp105.not = icmp eq i64 %89, %91
  br i1 %cmp105.not, label %lor.lhs.false, label %if.else.if.then125_crit_edge

if.else.if.then125_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then125

lor.lhs.false:                                    ; preds = %if.else
  %h_len107 = getelementptr inbounds %struct.rds_ib_incoming, ptr %5, i32 0, i32 2, i32 4, i32 2
  %92 = ptrtoint ptr %h_len107 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %h_len107, align 8
  %h_len108 = getelementptr inbounds %struct.rds_header, ptr %17, i32 0, i32 2
  %94 = ptrtoint ptr %h_len108 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %h_len108, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp109.not = icmp eq i32 %93, %95
  br i1 %cmp109.not, label %lor.lhs.false111, label %lor.lhs.false.if.then125_crit_edge

lor.lhs.false.if.then125_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then125

lor.lhs.false111:                                 ; preds = %lor.lhs.false
  %h_sport112 = getelementptr inbounds %struct.rds_ib_incoming, ptr %5, i32 0, i32 2, i32 4, i32 3
  %96 = ptrtoint ptr %h_sport112 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %h_sport112, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %97, i16 %52)
  %cmp116.not = icmp eq i16 %97, %52
  br i1 %cmp116.not, label %lor.lhs.false118, label %lor.lhs.false111.if.then125_crit_edge

lor.lhs.false111.if.then125_crit_edge:            ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then125

lor.lhs.false118:                                 ; preds = %lor.lhs.false111
  %h_dport119 = getelementptr inbounds %struct.rds_ib_incoming, ptr %5, i32 0, i32 2, i32 4, i32 4
  %98 = ptrtoint ptr %h_dport119 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %h_dport119, align 2
  %h_dport121 = getelementptr inbounds %struct.rds_header, ptr %17, i32 0, i32 4
  %100 = ptrtoint ptr %h_dport121 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %h_dport121, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %99, i16 %101)
  %cmp123.not = icmp eq i16 %99, %101
  br i1 %cmp123.not, label %lor.lhs.false118.if.end127_crit_edge, label %lor.lhs.false118.if.then125_crit_edge

lor.lhs.false118.if.then125_crit_edge:            ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then125

lor.lhs.false118.if.end127_crit_edge:             ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

if.then125:                                       ; preds = %lor.lhs.false118.if.then125_crit_edge, %lor.lhs.false111.if.then125_crit_edge, %lor.lhs.false.if.then125_crit_edge, %if.else.if.then125_crit_edge
  tail call void (ptr, ptr, ...) @__rds_ib_conn_error(ptr noundef %conn, ptr noundef nonnull @.str.29) #12
  br label %done

if.end127:                                        ; preds = %lor.lhs.false118.if.end127_crit_edge, %if.then96, %if.then74
  %hdr.0 = phi ptr [ %i_hdr103, %lor.lhs.false118.if.end127_crit_edge ], [ %i_hdr, %if.then96 ], [ %i_hdr, %if.then74 ]
  %ibinc.0 = phi ptr [ %5, %lor.lhs.false118.if.end127_crit_edge ], [ %76, %if.then96 ], [ %76, %if.then74 ]
  %r_frag128 = getelementptr inbounds %struct.rds_ib_recv_work, ptr %recv, i32 0, i32 1
  %102 = ptrtoint ptr %r_frag128 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %r_frag128, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ibinc.0, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %103, ptr noundef %105, ptr noundef %ibinc.0) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end127.list_add_tail.exit_crit_edge

if.end127.list_add_tail.exit_crit_edge:           ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  %106 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %ibinc.0, ptr %103, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %108 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev3.i.i, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %103, ptr %105, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end127.list_add_tail.exit_crit_edge
  %110 = ptrtoint ptr %r_frag128 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %r_frag128, align 4
  %i_recv_data_rem130 = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 22
  %111 = ptrtoint ptr %i_recv_data_rem130 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %i_recv_data_rem130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %112)
  %cmp131 = icmp ugt i32 %112, 4096
  br i1 %cmp131, label %if.then133, label %if.else136

if.then133:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub135 = add i32 %112, -4096
  %113 = ptrtoint ptr %i_recv_data_rem130 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %sub135, ptr %i_recv_data_rem130, align 4
  br label %done

if.else136:                                       ; preds = %list_add_tail.exit
  %114 = ptrtoint ptr %i_recv_data_rem130 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %i_recv_data_rem130, align 4
  %115 = ptrtoint ptr %i_ibinc to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %i_ibinc, align 8
  %ii_inc139 = getelementptr inbounds %struct.rds_ib_incoming, ptr %ibinc.0, i32 0, i32 2
  %h_flags141 = getelementptr inbounds %struct.rds_ib_incoming, ptr %ibinc.0, i32 0, i32 2, i32 4, i32 5
  %116 = ptrtoint ptr %h_flags141 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %h_flags141, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %117)
  %cmp143 = icmp eq i8 %117, 1
  br i1 %cmp143, label %if.then145, label %if.else146

if.then145:                                       ; preds = %if.else136
  %h_len.i = getelementptr inbounds %struct.rds_ib_incoming, ptr %ibinc.0, i32 0, i32 2, i32 4, i32 2
  %118 = ptrtoint ptr %h_len.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %h_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %119)
  %cmp.not.i = icmp eq i32 %119, 8192
  br i1 %cmp.not.i, label %if.end.i, label %if.then145.if.end153_crit_edge

if.then145.if.end153_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

if.end.i:                                         ; preds = %if.then145
  %c_fcong.i = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 10
  %120 = ptrtoint ptr %c_fcong.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %c_fcong.i, align 4
  %122 = ptrtoint ptr %ibinc.0 to i32
  call void @__asan_load4_noabort(i32 %122)
  %frag.082.i = load ptr, ptr %ibinc.0, align 4
  %f_sg.i = getelementptr inbounds %struct.rds_page_frag, ptr %frag.082.i, i32 0, i32 2
  %123 = ptrtoint ptr %f_sg.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %f_sg.i, align 4
  %and.i.i.i286 = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i286)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i286, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %if.end.i.do.body2.i.i_crit_edge, !prof !81

if.end.i.do.body2.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %do.end26.i.do.body2.i.i_crit_edge, %if.end.i.do.body2.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !85
  unreachable

sg_page.exit.i:                                   ; preds = %if.end.i
  %and.i.i = and i32 %124, -4
  %125 = inttoptr i32 %and.i.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %126 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %126, 512
  %127 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i.i.i.i = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %130, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  %131 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i1.i.i.i = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %134, i32 0, i32 213
  %135 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %136, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %125, i32 noundef %or.i.i) #12
  %offset.i = getelementptr inbounds %struct.rds_page_frag, ptr %frag.082.i, i32 0, i32 2, i32 1
  %137 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %offset.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %call.i.i.i, i32 %138
  %arrayidx.i = getelementptr %struct.rds_cong_map, ptr %121, i32 0, i32 4, i32 0
  %139 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i, align 4
  %141 = inttoptr i32 %140 to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sg_page.exit.i
  %k.077.i = phi i32 [ 0, %sg_page.exit.i ], [ %add.i287, %for.body.i.for.body.i_crit_edge ]
  %dst.076.i = phi ptr [ %141, %sg_page.exit.i ], [ %incdec.ptr22.i, %for.body.i.for.body.i_crit_edge ]
  %src.075.i = phi ptr [ %add.ptr17.i, %sg_page.exit.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %uncongested.174.i = phi i64 [ 0, %sg_page.exit.i ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %142 = ptrtoint ptr %src.075.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %src.075.i, align 8
  %neg.i = xor i64 %143, -1
  %144 = ptrtoint ptr %dst.076.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %dst.076.i, align 8
  %and21.i = and i64 %145, %neg.i
  %or.i = or i64 %and21.i, %uncongested.174.i
  %incdec.ptr.i = getelementptr i64, ptr %src.075.i, i32 1
  %incdec.ptr22.i = getelementptr i64, ptr %dst.076.i, i32 1
  store i64 %143, ptr %dst.076.i, align 8
  %add.i287 = add nuw nsw i32 %k.077.i, 8
  %cmp20.i = icmp ult i32 %k.077.i, 4088
  br i1 %cmp20.i, label %for.body.i.for.body.i_crit_edge, label %do.end26.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end26.i:                                       ; preds = %for.body.i
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !138
  %146 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i1.i.i = and i32 %146, -16384
  %147 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 213
  %150 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %151, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !139
  %152 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i.i.i = and i32 %152, -16384
  %153 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %155, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %156 = ptrtoint ptr %frag.082.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %frag.082.1.i = load ptr, ptr %frag.082.i, align 4
  %f_sg.1.i = getelementptr inbounds %struct.rds_page_frag, ptr %frag.082.1.i, i32 0, i32 2
  %157 = ptrtoint ptr %f_sg.1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %f_sg.1.i, align 4
  %and.i.i.1.i = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.1.i)
  %tobool.i.not.i.1.i = icmp eq i32 %and.i.i.1.i, 0
  br i1 %tobool.i.not.i.1.i, label %sg_page.exit.1.i, label %do.end26.i.do.body2.i.i_crit_edge, !prof !81

do.end26.i.do.body2.i.i_crit_edge:                ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i.i

sg_page.exit.1.i:                                 ; preds = %do.end26.i
  %and.i.1.i = and i32 %158, -4
  %159 = inttoptr i32 %and.i.1.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %160 = load i32, ptr @pgprot_kernel, align 4
  %or.i.1.i = or i32 %160, 512
  %161 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i.i.i.1.i = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i.i.i.i.1.i to ptr
  %preempt_count.i.i.i.i.1.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %preempt_count.i.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %preempt_count.i.i.i.i.1.i, align 4
  %add.i.i.i.1.i = add i32 %164, 1
  store volatile i32 %add.i.i.i.1.i, ptr %preempt_count.i.i.i.i.1.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  %165 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i1.i.i.1.i = and i32 %165, -16384
  %166 = inttoptr i32 %and.i.i.i1.i.i.1.i to ptr
  %task.i.i.i.i.1.i = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %task.i.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %task.i.i.i.i.1.i, align 8
  %pagefault_disabled.i.i.i.i.1.i = getelementptr inbounds %struct.task_struct, ptr %168, i32 0, i32 213
  %169 = ptrtoint ptr %pagefault_disabled.i.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %pagefault_disabled.i.i.i.i.1.i, align 8
  %inc.i.i.i.i.1.i = add i32 %170, 1
  store i32 %inc.i.i.i.i.1.i, ptr %pagefault_disabled.i.i.i.i.1.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %call.i.i.1.i = tail call ptr @__kmap_local_page_prot(ptr noundef %159, i32 noundef %or.i.1.i) #12
  %offset.1.i = getelementptr inbounds %struct.rds_page_frag, ptr %frag.082.1.i, i32 0, i32 2, i32 1
  %171 = ptrtoint ptr %offset.1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %offset.1.i, align 4
  %add.ptr17.1.i = getelementptr i8, ptr %call.i.i.1.i, i32 %172
  %arrayidx.1.i = getelementptr %struct.rds_cong_map, ptr %121, i32 0, i32 4, i32 1
  %173 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx.1.i, align 4
  %175 = inttoptr i32 %174 to ptr
  br label %for.body.1.i

for.body.1.i:                                     ; preds = %for.body.1.i.for.body.1.i_crit_edge, %sg_page.exit.1.i
  %k.077.1.i = phi i32 [ 0, %sg_page.exit.1.i ], [ %add.1.i, %for.body.1.i.for.body.1.i_crit_edge ]
  %dst.076.1.i = phi ptr [ %175, %sg_page.exit.1.i ], [ %incdec.ptr22.1.i, %for.body.1.i.for.body.1.i_crit_edge ]
  %src.075.1.i = phi ptr [ %add.ptr17.1.i, %sg_page.exit.1.i ], [ %incdec.ptr.1.i, %for.body.1.i.for.body.1.i_crit_edge ]
  %uncongested.174.1.i = phi i64 [ %or.i, %sg_page.exit.1.i ], [ %or.1.i, %for.body.1.i.for.body.1.i_crit_edge ]
  %176 = ptrtoint ptr %src.075.1.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %src.075.1.i, align 8
  %neg.1.i = xor i64 %177, -1
  %178 = ptrtoint ptr %dst.076.1.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %dst.076.1.i, align 8
  %and21.1.i = and i64 %179, %neg.1.i
  %or.1.i = or i64 %and21.1.i, %uncongested.174.1.i
  %incdec.ptr.1.i = getelementptr i64, ptr %src.075.1.i, i32 1
  %incdec.ptr22.1.i = getelementptr i64, ptr %dst.076.1.i, i32 1
  store i64 %177, ptr %dst.076.1.i, align 8
  %add.1.i = add nuw nsw i32 %k.077.1.i, 8
  %cmp20.1.i = icmp ult i32 %k.077.1.i, 4088
  br i1 %cmp20.1.i, label %for.body.1.i.for.body.1.i_crit_edge, label %do.end26.1.i

for.body.1.i.for.body.1.i_crit_edge:              ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.1.i

do.end26.1.i:                                     ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.1.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !138
  %180 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i1.i.1.i = and i32 %180, -16384
  %181 = inttoptr i32 %and.i.i.i1.i.1.i to ptr
  %task.i.i.i.1.i = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %task.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %task.i.i.i.1.i, align 8
  %pagefault_disabled.i.i.i.1.i = getelementptr inbounds %struct.task_struct, ptr %183, i32 0, i32 213
  %184 = ptrtoint ptr %pagefault_disabled.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %pagefault_disabled.i.i.i.1.i, align 8
  %dec.i.i.i.1.i = add i32 %185, -1
  store i32 %dec.i.i.i.1.i, ptr %pagefault_disabled.i.i.i.1.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !139
  %186 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i.i.1.i = and i32 %186, -16384
  %187 = inttoptr i32 %and.i.i.i.i.1.i to ptr
  %preempt_count.i.i.i.1.i = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %preempt_count.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %preempt_count.i.i.i.1.i, align 4
  %sub.i.i.1.i = add i32 %189, -1
  store volatile i32 %sub.i.i.1.i, ptr %preempt_count.i.i.i.1.i, align 4
  %190 = tail call i64 @llvm.bswap.i64(i64 %or.1.i) #12
  tail call void @rds_cong_map_updated(ptr noundef %121, i64 noundef %190) #12
  br label %if.end153

if.else146:                                       ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #14
  %c_faddr147 = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 1
  tail call void @rds_recv_incoming(ptr noundef %conn, ptr noundef %c_faddr147, ptr noundef %c_laddr, ptr noundef %ii_inc139, i32 noundef 2592) #12
  %191 = ptrtoint ptr %hdr.0 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %hdr.0, align 8
  %193 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %192, ptr %state, align 8
  %194 = ptrtoint ptr %ack_recv_valid to i32
  call void @__asan_load1_noabort(i32 %194)
  %bf.load150 = load i8, ptr %ack_recv_valid, align 8
  %bf.set152 = or i8 %bf.load150, 64
  store i8 %bf.set152, ptr %ack_recv_valid, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.else146, %do.end26.1.i, %if.then145.if.end153_crit_edge
  %h_flags154 = getelementptr inbounds %struct.rds_header, ptr %hdr.0, i32 0, i32 5
  %195 = ptrtoint ptr %h_flags154 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %h_flags154, align 8
  %197 = and i8 %196, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool156.not = icmp eq i8 %197, 0
  br i1 %tobool156.not, label %if.end153.if.end183_crit_edge, label %do.body159

if.end153.if.end183_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

do.body159:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  %198 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i278 = and i32 %198, -16384
  %199 = inttoptr i32 %and.i.i.i278 to ptr
  %preempt_count.i.i279 = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %preempt_count.i.i279 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %preempt_count.i.i279, align 4
  %add.i280 = add i32 %201, 1
  store volatile i32 %add.i280, ptr %preempt_count.i.i279, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !140
  %202 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i288 = and i32 %202, -16384
  %203 = inttoptr i32 %and.i288 to ptr
  %cpu171 = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 3
  %204 = ptrtoint ptr %cpu171 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %cpu171, align 4
  %arrayidx172 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %205
  %206 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx172, align 4
  %add173 = add i32 %207, ptrtoint (ptr @rds_stats to i32)
  %208 = inttoptr i32 %add173 to ptr
  %s_recv_ack_required = getelementptr inbounds %struct.rds_statistics, ptr %208, i32 0, i32 10
  %209 = ptrtoint ptr %s_recv_ack_required to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %s_recv_ack_required, align 8
  %inc174 = add i64 %210, 1
  store i64 %inc174, ptr %s_recv_ack_required, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %211 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i281 = and i32 %211, -16384
  %212 = inttoptr i32 %and.i.i.i281 to ptr
  %preempt_count.i.i282 = getelementptr inbounds %struct.thread_info, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %preempt_count.i.i282 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load volatile i32, ptr %preempt_count.i.i282, align 4
  %sub.i283 = add i32 %214, -1
  store volatile i32 %sub.i283, ptr %preempt_count.i.i282, align 4
  %215 = ptrtoint ptr %ack_recv_valid to i32
  call void @__asan_load1_noabort(i32 %215)
  %bf.load180 = load i8, ptr %ack_recv_valid, align 8
  %bf.set182 = or i8 %bf.load180, -128
  store i8 %bf.set182, ptr %ack_recv_valid, align 8
  br label %if.end183

if.end183:                                        ; preds = %do.body159, %if.end153.if.end183_crit_edge
  tail call void @rds_inc_put(ptr noundef %ii_inc139) #12
  br label %done

done:                                             ; preds = %if.end183, %if.then133, %if.then125, %do.body50, %if.then14
  %216 = ptrtoint ptr %rds_ibdev to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %rds_ibdev, align 8
  %dev187 = getelementptr inbounds %struct.rds_ib_device, ptr %217, i32 0, i32 3
  %218 = ptrtoint ptr %dev187 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev187, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %219, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %221, i32 noundef %11, i32 noundef 48, i32 noundef 2) #12
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_ring_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_recv_path(ptr nocapture noundef readonly %cp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp, align 8
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp_transport_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_recv_path.__UNIQUE_ID_ddebug560, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_recv_path, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_recv_path.__UNIQUE_ID_ddebug560, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef %1) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c_trans.i, align 4
  %t_mp_capable.i = getelementptr inbounds %struct.rds_transport, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %t_mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %t_mp_capable.i, align 4
  %9 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.end.rds_conn_up.exit_crit_edge, label %do.end.i, !prof !81

do.end.rds_conn_up.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_conn_up.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 835, i32 noundef 9, ptr noundef null) #12
  br label %rds_conn_up.exit

rds_conn_up.exit:                                 ; preds = %do.end.i, %do.end.rds_conn_up.exit_crit_edge
  %10 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %c_path, align 4
  %cp_state.i.i = getelementptr inbounds %struct.rds_conn_path, ptr %11, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i, i32 noundef 4) #12
  %12 = ptrtoint ptr %cp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %cp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i.i.not = icmp eq i32 %13, 3
  br i1 %cmp.i.i.not, label %if.then5, label %rds_conn_up.exit.if.end23_crit_edge

rds_conn_up.exit.if.end23_crit_edge:              ; preds = %rds_conn_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then5:                                         ; preds = %rds_conn_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rds_ib_attempt_ack(ptr noundef %5)
  tail call void @rds_ib_recv_refill(ptr noundef %1, i32 noundef 0, i32 noundef 3264)
  %14 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %17, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !142
  %18 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx17 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17, align 4
  %add = add i32 %23, ptrtoint (ptr @rds_ib_stats to i32)
  %24 = inttoptr i32 %add to ptr
  %s_ib_rx_refill_from_thread = getelementptr inbounds %struct.rds_ib_statistics, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %s_ib_rx_refill_from_thread to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %s_ib_rx_refill_from_thread, align 8
  %inc = add i64 %26, 1
  store i64 %inc, ptr %s_ib_rx_refill_from_thread, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  %27 = tail call i32 @llvm.read_register.i32(metadata !68) #12
  %and.i.i.i27 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i27 to ptr
  %preempt_count.i.i28 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i28, align 4
  %sub.i = add i32 %30, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i28, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then5, %rds_conn_up.exit.if.end23_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_recv_init() local_unnamed_addr #2 align 64 {
entry:
  %si = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %si) #12
  %0 = call ptr @memset(ptr %si, i32 255, i32 64)
  call void @si_meminfo(ptr noundef nonnull %si) #12
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 2
  %1 = ptrtoint ptr %totalram to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %totalram, align 4
  %div = udiv i32 %2, 3
  %mul = and i32 %div, 1048575
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rds_ib_sysctl_max_recv_allocation to i32))
  store i32 %mul, ptr @rds_ib_sysctl_max_recv_allocation, align 4
  %call = call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.13, i32 noundef 160, i32 noundef 0, i32 noundef 8192, i32 noundef 112, i32 noundef 16, ptr noundef null) #12
  store ptr %call, ptr @rds_ib_incoming_slab, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %call2 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.14, i32 noundef 36, i32 noundef 0, i32 noundef 8192, ptr noundef null) #12
  store ptr %call2, ptr @rds_ib_frag_slab, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = load ptr, ptr @rds_ib_incoming_slab, align 4
  call void @kmem_cache_destroy(ptr noundef %3) #12
  store ptr null, ptr @rds_ib_incoming_slab, align 4
  br label %out

out:                                              ; preds = %if.then4, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -12, %if.then4 ], [ -12, %entry.out_crit_edge ], [ 0, %if.end.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %si) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_recv_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @rds_ib_allocation, i32 noundef 4) #12
  %0 = load volatile i32, ptr @rds_ib_allocation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !81

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1089, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load ptr, ptr @rds_ib_incoming_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #12
  %2 = load ptr, ptr @rds_ib_frag_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_inc_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_inc_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_page_remainder_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_message_populate_header(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_send_add_credits(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_recv_incoming(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_cong_map_updated(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !17, !19, !20, !21, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !40, !41, !43, !45, !47, !49, !51, !52, !53, !55, !57, !58, !59, !61, !63, !65, !66}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/ib_recv.c", i32 169, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/rds/ib_recv.c", i32 219, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rds_ib_inc_free.__UNIQUE_ID_ddebug547, !3, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/rds/ib_recv.c", i32 401, i32 4}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rds_ib_recv_refill._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @rds_ib_recv_refill._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rds/ib_recv.c", i32 413, i32 3}
!14 = !{ptr @rds_ib_recv_refill.__UNIQUE_ID_ddebug548, !13, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/rds/ib_recv.c", i32 420, i32 4}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/rds/ib_recv.c", i32 989, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rds_ib_recv_cqe_handler.__UNIQUE_ID_ddebug559, !18, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/rds/ib_recv.c", i32 1008, i32 4}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/rds/ib_recv.c", i32 1045, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rds_ib_recv_path.__UNIQUE_ID_ddebug560, !24, !"__UNIQUE_ID_ddebug560", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/rds/ib_recv.c", i32 1065, i32 30}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/rds/ib_recv.c", i32 1075, i32 39}
!31 = !{ptr @rds_ib_incoming_slab, !32, !"rds_ib_incoming_slab", i1 false, i1 false}
!32 = !{!"../net/rds/ib_recv.c", i32 43, i32 27}
!33 = !{ptr @rds_ib_frag_slab, !34, !"rds_ib_frag_slab", i1 false, i1 false}
!34 = !{!"../net/rds/ib_recv.c", i32 44, i32 27}
!35 = !{ptr @rds_ib_allocation, !36, !"rds_ib_allocation", i1 false, i1 false}
!36 = !{!"../net/rds/ib_recv.c", i32 45, i32 17}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/rds/ib_recv.c", i32 195, i32 2}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rds_ib_frag_free.__UNIQUE_ID_ddebug546, !38, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/rds/rds.h", i32 835, i32 2}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/rds/ib_recv.c", i32 485, i32 13}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/rds/ib_recv.c", i32 491, i32 2}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/rds/ib_recv.c", i32 492, i32 2}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/rds/ib_recv.c", i32 664, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rds_ib_send_ack.__UNIQUE_ID_ddebug553, !50, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/rds/ib_recv.c", i32 687, i32 3}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/rds/ib_recv.c", i32 858, i32 2}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rds_ib_process_recv.__UNIQUE_ID_ddebug557, !56, !"__UNIQUE_ID_ddebug557", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/rds/ib_recv.c", i32 862, i32 3}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/rds/ib_recv.c", i32 877, i32 3}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/rds/ib_recv.c", i32 933, i32 3}
!65 = !{ptr @rds_ib_process_recv.__UNIQUE_ID_ddebug558, !64, !"__UNIQUE_ID_ddebug558", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/rds/ib_recv.c", i32 943, i32 4}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2158565003}
!79 = !{i64 746268, i64 746285, i64 746309, i64 746335, i64 746353}
!80 = !{i64 2158565356}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2148241965, i64 2148241991, i64 2148242020, i64 2148242054, i64 2148242085, i64 2148242108}
!83 = !{i64 2158594583, i64 2158595065, i64 2158594620, i64 2158594676, i64 2158594710, i64 2158594734, i64 2158594775, i64 2158594796, i64 2158594824, i64 2158594858}
!84 = !{i64 2148721315, i64 2148721320, i64 2148721333, i64 2148721377, i64 2148721411, i64 2148721432}
!85 = !{i64 2154386077, i64 2154386569, i64 2154386114, i64 2154386170, i64 2154386204, i64 2154386228, i64 2154386269, i64 2154386290, i64 2154386318, i64 2154386352}
!86 = !{i64 2148239500, i64 2148239526, i64 2148239555, i64 2148239589, i64 2148239620, i64 2148239643}
!87 = !{i64 2158587862}
!88 = !{i64 2158588035}
!89 = !{i64 631981, i64 632042}
!90 = !{i64 2158639827}
!91 = !{i64 2158640180}
!92 = !{i64 2158641182}
!93 = !{i64 748992, i64 749013, i64 749036, i64 749055, i64 749074}
!94 = !{i64 2158641600}
!95 = !{i64 634713}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i64 634998}
!98 = !{!"auto-init"}
!99 = !{i64 2148238919}
!100 = !{i64 723742, i64 723767, i64 723789, i64 723805, i64 723817, i64 723837, i64 723861, i64 723877, i64 723889}
!101 = !{i64 2158601501}
!102 = !{i64 2158601674}
!103 = !{i64 2148239107}
!104 = !{i64 2158603531}
!105 = !{i64 2158603704}
!106 = !{i64 2158607031}
!107 = !{i64 2158607204}
!108 = !{i64 2158609104}
!109 = !{i64 2158609277}
!110 = !{i64 2158664033}
!111 = !{i64 2158664206}
!112 = !{i64 2158664400}
!113 = !{i64 2158673735}
!114 = !{i64 2158673908}
!115 = !{i64 2158675741}
!116 = !{i64 2158675914}
!117 = !{i64 2158664779}
!118 = !{i64 7460565, i64 7460604, i64 7460630, i64 7460654, i64 7460679, i64 7460705, i64 7460730, i64 7460756, i64 7460783, i64 7460809, i64 7460848, i64 7460892, i64 7460923, i64 7460948}
!119 = !{i64 7460182}
!120 = !{i64 2158669479}
!121 = !{i64 2158669652}
!122 = !{i64 2158671582}
!123 = !{i64 2158671755}
!124 = !{i64 2158678204}
!125 = !{i64 2158678377}
!126 = !{i64 2158704630}
!127 = !{i64 2158704803}
!128 = !{i64 2158706969}
!129 = !{i64 2158707142}
!130 = !{i64 2158709091}
!131 = !{i64 2158709264}
!132 = !{i64 2158691910}
!133 = !{i64 2158692083}
!134 = !{i64 2158693969}
!135 = !{i64 2158694142}
!136 = !{i64 2154835290}
!137 = !{i64 2153908802}
!138 = !{i64 2153909009}
!139 = !{i64 2154838061}
!140 = !{i64 2158699233}
!141 = !{i64 2158699406}
!142 = !{i64 2158713604}
!143 = !{i64 2158713777}
