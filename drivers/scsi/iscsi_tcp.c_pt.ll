; ModuleID = '/llk/IR_all_yes/drivers/scsi/iscsi_tcp.c_pt.bc'
source_filename = "../drivers/scsi/iscsi_tcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.171 }
%union.anon.171 = type { ptr }
%struct.iscsi_transport = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.172 }
%struct.atomic_t = type { i32 }
%union.anon.172 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.iscsi_cls_session = type { %struct.list_head, ptr, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i8, %struct.delayed_work, i32, i8, i32, i32, i32, ptr, %struct.device }
%struct.iscsi_session = type { ptr, %struct.mutex, %struct.wait_queue_head, %struct.iscsi_tm, %struct.timer_list, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.iscsi_pool, ptr }
%struct.iscsi_tm = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.iscsi_pool = type { %struct.kfifo, ptr, i32 }
%struct.kfifo = type { %union.anon.197, [0 x i8] }
%union.anon.197 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.iscsi_cls_conn = type { %struct.list_head, ptr, ptr, i32, %struct.mutex, ptr, i32, %struct.work_struct, %struct.device, i32 }
%struct.iscsi_conn = type { ptr, ptr, ptr, i32, %struct.timer_list, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_tcp_conn = type { ptr, ptr, i32, %struct.iscsi_tcp_recv, ptr }
%struct.iscsi_tcp_recv = type { ptr, %struct.iscsi_segment, [64 x i32], i32 }
%struct.iscsi_segment = type { ptr, i32, i32, i32, i32, ptr, [4 x i8], [4 x i8], [4 x i8], i32, ptr, ptr, i32, i8, ptr }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.iscsi_sw_tcp_conn = type { ptr, %struct.iscsi_sw_tcp_send, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.iscsi_sw_tcp_send = type { ptr, %struct.iscsi_segment, %struct.iscsi_segment }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.118 = type { ptr }
%union.anon.119 = type { ptr }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.iscsi_stats = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.iscsi_stats_custom] }
%struct.iscsi_stats_custom = type { [64 x i8], i64 }
%struct.iscsi_task = type { ptr, i16, i16, i32, i32, %struct.scsi_lun, i32, i32, %struct.iscsi_r2t_info, ptr, i32, ptr, ptr, i32, i32, i8, i8, i32, %struct.refcount_struct, %struct.list_head, ptr }
%struct.iscsi_r2t_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.155, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.155 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.iscsi_hdr = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, [12 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.read_descriptor_t = type { i32, i32, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
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

@__UNIQUE_ID_author635 = internal constant [125 x i8] c"iscsi_tcp.author=Mike Christie <michaelc@cs.wisc.edu>, Dmitry Yusupov <dmitry_yus@yahoo.com>, Alex Aizman <itn780@yahoo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description636 = internal constant [42 x i8] c"iscsi_tcp.description=iSCSI/TCP data-path\00", section ".modinfo", align 1
@__UNIQUE_ID_file637 = internal constant [38 x i8] c"iscsi_tcp.file=drivers/scsi/iscsi_tcp\00", section ".modinfo", align 1
@__UNIQUE_ID_license638 = internal constant [22 x i8] c"iscsi_tcp.license=GPL\00", section ".modinfo", align 1
@__param_str_max_lun = internal constant [18 x i8] c"iscsi_tcp.max_lun\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@iscsi_max_lun = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_max_lun = internal constant %struct.kernel_param { ptr @__param_str_max_lun, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.171 { ptr @iscsi_max_lun } }, section "__param", align 4
@__UNIQUE_ID_max_luntype639 = internal constant [32 x i8] c"iscsi_tcp.parmtype=max_lun:uint\00", section ".modinfo", align 1
@__param_str_debug_iscsi_tcp = internal constant [26 x i8] c"iscsi_tcp.debug_iscsi_tcp\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@iscsi_sw_tcp_dbg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_iscsi_tcp = internal constant %struct.kernel_param { ptr @__param_str_debug_iscsi_tcp, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @iscsi_sw_tcp_dbg } }, section "__param", align 4
@__UNIQUE_ID_debug_iscsi_tcptype640 = internal constant [39 x i8] c"iscsi_tcp.parmtype=debug_iscsi_tcp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_iscsi_tcp641 = internal constant [129 x i8] c"iscsi_tcp.parm=debug_iscsi_tcp:Turn on debugging for iscsi_tcp module Set to 1 to turn on, and zero to turn off. Default is off.\00", section ".modinfo", align 1
@iscsi_sw_tcp_transport = internal global { %struct.iscsi_transport, [60 x i8] } { %struct.iscsi_transport { ptr null, ptr @.str, i32 57, ptr @iscsi_sw_tcp_session_create, ptr @iscsi_sw_tcp_session_destroy, ptr @iscsi_sw_tcp_conn_create, ptr null, ptr @iscsi_sw_tcp_conn_bind, ptr @iscsi_conn_start, ptr @iscsi_sw_tcp_conn_stop, ptr @iscsi_sw_tcp_conn_destroy, ptr @iscsi_sw_tcp_conn_set_param, ptr null, ptr @iscsi_sw_tcp_conn_get_param, ptr @iscsi_session_get_param, ptr @iscsi_sw_tcp_host_get_param, ptr @iscsi_host_set_param, ptr @iscsi_conn_send_pdu, ptr @iscsi_sw_tcp_conn_get_stats, ptr @iscsi_tcp_task_init, ptr @iscsi_tcp_task_xmit, ptr @iscsi_tcp_cleanup_task, ptr @iscsi_sw_tcp_pdu_alloc, ptr @iscsi_sw_tcp_pdu_xmit, ptr @iscsi_sw_tcp_pdu_init, ptr null, ptr @iscsi_session_recovery_timedout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_sw_tcp_attr_is_visible, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_iscsi_tcp__642_1069_iscsi_sw_tcp_init6 = internal global ptr @iscsi_sw_tcp_init, section ".initcall6.init", align 4
@__exitcall_iscsi_sw_tcp_exit = internal global ptr @iscsi_sw_tcp_exit, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_session_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013iscsi_tcp: invalid ep %p.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsi_sw_tcp_session_create\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/scsi/iscsi_tcp.c\00", [39 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_session_create._entry_ptr = internal global ptr @iscsi_sw_tcp_session_create._entry, section ".printk_index", align 4
@iscsi_sw_tcp_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @iscsi_queuecommand, ptr null, ptr null, ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_eh_abort, ptr @iscsi_eh_device_reset, ptr @iscsi_eh_recover_target, ptr null, ptr null, ptr null, ptr @iscsi_sw_tcp_slave_configure, ptr null, ptr @iscsi_target_alloc, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_eh_cmd_timed_out, ptr null, ptr null, ptr @.str.5, ptr null, i32 4096, i32 -1, i16 4096, i16 0, i32 65535, i32 0, i32 4095, i32 0, i16 32, i8 0, i32 0, i8 -128, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_scsi_transport = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iSCSI Initiator over TCP/IP\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iscsi_tcp\00", [22 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_session_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crc32c\00", [25 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_conn_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 588, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"Could not create connection due to crc32c loading error. Make sure the crc32c module is built as a module or into the kernel\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsi_sw_tcp_conn_create\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_conn_create._entry_ptr = internal global ptr @iscsi_sw_tcp_conn_create._entry, section ".printk_index", align 4
@iscsi_sw_tcp_conn_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 679, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sockfd_lookup failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iscsi_sw_tcp_conn_bind\00", [41 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_conn_bind._entry_ptr = internal global ptr @iscsi_sw_tcp_conn_bind._entry, section ".printk_index", align 4
@iscsi_sw_tcp_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 87, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s in %d bytes\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iscsi_sw_tcp_recv\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_recv._entry_ptr = internal global ptr @iscsi_sw_tcp_recv._entry, section ".printk_index", align 4
@iscsi_sw_tcp_recv._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.3, i32 97, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s read %d bytes status %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_recv._entry_ptr.18 = internal global ptr @iscsi_sw_tcp_recv._entry.16, section ".printk_index", align 4
@__tracepoint_iscsi_dbg_sw_tcp = external dso_local global %struct.tracepoint, align 4
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/iscsi.h\00", [35 x i8] zeroinitializer }, align 32
@trace_iscsi_dbg_sw_tcp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@iscsi_sw_sk_state_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 118, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s TCP_CLOSE|TCP_CLOSE_WAIT\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iscsi_sw_sk_state_check\00", [40 x i8] zeroinitializer }, align 32
@iscsi_sw_sk_state_check._entry_ptr = internal global ptr @iscsi_sw_sk_state_check._entry, section ".printk_index", align 4
@iscsi_sw_tcp_write_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 207, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s iscsi_write_space\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsi_sw_tcp_write_space\00", [39 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_write_space._entry_ptr = internal global ptr @iscsi_sw_tcp_write_space._entry, section ".printk_index", align 4
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_sendpage_failures\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_discontiguous_hdr\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eh_abort_cnt\00", [19 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_pdu_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 378, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Transport not bound to socket!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsi_sw_tcp_pdu_xmit\00", [42 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_pdu_xmit._entry_ptr = internal global ptr @iscsi_sw_tcp_pdu_xmit._entry, section ".printk_index", align 4
@iscsi_sw_tcp_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 342, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s xmit %d bytes\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iscsi_sw_tcp_xmit\00", [46 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_xmit._entry_ptr = internal global ptr @iscsi_sw_tcp_xmit._entry, section ".printk_index", align 4
@iscsi_sw_tcp_xmit._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 350, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s Error sending PDU, errno=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_xmit._entry_ptr.35 = internal global ptr @iscsi_sw_tcp_xmit._entry.33, section ".printk_index", align 4
@iscsi_sw_tcp_send_hdr_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 423, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsi_sw_tcp_send_hdr_prep\00", [37 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_send_hdr_prep._entry_ptr = internal global ptr @iscsi_sw_tcp_send_hdr_prep._entry, section ".printk_index", align 4
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"digest enabled\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"digest disabled\00", [16 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_send_hdr_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 412, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s Header done. Next segment size %u total_size %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsi_sw_tcp_send_hdr_done\00", [37 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_send_hdr_done._entry_ptr = internal global ptr @iscsi_sw_tcp_send_hdr_done._entry, section ".printk_index", align 4
@iscsi_sw_tcp_send_linear_data_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 492, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s datalen=%zd %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iscsi_sw_tcp_send_linear_data_prep\00", [61 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_send_linear_data_prep._entry_ptr = internal global ptr @iscsi_sw_tcp_send_linear_data_prep._entry, section ".printk_index", align 4
@iscsi_sw_tcp_send_data_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 467, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s offset=%d, datalen=%d %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsi_sw_tcp_send_data_prep\00", [36 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_send_data_prep._entry_ptr = internal global ptr @iscsi_sw_tcp_send_data_prep._entry, section ".printk_index", align 4
@iscsi_sw_tcp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013iscsi_tcp: Invalid max_lun value of %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iscsi_sw_tcp_init\00", [46 x i8] zeroinitializer }, align 32
@iscsi_sw_tcp_init._entry_ptr = internal global ptr @iscsi_sw_tcp_init._entry, section ".printk_index", align 4
@switch.table.iscsi_sw_tcp_attr_is_visible = internal constant { [55 x i16], [50 x i8] } { [55 x i16] [i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 0, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 292], [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 21, i64 54]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"iscsi_max_lun\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 52, i32 21 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"iscsi_sw_tcp_dbg\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 55, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [23 x i8] c"iscsi_sw_tcp_transport\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1012, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1014, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 860, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"iscsi_sw_tcp_sht\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 991, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"iscsi_sw_tcp_scsi_transport\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 48, i32 40 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 993, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1007, i32 16 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 561, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 584, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 678, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 87, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 96, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [32 x i8] c"../include/trace/events/iscsi.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 80, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 108, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 118, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 207, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 839, i32 32 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 841, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 843, i32 32 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 377, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 342, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 350, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 422, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 409, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 491, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 465, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.240 = private constant [28 x i8] c"../drivers/scsi/iscsi_tcp.c\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1051, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant [42 x i8] c"switch.table.iscsi_sw_tcp_attr_is_visible\00", align 1
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author635, ptr @__UNIQUE_ID_debug_iscsi_tcp641, ptr @__UNIQUE_ID_debug_iscsi_tcptype640, ptr @__UNIQUE_ID_description636, ptr @__UNIQUE_ID_file637, ptr @__UNIQUE_ID_license638, ptr @__UNIQUE_ID_max_luntype639, ptr @__exitcall_iscsi_sw_tcp_exit, ptr @__initcall__kmod_iscsi_tcp__642_1069_iscsi_sw_tcp_init6, ptr @__param_debug_iscsi_tcp, ptr @__param_max_lun, ptr @iscsi_sw_sk_state_check._entry, ptr @iscsi_sw_sk_state_check._entry_ptr, ptr @iscsi_sw_tcp_conn_bind._entry, ptr @iscsi_sw_tcp_conn_bind._entry_ptr, ptr @iscsi_sw_tcp_conn_create._entry, ptr @iscsi_sw_tcp_conn_create._entry_ptr, ptr @iscsi_sw_tcp_exit, ptr @iscsi_sw_tcp_init._entry, ptr @iscsi_sw_tcp_init._entry_ptr, ptr @iscsi_sw_tcp_pdu_xmit._entry, ptr @iscsi_sw_tcp_pdu_xmit._entry_ptr, ptr @iscsi_sw_tcp_recv._entry, ptr @iscsi_sw_tcp_recv._entry.16, ptr @iscsi_sw_tcp_recv._entry_ptr, ptr @iscsi_sw_tcp_recv._entry_ptr.18, ptr @iscsi_sw_tcp_send_data_prep._entry, ptr @iscsi_sw_tcp_send_data_prep._entry_ptr, ptr @iscsi_sw_tcp_send_hdr_done._entry, ptr @iscsi_sw_tcp_send_hdr_done._entry_ptr, ptr @iscsi_sw_tcp_send_hdr_prep._entry, ptr @iscsi_sw_tcp_send_hdr_prep._entry_ptr, ptr @iscsi_sw_tcp_send_linear_data_prep._entry, ptr @iscsi_sw_tcp_send_linear_data_prep._entry_ptr, ptr @iscsi_sw_tcp_session_create._entry, ptr @iscsi_sw_tcp_session_create._entry_ptr, ptr @iscsi_sw_tcp_write_space._entry, ptr @iscsi_sw_tcp_write_space._entry_ptr, ptr @iscsi_sw_tcp_xmit._entry, ptr @iscsi_sw_tcp_xmit._entry.33, ptr @iscsi_sw_tcp_xmit._entry_ptr, ptr @iscsi_sw_tcp_xmit._entry_ptr.35, ptr @iscsi_max_lun, ptr @iscsi_sw_tcp_dbg, ptr @iscsi_sw_tcp_transport, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @iscsi_sw_tcp_sht, ptr @iscsi_sw_tcp_scsi_transport, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @switch.table.iscsi_sw_tcp_attr_is_visible], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_max_lun to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_dbg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_transport to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_session_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_scsi_transport to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_conn_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_conn_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_recv._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_sk_state_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_write_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_pdu_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_xmit._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_send_hdr_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_send_hdr_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_send_linear_data_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_send_data_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_sw_tcp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iscsi_sw_tcp_attr_is_visible to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_sw_tcp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @iscsi_unregister_transport(ptr noundef nonnull @iscsi_sw_tcp_transport) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_unregister_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_sw_tcp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @iscsi_max_lun, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef 0) #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call ptr @iscsi_register_transport(ptr noundef nonnull @iscsi_sw_tcp_transport) #11
  store ptr %call1, ptr @iscsi_sw_tcp_scsi_transport, align 4
  %tobool.not = icmp eq ptr %call1, null
  %. = select i1 %tobool.not, i32 -19, i32 0
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iscsi_sw_tcp_session_create(ptr noundef %ep, i16 noundef zeroext %cmds_max, i16 noundef zeroext %qdepth, i32 noundef %initial_cmdsn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %ep) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @iscsi_host_alloc(ptr noundef nonnull @iscsi_sw_tcp_sht, i32 noundef 4, i1 noundef zeroext true) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = load ptr, ptr @iscsi_sw_tcp_scsi_transport, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 12
  %1 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %transportt, align 4
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 27
  %2 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %qdepth, ptr %cmd_per_lun, align 8
  %3 = load i32, ptr @iscsi_max_lun, align 4
  %conv = zext i32 %3 to i64
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 22
  %4 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %max_lun, align 8
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 21
  %5 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %max_id, align 4
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 20
  %6 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %max_channel, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 24
  %7 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 260, ptr %max_cmd_len, align 4
  %call5 = tail call i32 @iscsi_host_get_max_scsi_cmds(ptr noundef nonnull %call1, i16 noundef zeroext %cmds_max) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.free_host_crit_edge, label %if.end8

if.end4.free_host_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_host

if.end8:                                          ; preds = %if.end4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 26
  %8 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call5, ptr %can_queue, align 4
  %call9 = tail call i32 @iscsi_host_add(ptr noundef nonnull %call1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.free_host_crit_edge

if.end8.free_host_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_host

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @iscsi_session_setup(ptr noundef nonnull @iscsi_sw_tcp_transport, ptr noundef nonnull %call1, i16 noundef zeroext %cmds_max, i32 noundef 0, i32 noundef 460, i32 noundef %initial_cmdsn, i32 noundef 0) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.remove_host_crit_edge, label %if.end16

if.end12.remove_host_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %remove_host

if.end16:                                         ; preds = %if.end12
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %call13, i32 0, i32 16
  %9 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dd_data, align 4
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %call1, i32 1, i32 5, i32 5, i32 1
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %add.ptr, align 4
  %call19 = tail call i32 @iscsi_tcp_r2tpool_alloc(ptr noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end16.cleanup_crit_edge, label %remove_session

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

remove_session:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iscsi_session_teardown(ptr noundef nonnull %call13) #11
  br label %remove_host

remove_host:                                      ; preds = %remove_session, %if.end12.remove_host_crit_edge
  tail call void @iscsi_host_remove(ptr noundef nonnull %call1) #11
  br label %free_host

free_host:                                        ; preds = %remove_host, %if.end8.free_host_crit_edge, %if.end4.free_host_crit_edge
  tail call void @iscsi_host_free(ptr noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %free_host, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %free_host ], [ null, %if.end.cleanup_crit_edge ], [ %call13, %if.end16.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_sw_tcp_session_destroy(ptr noundef %cls_session) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 16
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %leadconn = getelementptr inbounds %struct.iscsi_session, ptr %5, i32 0, i32 51
  %6 = ptrtoint ptr %leadconn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %leadconn, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %dev_to_shost.exit
  %.b47 = load i1, ptr @iscsi_sw_tcp_session_destroy.__already_done, align 1
  br i1 %.b47, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !144

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iscsi_sw_tcp_session_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 912, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end38:                                         ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iscsi_tcp_r2tpool_free(ptr noundef %5) #11
  tail call void @iscsi_session_teardown(ptr noundef %cls_session) #11
  tail call void @iscsi_host_remove(ptr noundef %retval.0.i) #11
  tail call void @iscsi_host_free(ptr noundef %retval.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iscsi_sw_tcp_conn_create(ptr noundef %cls_session, i32 noundef %conn_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iscsi_tcp_conn_setup(ptr noundef %cls_session, i32 noundef 160, i32 noundef %conn_idx) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data2, align 4
  %call3 = tail call ptr @crypto_alloc_ahash(ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 128) #11
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.do.end_crit_edge, label %if.end6

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end6:                                          ; preds = %if.end
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call3, i32 0, i32 8
  %6 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reqsize.i.i, align 32
  %add.i = add i32 %7, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %ahash_request_alloc.exit.thread, label %if.end11, !prof !145

ahash_request_alloc.exit.thread:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %tx_hash84 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %tx_hash84 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tx_hash84, align 4
  br label %free_tfm

if.end11:                                         ; preds = %if.end6
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call3, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %tx_hash = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %tx_hash to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i, ptr %tx_hash, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %flags4.i, align 4
  %14 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reqsize.i.i, align 32
  %add.i43 = add i32 %15, 128
  %call9.i.i69 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i43, i32 noundef 3264) #15
  %tobool.not.i72 = icmp eq ptr %call9.i.i69, null
  br i1 %tobool.not.i72, label %free_tx_hash, label %if.end17, !prof !145

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %tfm1.i.i76 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i69, i32 0, i32 3
  %16 = ptrtoint ptr %tfm1.i.i76 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %base.i.i.i, ptr %tfm1.i.i76, align 16
  %rx_hash = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %rx_hash to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i69, ptr %rx_hash, align 4
  %complete.i80 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i69, i32 0, i32 1
  %18 = ptrtoint ptr %complete.i80 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %complete.i80, align 8
  %data2.i81 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i69, i32 0, i32 2
  %19 = ptrtoint ptr %data2.i81 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %data2.i81, align 4
  %flags4.i82 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i69, i32 0, i32 4
  %20 = ptrtoint ptr %flags4.i82 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags4.i82, align 4
  %21 = load ptr, ptr %rx_hash, align 4
  %rx_hash20 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %rx_hash20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %rx_hash20, align 4
  br label %cleanup

free_tx_hash:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %rx_hash87 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %5, i32 0, i32 6
  %23 = ptrtoint ptr %rx_hash87 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rx_hash87, align 4
  %24 = ptrtoint ptr %tx_hash to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_hash, align 4
  tail call void @kfree_sensitive(ptr noundef %25) #11
  br label %free_tfm

free_tfm:                                         ; preds = %free_tx_hash, %ahash_request_alloc.exit.thread
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call3, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %call3, ptr noundef %base.i.i) #11
  br label %do.end

do.end:                                           ; preds = %free_tfm, %if.end.do.end_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.iscsi_cls_conn, ptr %27, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.7) #14
  tail call void @iscsi_tcp_conn_teardown(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %if.end17 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_sw_tcp_conn_bind(ptr noundef %cls_session, ptr noundef %cls_conn, i64 noundef %transport_eph, i32 noundef %is_leading) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 16
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %dd_data1 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 8
  %dd_data2 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data2, align 4
  %dd_data3 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dd_data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #11
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4, !annotation !146
  %conv = trunc i64 %transport_eph to i32
  %call = call ptr @sockfd_lookup(i32 noundef %conv, ptr noundef nonnull %err) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.iscsi_cls_conn, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %12) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i32 @iscsi_conn_bind(ptr noundef %cls_session, ptr noundef %cls_conn, i32 noundef %is_leading) #11
  %13 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call5, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %free_socket

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %frwd_lock = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 52
  call void @_raw_spin_lock_bh(ptr noundef %frwd_lock) #11
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %7, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %frwd_lock) #11
  %sk11 = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 4
  %15 = ptrtoint ptr %sk11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk11, align 16
  %skc_reuse = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %skc_reuse to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %skc_reuse, align 1
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, ptr %skc_reuse, align 1
  %sk_sndtimeo = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 31
  %18 = ptrtoint ptr %sk_sndtimeo to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1500, ptr %sk_sndtimeo, align 8
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 41
  %19 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2592, ptr %sk_allocation, align 8
  call void @sk_set_memalloc(ptr noundef %16) #11
  call void @sock_no_linger(ptr noundef %16) #11
  %20 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dd_data2, align 4
  %dd_data1.i = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %dd_data1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dd_data1.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %sk2.i = getelementptr inbounds %struct.socket, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk2.i, align 16
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #11
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 72
  %28 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %3, ptr %sk_user_data.i, align 4
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 77
  %29 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sk_data_ready.i, align 8
  %old_data_ready.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %23, i32 0, i32 2
  %31 = ptrtoint ptr %old_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %old_data_ready.i, align 4
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 76
  %32 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk_state_change.i, align 4
  %old_state_change.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %23, i32 0, i32 3
  %34 = ptrtoint ptr %old_state_change.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %old_state_change.i, align 4
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 78
  %35 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk_write_space.i, align 4
  %old_write_space.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %23, i32 0, i32 4
  %37 = ptrtoint ptr %old_write_space.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %old_write_space.i, align 4
  store ptr @iscsi_sw_tcp_data_ready, ptr %sk_data_ready.i, align 8
  store ptr @iscsi_sw_tcp_state_change, ptr %sk_state_change.i, align 4
  store ptr @iscsi_sw_tcp_write_space, ptr %sk_write_space.i, align 4
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #11
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %7, align 4
  %ops = getelementptr inbounds %struct.socket, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %sendpage = getelementptr inbounds %struct.proto_ops, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %sendpage to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sendpage, align 4
  %sendpage13 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %7, i32 0, i32 9
  %44 = ptrtoint ptr %sendpage13 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %sendpage13, align 4
  call void @iscsi_tcp_hdr_recv_prep(ptr noundef %5) #11
  br label %cleanup

free_socket:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %file = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 3
  %45 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %46) #11
  %47 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %free_socket, %if.end8, %do.end
  %retval.0 = phi i32 [ %48, %free_socket ], [ 0, %if.end8 ], [ -17, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_start(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_sw_tcp_conn_stop(ptr noundef %cls_conn, i32 noundef %flag) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sk = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk, align 16
  %sk_err = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 51
  %10 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %sk_err, align 4
  %11 = load ptr, ptr %sk, align 16
  %12 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 17
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %12, align 8
  tail call void @__wake_up(ptr noundef %14, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  tail call void @iscsi_suspend_tx(ptr noundef %1) #11
  tail call fastcc void @iscsi_sw_tcp_release_conn(ptr noundef %1)
  tail call void @iscsi_conn_stop(ptr noundef %cls_conn, i32 noundef %flag) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_sw_tcp_conn_destroy(ptr noundef %cls_conn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data2, align 4
  tail call fastcc void @iscsi_sw_tcp_release_conn(ptr noundef %1)
  %rx_hash = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %rx_hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_hash, align 4
  tail call void @kfree_sensitive(ptr noundef %7) #11
  %tx_hash = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %tx_hash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_hash, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 -128
  tail call void @kfree_sensitive(ptr noundef nonnull %9) #11
  tail call void @crypto_destroy_tfm(ptr noundef %add.ptr.i.i, ptr noundef %11) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @iscsi_tcp_conn_teardown(ptr noundef %cls_conn) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_sw_tcp_conn_set_param(ptr noundef %cls_conn, i32 noundef %param, ptr noundef %buf, i32 noundef %buflen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data2, align 4
  %6 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %param, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
    i32 5, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @iscsi_set_param(ptr noundef %cls_conn, i32 noundef 2, ptr noundef %buf, i32 noundef %buflen) #11
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call4 = tail call i32 @iscsi_set_param(ptr noundef %cls_conn, i32 noundef 3, ptr noundef %buf, i32 noundef %buflen) #11
  %datadgst_en = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %datadgst_en to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %datadgst_en, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %cond.false, label %sw.bb3.cond.end_crit_edge

sw.bb3.cond.end_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %ops = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %sendpage = getelementptr inbounds %struct.proto_ops, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %sendpage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sendpage, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb3.cond.end_crit_edge
  %cond = phi ptr [ %14, %cond.false ], [ @sock_no_sendpage, %sw.bb3.cond.end_crit_edge ]
  %sendpage5 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %5, i32 0, i32 9
  %15 = ptrtoint ptr %sendpage5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cond, ptr %sendpage5, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @iscsi_tcp_set_max_r2t(ptr noundef %1, ptr noundef %buf) #11
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @iscsi_set_param(ptr noundef %cls_conn, i32 noundef %param, ptr noundef %buf, i32 noundef %buflen) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb6, %cond.end, %sw.bb
  %retval.0 = phi i32 [ %call8, %sw.default ], [ %call7, %sw.bb6 ], [ 0, %cond.end ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_sw_tcp_conn_get_param(ptr noundef %cls_conn, i32 noundef %param, ptr noundef %buf) #2 align 64 {
entry:
  %addr = alloca %struct.sockaddr_in6, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data2, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %addr) #11
  %6 = call ptr @memset(ptr %addr, i32 255, i32 28)
  %7 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %param, label %sw.default [
    i32 20, label %entry.sw.bb_crit_edge
    i32 21, label %entry.sw.bb_crit_edge42
    i32 54, label %entry.sw.bb_crit_edge43
  ]

entry.sw.bb_crit_edge43:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge42:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge42, %entry.sw.bb_crit_edge43
  %session = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %session, align 8
  %frwd_lock = getelementptr inbounds %struct.iscsi_session, ptr %9, i32 0, i32 52
  tail call void @_raw_spin_lock_bh(ptr noundef %frwd_lock) #11
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %sw.bb.if.then_crit_edge, label %lor.lhs.false

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.bb
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %12 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %session, align 8
  %frwd_lock6 = getelementptr inbounds %struct.iscsi_session, ptr %13, i32 0, i32 52
  tail call void @_raw_spin_unlock_bh(ptr noundef %frwd_lock6) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sk = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 16
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !147
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !145

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %18 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %session, align 8
  %frwd_lock9 = getelementptr inbounds %struct.iscsi_session, ptr %19, i32 0, i32 52
  tail call void @_raw_spin_unlock_bh(ptr noundef %frwd_lock9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %param)
  %cmp = icmp eq i32 %param, 54
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call = call i32 @kernel_getsockname(ptr noundef nonnull %11, ptr noundef nonnull %addr) #11
  br label %if.end12

if.else:                                          ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = call i32 @kernel_getpeername(ptr noundef nonnull %11, ptr noundef nonnull %addr) #11
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  %rc.0 = phi i32 [ %call, %if.then10 ], [ %call11, %if.else ]
  %20 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk, align 16
  %skc_refcnt.i39 = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 19
  %call.i.i.i.i.i.i40 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i39, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i39, i32 1, i32 3, i32 1) #11
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i39, ptr %skc_refcnt.i39, i32 1, ptr elementtype(i32) %skc_refcnt.i39) #11, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i41 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i41, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i39, i32 noundef 3) #11
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  call void @sk_free(ptr noundef %21) #11
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp14 = icmp slt i32 %rc.0, 0
  br i1 %cmp14, label %sock_put.exit.cleanup_crit_edge, label %if.end16

sock_put.exit.cleanup_crit_edge:                  ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = call i32 @iscsi_conn_get_addr_param(ptr noundef nonnull %addr, i32 noundef %param, ptr noundef %buf) #11
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 @iscsi_conn_get_param(ptr noundef %cls_conn, i32 noundef %param, ptr noundef %buf) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end16, %sock_put.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call18, %sw.default ], [ %call17, %if.end16 ], [ -107, %if.then ], [ %rc.0, %sock_put.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_session_get_param(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_sw_tcp_host_get_param(ptr noundef %shost, i32 noundef %param, ptr noundef %buf) #2 align 64 {
entry:
  %addr = alloca %struct.sockaddr_in6, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 1
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %param)
  %cond = icmp eq i32 %param, 3
  %2 = call ptr @memset(ptr %addr, i32 255, i32 28)
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %frwd_lock = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 52
  tail call void @_raw_spin_lock_bh(ptr noundef %frwd_lock) #11
  %leadconn = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 51
  %3 = ptrtoint ptr %leadconn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %leadconn, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %frwd_lock) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dd_data, align 4
  %dd_data6 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dd_data6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dd_data6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %frwd_lock) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %sk = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk, align 16
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !147
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end11.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !145

if.end11.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end11
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %frwd_lock) #11
  %call13 = call i32 @kernel_getsockname(ptr noundef nonnull %10, ptr noundef nonnull %addr) #11
  %15 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk, align 16
  %skc_refcnt.i42 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 19
  %call.i.i.i.i.i.i43 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i42, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i42, i32 1, i32 3, i32 1) #11
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i42, ptr %skc_refcnt.i42, i32 1, ptr elementtype(i32) %skc_refcnt.i42) #11, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i44 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i44, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i42, i32 noundef 3) #11
  br label %sock_put.exit

if.then.i:                                        ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  call void @sk_free(ptr noundef %16) #11
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %sock_put.exit.cleanup_crit_edge, label %if.end16

sock_put.exit.cleanup_crit_edge:                  ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = call i32 @iscsi_conn_get_addr_param(ptr noundef nonnull %addr, i32 noundef 3, ptr noundef %buf) #11
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 @iscsi_host_get_param(ptr noundef %shost, i32 noundef %param, ptr noundef %buf) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end16, %sock_put.exit.cleanup_crit_edge, %if.then9, %if.then3, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ -107, %if.then9 ], [ -107, %if.then3 ], [ %call18, %sw.default ], [ -107, %sw.bb.cleanup_crit_edge ], [ %call13, %sock_put.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_host_set_param(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_send_pdu(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_sw_tcp_conn_get_stats(ptr noundef %cls_conn, ptr noundef %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data2, align 4
  %custom_length = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 21
  %6 = ptrtoint ptr %custom_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %custom_length, align 4
  %custom = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 22
  %7 = call ptr @memcpy(ptr %custom, ptr @.str.26, i32 21)
  %sendpage_failures_cnt = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %sendpage_failures_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sendpage_failures_cnt, align 4
  %conv = zext i32 %9 to i64
  %value = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 1, i32 14
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %value, align 8
  %arrayidx6 = getelementptr %struct.iscsi_stats, ptr %stats, i32 1, i32 16
  %11 = call ptr @memcpy(ptr %arrayidx6, ptr @.str.27, i32 21)
  %discontiguous_hdr_cnt = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %discontiguous_hdr_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %discontiguous_hdr_cnt, align 4
  %conv10 = zext i32 %13 to i64
  %value13 = getelementptr %struct.iscsi_stats, ptr %stats, i32 2, i32 8
  %14 = ptrtoint ptr %value13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv10, ptr %value13, align 8
  %arrayidx15 = getelementptr %struct.iscsi_stats, ptr %stats, i32 2, i32 10
  %15 = call ptr @memcpy(ptr %arrayidx15, ptr @.str.28, i32 13)
  %eh_abort_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 56
  %16 = ptrtoint ptr %eh_abort_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eh_abort_cnt, align 4
  %conv19 = zext i32 %17 to i64
  %value22 = getelementptr %struct.iscsi_stats, ptr %stats, i32 3, i32 2
  %18 = ptrtoint ptr %value22 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv19, ptr %value22, align 8
  tail call void @iscsi_tcp_conn_get_stats(ptr noundef %cls_conn, ptr noundef %stats) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_tcp_task_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_tcp_task_xmit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_tcp_cleanup_task(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iscsi_sw_tcp_pdu_alloc(ptr nocapture noundef %task, i8 noundef zeroext %opcode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 152
  %2 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %task, align 4
  %hdr_max = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 1
  %3 = ptrtoint ptr %hdr_max to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 304, ptr %hdr_max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_sw_tcp_pdu_xmit(ptr nocapture noundef readonly %task) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.msghdr, align 8
  %iov.i.i = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 12
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.iscsi_cls_conn, ptr %9, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev, ptr noundef nonnull @.str.29) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = tail call i32 @llvm.read_register.i32(metadata !134) #11
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %15, 2048
  %or.i = or i32 %15, 2048
  store i32 %or.i, ptr %flags1.i, align 4
  %msg_flags.i.i = getelementptr inbounds %struct.msghdr, ptr %msg.i.i, i32 0, i32 6
  %16 = getelementptr inbounds %struct.kvec, ptr %iov.i.i, i32 0, i32 1
  %txdata_octets.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 47
  br label %while.cond

while.cond:                                       ; preds = %if.end7.while.cond_crit_edge, %if.end
  %17 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dd_data, align 4
  %dd_data1.i = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dd_data1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dd_data1.i, align 4
  %total_copied.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %20, i32 0, i32 1, i32 1, i32 4
  %21 = ptrtoint ptr %total_copied.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_copied.i, align 4
  %total_size.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %20, i32 0, i32 1, i32 1, i32 3
  %23 = ptrtoint ptr %total_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %tobool4.not = icmp eq i32 %22, %24
  br i1 %tobool4.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond
  %segment2.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %20, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %20, align 4
  %call54.i83.i = call i32 @iscsi_tcp_segment_done(ptr noundef %18, ptr noundef %segment2.i, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i83.i)
  %tobool.not55.i84.i = icmp eq i32 %call54.i83.i, 0
  br i1 %tobool.not55.i84.i, label %while.body.lr.ph.i.lr.ph.i, label %while.body.do.body.i_crit_edge

while.body.do.body.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

while.body.lr.ph.i.lr.ph.i:                       ; preds = %while.body
  %copied1.i.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %20, i32 0, i32 1, i32 1, i32 2
  %size.i.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %20, i32 0, i32 1, i32 1, i32 1
  %sg5.i.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %20, i32 0, i32 1, i32 1, i32 10
  %sg_offset.i.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %20, i32 0, i32 1, i32 1, i32 12
  %done.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %20, i32 0, i32 1, i32 1, i32 14
  br label %while.body.lr.ph.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end20.i.while.body.lr.ph.i.i_crit_edge, %while.body.lr.ph.i.lr.ph.i
  %27 = phi ptr [ %26, %while.body.lr.ph.i.lr.ph.i ], [ %63, %if.end20.i.while.body.lr.ph.i.i_crit_edge ]
  %28 = phi ptr [ %20, %while.body.lr.ph.i.lr.ph.i ], [ %61, %if.end20.i.while.body.lr.ph.i.i_crit_edge ]
  %consumed.085.i = phi i32 [ 0, %while.body.lr.ph.i.lr.ph.i ], [ %add.i, %if.end20.i.while.body.lr.ph.i.i_crit_edge ]
  %sendpage.i.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %28, i32 0, i32 9
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %copied.056.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add17.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %29 = ptrtoint ptr %copied1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %copied1.i.i, align 4
  %31 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i.i, align 4
  %sub.i.i = sub i32 %32, %30
  %33 = ptrtoint ptr %total_copied.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %total_copied.i, align 4
  %add.i.i = add i32 %34, %32
  %35 = ptrtoint ptr %total_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %total_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %36)
  %cmp.i.i = icmp ult i32 %add.i.i, %36
  %spec.select.i.i = select i1 %cmp.i.i, i32 32768, i32 0
  %37 = ptrtoint ptr %segment2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %segment2.i, align 4
  %tobool3.not.i.i = icmp eq ptr %38, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %while.body.i.i
  %39 = ptrtoint ptr %sg5.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sg5.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %and.i.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_page.exit.i.i, label %do.body2.i.i.i, !prof !144

do.body2.i.i.i:                                   ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !151
  unreachable

sg_page.exit.i.i:                                 ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %sendpage.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sendpage.i.i, align 4
  %45 = ptrtoint ptr %sg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sg_offset.i.i, align 4
  %offset6.i.i = getelementptr inbounds %struct.scatterlist, ptr %40, i32 0, i32 1
  %47 = ptrtoint ptr %offset6.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset6.i.i, align 4
  %add7.i.i = add i32 %46, %30
  %add8.i.i = add i32 %add7.i.i, %48
  %and.i.i.i = and i32 %42, -4
  %49 = inttoptr i32 %and.i.i.i to ptr
  %call10.i.i = call i32 %44(ptr noundef %27, ptr noundef %49, i32 noundef %add8.i.i, i32 noundef %sub.i.i, i32 noundef %spec.select.i.i) #11
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #11
  %50 = call ptr @memset(ptr %msg.i.i, i32 0, i32 56)
  %51 = ptrtoint ptr %msg_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.select.i.i, ptr %msg_flags.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i) #11
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %30
  %52 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i.i, ptr %iov.i.i, align 4
  %53 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub.i.i, ptr %16, align 4
  %call12.i.i = call i32 @kernel_sendmsg(ptr noundef %27, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %iov.i.i, i32 noundef 1, i32 noundef %sub.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #11
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.else.i.i, %sg_page.exit.i.i
  %r.1.i.i = phi i32 [ %call12.i.i, %if.else.i.i ], [ %call10.i.i, %sg_page.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.1.i.i)
  %cmp14.i.i = icmp slt i32 %r.1.i.i, 0
  br i1 %cmp14.i.i, label %cleanup.thread.i.i, label %cleanup.i.i

cleanup.thread.i.i:                               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @iscsi_tcp_segment_unmap(ptr noundef %segment2.i) #11
  br label %iscsi_sw_tcp_xmit_segment.exit.i

cleanup.i.i:                                      ; preds = %if.end13.i.i
  %add17.i.i = add i32 %r.1.i.i, %copied.056.i.i
  %call.i.i = call i32 @iscsi_tcp_segment_done(ptr noundef %18, ptr noundef %segment2.i, i32 noundef 0, i32 noundef %r.1.i.i) #11
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.iscsi_sw_tcp_xmit_segment.exit.i_crit_edge

cleanup.i.i.iscsi_sw_tcp_xmit_segment.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsi_sw_tcp_xmit_segment.exit.i

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

iscsi_sw_tcp_xmit_segment.exit.i:                 ; preds = %cleanup.i.i.iscsi_sw_tcp_xmit_segment.exit.i_crit_edge, %cleanup.thread.i.i
  %retval.2.i.i = phi i32 [ %r.1.i.i, %cleanup.thread.i.i ], [ %add17.i.i, %cleanup.i.i.iscsi_sw_tcp_xmit_segment.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %retval.2.i.i)
  %cmp.i = icmp eq i32 %retval.2.i.i, -11
  br i1 %cmp.i, label %iscsi_sw_tcp_xmit_segment.exit.i.while.end_crit_edge, label %if.else.i

iscsi_sw_tcp_xmit_segment.exit.i.while.end_crit_edge: ; preds = %iscsi_sw_tcp_xmit_segment.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.else.i:                                        ; preds = %iscsi_sw_tcp_xmit_segment.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i.i)
  %cmp3.i = icmp slt i32 %retval.2.i.i, 0
  br i1 %cmp3.i, label %if.else.i.do.body29.i_crit_edge, label %if.else5.i

if.else.i.do.body29.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29.i

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i.i)
  %cmp6.i = icmp eq i32 %retval.2.i.i, 0
  br i1 %cmp6.i, label %if.else5.i.do.body.i_crit_edge, label %if.end9.i

if.else5.i.do.body.i_crit_edge:                   ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end9.i:                                        ; preds = %if.else5.i
  %add.i = add i32 %retval.2.i.i, %consumed.085.i
  %54 = ptrtoint ptr %total_copied.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %total_copied.i, align 4
  %56 = ptrtoint ptr %total_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %total_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp10.not.i = icmp ult i32 %55, %57
  br i1 %cmp10.not.i, label %if.end9.i.if.end20.i_crit_edge, label %if.then11.i

if.end9.i.if.end20.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then11.i:                                      ; preds = %if.end9.i
  %58 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %done.i, align 4
  %cmp12.not.i = icmp eq ptr %59, null
  br i1 %cmp12.not.i, label %if.then11.i.if.end20.i_crit_edge, label %if.then13.i

if.then11.i.if.end20.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then13.i:                                      ; preds = %if.then11.i
  %call15.i = call i32 %59(ptr noundef %18, ptr noundef %segment2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.not.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.not.i, label %if.then13.i.if.end20.i_crit_edge, label %if.then13.i.do.body29.i_crit_edge

if.then13.i.do.body29.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29.i

if.then13.i.if.end20.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then13.i.if.end20.i_crit_edge, %if.then11.i.if.end20.i_crit_edge, %if.end9.i.if.end20.i_crit_edge
  %60 = ptrtoint ptr %dd_data1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dd_data1.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %call54.i.i = call i32 @iscsi_tcp_segment_done(ptr noundef %18, ptr noundef %segment2.i, i32 noundef 0, i32 noundef 0) #11
  %tobool.not55.i.i = icmp eq i32 %call54.i.i, 0
  br i1 %tobool.not55.i.i, label %if.end20.i.while.body.lr.ph.i.i_crit_edge, label %if.end20.i.do.body.i_crit_edge

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end20.i.while.body.lr.ph.i.i_crit_edge:        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph.i.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %if.else5.i.do.body.i_crit_edge, %while.body.do.body.i_crit_edge
  %consumed.0.lcssa.i = phi i32 [ 0, %while.body.do.body.i_crit_edge ], [ %consumed.085.i, %if.else5.i.do.body.i_crit_edge ], [ %add.i, %if.end20.i.do.body.i_crit_edge ]
  %64 = load i32, ptr @iscsi_sw_tcp_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i, label %do.body.i.iscsi_sw_tcp_xmit.exit_crit_edge, label %do.end.i

do.body.i.iscsi_sw_tcp_xmit.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsi_sw_tcp_xmit.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %66, i32 0, i32 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %consumed.0.lcssa.i) #14
  br label %iscsi_sw_tcp_xmit.exit

do.body29.i:                                      ; preds = %if.then13.i.do.body29.i_crit_edge, %if.else.i.do.body29.i_crit_edge
  %rc.0.i = phi i32 [ %call15.i, %if.then13.i.do.body29.i_crit_edge ], [ 1019, %if.else.i.do.body29.i_crit_edge ]
  %67 = load i32, ptr @iscsi_sw_tcp_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool30.not.i = icmp eq i32 %67, 0
  br i1 %tobool30.not.i, label %do.body29.i.if.end37.i_crit_edge, label %do.end34.i

do.body29.i.if.end37.i_crit_edge:                 ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

do.end34.i:                                       ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %dev36.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %69, i32 0, i32 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev36.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef %rc.0.i) #14
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end34.i, %do.body29.i.if.end37.i_crit_edge
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %dev39.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %71, i32 0, i32 8
  call void (ptr, ptr, ptr, ...) @iscsi_dbg_trace(ptr noundef nonnull @trace_iscsi_dbg_sw_tcp, ptr noundef %dev39.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef %rc.0.i) #11
  call void @iscsi_conn_failure(ptr noundef %1, i32 noundef %rc.0.i) #11
  br label %while.end

iscsi_sw_tcp_xmit.exit:                           ; preds = %do.end.i, %do.body.i.iscsi_sw_tcp_xmit.exit_crit_edge
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 8
  %dev25.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %73, i32 0, i32 8
  call void (ptr, ptr, ptr, ...) @iscsi_dbg_trace(ptr noundef nonnull @trace_iscsi_dbg_sw_tcp, ptr noundef %dev25.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %consumed.0.lcssa.i) #11
  %conv.i = zext i32 %consumed.0.lcssa.i to i64
  %74 = ptrtoint ptr %txdata_octets.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %txdata_octets.i, align 8
  %add28.i = add i64 %75, %conv.i
  store i64 %add28.i, ptr %txdata_octets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consumed.0.lcssa.i)
  %cmp = icmp eq i32 %consumed.0.lcssa.i, 0
  br i1 %cmp, label %iscsi_sw_tcp_xmit.exit.while.end_crit_edge, label %if.end7

iscsi_sw_tcp_xmit.exit.while.end_crit_edge:       ; preds = %iscsi_sw_tcp_xmit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end7:                                          ; preds = %iscsi_sw_tcp_xmit.exit
  %cmp8 = icmp slt i32 %consumed.0.lcssa.i, 0
  br i1 %cmp8, label %if.end7.while.end_crit_edge, label %if.end7.while.cond_crit_edge

if.end7.while.cond_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end7.while.end_crit_edge, %iscsi_sw_tcp_xmit.exit.while.end_crit_edge, %if.end37.i, %iscsi_sw_tcp_xmit_segment.exit.i.while.end_crit_edge, %while.cond.while.end_crit_edge
  %rc.1 = phi i32 [ -5, %if.end37.i ], [ -11, %iscsi_sw_tcp_xmit_segment.exit.i.while.end_crit_edge ], [ -11, %iscsi_sw_tcp_xmit.exit.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ], [ %consumed.0.lcssa.i, %if.end7.while.end_crit_edge ]
  %76 = call i32 @llvm.read_register.i32(metadata !134) #11
  %and.i.i22 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i22 to ptr
  %task.i23 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task.i23 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task.i23, align 8
  %flags1.i24 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %flags1.i24 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags1.i24, align 4
  %and.i25 = and i32 %81, -2049
  %or.i26 = or i32 %and.i25, %and.i
  store i32 %or.i26, ptr %flags1.i24, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ %rc.1, %while.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_sw_tcp_pdu_init(ptr nocapture noundef readonly %task, i32 noundef %offset, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 12
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 4
  %hdr_len = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 2
  %4 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdr_len, align 2
  %conv = zext i16 %5 to i32
  %dd_data.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data.i, align 4
  %dd_data1.i = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dd_data1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dd_data1.i, align 4
  %10 = load i32, ptr @iscsi_sw_tcp_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %12, i32 0, i32 8
  %hdrdgst_en.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %hdrdgst_en.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hdrdgst_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not.i = icmp eq i32 %14, 0
  %cond.i = select i1 %tobool3.not.i, ptr @.str.39, ptr @.str.38
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev5.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %16, i32 0, i32 8
  %hdrdgst_en6.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 25
  %17 = ptrtoint ptr %hdrdgst_en6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hdrdgst_en6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not.i = icmp eq i32 %18, 0
  %cond8.i = select i1 %tobool7.not.i, ptr @.str.39, ptr @.str.38
  tail call void (ptr, ptr, ptr, ...) @iscsi_dbg_trace(ptr noundef nonnull @trace_iscsi_dbg_sw_tcp, ptr noundef %dev5.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond8.i) #11
  %data_segment.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %9, i32 0, i32 1, i32 2
  %19 = call ptr @memset(ptr %data_segment.i, i32 0, i32 60)
  %20 = ptrtoint ptr %hdrdgst_en6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hdrdgst_en6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not.i = icmp eq i32 %21, 0
  br i1 %tobool12.not.i, label %if.end.i.iscsi_sw_tcp_send_hdr_prep.exit_crit_edge, label %if.then13.i

if.end.i.iscsi_sw_tcp_send_hdr_prep.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsi_sw_tcp_send_hdr_prep.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_hash.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %9, i32 0, i32 5
  %22 = ptrtoint ptr %tx_hash.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_hash.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv
  tail call void @iscsi_tcp_dgst_header(ptr noundef %23, ptr noundef %3, i32 noundef %conv, ptr noundef %add.ptr.i) #11
  %add.i = add nuw nsw i32 %conv, 4
  br label %iscsi_sw_tcp_send_hdr_prep.exit

iscsi_sw_tcp_send_hdr_prep.exit:                  ; preds = %if.then13.i, %if.end.i.iscsi_sw_tcp_send_hdr_prep.exit_crit_edge
  %hdrlen.addr.0.i = phi i32 [ %add.i, %if.then13.i ], [ %conv, %if.end.i.iscsi_sw_tcp_send_hdr_prep.exit_crit_edge ]
  %out.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %9, i32 0, i32 1
  %24 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %3, ptr %out.i, align 4
  %segment.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %9, i32 0, i32 1, i32 1
  tail call void @iscsi_segment_init_linear(ptr noundef %segment.i, ptr noundef %3, i32 noundef %hdrlen.addr.0.i, ptr noundef nonnull @iscsi_sw_tcp_send_hdr_done, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %iscsi_sw_tcp_send_hdr_prep.exit.cleanup_crit_edge, label %if.end

iscsi_sw_tcp_send_hdr_prep.exit.cleanup_crit_edge: ; preds = %iscsi_sw_tcp_send_hdr_prep.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %iscsi_sw_tcp_send_hdr_prep.exit
  %sc = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 11
  %25 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc, align 4
  %tobool2.not = icmp eq ptr %26, null
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 9
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dd_data.i, align 4
  %dd_data1.i23 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %dd_data1.i23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dd_data1.i23, align 4
  %33 = load i32, ptr @iscsi_sw_tcp_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i24 = icmp eq i32 %33, 0
  br i1 %tobool.not.i24, label %if.then3.if.end.i33_crit_edge, label %do.end.i28

if.then3.if.end.i33_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i33

do.end.i28:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %dev.i25 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %35, i32 0, i32 8
  %datadgst_en.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 26
  %36 = ptrtoint ptr %datadgst_en.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %datadgst_en.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool3.not.i26 = icmp eq i32 %37, 0
  %cond.i27 = select i1 %tobool3.not.i26, ptr @.str.39, ptr @.str.38
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev.i25, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %count, ptr noundef nonnull %cond.i27) #14
  br label %if.end.i33

if.end.i33:                                       ; preds = %do.end.i28, %if.then3.if.end.i33_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %dev5.i29 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %39, i32 0, i32 8
  %datadgst_en6.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 26
  %40 = ptrtoint ptr %datadgst_en6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %datadgst_en6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool7.not.i30 = icmp eq i32 %41, 0
  %cond8.i31 = select i1 %tobool7.not.i30, ptr @.str.39, ptr @.str.38
  tail call void (ptr, ptr, ptr, ...) @iscsi_dbg_trace(ptr noundef nonnull @trace_iscsi_dbg_sw_tcp, ptr noundef %dev5.i29, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %count, ptr noundef nonnull %cond8.i31) #11
  %out.i32 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %32, i32 0, i32 1
  %42 = ptrtoint ptr %out.i32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %out.i32, align 4
  %dlength.i = getelementptr inbounds %struct.iscsi_hdr, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %dlength.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dlength.i, align 1
  %conv.i = zext i8 %45 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx14.i = getelementptr %struct.iscsi_hdr, ptr %43, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %47 to i32
  %shl16.i = shl nuw nsw i32 %conv15.i, 8
  %or.i = or i32 %shl16.i, %shl.i
  %arrayidx20.i = getelementptr %struct.iscsi_hdr, ptr %43, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %49 to i32
  %or22.i = or i32 %or.i, %conv21.i
  %sub.i.i = add i32 %count, 3
  %and.i.i = and i32 %sub.i.i, -4
  %sub.i68.i = add nuw nsw i32 %or22.i, 3
  %and.i69.i = and i32 %sub.i68.i, 33554428
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %and.i69.i)
  %cmp.not.i = icmp eq i32 %and.i.i, %and.i69.i
  br i1 %cmp.not.i, label %if.end.i33.if.end42.i_crit_edge, label %do.end36.i, !prof !144

if.end.i33.if.end42.i_crit_edge:                  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

do.end36.i:                                       ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 497, i32 noundef 9, ptr noundef null) #11
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end36.i, %if.end.i33.if.end42.i_crit_edge
  %50 = ptrtoint ptr %datadgst_en6.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %datadgst_en6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool50.not.i = icmp eq i32 %51, 0
  br i1 %tobool50.not.i, label %if.end42.i.if.end7.thread_crit_edge, label %if.then51.i

if.end42.i.if.end7.thread_crit_edge:              ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.thread

if.then51.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_hash52.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %32, i32 0, i32 5
  %52 = ptrtoint ptr %tx_hash52.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_hash52.i, align 4
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %if.then51.i, %if.end42.i.if.end7.thread_crit_edge
  %tx_hash.0.i = phi ptr [ %53, %if.then51.i ], [ null, %if.end42.i.if.end7.thread_crit_edge ]
  %data_segment.i34 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %32, i32 0, i32 1, i32 2
  tail call void @iscsi_segment_init_linear(ptr noundef %data_segment.i34, ptr noundef %28, i32 noundef %count, ptr noundef null, ptr noundef %tx_hash.0.i) #11
  br label %83

if.else:                                          ; preds = %if.end
  %sdb5 = getelementptr inbounds %struct.scsi_cmnd, ptr %26, i32 0, i32 17
  %54 = ptrtoint ptr %sdb5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sdb5, align 4
  %nents = getelementptr inbounds %struct.scsi_cmnd, ptr %26, i32 0, i32 17, i32 0, i32 1
  %56 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nents, align 4
  %58 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dd_data.i, align 4
  %dd_data1.i36 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %dd_data1.i36 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dd_data1.i36, align 4
  %62 = load i32, ptr @iscsi_sw_tcp_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i37 = icmp eq i32 %62, 0
  br i1 %tobool.not.i37, label %if.else.if.end.i61_crit_edge, label %do.end.i42

if.else.if.end.i61_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i61

do.end.i42:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  %dev.i38 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %64, i32 0, i32 8
  %datadgst_en.i39 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 26
  %65 = ptrtoint ptr %datadgst_en.i39 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %datadgst_en.i39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool3.not.i40 = icmp eq i32 %66, 0
  %cond.i41 = select i1 %tobool3.not.i40, ptr @.str.39, ptr @.str.38
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev.i38, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %offset, i32 noundef %count, ptr noundef nonnull %cond.i41) #14
  br label %if.end.i61

if.end.i61:                                       ; preds = %do.end.i42, %if.else.if.end.i61_crit_edge
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  %dev5.i43 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %68, i32 0, i32 8
  %datadgst_en6.i44 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 26
  %69 = ptrtoint ptr %datadgst_en6.i44 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %datadgst_en6.i44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool7.not.i45 = icmp eq i32 %70, 0
  %cond8.i46 = select i1 %tobool7.not.i45, ptr @.str.39, ptr @.str.38
  tail call void (ptr, ptr, ptr, ...) @iscsi_dbg_trace(ptr noundef nonnull @trace_iscsi_dbg_sw_tcp, ptr noundef %dev5.i43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %offset, i32 noundef %count, ptr noundef nonnull %cond8.i46) #11
  %out.i47 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %61, i32 0, i32 1
  %71 = ptrtoint ptr %out.i47 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %out.i47, align 4
  %dlength.i48 = getelementptr inbounds %struct.iscsi_hdr, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %dlength.i48 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dlength.i48, align 1
  %conv.i49 = zext i8 %74 to i32
  %shl.i50 = shl nuw nsw i32 %conv.i49, 16
  %arrayidx14.i51 = getelementptr %struct.iscsi_hdr, ptr %72, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %arrayidx14.i51 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx14.i51, align 1
  %conv15.i52 = zext i8 %76 to i32
  %shl16.i53 = shl nuw nsw i32 %conv15.i52, 8
  %or.i54 = or i32 %shl16.i53, %shl.i50
  %arrayidx20.i55 = getelementptr %struct.iscsi_hdr, ptr %72, i32 0, i32 4, i32 2
  %77 = ptrtoint ptr %arrayidx20.i55 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx20.i55, align 1
  %conv21.i56 = zext i8 %78 to i32
  %or22.i57 = or i32 %or.i54, %conv21.i56
  %sub.i.i58 = add i32 %count, 3
  %and.i.i59 = and i32 %sub.i.i58, -4
  %sub.i71.i = add nuw nsw i32 %or22.i57, 3
  %and.i72.i = and i32 %sub.i71.i, 33554428
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i59, i32 %and.i72.i)
  %cmp.not.i60 = icmp eq i32 %and.i.i59, %and.i72.i
  br i1 %cmp.not.i60, label %if.end.i61.if.end42.i64_crit_edge, label %do.end36.i62, !prof !144

if.end.i61.if.end42.i64_crit_edge:                ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i64

do.end36.i62:                                     ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 472, i32 noundef 9, ptr noundef null) #11
  br label %if.end42.i64

if.end42.i64:                                     ; preds = %do.end36.i62, %if.end.i61.if.end42.i64_crit_edge
  %79 = ptrtoint ptr %datadgst_en6.i44 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %datadgst_en6.i44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool50.not.i63 = icmp eq i32 %80, 0
  br i1 %tobool50.not.i63, label %if.end42.i64.if.end7_crit_edge, label %if.then51.i66

if.end42.i64.if.end7_crit_edge:                   ; preds = %if.end42.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then51.i66:                                    ; preds = %if.end42.i64
  call void @__sanitizer_cov_trace_pc() #13
  %tx_hash52.i65 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %61, i32 0, i32 5
  %81 = ptrtoint ptr %tx_hash52.i65 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tx_hash52.i65, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then51.i66, %if.end42.i64.if.end7_crit_edge
  %tx_hash.0.i67 = phi ptr [ %82, %if.then51.i66 ], [ null, %if.end42.i64.if.end7_crit_edge ]
  %data_segment.i68 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %61, i32 0, i32 1, i32 2
  %call55.i = tail call i32 @iscsi_segment_seek_sg(ptr noundef %data_segment.i68, ptr noundef %55, i32 noundef %57, i32 noundef %offset, i32 noundef %count, ptr noundef null, ptr noundef %tx_hash.0.i67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %phi.cmp = icmp eq i32 %call55.i, 0
  br i1 %phi.cmp, label %if.end7._crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7._crit_edge:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %83

83:                                               ; preds = %if.end7._crit_edge, %if.end7.thread
  br label %cleanup

cleanup:                                          ; preds = %83, %if.end7.cleanup_crit_edge, %iscsi_sw_tcp_send_hdr_prep.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %iscsi_sw_tcp_send_hdr_prep.exit.cleanup_crit_edge ], [ 0, %83 ], [ -5, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_recovery_timedout(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @iscsi_sw_tcp_attr_is_visible(i32 noundef %param_type, i32 noundef %param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %param_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %param_type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %param)
  %switch = icmp ult i32 %param, 4
  %. = select i1 %switch, i16 292, i16 0
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %param)
  %1 = icmp ult i32 %param, 55
  br i1 %1, label %switch.lookup, label %sw.bb2.return_crit_edge

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [55 x i16], ptr @switch.table.iscsi_sw_tcp_attr_is_visible, i32 0, i32 %param
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %2)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %sw.bb2.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i16 [ %., %sw.bb ], [ 0, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %sw.bb2.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_host_alloc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_host_get_max_scsi_cmds(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_host_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_session_setup(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_tcp_r2tpool_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_teardown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_host_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_host_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_queuecommand(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_abort(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_device_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_recover_target(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_sw_tcp_slave_configure(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 5, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %leadconn = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 51
  %4 = ptrtoint ptr %leadconn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %leadconn, align 4
  %datadgst_en = getelementptr inbounds %struct.iscsi_conn, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %datadgst_en to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %datadgst_en, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %8 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_flag_set(i32 noundef 15, ptr noundef %9) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %request_queue2 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %10 = ptrtoint ptr %request_queue2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %request_queue2, align 4
  tail call void @blk_queue_dma_alignment(ptr noundef %11, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_target_alloc(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_cmd_timed_out(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_dma_alignment(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_tcp_r2tpool_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_tcp_conn_setup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_tcp_conn_teardown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_set_memalloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_no_linger(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_tcp_hdr_recv_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_sw_tcp_data_ready(ptr noundef %sk) #2 align 64 {
entry:
  %rd_desc = alloca %struct.read_descriptor_t, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rd_desc) #11
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  %0 = call ptr @memset(ptr %rd_desc, i32 255, i32 16)
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #11
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %1 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.read_descriptor_t, ptr %rd_desc, i32 0, i32 2
  %4 = getelementptr inbounds %struct.read_descriptor_t, ptr %rd_desc, i32 0, i32 1
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dd_data, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %2, ptr %3, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %4, align 4
  %call = call i32 @tcp_read_sock(ptr noundef %sk, ptr noundef nonnull %rd_desc, ptr noundef nonnull @iscsi_sw_tcp_recv) #11
  %9 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_user_data, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %cmp.i = icmp eq i8 %12, 8
  br i1 %cmp.i, label %if.end.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.end
  %13 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %14)
  %cmp5.i = icmp eq i8 %14, 7
  br i1 %cmp5.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.iscsi_sw_sk_state_check.exit_crit_edge

lor.lhs.false.i.iscsi_sw_sk_state_check.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsi_sw_sk_state_check.exit

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %session.i = getelementptr inbounds %struct.iscsi_conn, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %session.i, align 8
  %state.i = getelementptr inbounds %struct.iscsi_session, ptr %16, i32 0, i32 54
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %cmp7.not.i = icmp eq i32 %18, 7
  br i1 %cmp7.not.i, label %land.lhs.true.i.iscsi_sw_sk_state_check.exit_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.iscsi_sw_sk_state_check.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsi_sw_sk_state_check.exit

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #11
  %19 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %sk_backlog.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i, label %land.lhs.true9.i.iscsi_sw_sk_state_check.exit_crit_edge

land.lhs.true9.i.iscsi_sw_sk_state_check.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsi_sw_sk_state_check.exit

do.body.i:                                        ; preds = %land.lhs.true9.i
  %21 = load i32, ptr @iscsi_sw_tcp_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not.i = icmp eq i32 %21, 0
  br i1 %tobool10.not.i, label %do.body.i.if.end.i_crit_edge, label %do.end.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %10, align 8
  %dev.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %23, i32 0, i32 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.body.i.if.end.i_crit_edge
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %10, align 8
  %dev14.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %25, i32 0, i32 8
  call void (ptr, ptr, ptr, ...) @iscsi_dbg_trace(ptr noundef nonnull @trace_iscsi_dbg_sw_tcp, ptr noundef %dev14.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #11
  call void @iscsi_conn_failure(ptr noundef %10, i32 noundef 1020) #11
  br label %iscsi_sw_sk_state_check.exit

iscsi_sw_sk_state_check.exit:                     ; preds = %if.end.i, %land.lhs.true9.i.iscsi_sw_sk_state_check.exit_crit_edge, %land.lhs.true.i.iscsi_sw_sk_state_check.exit_crit_edge, %lor.lhs.false.i.iscsi_sw_sk_state_check.exit_crit_edge
  %segment = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %6, i32 0, i32 3, i32 1
  call void @iscsi_tcp_segment_unmap(ptr noundef %segment) #11
  call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %iscsi_sw_sk_state_check.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rd_desc) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_sw_tcp_state_change(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #11
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp.i = icmp eq i8 %3, 8
  br i1 %cmp.i, label %if.end.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %cmp5.i = icmp eq i8 %5, 7
  br i1 %cmp5.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.iscsi_sw_sk_state_check.exit_crit_edge

lor.lhs.false.i.iscsi_sw_sk_state_check.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsi_sw_sk_state_check.exit

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %session.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %session.i, align 8
  %state.i = getelementptr inbounds %struct.iscsi_session, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp7.not.i = icmp eq i32 %9, 7
  br i1 %cmp7.not.i, label %land.lhs.true.i.iscsi_sw_sk_state_check.exit_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.iscsi_sw_sk_state_check.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsi_sw_sk_state_check.exit

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sk_backlog.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %do.body.i, label %land.lhs.true9.i.iscsi_sw_sk_state_check.exit_crit_edge

land.lhs.true9.i.iscsi_sw_sk_state_check.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsi_sw_sk_state_check.exit

do.body.i:                                        ; preds = %land.lhs.true9.i
  %12 = load i32, ptr @iscsi_sw_tcp_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not.i = icmp eq i32 %12, 0
  br i1 %tobool10.not.i, label %do.body.i.if.end.i_crit_edge, label %do.end.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %14, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.body.i.if.end.i_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev14.i = getelementptr inbounds %struct.iscsi_cls_conn, ptr %16, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @iscsi_dbg_trace(ptr noundef nonnull @trace_iscsi_dbg_sw_tcp, ptr noundef %dev14.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #11
  tail call void @iscsi_conn_failure(ptr noundef nonnull %1, i32 noundef 1020) #11
  br label %iscsi_sw_sk_state_check.exit

iscsi_sw_sk_state_check.exit:                     ; preds = %if.end.i, %land.lhs.true9.i.iscsi_sw_sk_state_check.exit_crit_edge, %land.lhs.true.i.iscsi_sw_sk_state_check.exit_crit_edge, %lor.lhs.false.i.iscsi_sw_sk_state_check.exit_crit_edge
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dd_data, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dd_data2, align 4
  %old_state_change3 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %old_state_change3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %old_state_change3, align 4
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #11
  tail call void %22(ptr noundef %sk) #11
  br label %cleanup

cleanup:                                          ; preds = %iscsi_sw_sk_state_check.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_sw_tcp_write_space(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #11
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data2, align 4
  %old_write_space3 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %old_write_space3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %old_write_space3, align 4
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #11
  tail call void %7(ptr noundef %sk) #11
  %8 = load i32, ptr @iscsi_sw_tcp_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %do.end

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.iscsi_cls_conn, ptr %10, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #14
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %dev10 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %12, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @iscsi_dbg_trace(ptr noundef nonnull @trace_iscsi_dbg_sw_tcp, ptr noundef %dev10, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #11
  tail call void @iscsi_conn_queue_work(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_read_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_sw_tcp_recv(ptr nocapture noundef readonly %rd_desc, ptr noundef %skb, i32 noundef %offset, i32 noundef %len) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arg = getelementptr inbounds %struct.read_descriptor_t, ptr %rd_desc, i32 0, i32 2
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #11
  %2 = load i32, ptr @iscsi_sw_tcp_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.iscsi_cls_conn, ptr %4, i32 0, i32 8
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len2, align 4
  %sub = sub i32 %6, %offset
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %sub) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %dev4 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %8, i32 0, i32 8
  %len5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len5, align 4
  %sub6 = sub i32 %10, %offset
  tail call void (ptr, ptr, ptr, ...) @iscsi_dbg_trace(ptr noundef nonnull @trace_iscsi_dbg_sw_tcp, ptr noundef %dev4, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %sub6) #11
  br label %do.body9

do.body9:                                         ; preds = %land.rhs.do.body9_crit_edge, %if.end
  %offset.addr.0 = phi i32 [ %offset, %if.end ], [ %add, %land.rhs.do.body9_crit_edge ]
  %total_consumed.0 = phi i32 [ 0, %if.end ], [ %add10, %land.rhs.do.body9_crit_edge ]
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %status, align 4
  %call = call i32 @iscsi_tcp_recv_skb(ptr noundef %1, ptr noundef %skb, i32 noundef %offset.addr.0, i1 noundef zeroext false, ptr noundef nonnull %status) #11
  %add = add i32 %call, %offset.addr.0
  %add10 = add i32 %call, %total_consumed.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body9.do.body14_crit_edge, label %land.rhs

do.body9.do.body14_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body14

land.rhs:                                         ; preds = %do.body9
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %cmp12.not = icmp eq i32 %13, 1
  br i1 %cmp12.not, label %land.rhs.do.body14_crit_edge, label %land.rhs.do.body9_crit_edge

land.rhs.do.body9_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

land.rhs.do.body14_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body14

do.body14:                                        ; preds = %land.rhs.do.body14_crit_edge, %do.body9.do.body14_crit_edge
  %14 = load i32, ptr @iscsi_sw_tcp_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %do.body14.if.end24_crit_edge, label %do.end19

do.body14.if.end24_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev21 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len5, align 4
  %sub23 = sub i32 %18, %add
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev21, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14, i32 noundef %sub23, i32 noundef %20) #14
  br label %if.end24

if.end24:                                         ; preds = %do.end19, %do.body14.if.end24_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %dev26 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len5, align 4
  %sub28 = sub i32 %24, %add
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @iscsi_dbg_trace(ptr noundef nonnull @trace_iscsi_dbg_sw_tcp, ptr noundef %dev26, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14, i32 noundef %sub28, i32 noundef %26) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #11
  ret i32 %add10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_tcp_segment_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_dbg_trace(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_iscsi_dbg_sw_tcp(ptr noundef %dev, ptr noundef %vaf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iscsi_dbg_sw_tcp, i32 0, i32 1), ptr blockaddress(@trace_iscsi_dbg_sw_tcp, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !152

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !134) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !144

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !134) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !153
  %call42 = tail call i32 @__traceiter_iscsi_dbg_sw_tcp(ptr noundef null, ptr noundef %dev, ptr noundef %vaf) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !154
  %13 = tail call i32 @llvm.read_register.i32(metadata !134) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !134) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !144

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !134) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iscsi_dbg_sw_tcp, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iscsi_dbg_sw_tcp, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iscsi_dbg_sw_tcp.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_iscsi_dbg_sw_tcp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 84, ptr noundef nonnull @.str.20) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !134) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_tcp_recv_skb(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iscsi_dbg_sw_tcp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_failure(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_queue_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_suspend_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iscsi_sw_tcp_release_conn(ptr nocapture noundef readonly %conn) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %session1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 2
  %6 = ptrtoint ptr %session1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %session1, align 8
  %call = tail call i32 @kernel_sock_shutdown(ptr noundef nonnull %5, i32 noundef 2) #11
  %sk = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk, align 16
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !147
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !145

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %12 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dd_data, align 4
  %dd_data1.i = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dd_data1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dd_data1.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %sk2.i = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk2.i, align 16
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #11
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 72
  %20 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %sk_user_data.i, align 4
  %old_data_ready.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %old_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %old_data_ready.i, align 4
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 77
  %23 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %sk_data_ready.i, align 8
  %old_state_change.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %15, i32 0, i32 3
  %24 = ptrtoint ptr %old_state_change.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %old_state_change.i, align 4
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 76
  %26 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %sk_state_change.i, align 4
  %old_write_space.i = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %15, i32 0, i32 4
  %27 = ptrtoint ptr %old_write_space.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %old_write_space.i, align 4
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 78
  %29 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %sk_write_space.i, align 4
  %sk_no_check_tx.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 43
  %30 = ptrtoint ptr %sk_no_check_tx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %sk_no_check_tx.i, align 8
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %sk_no_check_tx.i, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #11
  %31 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk, align 16
  %skc_refcnt.i18 = getelementptr inbounds %struct.sock_common, ptr %32, i32 0, i32 19
  %call.i.i.i.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i18, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i18, i32 1, i32 3, i32 1) #11
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i18, ptr %skc_refcnt.i18, i32 1, ptr elementtype(i32) %skc_refcnt.i18) #11, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i20 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i20, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i18, i32 noundef 3) #11
  br label %sock_put.exit

if.then.i:                                        ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  tail call void @sk_free(ptr noundef %32) #11
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %frwd_lock = getelementptr inbounds %struct.iscsi_session, ptr %7, i32 0, i32 52
  tail call void @_raw_spin_lock_bh(ptr noundef %frwd_lock) #11
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %3, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %frwd_lock) #11
  %file = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 3
  %35 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %file, align 4
  tail call void @fput(ptr noundef %36) #11
  br label %cleanup

cleanup:                                          ; preds = %sock_put.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_stop(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_set_param(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_tcp_set_max_r2t(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getsockname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getpeername(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_get_addr_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_get_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_host_get_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_tcp_conn_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_tcp_segment_done(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_tcp_dgst_header(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_segment_init_linear(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_sw_tcp_send_hdr_done(ptr nocapture noundef readonly %tcp_conn, ptr nocapture noundef readnone %segment) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_tcp_conn, ptr %tcp_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %segment1 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %1, i32 0, i32 1, i32 1
  %data_segment = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %1, i32 0, i32 1, i32 2
  %2 = call ptr @memcpy(ptr %segment1, ptr %data_segment, i32 60)
  %3 = load i32, ptr @iscsi_sw_tcp_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %tcp_conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tcp_conn, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.iscsi_cls_conn, ptr %7, i32 0, i32 8
  %size = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %1, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %total_size = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %1, i32 0, i32 1, i32 1, i32 3
  %10 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_size, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %9, i32 noundef %11) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %tcp_conn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tcp_conn, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev10 = getelementptr inbounds %struct.iscsi_cls_conn, ptr %15, i32 0, i32 8
  %size13 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %1, i32 0, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %size13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size13, align 4
  %total_size16 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, ptr %1, i32 0, i32 1, i32 1, i32 3
  %18 = ptrtoint ptr %total_size16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_size16, align 4
  tail call void (ptr, ptr, ptr, ...) @iscsi_dbg_trace(ptr noundef nonnull @trace_iscsi_dbg_sw_tcp, ptr noundef %dev10, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %17, i32 noundef %19) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_segment_seek_sg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_register_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !19, !21, !22, !24, !25, !27, !29, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133}
!llvm.named.register.sp = !{!134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__UNIQUE_ID_author635, !1, !"__UNIQUE_ID_author635", i1 false, i1 false}
!1 = !{!"../drivers/scsi/iscsi_tcp.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_description636, !3, !"__UNIQUE_ID_description636", i1 false, i1 false}
!3 = !{!"../drivers/scsi/iscsi_tcp.c", i32 45, i32 1}
!4 = !{ptr @__UNIQUE_ID_file637, !5, !"__UNIQUE_ID_file637", i1 false, i1 false}
!5 = !{!"../drivers/scsi/iscsi_tcp.c", i32 46, i32 1}
!6 = !{ptr @__UNIQUE_ID_license638, !5, !"__UNIQUE_ID_license638", i1 false, i1 false}
!7 = !{ptr @__param_max_lun, !8, !"__param_max_lun", i1 false, i1 false}
!8 = !{!"../drivers/scsi/iscsi_tcp.c", i32 53, i32 1}
!9 = !{ptr @__UNIQUE_ID_max_luntype639, !8, !"__UNIQUE_ID_max_luntype639", i1 false, i1 false}
!10 = !{ptr @__param_debug_iscsi_tcp, !11, !"__param_debug_iscsi_tcp", i1 false, i1 false}
!11 = !{!"../drivers/scsi/iscsi_tcp.c", i32 56, i32 1}
!12 = !{ptr @__UNIQUE_ID_debug_iscsi_tcptype640, !11, !"__UNIQUE_ID_debug_iscsi_tcptype640", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_debug_iscsi_tcp641, !14, !"__UNIQUE_ID_debug_iscsi_tcp641", i1 false, i1 false}
!14 = !{!"../drivers/scsi/iscsi_tcp.c", i32 58, i32 1}
!15 = !{ptr @__initcall__kmod_iscsi_tcp__642_1069_iscsi_sw_tcp_init6, !16, !"__initcall__kmod_iscsi_tcp__642_1069_iscsi_sw_tcp_init6", i1 false, i1 false}
!16 = !{!"../drivers/scsi/iscsi_tcp.c", i32 1069, i32 1}
!17 = !{ptr @__exitcall_iscsi_sw_tcp_exit, !18, !"__exitcall_iscsi_sw_tcp_exit", i1 false, i1 false}
!18 = !{!"../drivers/scsi/iscsi_tcp.c", i32 1070, i32 1}
!19 = !{ptr @iscsi_sw_tcp_dbg, !20, !"iscsi_sw_tcp_dbg", i1 false, i1 false}
!20 = !{!"../drivers/scsi/iscsi_tcp.c", i32 55, i32 12}
!21 = !{ptr @__param_str_max_lun, !8, !"__param_str_max_lun", i1 false, i1 false}
!22 = !{ptr @iscsi_max_lun, !23, !"iscsi_max_lun", i1 false, i1 false}
!23 = !{!"../drivers/scsi/iscsi_tcp.c", i32 52, i32 21}
!24 = !{ptr @__param_str_debug_iscsi_tcp, !11, !"__param_str_debug_iscsi_tcp", i1 false, i1 false}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/iscsi_tcp.c", i32 1014, i32 12}
!27 = !{ptr @iscsi_sw_tcp_transport, !28, !"iscsi_sw_tcp_transport", i1 false, i1 false}
!28 = !{!"../drivers/scsi/iscsi_tcp.c", i32 1012, i32 31}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/iscsi_tcp.c", i32 860, i32 3}
!31 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @iscsi_sw_tcp_session_create._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @iscsi_sw_tcp_session_create._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/iscsi_tcp.c", i32 993, i32 12}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/iscsi_tcp.c", i32 1007, i32 16}
!39 = !{ptr @iscsi_sw_tcp_sht, !40, !"iscsi_sw_tcp_sht", i1 false, i1 false}
!40 = !{!"../drivers/scsi/iscsi_tcp.c", i32 991, i32 34}
!41 = !{ptr @iscsi_sw_tcp_scsi_transport, !42, !"iscsi_sw_tcp_scsi_transport", i1 false, i1 false}
!42 = !{!"../drivers/scsi/iscsi_tcp.c", i32 48, i32 40}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/scsi/iscsi_tcp.c", i32 912, i32 6}
!45 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/iscsi_tcp.c", i32 561, i32 27}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/iscsi_tcp.c", i32 584, i32 2}
!49 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @iscsi_sw_tcp_conn_create._entry, !48, !"_entry", i1 false, i1 false}
!53 = !{ptr @iscsi_sw_tcp_conn_create._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/iscsi_tcp.c", i32 678, i32 3}
!56 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @iscsi_sw_tcp_conn_bind._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @iscsi_sw_tcp_conn_bind._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/iscsi_tcp.c", i32 87, i32 2}
!61 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @iscsi_sw_tcp_recv._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @iscsi_sw_tcp_recv._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/iscsi_tcp.c", i32 96, i32 2}
!67 = !{ptr @iscsi_sw_tcp_recv._entry.16, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @iscsi_sw_tcp_recv._entry_ptr.18, !66, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/trace/events/iscsi.h", i32 80, i32 1}
!71 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!73 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!76 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/iscsi_tcp.c", i32 118, i32 3}
!79 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @iscsi_sw_sk_state_check._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @iscsi_sw_sk_state_check._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/iscsi_tcp.c", i32 207, i32 2}
!84 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @iscsi_sw_tcp_write_space._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @iscsi_sw_tcp_write_space._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/iscsi_tcp.c", i32 839, i32 32}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/iscsi_tcp.c", i32 841, i32 32}
!91 = !{ptr @.str.28, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/iscsi_tcp.c", i32 843, i32 32}
!93 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/iscsi_tcp.c", i32 377, i32 3}
!95 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @iscsi_sw_tcp_pdu_xmit._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @iscsi_sw_tcp_pdu_xmit._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/iscsi_tcp.c", i32 342, i32 2}
!100 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @iscsi_sw_tcp_xmit._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @iscsi_sw_tcp_xmit._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/iscsi_tcp.c", i32 350, i32 2}
!105 = !{ptr @iscsi_sw_tcp_xmit._entry.33, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @iscsi_sw_tcp_xmit._entry_ptr.35, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/iscsi_tcp.c", i32 422, i32 2}
!109 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @iscsi_sw_tcp_send_hdr_prep._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @iscsi_sw_tcp_send_hdr_prep._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.40, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/iscsi_tcp.c", i32 409, i32 2}
!116 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @iscsi_sw_tcp_send_hdr_done._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @iscsi_sw_tcp_send_hdr_done._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/iscsi_tcp.c", i32 491, i32 2}
!121 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @iscsi_sw_tcp_send_linear_data_prep._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @iscsi_sw_tcp_send_linear_data_prep._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/iscsi_tcp.c", i32 465, i32 2}
!126 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @iscsi_sw_tcp_send_data_prep._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @iscsi_sw_tcp_send_data_prep._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/iscsi_tcp.c", i32 1051, i32 3}
!131 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @iscsi_sw_tcp_init._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @iscsi_sw_tcp_init._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{!"sp"}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{!"branch_weights", i32 1, i32 2000}
!146 = !{!"auto-init"}
!147 = !{i64 2148209779, i64 2148209811, i64 2148209840, i64 2148209874, i64 2148209905, i64 2148209928}
!148 = !{i64 2148297780}
!149 = !{i64 2148212244, i64 2148212276, i64 2148212305, i64 2148212339, i64 2148212370, i64 2148212393}
!150 = !{i64 2148923123}
!151 = !{i64 2154679680, i64 2154680172, i64 2154679717, i64 2154679773, i64 2154679807, i64 2154679831, i64 2154679872, i64 2154679893, i64 2154679921, i64 2154679955}
!152 = !{i64 2148781388, i64 2148781393, i64 2148781406, i64 2148781450, i64 2148781484, i64 2148781505}
!153 = !{i64 2159264023}
!154 = !{i64 2159264234}
!155 = !{i64 2150015795}
!156 = !{i64 2150016831}
