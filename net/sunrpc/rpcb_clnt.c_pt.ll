; ModuleID = '/llk/IR_all_yes/net/sunrpc/rpcb_clnt.c_pt.bc'
source_filename = "../net/sunrpc/rpcb_clnt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rpcb_getport_async\22, \22a\22\09"
module asm "\09.weak\09__crc_rpcb_getport_async\09\09\09\09"
module asm "\09.long\09__crc_rpcb_getport_async\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcb_getport_async:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcb_getport_async\22\09\09\09\09\09"
module asm "__kstrtabns_rpcb_getport_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%union.anon.63 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.rpcb_info = type { i32, ptr }
%struct.sunrpc_net = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.spinlock, i32, i8, %struct.mutex, ptr, i32, i32, %struct.atomic_t, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.rpc_create_args = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rpcbind_args = type { ptr, i32, i32, i32, i16, ptr, ptr, ptr, i32 }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.__kernel_sockaddr_storage = type { %union.anon.150 }
%union.anon.150 = type { ptr, [124 x i8] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.148, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.148 = type { %struct.work_struct }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.155, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.155 = type { %struct.work_struct }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.154, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.154 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.rpc_task_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sunrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@rpcb_create_local.rpcb_create_local_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rpcb_create_local.rpcb_create_local_mutex, i64 52), ptr getelementptr (i8, ptr @rpcb_create_local.rpcb_create_local_mutex, i64 52) }, ptr @rpcb_create_local.rpcb_create_local_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rpcb_create_local_mutex.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rpcb_create_local_mutex\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__kstrtab_rpcb_getport_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcb_getport_async = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcb_getport_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcb_getport_async to i32), ptr @__kstrtab_rpcb_getport_async, ptr @__kstrtabns_rpcb_getport_async }, section "___ksymtab_gpl+rpcb_getport_async", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rpcb_create_local_unix.rpcb_localaddr_rpcbind = internal constant { %struct.sockaddr_un, [50 x i8] } { %struct.sockaddr_un { i16 1, [108 x i8] c"/var/run/rpcbind.sock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"localhost\00", [22 x i8] zeroinitializer }, align 32
@rpcb_program = internal constant { %struct.rpc_program, [40 x i8] } { %struct.rpc_program { ptr @.str.7, i32 100000, i32 5, ptr @rpcb_version, ptr @rpcb_stats, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rpcbind\00", [24 x i8] zeroinitializer }, align 32
@rpcb_version = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr null, ptr @rpcb_version2, ptr @rpcb_version3, ptr @rpcb_version4], [44 x i8] zeroinitializer }, align 32
@rpcb_stats = internal global { %struct.rpc_stat, [56 x i8] } zeroinitializer, align 32
@rpcb_version2 = internal constant { %struct.rpc_version, [16 x i8] } { %struct.rpc_version { i32 2, i32 4, ptr @rpcb_procedures2, ptr @rpcb_version2_counts }, [16 x i8] zeroinitializer }, align 32
@rpcb_version3 = internal constant { %struct.rpc_version, [16 x i8] } { %struct.rpc_version { i32 3, i32 4, ptr @rpcb_procedures3, ptr @rpcb_version3_counts }, [16 x i8] zeroinitializer }, align 32
@rpcb_version4 = internal constant { %struct.rpc_version, [16 x i8] } { %struct.rpc_version { i32 4, i32 4, ptr @rpcb_procedures4, ptr @rpcb_version4_counts }, [16 x i8] zeroinitializer }, align 32
@rpcb_version2_counts = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@rpcb_procedures3 = internal constant { [4 x %struct.rpc_procinfo], [32 x i8] } { [4 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @rpcb_enc_getaddr, ptr @rpcb_dec_set, i32 23, i32 1, i32 0, i32 1, ptr @.str.8 }, %struct.rpc_procinfo { i32 2, ptr @rpcb_enc_getaddr, ptr @rpcb_dec_set, i32 23, i32 1, i32 0, i32 2, ptr @.str.9 }, %struct.rpc_procinfo { i32 3, ptr @rpcb_enc_getaddr, ptr @rpcb_dec_getaddr, i32 23, i32 16, i32 0, i32 3, ptr @.str.10 }], [32 x i8] zeroinitializer }, align 32
@rpcb_version3_counts = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SET\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UNSET\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GETADDR\00", [24 x i8] zeroinitializer }, align 32
@encode_rpcb_string.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/sunrpc/rpcb_clnt.c\00", [41 x i8] zeroinitializer }, align 32
@rpcb_procedures4 = internal constant { [4 x %struct.rpc_procinfo], [32 x i8] } { [4 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @rpcb_enc_getaddr, ptr @rpcb_dec_set, i32 23, i32 1, i32 0, i32 1, ptr @.str.8 }, %struct.rpc_procinfo { i32 2, ptr @rpcb_enc_getaddr, ptr @rpcb_dec_set, i32 23, i32 1, i32 0, i32 2, ptr @.str.9 }, %struct.rpc_procinfo { i32 3, ptr @rpcb_enc_getaddr, ptr @rpcb_dec_getaddr, i32 23, i32 16, i32 0, i32 3, ptr @.str.10 }], [32 x i8] zeroinitializer }, align 32
@rpcb_version4_counts = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@rpcb_create_local_net.rpcb_inaddr_loopback = internal constant { %struct.sockaddr_in, [16 x i8] } { %struct.sockaddr_in { i16 2, i16 111, %struct.in_addr { i32 2130706433 }, [8 x i8] zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@__tracepoint_pmap_register = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/sunrpc.h\00", [34 x i8] zeroinitializer }, align 32
@trace_pmap_register.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_rpcb_unregister = external dso_local global %struct.tracepoint, align 4
@trace_rpcb_unregister.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcb_register = external dso_local global %struct.tracepoint, align 4
@trace_rpcb_register.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_rpcb_getport = external dso_local global %struct.tracepoint, align 4
@trace_rpcb_getport.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rpcb_getport_ops = internal constant { %struct.rpc_call_ops, [16 x i8] } { %struct.rpc_call_ops { ptr null, ptr @rpcb_getport_done, ptr null, ptr @rpcb_map_release }, [16 x i8] zeroinitializer }, align 32
@__tracepoint_rpcb_setport = external dso_local global %struct.tracepoint, align 4
@trace_rpcb_setport.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rpcb_procedures2 = internal constant { [4 x %struct.rpc_procinfo], [32 x i8] } { [4 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @rpcb_enc_mapping, ptr @rpcb_dec_set, i32 4, i32 1, i32 0, i32 1, ptr @.str.8 }, %struct.rpc_procinfo { i32 2, ptr @rpcb_enc_mapping, ptr @rpcb_dec_set, i32 4, i32 1, i32 0, i32 2, ptr @.str.9 }, %struct.rpc_procinfo { i32 3, ptr @rpcb_enc_mapping, ptr @rpcb_dec_getport, i32 4, i32 1, i32 0, i32 3, ptr @.str.18 }], [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GETPORT\00", [24 x i8] zeroinitializer }, align 32
@rpcb_next_version = internal constant { [2 x %struct.rpcb_info], [16 x i8] } { [2 x %struct.rpcb_info] [%struct.rpcb_info { i32 2, ptr getelementptr (i8, ptr @rpcb_procedures2, i64 96) }, %struct.rpcb_info zeroinitializer], [16 x i8] zeroinitializer }, align 32
@rpcb_next_version6 = internal constant { [3 x %struct.rpcb_info], [40 x i8] } { [3 x %struct.rpcb_info] [%struct.rpcb_info { i32 4, ptr getelementptr (i8, ptr @rpcb_procedures4, i64 96) }, %struct.rpcb_info { i32 3, ptr getelementptr (i8, ptr @rpcb_procedures3, i64 96) }, %struct.rpcb_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"rpcb_create_local_mutex\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 325, i32 9 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 572, i32 14 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 738, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 45, i32 7 }
@___asan_gen_.46 = private unnamed_addr constant [23 x i8] c"rpcb_localaddr_rpcbind\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 225, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 234, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"rpcb_program\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1088, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1089, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"rpcb_version\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1078, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"rpcb_stats\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1086, i32 24 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"rpcb_version2\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1055, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"rpcb_version3\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1063, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"rpcb_version4\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1071, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"rpcb_version2_counts\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1054, i32 21 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"rpcb_procedures3\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 964, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"rpcb_version3_counts\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1062, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 973, i32 14 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 983, i32 14 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 993, i32 14 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 862, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"rpcb_procedures4\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 997, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"rpcb_version4_counts\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1070, i32 21 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"rpcb_inaddr_loopback\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 278, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [33 x i8] c"../include/trace/events/sunrpc.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1392, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 108, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 695, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 723, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"rpcb_getport_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 142, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"rpcb_procedures2\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 931, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 960, i32 14 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"rpcb_next_version\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1030, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant [19 x i8] c"rpcb_next_version6\00", align 1
@___asan_gen_.131 = private constant [26 x i8] c"../net/sunrpc/rpcb_clnt.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1040, i32 31 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__ksymtab_rpcb_getport_async, ptr @rpcb_create_local.rpcb_create_local_mutex, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rpcb_create_local_unix.rpcb_localaddr_rpcbind, ptr @.str.6, ptr @rpcb_program, ptr @.str.7, ptr @rpcb_version, ptr @rpcb_stats, ptr @rpcb_version2, ptr @rpcb_version3, ptr @rpcb_version4, ptr @rpcb_version2_counts, ptr @rpcb_procedures3, ptr @rpcb_version3_counts, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @rpcb_procedures4, ptr @rpcb_version4_counts, ptr @rpcb_create_local_net.rpcb_inaddr_loopback, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @rpcb_getport_ops, ptr @rpcb_procedures2, ptr @.str.18, ptr @rpcb_next_version, ptr @rpcb_next_version6], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_create_local.rpcb_create_local_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_create_local_unix.rpcb_localaddr_rpcbind to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_program to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_stats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_version2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_version3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_version4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_version2_counts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_procedures3 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_version3_counts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_procedures4 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_version4_counts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_create_local_net.rpcb_inaddr_loopback to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_getport_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_procedures2 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_next_version to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcb_next_version6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcb_put_local(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %0 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %rpcb_local_clnt = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %rpcb_local_clnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rpcb_local_clnt, align 4
  %rpcb_local_clnt4 = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 11
  %3 = ptrtoint ptr %rpcb_local_clnt4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rpcb_local_clnt4, align 4
  %rpcb_clnt_lock = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rpcb_clnt_lock) #8
  %rpcb_users = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %rpcb_users to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rpcb_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end17.critedge, label %if.then

if.then:                                          ; preds = %entry
  %dec = add i32 %6, -1
  %7 = ptrtoint ptr %rpcb_users to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dec, ptr %rpcb_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then10, label %if.end.thread

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %rpcb_clnt_lock) #8
  br label %if.end17

if.then10:                                        ; preds = %if.then
  %8 = ptrtoint ptr %rpcb_local_clnt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rpcb_local_clnt, align 4
  %9 = ptrtoint ptr %rpcb_local_clnt4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rpcb_local_clnt4, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rpcb_clnt_lock) #8
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %if.then10.if.end13_crit_edge, label %if.then12

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rpc_shutdown_client(ptr noundef nonnull %4) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then10.if.end13_crit_edge
  %tobool14.not = icmp eq ptr %2, null
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rpc_shutdown_client(ptr noundef nonnull %2) #8
  br label %if.end17

if.end17.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %rpcb_clnt_lock) #8
  br label %if.end17

if.end17:                                         ; preds = %if.end17.critedge, %if.then15, %if.end13.if.end17_crit_edge, %if.end.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.5) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !104
  %8 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpcb_create_local(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  %args.i21 = alloca %struct.rpc_create_args, align 4
  %args.i = alloca %struct.rpc_create_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %0 = load i32, ptr @sunrpc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #8
  %rpcb_clnt_lock.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rpcb_clnt_lock.i) #8
  %rpcb_users.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i, i32 0, i32 13
  %1 = ptrtoint ptr %rpcb_users.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rpcb_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %rpcb_get_local.exit.thread, label %rpcb_get_local.exit

rpcb_get_local.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %rpcb_clnt_lock.i) #8
  br label %if.end

rpcb_get_local.exit:                              ; preds = %entry
  %inc.i = add i32 %2, 1
  %3 = ptrtoint ptr %rpcb_users.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %inc.i, ptr %rpcb_users.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rpcb_clnt_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not = icmp eq i32 %inc.i, 0
  br i1 %tobool.not, label %rpcb_get_local.exit.if.end_crit_edge, label %rpcb_get_local.exit.cleanup_crit_edge

rpcb_get_local.exit.cleanup_crit_edge:            ; preds = %rpcb_get_local.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

rpcb_get_local.exit.if.end_crit_edge:             ; preds = %rpcb_get_local.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %rpcb_get_local.exit.if.end_crit_edge, %rpcb_get_local.exit.thread
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpcb_create_local.rpcb_create_local_mutex, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %4 = load i32, ptr @sunrpc_net_id, align 4
  %call.i13 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %4) #8
  %rpcb_clnt_lock.i14 = getelementptr inbounds %struct.sunrpc_net, ptr %call.i13, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rpcb_clnt_lock.i14) #8
  %rpcb_users.i15 = getelementptr inbounds %struct.sunrpc_net, ptr %call.i13, i32 0, i32 13
  %5 = ptrtoint ptr %rpcb_users.i15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rpcb_users.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i16 = icmp eq i32 %6, 0
  br i1 %tobool.not.i16, label %rpcb_get_local.exit19.thread, label %rpcb_get_local.exit19

rpcb_get_local.exit19.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %rpcb_clnt_lock.i14) #8
  br label %if.end4

rpcb_get_local.exit19:                            ; preds = %if.end
  %inc.i17 = add i32 %6, 1
  %7 = ptrtoint ptr %rpcb_users.i15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc.i17, ptr %rpcb_users.i15, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rpcb_clnt_lock.i14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i17)
  %tobool2.not = icmp eq i32 %inc.i17, 0
  br i1 %tobool2.not, label %rpcb_get_local.exit19.if.end4_crit_edge, label %rpcb_get_local.exit19.out_crit_edge

rpcb_get_local.exit19.out_crit_edge:              ; preds = %rpcb_get_local.exit19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

rpcb_get_local.exit19.if.end4_crit_edge:          ; preds = %rpcb_get_local.exit19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %rpcb_get_local.exit19.if.end4_crit_edge, %rpcb_get_local.exit19.thread
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %8 = getelementptr inbounds i8, ptr %args.i, i32 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 -1, ptr %8, align 4, !annotation !105
  %10 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %net, ptr %args.i, align 4
  %protocol.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 1
  %11 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 257, ptr %protocol.i, align 4
  %address.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 2
  %12 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rpcb_create_local_unix.rpcb_localaddr_rpcbind, ptr %address.i, align 4
  %addrsize.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 3
  %13 = ptrtoint ptr %addrsize.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 110, ptr %addrsize.i, align 4
  %saddress.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 4
  %14 = ptrtoint ptr %saddress.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %saddress.i, align 4
  %timeout.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 5
  %15 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %timeout.i, align 4
  %servername.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 6
  %16 = ptrtoint ptr %servername.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.6, ptr %servername.i, align 4
  %nodename.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 7
  %17 = ptrtoint ptr %nodename.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %nodename.i, align 4
  %program.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 8
  %18 = ptrtoint ptr %program.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rpcb_program, ptr %program.i, align 4
  %prognumber.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 9
  %19 = ptrtoint ptr %prognumber.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %prognumber.i, align 4
  %version.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 10
  %20 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %version.i, align 4
  %authflavor.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 11
  %21 = ptrtoint ptr %authflavor.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %authflavor.i, align 4
  %nconnect.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 12
  %22 = ptrtoint ptr %nconnect.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %nconnect.i, align 4
  %flags.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 13
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %flags.i, align 4
  %client_name.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 14
  %24 = ptrtoint ptr %client_name.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %client_name.i, align 4
  %bc_xprt.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 15
  %25 = ptrtoint ptr %bc_xprt.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %bc_xprt.i, align 4
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i, align 8
  %cred2.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 99
  %30 = ptrtoint ptr %cred2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cred2.i, align 16
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %8, align 4
  %max_connect.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 17
  %33 = ptrtoint ptr %max_connect.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %max_connect.i, align 4
  %call3.i = call ptr @rpc_create(ptr noundef nonnull %args.i) #8
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %rpcb_create_local_unix.exit, label %rpcb_create_local_unix.exit.thread

rpcb_create_local_unix.exit.thread:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call ptr @rpc_bind_new_program(ptr noundef %call3.i, ptr noundef nonnull @rpcb_program, i32 noundef 4) #8
  %cmp.i15.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i15.i, ptr null, ptr %call6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %34 = load i32, ptr @sunrpc_net_id, align 4
  %call.i.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %34) #8
  %rpcb_local_clnt.i.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i.i, i32 0, i32 10
  %35 = ptrtoint ptr %rpcb_local_clnt.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call3.i, ptr %rpcb_local_clnt.i.i, align 4
  %rpcb_local_clnt4.i.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i.i, i32 0, i32 11
  %36 = ptrtoint ptr %rpcb_local_clnt4.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %spec.select.i, ptr %rpcb_local_clnt4.i.i, align 4
  %rpcb_is_af_local.i.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i.i, i32 0, i32 14
  %37 = ptrtoint ptr %rpcb_is_af_local.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i.i = load i8, ptr %rpcb_is_af_local.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %rpcb_is_af_local.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !106
  %rpcb_users.i.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i.i, i32 0, i32 13
  %38 = ptrtoint ptr %rpcb_users.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %rpcb_users.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %out

rpcb_create_local_unix.exit:                      ; preds = %if.end4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i21) #8
  %39 = getelementptr inbounds i8, ptr %args.i21, i32 64
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 -1, ptr %39, align 4, !annotation !105
  %41 = ptrtoint ptr %args.i21 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %net, ptr %args.i21, align 4
  %protocol.i22 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 1
  %42 = ptrtoint ptr %protocol.i22 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 6, ptr %protocol.i22, align 4
  %address.i23 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 2
  %43 = ptrtoint ptr %address.i23 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @rpcb_create_local_net.rpcb_inaddr_loopback, ptr %address.i23, align 4
  %addrsize.i24 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 3
  %44 = ptrtoint ptr %addrsize.i24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %addrsize.i24, align 4
  %saddress.i25 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 4
  %45 = ptrtoint ptr %saddress.i25 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %saddress.i25, align 4
  %timeout.i26 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 5
  %46 = ptrtoint ptr %timeout.i26 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %timeout.i26, align 4
  %servername.i27 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 6
  %47 = ptrtoint ptr %servername.i27 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.6, ptr %servername.i27, align 4
  %nodename.i28 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 7
  %48 = ptrtoint ptr %nodename.i28 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %nodename.i28, align 4
  %program.i29 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 8
  %49 = ptrtoint ptr %program.i29 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @rpcb_program, ptr %program.i29, align 4
  %prognumber.i30 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 9
  %50 = ptrtoint ptr %prognumber.i30 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %prognumber.i30, align 4
  %version.i31 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 10
  %51 = ptrtoint ptr %version.i31 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %version.i31, align 4
  %authflavor.i32 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 11
  %52 = ptrtoint ptr %authflavor.i32 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %authflavor.i32, align 4
  %nconnect.i33 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 12
  %53 = ptrtoint ptr %nconnect.i33 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %nconnect.i33, align 4
  %flags.i34 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 13
  %54 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16, ptr %flags.i34, align 4
  %client_name.i35 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 14
  %55 = ptrtoint ptr %client_name.i35 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %client_name.i35, align 4
  %bc_xprt.i36 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 15
  %56 = ptrtoint ptr %bc_xprt.i36 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %bc_xprt.i36, align 4
  %57 = call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i38 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i38 to ptr
  %task.i39 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task.i39 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task.i39, align 8
  %cred2.i40 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 99
  %61 = ptrtoint ptr %cred2.i40 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cred2.i40, align 16
  %63 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %39, align 4
  %max_connect.i41 = getelementptr inbounds %struct.rpc_create_args, ptr %args.i21, i32 0, i32 17
  %64 = ptrtoint ptr %max_connect.i41 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %max_connect.i41, align 4
  %call3.i42 = call ptr @rpc_create(ptr noundef nonnull %args.i21) #8
  %cmp.i.i43 = icmp ugt ptr %call3.i42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i43, label %if.then.i44, label %if.end.i54

if.then.i44:                                      ; preds = %rpcb_create_local_unix.exit
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %call3.i42 to i32
  br label %rpcb_create_local_net.exit

if.end.i54:                                       ; preds = %rpcb_create_local_unix.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i45 = call ptr @rpc_bind_new_program(ptr noundef %call3.i42, ptr noundef nonnull @rpcb_program, i32 noundef 4) #8
  %cmp.i15.i46 = icmp ugt ptr %call6.i45, inttoptr (i32 -4096 to ptr)
  %spec.select.i47 = select i1 %cmp.i15.i46, ptr null, ptr %call6.i45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %66 = load i32, ptr @sunrpc_net_id, align 4
  %call.i.i48 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %66) #8
  %rpcb_local_clnt.i.i49 = getelementptr inbounds %struct.sunrpc_net, ptr %call.i.i48, i32 0, i32 10
  %67 = ptrtoint ptr %rpcb_local_clnt.i.i49 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call3.i42, ptr %rpcb_local_clnt.i.i49, align 4
  %rpcb_local_clnt4.i.i50 = getelementptr inbounds %struct.sunrpc_net, ptr %call.i.i48, i32 0, i32 11
  %68 = ptrtoint ptr %rpcb_local_clnt4.i.i50 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %spec.select.i47, ptr %rpcb_local_clnt4.i.i50, align 4
  %rpcb_is_af_local.i.i51 = getelementptr inbounds %struct.sunrpc_net, ptr %call.i.i48, i32 0, i32 14
  %69 = ptrtoint ptr %rpcb_is_af_local.i.i51 to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load.i.i52 = load i8, ptr %rpcb_is_af_local.i.i51, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i52, 127
  store i8 %bf.clear.i.i, ptr %rpcb_is_af_local.i.i51, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !106
  %rpcb_users.i.i53 = getelementptr inbounds %struct.sunrpc_net, ptr %call.i.i48, i32 0, i32 13
  %70 = ptrtoint ptr %rpcb_users.i.i53 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %rpcb_users.i.i53, align 4
  br label %rpcb_create_local_net.exit

rpcb_create_local_net.exit:                       ; preds = %if.end.i54, %if.then.i44
  %result.0.i55 = phi i32 [ %65, %if.then.i44 ], [ 0, %if.end.i54 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i21) #8
  br label %out

out:                                              ; preds = %rpcb_create_local_net.exit, %rpcb_create_local_unix.exit.thread, %rpcb_get_local.exit19.out_crit_edge
  %result.0 = phi i32 [ 0, %rpcb_get_local.exit19.out_crit_edge ], [ %result.0.i55, %rpcb_create_local_net.exit ], [ 0, %rpcb_create_local_unix.exit.thread ]
  call void @mutex_unlock(ptr noundef nonnull @rpcb_create_local.rpcb_create_local_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %rpcb_get_local.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %out ], [ 0, %rpcb_get_local.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpcb_register(ptr noundef %net, i32 noundef %prog, i32 noundef %vers, i32 noundef %prot, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  %result.i = alloca i32, align 4
  %map = alloca %struct.rpcbind_args, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %map) #8
  %0 = getelementptr inbounds i8, ptr %map, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !105
  %2 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %map, align 4
  %r_prog = getelementptr inbounds %struct.rpcbind_args, ptr %map, i32 0, i32 1
  %3 = ptrtoint ptr %r_prog to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %prog, ptr %r_prog, align 4
  %r_vers = getelementptr inbounds %struct.rpcbind_args, ptr %map, i32 0, i32 2
  %4 = ptrtoint ptr %r_vers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vers, ptr %r_vers, align 4
  %r_prot = getelementptr inbounds %struct.rpcbind_args, ptr %map, i32 0, i32 3
  %5 = ptrtoint ptr %r_prot to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %prot, ptr %r_prot, align 4
  %r_port = getelementptr inbounds %struct.rpcbind_args, ptr %map, i32 0, i32 4
  %6 = ptrtoint ptr %r_port to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %port, ptr %r_port, align 4
  %r_netid = getelementptr inbounds %struct.rpcbind_args, ptr %map, i32 0, i32 5
  %7 = call ptr @memset(ptr %r_netid, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #8
  %8 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %9 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %10 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %map, ptr %8, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %10, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %13 = load i32, ptr @sunrpc_net_id, align 4
  %call = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %13)
  call fastcc void @trace_pmap_register(i32 noundef %prog, i32 noundef %vers, i32 noundef %prot, i16 noundef zeroext %port)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %port)
  %cmp.not = icmp eq i16 %port, 0
  %spec.select = select i1 %cmp.not, ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures2, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures2, i32 0, i32 1)
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select, ptr %msg, align 4
  %rpcb_local_clnt = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 10
  %15 = ptrtoint ptr %rpcb_local_clnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rpcb_local_clnt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i) #8
  %17 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %result.i, align 4
  br i1 %cmp.not, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %rpcb_is_af_local.i = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 14
  %18 = ptrtoint ptr %rpcb_is_af_local.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %rpcb_is_af_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %flags.0.i = phi i32 [ 1024, %if.then.i ], [ 8192, %lor.lhs.false.i.if.end.i_crit_edge ]
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %result.i, ptr %9, align 4
  %call.i = call i32 @rpc_call_sync(ptr noundef %16, ptr noundef nonnull %msg, i32 noundef %flags.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.rpcb_register_call.exit_crit_edge, label %if.end3.i

if.end.i.rpcb_register_call.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpcb_register_call.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not.i = icmp eq i32 %21, 0
  %..i = select i1 %tobool4.not.i, i32 -13, i32 0
  br label %rpcb_register_call.exit

rpcb_register_call.exit:                          ; preds = %if.end3.i, %if.end.i.rpcb_register_call.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i.rpcb_register_call.exit_crit_edge ], [ %..i, %if.end3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %map) #8
  ret i32 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pmap_register(i32 noundef %program, i32 noundef %version, i32 noundef %protocol, i16 noundef zeroext %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pmap_register, i32 0, i32 1), ptr blockaddress(@trace_pmap_register, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !107

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !108

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !109
  %call42 = tail call i32 @__traceiter_pmap_register(ptr noundef null, i32 noundef %program, i32 noundef %version, i32 noundef %protocol, i16 noundef zeroext %port) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !108

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pmap_register, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pmap_register, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_pmap_register.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_pmap_register.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1420, ptr noundef nonnull @.str.5) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
  %31 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpcb_v4_register(ptr noundef %net, i32 noundef %program, i32 noundef %version, ptr noundef %address, ptr noundef %netid) local_unnamed_addr #0 align 64 {
entry:
  %result.i.i35 = alloca i32, align 4
  %result.i.i20 = alloca i32, align 4
  %result.i.i = alloca i32, align 4
  %map = alloca %struct.rpcbind_args, align 4
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %map) #8
  %0 = getelementptr inbounds i8, ptr %map, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !105
  %2 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %map, align 4
  %r_prog = getelementptr inbounds %struct.rpcbind_args, ptr %map, i32 0, i32 1
  %3 = ptrtoint ptr %r_prog to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %program, ptr %r_prog, align 4
  %r_vers = getelementptr inbounds %struct.rpcbind_args, ptr %map, i32 0, i32 2
  %4 = ptrtoint ptr %r_vers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %version, ptr %r_vers, align 4
  %r_prot = getelementptr inbounds %struct.rpcbind_args, ptr %map, i32 0, i32 3
  %5 = ptrtoint ptr %r_prot to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %r_prot, align 4
  %r_port = getelementptr inbounds %struct.rpcbind_args, ptr %map, i32 0, i32 4
  %6 = ptrtoint ptr %r_port to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %r_port, align 4
  %r_netid = getelementptr inbounds %struct.rpcbind_args, ptr %map, i32 0, i32 5
  %7 = ptrtoint ptr %r_netid to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %netid, ptr %r_netid, align 4
  %r_addr = getelementptr inbounds %struct.rpcbind_args, ptr %map, i32 0, i32 6
  %8 = ptrtoint ptr %r_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %r_addr, align 4
  %r_owner = getelementptr inbounds %struct.rpcbind_args, ptr %map, i32 0, i32 7
  %9 = ptrtoint ptr %r_owner to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.2, ptr %r_owner, align 4
  %r_status = getelementptr inbounds %struct.rpcbind_args, ptr %map, i32 0, i32 8
  %10 = ptrtoint ptr %r_status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %r_status, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #8
  %11 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %12 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %13 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %msg, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %map, ptr %11, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %12, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %18 = load i32, ptr @sunrpc_net_id, align 4
  %call = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %18)
  %rpcb_local_clnt4 = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 11
  %19 = ptrtoint ptr %rpcb_local_clnt4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rpcb_local_clnt4, align 4
  %cmp = icmp eq ptr %20, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %address, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %11, align 4
  %r_prog.i = getelementptr inbounds %struct.rpcbind_args, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %r_prog.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %r_prog.i, align 4
  %r_vers.i = getelementptr inbounds %struct.rpcbind_args, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %r_vers.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r_vers.i, align 4
  %r_netid.i = getelementptr inbounds %struct.rpcbind_args, ptr %22, i32 0, i32 5
  %27 = ptrtoint ptr %r_netid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %r_netid.i, align 4
  call fastcc void @trace_rpcb_unregister(i32 noundef %24, i32 noundef %26, ptr noundef %28) #8
  %r_addr.i = getelementptr inbounds %struct.rpcbind_args, ptr %22, i32 0, i32 6
  %29 = ptrtoint ptr %r_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.3, ptr %r_addr.i, align 4
  %30 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures4, i32 0, i32 2), ptr %msg, align 4
  %31 = ptrtoint ptr %rpcb_local_clnt4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rpcb_local_clnt4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i.i) #8
  %33 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %result.i.i, align 4
  %rpcb_is_af_local.i.i = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 14
  %34 = ptrtoint ptr %rpcb_is_af_local.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i.i = load i8, ptr %rpcb_is_af_local.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool1.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %spec.select.i = select i1 %tobool1.not.i.i, i32 1024, i32 8192
  %35 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %result.i.i, ptr %12, align 4
  %call.i.i = call i32 @rpc_call_sync(ptr noundef %32, ptr noundef nonnull %msg, i32 noundef %spec.select.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then2.rpcb_unregister_all_protofamilies.exit_crit_edge, label %if.end3.i.i

if.then2.rpcb_unregister_all_protofamilies.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpcb_unregister_all_protofamilies.exit

if.end3.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %result.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool4.not.i.i = icmp eq i32 %37, 0
  %..i.i = select i1 %tobool4.not.i.i, i32 -13, i32 0
  br label %rpcb_unregister_all_protofamilies.exit

rpcb_unregister_all_protofamilies.exit:           ; preds = %if.end3.i.i, %if.then2.rpcb_unregister_all_protofamilies.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then2.rpcb_unregister_all_protofamilies.exit_crit_edge ], [ %..i.i, %if.end3.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %38 = ptrtoint ptr %r_prog to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %r_prog, align 4
  %40 = ptrtoint ptr %r_vers to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %r_vers, align 4
  %42 = ptrtoint ptr %r_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %r_addr, align 4
  %44 = ptrtoint ptr %r_netid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %r_netid, align 4
  call fastcc void @trace_rpcb_register(i32 noundef %39, i32 noundef %41, ptr noundef %43, ptr noundef %45)
  %46 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %address, align 2
  %48 = zext i16 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i16 %47, label %if.end4.cleanup_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb10
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  %49 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %11, align 4
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %address, i32 0, i32 1
  %51 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sin_port.i, align 2
  %call.i = call ptr @rpc_sockaddr2uaddr(ptr noundef nonnull %address, i32 noundef 3264) #8
  %r_addr.i22 = getelementptr inbounds %struct.rpcbind_args, ptr %50, i32 0, i32 6
  %53 = ptrtoint ptr %r_addr.i22 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %r_addr.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp.not.i = icmp eq i16 %52, 0
  %spec.select.i23 = select i1 %cmp.not.i, ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures4, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures4, i32 0, i32 1)
  %54 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %spec.select.i23, ptr %msg, align 4
  %55 = ptrtoint ptr %rpcb_local_clnt4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rpcb_local_clnt4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i.i20) #8
  %57 = ptrtoint ptr %result.i.i20 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %result.i.i20, align 4
  br i1 %cmp.not.i, label %lor.lhs.false.i.i, label %sw.bb.if.then.i.i_crit_edge

sw.bb.if.then.i.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %sw.bb
  %rpcb_is_af_local.i.i25 = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 14
  %58 = ptrtoint ptr %rpcb_is_af_local.i.i25 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i.i26 = load i8, ptr %rpcb_is_af_local.i.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i26)
  %tobool1.not.i.i27 = icmp sgt i8 %bf.load.i.i26, -1
  br i1 %tobool1.not.i.i27, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %sw.bb.if.then.i.i_crit_edge
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %lor.lhs.false.i.i.if.end.i.i_crit_edge
  %flags.0.i.i = phi i32 [ 1024, %if.then.i.i ], [ 8192, %lor.lhs.false.i.i.if.end.i.i_crit_edge ]
  %59 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %result.i.i20, ptr %12, align 4
  %call.i.i29 = call i32 @rpc_call_sync(ptr noundef %56, ptr noundef nonnull %msg, i32 noundef %flags.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp.i.i30 = icmp slt i32 %call.i.i29, 0
  br i1 %cmp.i.i30, label %if.end.i.i.rpcb_register_inet4.exit_crit_edge, label %if.end3.i.i33

if.end.i.i.rpcb_register_inet4.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpcb_register_inet4.exit

if.end3.i.i33:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %result.i.i20 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %result.i.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool4.not.i.i31 = icmp eq i32 %61, 0
  %..i.i32 = select i1 %tobool4.not.i.i31, i32 -13, i32 0
  br label %rpcb_register_inet4.exit

rpcb_register_inet4.exit:                         ; preds = %if.end3.i.i33, %if.end.i.i.rpcb_register_inet4.exit_crit_edge
  %retval.0.i.i34 = phi i32 [ %call.i.i29, %if.end.i.i.rpcb_register_inet4.exit_crit_edge ], [ %..i.i32, %if.end3.i.i33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i.i20) #8
  %62 = ptrtoint ptr %r_addr.i22 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %r_addr.i22, align 4
  call void @kfree(ptr noundef %63) #8
  br label %cleanup

sw.bb10:                                          ; preds = %if.end4
  %64 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %11, align 4
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %address, i32 0, i32 1
  %66 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %sin6_port.i, align 2
  %call.i37 = call ptr @rpc_sockaddr2uaddr(ptr noundef nonnull %address, i32 noundef 3264) #8
  %r_addr.i38 = getelementptr inbounds %struct.rpcbind_args, ptr %65, i32 0, i32 6
  %68 = ptrtoint ptr %r_addr.i38 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i37, ptr %r_addr.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp.not.i39 = icmp eq i16 %67, 0
  %spec.select.i40 = select i1 %cmp.not.i39, ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures4, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures4, i32 0, i32 1)
  %69 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %spec.select.i40, ptr %msg, align 4
  %70 = ptrtoint ptr %rpcb_local_clnt4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rpcb_local_clnt4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i.i35) #8
  %72 = ptrtoint ptr %result.i.i35 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %result.i.i35, align 4
  br i1 %cmp.not.i39, label %lor.lhs.false.i.i45, label %sw.bb10.if.then.i.i46_crit_edge

sw.bb10.if.then.i.i46_crit_edge:                  ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i46

lor.lhs.false.i.i45:                              ; preds = %sw.bb10
  %rpcb_is_af_local.i.i42 = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 14
  %73 = ptrtoint ptr %rpcb_is_af_local.i.i42 to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i.i43 = load i8, ptr %rpcb_is_af_local.i.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i43)
  %tobool1.not.i.i44 = icmp sgt i8 %bf.load.i.i43, -1
  br i1 %tobool1.not.i.i44, label %lor.lhs.false.i.i45.if.then.i.i46_crit_edge, label %lor.lhs.false.i.i45.if.end.i.i51_crit_edge

lor.lhs.false.i.i45.if.end.i.i51_crit_edge:       ; preds = %lor.lhs.false.i.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i51

lor.lhs.false.i.i45.if.then.i.i46_crit_edge:      ; preds = %lor.lhs.false.i.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i46

if.then.i.i46:                                    ; preds = %lor.lhs.false.i.i45.if.then.i.i46_crit_edge, %sw.bb10.if.then.i.i46_crit_edge
  br label %if.end.i.i51

if.end.i.i51:                                     ; preds = %if.then.i.i46, %lor.lhs.false.i.i45.if.end.i.i51_crit_edge
  %flags.0.i.i47 = phi i32 [ 1024, %if.then.i.i46 ], [ 8192, %lor.lhs.false.i.i45.if.end.i.i51_crit_edge ]
  %74 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %result.i.i35, ptr %12, align 4
  %call.i.i49 = call i32 @rpc_call_sync(ptr noundef %71, ptr noundef nonnull %msg, i32 noundef %flags.0.i.i47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %cmp.i.i50 = icmp slt i32 %call.i.i49, 0
  br i1 %cmp.i.i50, label %if.end.i.i51.rpcb_register_inet6.exit_crit_edge, label %if.end3.i.i54

if.end.i.i51.rpcb_register_inet6.exit_crit_edge:  ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpcb_register_inet6.exit

if.end3.i.i54:                                    ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %result.i.i35 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %result.i.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool4.not.i.i52 = icmp eq i32 %76, 0
  %..i.i53 = select i1 %tobool4.not.i.i52, i32 -13, i32 0
  br label %rpcb_register_inet6.exit

rpcb_register_inet6.exit:                         ; preds = %if.end3.i.i54, %if.end.i.i51.rpcb_register_inet6.exit_crit_edge
  %retval.0.i.i55 = phi i32 [ %call.i.i49, %if.end.i.i51.rpcb_register_inet6.exit_crit_edge ], [ %..i.i53, %if.end3.i.i54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i.i35) #8
  %77 = ptrtoint ptr %r_addr.i38 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %r_addr.i38, align 4
  call void @kfree(ptr noundef %78) #8
  br label %cleanup

cleanup:                                          ; preds = %rpcb_register_inet6.exit, %rpcb_register_inet4.exit, %if.end4.cleanup_crit_edge, %rpcb_unregister_all_protofamilies.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %rpcb_unregister_all_protofamilies.exit ], [ %retval.0.i.i55, %rpcb_register_inet6.exit ], [ %retval.0.i.i34, %rpcb_register_inet4.exit ], [ -93, %entry.cleanup_crit_edge ], [ -97, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %map) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcb_register(i32 noundef %program, i32 noundef %version, ptr noundef %addr, ptr noundef %netid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_register, i32 0, i32 1), ptr blockaddress(@trace_rpcb_register, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !107

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !108

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %call42 = tail call i32 @__traceiter_rpcb_register(ptr noundef null, i32 noundef %program, i32 noundef %version, ptr noundef %addr, ptr noundef %netid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !108

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_register, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_register, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcb_register.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rpcb_register.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1450, ptr noundef nonnull @.str.5) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
  %31 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcb_getport_async(ptr noundef %task) #0 align 64 {
entry:
  %args.i = alloca %struct.rpc_create_args, align 4
  %addr = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %addr) #8
  %0 = call ptr @memset(ptr %addr, i32 255, i32 128)
  %1 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %5 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tk_client, align 4
  %cl_parent.i = getelementptr inbounds %struct.rpc_clnt, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %cl_parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cl_parent.i, align 4
  %9 = getelementptr inbounds %struct.rpc_clnt, ptr %6, i32 0, i32 28
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %9, align 4
  %cmp.not19.i = icmp eq ptr %8, %6
  br i1 %cmp.not19.i, label %rcu_read_lock.exit.rpcb_find_transport_owner.exit_crit_edge, label %rcu_read_lock.exit.while.body.i_crit_edge

rcu_read_lock.exit.while.body.i_crit_edge:        ; preds = %rcu_read_lock.exit
  br label %while.body.i

rcu_read_lock.exit.rpcb_find_transport_owner.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpcb_find_transport_owner.exit

while.body.i:                                     ; preds = %if.end10.i.while.body.i_crit_edge, %rcu_read_lock.exit.while.body.i_crit_edge
  %clnt.addr.021.i = phi ptr [ %parent.020.i, %if.end10.i.while.body.i_crit_edge ], [ %6, %rcu_read_lock.exit.while.body.i_crit_edge ]
  %parent.020.i = phi ptr [ %18, %if.end10.i.while.body.i_crit_edge ], [ %8, %rcu_read_lock.exit.while.body.i_crit_edge ]
  %12 = getelementptr inbounds %struct.rpc_clnt, ptr %parent.020.i, i32 0, i32 28
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %12, align 4
  %cmp8.not.i = icmp eq ptr %14, %11
  br i1 %cmp8.not.i, label %if.end.i, label %while.body.i.rpcb_find_transport_owner.exit_crit_edge

while.body.i.rpcb_find_transport_owner.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpcb_find_transport_owner.exit

if.end.i:                                         ; preds = %while.body.i
  %cl_autobind.i = getelementptr inbounds %struct.rpc_clnt, ptr %clnt.addr.021.i, i32 0, i32 14
  %15 = ptrtoint ptr %cl_autobind.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %cl_autobind.i, align 4
  %16 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i109 = icmp eq i8 %16, 0
  br i1 %tobool.not.i109, label %if.end10.i, label %if.end.i.rpcb_find_transport_owner.exit_crit_edge

if.end.i.rpcb_find_transport_owner.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpcb_find_transport_owner.exit

if.end10.i:                                       ; preds = %if.end.i
  %cl_parent11.i = getelementptr inbounds %struct.rpc_clnt, ptr %parent.020.i, i32 0, i32 21
  %17 = ptrtoint ptr %cl_parent11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cl_parent11.i, align 4
  %cmp.not.i = icmp eq ptr %18, %parent.020.i
  br i1 %cmp.not.i, label %if.end10.i.rpcb_find_transport_owner.exit_crit_edge, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end10.i.rpcb_find_transport_owner.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpcb_find_transport_owner.exit

rpcb_find_transport_owner.exit:                   ; preds = %if.end10.i.rpcb_find_transport_owner.exit_crit_edge, %if.end.i.rpcb_find_transport_owner.exit_crit_edge, %while.body.i.rpcb_find_transport_owner.exit_crit_edge, %rcu_read_lock.exit.rpcb_find_transport_owner.exit_crit_edge
  %clnt.addr.0.lcssa.i = phi ptr [ %6, %rcu_read_lock.exit.rpcb_find_transport_owner.exit_crit_edge ], [ %parent.020.i, %if.end10.i.rpcb_find_transport_owner.exit_crit_edge ], [ %clnt.addr.021.i, %while.body.i.rpcb_find_transport_owner.exit_crit_edge ], [ %clnt.addr.021.i, %if.end.i.rpcb_find_transport_owner.exit_crit_edge ]
  %call.i110 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i110, label %rpcb_find_transport_owner.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i113

rpcb_find_transport_owner.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rpcb_find_transport_owner.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i113:                               ; preds = %rpcb_find_transport_owner.exit
  %call1.i111 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111)
  %tobool.not.i112 = icmp eq i32 %call1.i111, 0
  br i1 %tobool.not.i112, label %land.lhs.true.i113.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i115

land.lhs.true.i113.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i115:                              ; preds = %land.lhs.true.i113
  %.b4.i114 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i114, label %land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge, label %if.then.i116

land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i116:                                     ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i116, %land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i113.rcu_read_unlock.exit_crit_edge, %rpcb_find_transport_owner.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !104
  %19 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i.i.i117 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i117 to ptr
  %preempt_count.i.i.i.i118 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i118, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i118, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %tk_xprt = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 14
  %23 = ptrtoint ptr %tk_xprt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tk_xprt, align 8
  %call1 = tail call ptr @xprt_get(ptr noundef %24) #8
  %binding = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %bind_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 23
  %26 = ptrtoint ptr %bind_timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bind_timeout, align 8
  %add = add i32 %27, %25
  tail call void @rpc_sleep_on_timeout(ptr noundef %binding, ptr noundef %task, ptr noundef null, i32 noundef %add) #8
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 18
  %call.i119 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not = icmp eq i32 %call.i119, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xprt_put(ptr noundef %call1) #8
  br label %cleanup

if.end:                                           ; preds = %rcu_read_unlock.exit
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i, align 4
  %30 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool4.not = icmp eq i32 %30, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.bailout_nofree_crit_edge

if.end.bailout_nofree_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bailout_nofree

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @rpc_peeraddr(ptr noundef %clnt.addr.0.lcssa.i, ptr noundef nonnull %addr, i32 noundef 128) #8
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr, align 4
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %32, label %if.end6.bailout_nofree_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb10
  ]

if.end6.bailout_nofree_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %bailout_nofree

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %bind_index = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 21
  %34 = ptrtoint ptr %bind_index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bind_index, align 4
  %arrayidx = getelementptr [0 x %struct.rpcb_info], ptr @rpcb_next_version, i32 0, i32 %35
  %rpc_proc = getelementptr [0 x %struct.rpcb_info], ptr @rpcb_next_version, i32 0, i32 %35, i32 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %bind_index11 = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 21
  %36 = ptrtoint ptr %bind_index11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bind_index11, align 4
  %arrayidx12 = getelementptr [0 x %struct.rpcb_info], ptr @rpcb_next_version6, i32 0, i32 %37
  %rpc_proc13 = getelementptr [0 x %struct.rpcb_info], ptr @rpcb_next_version6, i32 0, i32 %37, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb
  %proc.0.in = phi ptr [ %rpc_proc13, %sw.bb10 ], [ %rpc_proc, %sw.bb ]
  %bind_version.0.in = phi ptr [ %arrayidx12, %sw.bb10 ], [ %arrayidx, %sw.bb ]
  %38 = ptrtoint ptr %bind_version.0.in to i32
  call void @__asan_load4_noabort(i32 %38)
  %bind_version.0 = load i32, ptr %bind_version.0.in, align 4
  %39 = ptrtoint ptr %proc.0.in to i32
  call void @__asan_load4_noabort(i32 %39)
  %proc.0 = load ptr, ptr %proc.0.in, align 4
  %cmp = icmp eq ptr %proc.0, null
  br i1 %cmp, label %if.then18, label %if.end20

if.then18:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %bind_index19 = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 21
  %40 = ptrtoint ptr %bind_index19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %bind_index19, align 4
  br label %bailout_nofree

if.end20:                                         ; preds = %sw.epilog
  call fastcc void @trace_rpcb_getport(ptr noundef %clnt.addr.0.lcssa.i, ptr noundef %task, i32 noundef %bind_version.0)
  %xprt_net = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 49
  %41 = ptrtoint ptr %xprt_net to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xprt_net, align 8
  %cl_nodename = getelementptr inbounds %struct.rpc_clnt, ptr %clnt.addr.0.lcssa.i, i32 0, i32 19
  %servername = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 50
  %43 = ptrtoint ptr %servername to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %servername, align 4
  %prot = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 6
  %45 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %prot, align 4
  %cl_cred = getelementptr inbounds %struct.rpc_clnt, ptr %clnt.addr.0.lcssa.i, i32 0, i32 29
  %47 = ptrtoint ptr %cl_cred to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cl_cred, align 4
  %49 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tk_client, align 4
  %cl_timeout = getelementptr inbounds %struct.rpc_clnt, ptr %50, i32 0, i32 16
  %51 = ptrtoint ptr %cl_timeout to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cl_timeout, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %53 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %42, ptr %args.i, align 4
  %protocol.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 1
  %54 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %46, ptr %protocol.i, align 4
  %address.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 2
  %55 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %addr, ptr %address.i, align 4
  %addrsize.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 3
  %56 = ptrtoint ptr %addrsize.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call7, ptr %addrsize.i, align 4
  %saddress.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 4
  %57 = ptrtoint ptr %saddress.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %saddress.i, align 4
  %timeout.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 5
  %58 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %52, ptr %timeout.i, align 4
  %servername.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 6
  %59 = ptrtoint ptr %servername.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %44, ptr %servername.i, align 4
  %nodename2.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 7
  %60 = ptrtoint ptr %nodename2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %cl_nodename, ptr %nodename2.i, align 4
  %program.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 8
  %61 = ptrtoint ptr %program.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @rpcb_program, ptr %program.i, align 4
  %prognumber.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 9
  %62 = ptrtoint ptr %prognumber.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %prognumber.i, align 4
  %version3.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 10
  %63 = ptrtoint ptr %version3.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %bind_version.0, ptr %version3.i, align 4
  %authflavor.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 11
  %64 = ptrtoint ptr %authflavor.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %authflavor.i, align 4
  %nconnect.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 12
  %65 = ptrtoint ptr %nconnect.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %nconnect.i, align 4
  %flags.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 13
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 24, ptr %flags.i, align 4
  %client_name.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 14
  %67 = ptrtoint ptr %client_name.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %client_name.i, align 4
  %bc_xprt.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 15
  %68 = ptrtoint ptr %bc_xprt.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %bc_xprt.i, align 4
  %cred4.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 16
  %69 = ptrtoint ptr %cred4.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %48, ptr %cred4.i, align 4
  %max_connect.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 17
  %70 = ptrtoint ptr %max_connect.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %max_connect.i, align 4
  %71 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %addr, align 4
  %73 = zext i16 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %72, label %rpcb_create.exit.thread [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb5.i
  ]

rpcb_create.exit.thread:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %if.then24

sw.bb.i:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  br label %rpcb_create.exit

sw.bb5.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  br label %rpcb_create.exit

rpcb_create.exit:                                 ; preds = %sw.bb5.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb5.i ], [ %sin_port.i, %sw.bb.i ]
  %74 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 111, ptr %sin6_port.sink.i, align 2
  %call6.i = call ptr @rpc_create(ptr noundef nonnull %args.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %cmp.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rpcb_create.exit.if.then24_crit_edge, label %if.end26

rpcb_create.exit.if.then24_crit_edge:             ; preds = %rpcb_create.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %rpcb_create.exit.if.then24_crit_edge, %rpcb_create.exit.thread
  %retval.0.i124 = phi ptr [ inttoptr (i32 -97 to ptr), %rpcb_create.exit.thread ], [ %call6.i, %rpcb_create.exit.if.then24_crit_edge ]
  %75 = ptrtoint ptr %retval.0.i124 to i32
  br label %bailout_nofree

if.end26:                                         ; preds = %rpcb_create.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3392, i32 noundef 36) #11
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %if.end26.bailout_release_client_crit_edge, label %if.end30

if.end26.bailout_release_client_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %bailout_release_client

if.end30:                                         ; preds = %if.end26
  %cl_prog = getelementptr inbounds %struct.rpc_clnt, ptr %clnt.addr.0.lcssa.i, i32 0, i32 8
  %77 = ptrtoint ptr %cl_prog to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cl_prog, align 4
  %r_prog = getelementptr inbounds %struct.rpcbind_args, ptr %call7.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %r_prog to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %r_prog, align 4
  %cl_vers = getelementptr inbounds %struct.rpc_clnt, ptr %clnt.addr.0.lcssa.i, i32 0, i32 9
  %80 = ptrtoint ptr %cl_vers to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cl_vers, align 4
  %r_vers = getelementptr inbounds %struct.rpcbind_args, ptr %call7.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %r_vers to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %r_vers, align 8
  %83 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %prot, align 4
  %r_prot = getelementptr inbounds %struct.rpcbind_args, ptr %call7.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %r_prot to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %r_prot, align 4
  %r_port = getelementptr inbounds %struct.rpcbind_args, ptr %call7.i.i, i32 0, i32 4
  %86 = ptrtoint ptr %r_port to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %r_port, align 8
  %87 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call1, ptr %call7.i.i, align 8
  %r_status = getelementptr inbounds %struct.rpcbind_args, ptr %call7.i.i, i32 0, i32 8
  %88 = ptrtoint ptr %r_status to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -5, ptr %r_status, align 8
  %89 = zext i32 %bind_version.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %bind_version.0, label %do.body [
    i32 4, label %if.end30.sw.bb32_crit_edge
    i32 3, label %if.end30.sw.bb32_crit_edge125
    i32 2, label %sw.bb39
  ]

if.end30.sw.bb32_crit_edge125:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32

if.end30.sw.bb32_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32

sw.bb32:                                          ; preds = %if.end30.sw.bb32_crit_edge, %if.end30.sw.bb32_crit_edge125
  %arrayidx33 = getelementptr %struct.rpc_xprt, ptr %call1, i32 0, i32 51, i32 5
  %90 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx33, align 4
  %r_netid = getelementptr inbounds %struct.rpcbind_args, ptr %call7.i.i, i32 0, i32 5
  %92 = ptrtoint ptr %r_netid to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %r_netid, align 4
  %call34 = call ptr @rpc_sockaddr2uaddr(ptr noundef nonnull %addr, i32 noundef 3136) #8
  %r_addr = getelementptr inbounds %struct.rpcbind_args, ptr %call7.i.i, i32 0, i32 6
  %93 = ptrtoint ptr %r_addr to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call34, ptr %r_addr, align 8
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %bailout_release_client

if.end38:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  %r_owner = getelementptr inbounds %struct.rpcbind_args, ptr %call7.i.i, i32 0, i32 7
  %94 = ptrtoint ptr %r_owner to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @.str.3, ptr %r_owner, align 4
  br label %sw.epilog45

sw.bb39:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %r_addr40 = getelementptr inbounds %struct.rpcbind_args, ptr %call7.i.i, i32 0, i32 6
  %95 = ptrtoint ptr %r_addr40 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %r_addr40, align 8
  br label %sw.epilog45

do.body:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/rpcb_clnt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 744, 0\0A.popsection", ""() #8, !srcloc !115
  unreachable

sw.epilog45:                                      ; preds = %sw.bb39, %if.end38
  %call46 = call fastcc ptr @rpcb_call_async(ptr noundef %call6.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %proc.0)
  call void @rpc_release_client(ptr noundef %call6.i) #8
  %stat = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 48
  %96 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %stat, align 8
  %inc = add i32 %97, 1
  store i32 %inc, ptr %stat, align 8
  call void @rpc_put_task(ptr noundef %call46) #8
  br label %cleanup

bailout_release_client:                           ; preds = %if.then37, %if.end26.bailout_release_client_crit_edge
  call void @rpc_release_client(ptr noundef %call6.i) #8
  br label %bailout_nofree

bailout_nofree:                                   ; preds = %bailout_release_client, %if.then24, %if.then18, %if.end6.bailout_nofree_crit_edge, %if.end.bailout_nofree_crit_edge
  %status.1 = phi i32 [ -96, %if.then18 ], [ %75, %if.then24 ], [ -12, %bailout_release_client ], [ 0, %if.end.bailout_nofree_crit_edge ], [ -97, %if.end6.bailout_nofree_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  call void @_clear_bit(i32 noundef 5, ptr noundef %state.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !117
  call void @rpc_wake_up_status(ptr noundef %binding, i32 noundef %status.1) #8
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %98 = ptrtoint ptr %tk_status to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %status.1, ptr %tk_status, align 4
  call void @xprt_put(ptr noundef %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %bailout_nofree, %sw.epilog45, %if.then
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sleep_on_timeout(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_peeraddr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcb_getport(ptr noundef %clnt, ptr noundef %task, i32 noundef %bind_version) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_getport, i32 0, i32 1), ptr blockaddress(@trace_rpcb_getport, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !107

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !108

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %call42 = tail call i32 @__traceiter_rpcb_getport(ptr noundef null, ptr noundef %clnt, ptr noundef %task, i32 noundef %bind_version) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !108

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_getport, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_getport, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcb_getport.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rpcb_getport.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1361, ptr noundef nonnull @.str.5) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
  %31 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
declare dso_local ptr @rpc_sockaddr2uaddr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rpcb_call_async(ptr noundef %rpcb_clnt, ptr noundef %map, ptr noundef %proc) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.rpc_message, align 4
  %task_setup_data = alloca %struct.rpc_task_setup, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #8
  %0 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %proc, ptr %msg, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %map, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %map, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %task_setup_data) #8
  %7 = getelementptr inbounds i8, ptr %task_setup_data, i32 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !105
  %9 = ptrtoint ptr %task_setup_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %task_setup_data, align 4
  %rpc_client = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 1
  %10 = ptrtoint ptr %rpc_client to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rpcb_clnt, ptr %rpc_client, align 4
  %rpc_xprt = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 2
  %11 = ptrtoint ptr %rpc_xprt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rpc_xprt, align 4
  %rpc_op_cred = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 3
  %12 = ptrtoint ptr %rpc_op_cred to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rpc_op_cred, align 4
  %rpc_message = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 4
  %13 = ptrtoint ptr %rpc_message to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg, ptr %rpc_message, align 4
  %callback_ops = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 5
  %14 = ptrtoint ptr %callback_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rpcb_getport_ops, ptr %callback_ops, align 4
  %callback_data = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 6
  %15 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %map, ptr %callback_data, align 4
  %workqueue = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 7
  %16 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %workqueue, align 4
  %flags = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 8
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1025, ptr %flags, align 4
  %priority = getelementptr inbounds %struct.rpc_task_setup, ptr %task_setup_data, i32 0, i32 9
  %18 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %priority, align 2
  %call = call ptr @rpc_run_task(ptr noundef nonnull %task_setup_data) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %task_setup_data) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_release_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_bind_new_program(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpcb_enc_getaddr(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #8
  %r_prog = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %r_prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_prog, align 4
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call, align 4
  %r_vers = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %r_vers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %r_vers, align 4
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %incdec.ptr, align 4
  %r_netid = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 5
  %6 = ptrtoint ptr %r_netid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r_netid, align 4
  %call.i = tail call i32 @strlen(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i)
  %cmp.i = icmp ugt i32 %call.i, 5
  br i1 %cmp.i, label %land.rhs.i, label %entry.encode_rpcb_string.exit_crit_edge

entry.encode_rpcb_string.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %encode_rpcb_string.exit

land.rhs.i:                                       ; preds = %entry
  %.b48.i = load i1, ptr @encode_rpcb_string.__already_done, align 1
  br i1 %.b48.i, label %land.rhs.i.encode_rpcb_string.exit_crit_edge, label %if.then.i, !prof !108

land.rhs.i.encode_rpcb_string.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %encode_rpcb_string.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @encode_rpcb_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 862, i32 noundef 9, ptr noundef null) #8
  br label %encode_rpcb_string.exit

encode_rpcb_string.exit:                          ; preds = %if.then.i, %land.rhs.i.encode_rpcb_string.exit_crit_edge, %entry.encode_rpcb_string.exit_crit_edge
  %8 = tail call i32 @llvm.umin.i32(i32 %call.i, i32 5) #8
  %add.i = add nuw nsw i32 %8, 4
  %call38.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #8
  %call39.i = tail call ptr @xdr_encode_opaque(ptr noundef %call38.i, ptr noundef %7, i32 noundef %8) #8
  %r_addr = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 6
  %9 = ptrtoint ptr %r_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %r_addr, align 4
  %call.i9 = tail call i32 @strlen(ptr noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %call.i9)
  %cmp.i10 = icmp ugt i32 %call.i9, 57
  br i1 %cmp.i10, label %land.rhs.i12, label %encode_rpcb_string.exit.encode_rpcb_string.exit17_crit_edge

encode_rpcb_string.exit.encode_rpcb_string.exit17_crit_edge: ; preds = %encode_rpcb_string.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %encode_rpcb_string.exit17

land.rhs.i12:                                     ; preds = %encode_rpcb_string.exit
  %.b48.i11 = load i1, ptr @encode_rpcb_string.__already_done, align 1
  br i1 %.b48.i11, label %land.rhs.i12.encode_rpcb_string.exit17_crit_edge, label %if.then.i13, !prof !108

land.rhs.i12.encode_rpcb_string.exit17_crit_edge: ; preds = %land.rhs.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %encode_rpcb_string.exit17

if.then.i13:                                      ; preds = %land.rhs.i12
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @encode_rpcb_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 862, i32 noundef 9, ptr noundef null) #8
  br label %encode_rpcb_string.exit17

encode_rpcb_string.exit17:                        ; preds = %if.then.i13, %land.rhs.i12.encode_rpcb_string.exit17_crit_edge, %encode_rpcb_string.exit.encode_rpcb_string.exit17_crit_edge
  %11 = tail call i32 @llvm.umin.i32(i32 %call.i9, i32 57) #8
  %add.i14 = add nuw nsw i32 %11, 4
  %call38.i15 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i14) #8
  %call39.i16 = tail call ptr @xdr_encode_opaque(ptr noundef %call38.i15, ptr noundef %10, i32 noundef %11) #8
  %r_owner = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 7
  %12 = ptrtoint ptr %r_owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %r_owner, align 4
  %call.i18 = tail call i32 @strlen(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i18)
  %cmp.i19 = icmp ugt i32 %call.i18, 2
  br i1 %cmp.i19, label %land.rhs.i21, label %encode_rpcb_string.exit17.encode_rpcb_string.exit26_crit_edge

encode_rpcb_string.exit17.encode_rpcb_string.exit26_crit_edge: ; preds = %encode_rpcb_string.exit17
  call void @__sanitizer_cov_trace_pc() #10
  br label %encode_rpcb_string.exit26

land.rhs.i21:                                     ; preds = %encode_rpcb_string.exit17
  %.b48.i20 = load i1, ptr @encode_rpcb_string.__already_done, align 1
  br i1 %.b48.i20, label %land.rhs.i21.encode_rpcb_string.exit26_crit_edge, label %if.then.i22, !prof !108

land.rhs.i21.encode_rpcb_string.exit26_crit_edge: ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %encode_rpcb_string.exit26

if.then.i22:                                      ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @encode_rpcb_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 862, i32 noundef 9, ptr noundef null) #8
  br label %encode_rpcb_string.exit26

encode_rpcb_string.exit26:                        ; preds = %if.then.i22, %land.rhs.i21.encode_rpcb_string.exit26_crit_edge, %encode_rpcb_string.exit17.encode_rpcb_string.exit26_crit_edge
  %14 = tail call i32 @llvm.umin.i32(i32 %call.i18, i32 2) #8
  %add.i23 = or i32 %14, 4
  %call38.i24 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i23) #8
  %call39.i25 = tail call ptr @xdr_encode_opaque(ptr noundef %call38.i24, ptr noundef %13, i32 noundef %14) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcb_dec_set(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !120

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2.not = icmp ne i32 %2, 0
  %spec.store.select = zext i1 %cmp2.not to i32
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.store.select, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcb_dec_getaddr(ptr nocapture noundef readonly %req, ptr noundef %xdr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %address = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %address) #8
  %0 = call ptr @memset(ptr %address, i32 255, i32 128)
  %r_port = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 4
  %1 = ptrtoint ptr %r_port to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %r_port, align 4
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !120

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %3)
  %cmp6 = icmp ugt i32 %3, 57
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end14, !prof !120

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %call15 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %3) #8
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end24, !prof !120

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 8
  %xprt_net = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %xprt_net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xprt_net, align 8
  %call25 = call i32 @rpc_uaddr2sockaddr(ptr noundef %7, ptr noundef nonnull %call15, i32 noundef %3, ptr noundef nonnull %address, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %8 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %address, align 4
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %9, label %if.end28.rpc_get_port.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

if.end28.rpc_get_port.exit_crit_edge:             ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpc_get_port.exit

sw.bb.i:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %address, i32 0, i32 1
  br label %return.sink.split.i

sw.bb1.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %address, i32 0, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb1.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb1.i ], [ %sin_port.i, %sw.bb.i ]
  %11 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sin6_port.sink.i, align 2
  br label %rpc_get_port.exit

rpc_get_port.exit:                                ; preds = %return.sink.split.i, %if.end28.rpc_get_port.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %if.end28.rpc_get_port.exit_crit_edge ], [ %12, %return.sink.split.i ]
  %13 = ptrtoint ptr %r_port to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %retval.0.i, ptr %r_port, align 4
  br label %cleanup

cleanup:                                          ; preds = %rpc_get_port.exit, %if.end24.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rpc_get_port.exit ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %if.end24.cleanup_crit_edge ], [ -5, %if.end14.cleanup_crit_edge ], [ -5, %if.end5.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %address) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_uaddr2sockaddr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pmap_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcb_unregister(i32 noundef %program, i32 noundef %version, ptr noundef %netid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_unregister, i32 0, i32 1), ptr blockaddress(@trace_rpcb_unregister, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !107

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !108

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %call42 = tail call i32 @__traceiter_rpcb_unregister(ptr noundef null, i32 noundef %program, i32 noundef %version, ptr noundef %netid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !108

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_unregister, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_unregister, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcb_unregister.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rpcb_unregister.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1476, ptr noundef nonnull @.str.5) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
  %31 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
declare dso_local i32 @__traceiter_rpcb_unregister(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcb_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcb_getport(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_run_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpcb_getport_done(ptr noundef %child, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %child, i32 0, i32 1
  %2 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tk_status, align 4
  %r_status = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %3)
  %cmp = icmp eq i32 %3, -5
  %spec.select = select i1 %cmp, i32 -93, i32 %3
  %4 = ptrtoint ptr %r_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %r_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -93, i32 %spec.select)
  %cmp4 = icmp eq i32 %spec.select, -93
  br i1 %cmp4, label %if.then5, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bind_index = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %bind_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bind_index, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %bind_index, align 4
  %7 = ptrtoint ptr %r_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %r_status, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry.if.end6_crit_edge
  %8 = phi i32 [ %.pr, %if.then5 ], [ %spec.select, %entry.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp slt i32 %8, 0
  %r_port = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 4
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %r_port to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %r_port, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end6
  %10 = ptrtoint ptr %r_port to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %r_port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp11 = icmp eq i16 %11, 0
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %r_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -13, ptr %r_status, align 4
  br label %if.end18

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %r_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %r_status, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %if.then13, %if.then9
  %14 = ptrtoint ptr %r_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %r_status, align 4
  %r_port20 = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 4
  %16 = ptrtoint ptr %r_port20 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %r_port20, align 4
  tail call fastcc void @trace_rpcb_setport(ptr noundef %child, i32 noundef %15, i16 noundef zeroext %17)
  %ops = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %set_port = getelementptr inbounds %struct.rpc_xprt_ops, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %set_port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_port, align 4
  %22 = ptrtoint ptr %r_port20 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %r_port20, align 4
  tail call void %21(ptr noundef %1, i16 noundef zeroext %23) #8
  %24 = ptrtoint ptr %r_port20 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %r_port20, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not = icmp eq i16 %25, 0
  br i1 %tobool.not, label %if.end18.if.end24_crit_edge, label %if.then23

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end18.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpcb_map_release(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %r_status = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 8
  %2 = ptrtoint ptr %r_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  %state.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %state.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !117
  %binding.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 10
  tail call void @rpc_wake_up_status(ptr noundef %binding.i, i32 noundef %3) #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void @xprt_put(ptr noundef %5) #8
  %r_addr = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 6
  %6 = ptrtoint ptr %r_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r_addr, align 4
  tail call void @kfree(ptr noundef %7) #8
  tail call void @kfree(ptr noundef %data) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcb_setport(ptr noundef %task, i32 noundef %status, i16 noundef zeroext %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_setport, i32 0, i32 1), ptr blockaddress(@trace_rpcb_setport, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !107

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !108

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !123
  %call42 = tail call i32 @__traceiter_rpcb_setport(ptr noundef null, ptr noundef %task, i32 noundef %status, i16 noundef zeroext %port) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !108

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_setport, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_setport, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcb_setport.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rpcb_setport.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1390, ptr noundef nonnull @.str.5) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
  %31 = tail call i32 @llvm.read_register.i32(metadata !93) #8
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
declare dso_local i32 @__traceiter_rpcb_setport(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpcb_enc_mapping(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 16) #8
  %r_prog = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %r_prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_prog, align 4
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call, align 4
  %r_vers = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %r_vers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %r_vers, align 4
  %incdec.ptr1 = getelementptr i32, ptr %call, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %incdec.ptr, align 4
  %r_prot = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %r_prot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r_prot, align 4
  %incdec.ptr2 = getelementptr i32, ptr %call, i32 3
  %8 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %incdec.ptr1, align 4
  %r_port = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 4
  %9 = ptrtoint ptr %r_port to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %r_port, align 4
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %incdec.ptr2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcb_dec_getport(ptr nocapture noundef readnone %req, ptr noundef %xdr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %r_port = getelementptr inbounds %struct.rpcbind_args, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %r_port to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %r_port, align 4
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !120

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %2)
  %cmp3 = icmp ugt i32 %2, 65535
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end11, !prof !120

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %2 to i16
  %3 = ptrtoint ptr %r_port to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %r_port, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !84, !85, !87, !89, !91}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/rpcb_clnt.c", i32 325, i32 9}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rpcb_create_local.rpcb_create_local_mutex, !1, !"rpcb_create_local_mutex", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/sunrpc/rpcb_clnt.c", i32 572, i32 14}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sunrpc/rpcb_clnt.c", i32 738, i32 18}
!8 = !{ptr @__ksymtab_rpcb_getport_async, !9, !"__ksymtab_rpcb_getport_async", i1 false, i1 false}
!9 = !{!"../net/sunrpc/rpcb_clnt.c", i32 763, i32 1}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rpcb_create_local_unix.rpcb_localaddr_rpcbind, !15, !"rpcb_localaddr_rpcbind", i1 false, i1 false}
!15 = !{!"../net/sunrpc/rpcb_clnt.c", i32 225, i32 34}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sunrpc/rpcb_clnt.c", i32 234, i32 17}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/sunrpc/rpcb_clnt.c", i32 238, i32 12}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/sunrpc/rpcb_clnt.c", i32 1089, i32 11}
!22 = !{ptr @rpcb_program, !23, !"rpcb_program", i1 false, i1 false}
!23 = !{!"../net/sunrpc/rpcb_clnt.c", i32 1088, i32 33}
!24 = !{ptr @rpcb_version, !25, !"rpcb_version", i1 false, i1 false}
!25 = !{!"../net/sunrpc/rpcb_clnt.c", i32 1078, i32 34}
!26 = !{ptr @rpcb_version2, !27, !"rpcb_version2", i1 false, i1 false}
!27 = !{!"../net/sunrpc/rpcb_clnt.c", i32 1055, i32 33}
!28 = !{ptr @rpcb_version2_counts, !29, !"rpcb_version2_counts", i1 false, i1 false}
!29 = !{!"../net/sunrpc/rpcb_clnt.c", i32 1054, i32 21}
!30 = !{ptr @rpcb_version3, !31, !"rpcb_version3", i1 false, i1 false}
!31 = !{!"../net/sunrpc/rpcb_clnt.c", i32 1063, i32 33}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/sunrpc/rpcb_clnt.c", i32 973, i32 14}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/sunrpc/rpcb_clnt.c", i32 983, i32 14}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/sunrpc/rpcb_clnt.c", i32 993, i32 14}
!38 = !{ptr @rpcb_procedures3, !39, !"rpcb_procedures3", i1 false, i1 false}
!39 = !{!"../net/sunrpc/rpcb_clnt.c", i32 964, i32 34}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../net/sunrpc/rpcb_clnt.c", i32 862, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rpcb_version3_counts, !44, !"rpcb_version3_counts", i1 false, i1 false}
!44 = !{!"../net/sunrpc/rpcb_clnt.c", i32 1062, i32 21}
!45 = !{ptr @rpcb_version4, !46, !"rpcb_version4", i1 false, i1 false}
!46 = !{!"../net/sunrpc/rpcb_clnt.c", i32 1071, i32 33}
!47 = !{ptr @rpcb_procedures4, !48, !"rpcb_procedures4", i1 false, i1 false}
!48 = !{!"../net/sunrpc/rpcb_clnt.c", i32 997, i32 34}
!49 = !{ptr @rpcb_version4_counts, !50, !"rpcb_version4_counts", i1 false, i1 false}
!50 = !{!"../net/sunrpc/rpcb_clnt.c", i32 1070, i32 21}
!51 = !{ptr @rpcb_stats, !52, !"rpcb_stats", i1 false, i1 false}
!52 = !{!"../net/sunrpc/rpcb_clnt.c", i32 1086, i32 24}
!53 = !{ptr @rpcb_create_local_net.rpcb_inaddr_loopback, !54, !"rpcb_inaddr_loopback", i1 false, i1 false}
!54 = !{!"../net/sunrpc/rpcb_clnt.c", i32 278, i32 34}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../net/sunrpc/rpcb_clnt.c", i32 292, i32 12}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/trace/events/sunrpc.h", i32 1392, i32 1}
!59 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!63 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../include/trace/events/sunrpc.h", i32 1452, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/trace/events/sunrpc.h", i32 1422, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!72 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.15, !71, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!76 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/trace/events/sunrpc.h", i32 1326, i32 1}
!79 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!80 = !{ptr @rpcb_getport_ops, !81, !"rpcb_getport_ops", i1 false, i1 false}
!81 = !{!"../net/sunrpc/rpcb_clnt.c", i32 142, i32 34}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/trace/events/sunrpc.h", i32 1363, i32 1}
!84 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!85 = !{ptr @.str.18, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/sunrpc/rpcb_clnt.c", i32 960, i32 14}
!87 = !{ptr @rpcb_procedures2, !88, !"rpcb_procedures2", i1 false, i1 false}
!88 = !{!"../net/sunrpc/rpcb_clnt.c", i32 931, i32 34}
!89 = !{ptr @rpcb_next_version, !90, !"rpcb_next_version", i1 false, i1 false}
!90 = !{!"../net/sunrpc/rpcb_clnt.c", i32 1030, i32 31}
!91 = !{ptr @rpcb_next_version6, !92, !"rpcb_next_version6", i1 false, i1 false}
!92 = !{!"../net/sunrpc/rpcb_clnt.c", i32 1040, i32 31}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 2149382423}
!104 = !{i64 2149382689}
!105 = !{!"auto-init"}
!106 = !{i64 2159732491}
!107 = !{i64 2148979641, i64 2148979646, i64 2148979659, i64 2148979703, i64 2148979737, i64 2148979758}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 2158886699}
!110 = !{i64 2158886952}
!111 = !{i64 2149390982}
!112 = !{i64 2149392018}
!113 = !{i64 2158903738}
!114 = !{i64 2158903985}
!115 = !{i64 2159749116, i64 2159749603, i64 2159749153, i64 2159749209, i64 2159749243, i64 2159749267, i64 2159749308, i64 2159749329, i64 2159749357, i64 2159749391}
!116 = !{i64 2157198848}
!117 = !{i64 2157199127}
!118 = !{i64 2158853043}
!119 = !{i64 2158853278}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{i64 2158924560}
!122 = !{i64 2158924799}
!123 = !{i64 2158869829}
!124 = !{i64 2158870052}
