; ModuleID = '/llk/IR_all_yes/fs/lockd/svc.c_pt.bc'
source_filename = "../fs/lockd/svc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nlmsvc_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_nlmsvc_ops\09\09\09\09"
module asm "\09.long\09__crc_nlmsvc_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmsvc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmsvc_ops\22\09\09\09\09\09"
module asm "__kstrtabns_nlmsvc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lockd_up\22, \22a\22\09"
module asm "\09.weak\09__crc_lockd_up\09\09\09\09"
module asm "\09.long\09__crc_lockd_up\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockd_up:\09\09\09\09\09"
module asm "\09.asciz \09\22lockd_up\22\09\09\09\09\09"
module asm "__kstrtabns_lockd_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lockd_down\22, \22a\22\09"
module asm "\09.weak\09__crc_lockd_down\09\09\09\09"
module asm "\09.long\09__crc_lockd_down\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockd_down:\09\09\09\09\09"
module asm "\09.asciz \09\22lockd_down\22\09\09\09\09\09"
module asm "__kstrtabns_lockd_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.135 }
%union.anon.135 = type { ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.svc_program = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svc_serv_ops = type { ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.svc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.91, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.91 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockd_net = type { i32, i32, i32, %struct.delayed_work, %struct.lock_manager, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.123 }
%union.anon.123 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.auth_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.111 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.141, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.141 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.155 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@nlmsvc_ops = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_nlmsvc_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmsvc_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmsvc_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmsvc_ops to i32), ptr @__kstrtab_nlmsvc_ops, ptr @__kstrtabns_nlmsvc_ops }, section "___ksymtab_gpl+nlmsvc_ops", align 4
@nlmsvc_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nlmsvc_mutex, i64 52), ptr getelementptr (i8, ptr @nlmsvc_mutex, i64 52) }, ptr @nlmsvc_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nlmsvc_serv = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_lockd_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockd_up = external dso_local constant [0 x i8], align 1
@__ksymtab_lockd_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockd_up to i32), ptr @__kstrtab_lockd_up, ptr @__kstrtabns_lockd_up }, section "___ksymtab_gpl+lockd_up", align 4
@__kstrtab_lockd_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockd_down = external dso_local constant [0 x i8], align 1
@__ksymtab_lockd_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockd_down to i32), ptr @__kstrtab_lockd_down, ptr @__kstrtabns_lockd_down }, section "___ksymtab_gpl+lockd_down", align 4
@__UNIQUE_ID_author504 = internal constant [44 x i8] c"lockd.author=Olaf Kirch <okir@monad.swb.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description505 = internal constant [56 x i8] c"lockd.description=NFS file locking service version 0.5.\00", section ".modinfo", align 1
@__UNIQUE_ID_file506 = internal constant [26 x i8] c"lockd.file=fs/lockd/lockd\00", section ".modinfo", align 1
@__UNIQUE_ID_license507 = internal constant [18 x i8] c"lockd.license=GPL\00", section ".modinfo", align 1
@__param_str_nlm_grace_period = internal constant [23 x i8] c"lockd.nlm_grace_period\00", align 1
@__param_ops_nlm_grace_period = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_grace_period, ptr @param_get_ulong, ptr null }, align 4
@nlm_grace_period = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nlm_grace_period = internal constant %struct.kernel_param { ptr @__param_str_nlm_grace_period, ptr null, ptr @__param_ops_nlm_grace_period, i16 420, i8 -1, i8 0, %union.anon.135 { ptr @nlm_grace_period } }, section "__param", align 4
@__param_str_nlm_timeout = internal constant [18 x i8] c"lockd.nlm_timeout\00", align 1
@__param_ops_nlm_timeout = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_timeout, ptr @param_get_ulong, ptr null }, align 4
@nlm_timeout = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_nlm_timeout = internal constant %struct.kernel_param { ptr @__param_str_nlm_timeout, ptr null, ptr @__param_ops_nlm_timeout, i16 420, i8 -1, i8 0, %union.anon.135 { ptr @nlm_timeout } }, section "__param", align 4
@__param_str_nlm_udpport = internal constant [18 x i8] c"lockd.nlm_udpport\00", align 1
@__param_ops_nlm_udpport = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_port, ptr @param_get_int, ptr null }, align 4
@nlm_udpport = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nlm_udpport = internal constant %struct.kernel_param { ptr @__param_str_nlm_udpport, ptr null, ptr @__param_ops_nlm_udpport, i16 420, i8 -1, i8 0, %union.anon.135 { ptr @nlm_udpport } }, section "__param", align 4
@__param_str_nlm_tcpport = internal constant [18 x i8] c"lockd.nlm_tcpport\00", align 1
@__param_ops_nlm_tcpport = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_port, ptr @param_get_int, ptr null }, align 4
@nlm_tcpport = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nlm_tcpport = internal constant %struct.kernel_param { ptr @__param_str_nlm_tcpport, ptr null, ptr @__param_ops_nlm_tcpport, i16 420, i8 -1, i8 0, %union.anon.135 { ptr @nlm_tcpport } }, section "__param", align 4
@__param_str_nsm_use_hostnames = internal constant [24 x i8] c"lockd.nsm_use_hostnames\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nsm_use_hostnames = external dso_local global i8, align 1
@__param_nsm_use_hostnames = internal constant %struct.kernel_param { ptr @__param_str_nsm_use_hostnames, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.135 { ptr @nsm_use_hostnames } }, section "__param", align 4
@__UNIQUE_ID_nsm_use_hostnamestype508 = internal constant [38 x i8] c"lockd.parmtype=nsm_use_hostnames:bool\00", section ".modinfo", align 1
@__param_str_nlm_max_connections = internal constant [26 x i8] c"lockd.nlm_max_connections\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@nlm_max_connections = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_nlm_max_connections = internal constant %struct.kernel_param { ptr @__param_str_nlm_max_connections, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.135 { ptr @nlm_max_connections } }, section "__param", align 4
@__UNIQUE_ID_nlm_max_connectionstype509 = internal constant [40 x i8] c"lockd.parmtype=nlm_max_connections:uint\00", section ".modinfo", align 1
@lockd_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @lockd_init_net, ptr null, ptr @lockd_exit_net, ptr null, ptr @lockd_net_id, i32 132 }, [32 x i8] zeroinitializer }, align 32
@nlm_sysctl_table = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_lockd__510_690_init_nlm6 = internal global ptr @init_nlm, section ".initcall6.init", align 4
@__exitcall_exit_nlm = internal global ptr @exit_nlm, section ".exitcall.exit", align 4
@nlmsvc_timeout = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@lockd_net_id = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nlmsvc_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nlmsvc_mutex\00", [19 x i8] zeroinitializer }, align 32
@nlmsvc_users = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lockd_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014lockd_up: no pid, %d users??\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lockd_get\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/lockd/svc.c\00", [17 x i8] zeroinitializer }, align 32
@lockd_get._entry_ptr = internal global ptr @lockd_get._entry, section ".printk_index", align 4
@nlmsvc_program = internal global { %struct.svc_program, [48 x i8] } { %struct.svc_program { ptr null, i32 100021, i32 0, i32 0, i32 5, ptr @nlmsvc_version, ptr @.str.11, ptr @.str.12, ptr @nlmsvc_stats, ptr @lockd_authenticate, ptr @svc_generic_init_request, ptr @svc_generic_rpcbind_set }, [48 x i8] zeroinitializer }, align 32
@lockd_sv_ops = internal constant { %struct.svc_serv_ops, [16 x i8] } { %struct.svc_serv_ops { ptr @svc_rpcb_cleanup, ptr @lockd, ptr @svc_xprt_do_enqueue, ptr null }, [16 x i8] zeroinitializer }, align 32
@lockd_get._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014lockd_up: create service failed\0A\00", [61 x i8] zeroinitializer }, align 32
@lockd_get._entry_ptr.7 = internal global ptr @lockd_get._entry.5, section ".printk_index", align 4
@lockd_inetaddr_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @lockd_inetaddr_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@lockd_inet6addr_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @lockd_inet6addr_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@nlm_debug = external dso_local local_unnamed_addr global i32, align 4
@lockd_get._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lockd_up: service created\0A\00", [37 x i8] zeroinitializer }, align 32
@lockd_get._entry_ptr.10 = internal global ptr @lockd_get._entry.8, section ".printk_index", align 4
@nlmsvc_version = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr @nlmsvc_version1, ptr null, ptr @nlmsvc_version3, ptr @nlmsvc_version4], [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lockd\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nfsd\00", [27 x i8] zeroinitializer }, align 32
@nlmsvc_stats = internal global { %struct.svc_stat, [60 x i8] } zeroinitializer, align 32
@nlmsvc_version1 = internal constant { %struct.svc_version, [36 x i8] } { %struct.svc_version { i32 1, i32 17, ptr @nlmsvc_procedures, ptr @nlmsvc_version1_count, i32 384, i8 0, i8 0, i8 0, ptr @nlmsvc_dispatch }, [36 x i8] zeroinitializer }, align 32
@nlmsvc_version3 = internal constant { %struct.svc_version, [36 x i8] } { %struct.svc_version { i32 3, i32 24, ptr @nlmsvc_procedures, ptr @nlmsvc_version3_count, i32 384, i8 0, i8 0, i8 0, ptr @nlmsvc_dispatch }, [36 x i8] zeroinitializer }, align 32
@nlmsvc_version4 = internal constant { %struct.svc_version, [36 x i8] } { %struct.svc_version { i32 4, i32 24, ptr @nlmsvc_procedures4, ptr @nlmsvc_version4_count, i32 384, i8 0, i8 0, i8 0, ptr @nlmsvc_dispatch }, [36 x i8] zeroinitializer }, align 32
@nlmsvc_procedures = external dso_local constant [0 x %struct.svc_procedure], align 4
@nlmsvc_version1_count = internal global { [17 x i32], [60 x i8] } zeroinitializer, align 32
@nlmsvc_version3_count = internal global { [24 x i32], [32 x i8] } zeroinitializer, align 32
@nlmsvc_procedures4 = external dso_local constant [0 x %struct.svc_procedure], align 4
@nlmsvc_version4_count = internal global { [24 x i32], [32 x i8] } zeroinitializer, align 32
@init_net = external dso_local global %struct.net, align 128
@lockd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NFS locking service started (ver 0.5).\0A\00", [56 x i8] zeroinitializer }, align 32
@lockd._entry_ptr = internal global ptr @lockd._entry, section ".printk_index", align 4
@lockd._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.4, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lockd: request from %s\0A\00", [40 x i8] zeroinitializer }, align 32
@lockd._entry_ptr.16 = internal global ptr @lockd._entry.14, section ".printk_index", align 4
@lockd._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.4, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd_down: service stopped\0A\00", [35 x i8] zeroinitializer }, align 32
@lockd._entry_ptr.19 = internal global ptr @lockd._entry.17, section ".printk_index", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@lockd_inetaddr_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lockd_inetaddr_event: removed %pI4\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lockd_inetaddr_event\00", [43 x i8] zeroinitializer }, align 32
@lockd_inetaddr_event._entry_ptr = internal global ptr @lockd_inetaddr_event._entry, section ".printk_index", align 4
@lockd_inet6addr_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"lockd_inet6addr_event: removed %pI6\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lockd_inet6addr_event\00", [42 x i8] zeroinitializer }, align 32
@lockd_inet6addr_event._entry_ptr = internal global ptr @lockd_inet6addr_event._entry, section ".printk_index", align 4
@lockd_up_net._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: per-net data created; net=%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lockd_up_net\00", [19 x i8] zeroinitializer }, align 32
@lockd_up_net._entry_ptr = internal global ptr @lockd_up_net._entry, section ".printk_index", align 4
@make_socks.warned = internal global { i32, [28 x i8] } zeroinitializer, align 32
@make_socks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014lockd_up: makesock failed, error=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"make_socks\00", [21 x i8] zeroinitializer }, align 32
@make_socks._entry_ptr = internal global ptr @make_socks._entry, section ".printk_index", align 4
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udp\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lockd_down: no users!\0A\00", [41 x i8] zeroinitializer }, align 32
@lockd_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lockd_down: service destroyed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lockd_put\00", [22 x i8] zeroinitializer }, align 32
@lockd_put._entry_ptr = internal global ptr @lockd_put._entry, section ".printk_index", align 4
@lockd_down_net._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: per-net data destroyed; net=%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lockd_down_net\00", [17 x i8] zeroinitializer }, align 32
@lockd_down_net._entry_ptr = internal global ptr @lockd_down_net._entry, section ".printk_index", align 4
@lockd_down_net._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: no users! net=%x\0A\00", [40 x i8] zeroinitializer }, align 32
@lockd_down_net._entry_ptr.42 = internal global ptr @lockd_down_net._entry.40, section ".printk_index", align 4
@lockd_init_net.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&ln->grace_period_end)->work)\00", [46 x i8] zeroinitializer }, align 32
@lockd_init_net.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&ln->grace_period_end)->timer\00", [32 x i8] zeroinitializer }, align 32
@lockd_exit_net.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"net %x %s: lockd_manager.list is not empty\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.lockd_exit_net = private unnamed_addr constant [15 x i8] c"lockd_exit_net\00", align 1
@lockd_exit_net.__already_done.47 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"net %x %s: nsm_handles list is not empty\0A\00", [54 x i8] zeroinitializer }, align 32
@lockd_exit_net.__already_done.49 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"net %x %s: grace_period_end was not cancelled\0A\00", [49 x i8] zeroinitializer }, align 32
@nlm_sysctl_root = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.51, ptr null, i32 0, i16 365, ptr @nlm_sysctl_dir, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@nlm_sysctl_dir = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.52, ptr null, i32 0, i16 365, ptr @nlm_sysctls, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfs\00", [28 x i8] zeroinitializer }, align 32
@nlm_sysctls = internal global { [7 x %struct.ctl_table], [36 x i8] } { [7 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.53, ptr @nlm_grace_period, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @nlm_grace_period_min, ptr @nlm_grace_period_max }, %struct.ctl_table { ptr @.str.54, ptr @nlm_timeout, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @nlm_timeout_min, ptr @nlm_timeout_max }, %struct.ctl_table { ptr @.str.55, ptr @nlm_udpport, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @nlm_port_min, ptr @nlm_port_max }, %struct.ctl_table { ptr @.str.56, ptr @nlm_tcpport, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @nlm_port_min, ptr @nlm_port_max }, %struct.ctl_table { ptr @.str.57, ptr @nsm_use_hostnames, i32 4, i16 420, ptr null, ptr @proc_dobool, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.58, ptr @nsm_local_state, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nlm_grace_period\00", [47 x i8] zeroinitializer }, align 32
@nlm_grace_period_min = internal constant { i32, [28 x i8] } zeroinitializer, align 32
@nlm_grace_period_max = internal constant { i32, [28 x i8] } { i32 240, [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nlm_timeout\00", [20 x i8] zeroinitializer }, align 32
@nlm_timeout_min = internal constant { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@nlm_timeout_max = internal constant { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nlm_udpport\00", [20 x i8] zeroinitializer }, align 32
@nlm_port_min = internal constant { i32, [28 x i8] } zeroinitializer, align 32
@nlm_port_max = internal constant { i32, [28 x i8] } { i32 65535, [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nlm_tcpport\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nsm_use_hostnames\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nsm_local_state\00", [16 x i8] zeroinitializer }, align 32
@nsm_local_state = external dso_local global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 60000]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 4294967285, i64 4294967292]
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"nlmsvc_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 52, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"nlmsvc_mutex\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"nlmsvc_serv\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 57, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"nlm_grace_period\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 66, i32 23 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"nlm_timeout\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 67, i32 23 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"nlm_udpport\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 68, i32 14 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"nlm_tcpport\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 68, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"nlm_max_connections\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 71, i32 22 }
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"lockd_net_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 637, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"nlm_sysctl_table\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 83, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"nlmsvc_timeout\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 58, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant [13 x i8] c"lockd_net_id\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 60, i32 14 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 55, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"nlmsvc_users\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 56, i32 22 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 376, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"nlmsvc_program\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 774, i32 27 }
@___asan_gen_.120 = private unnamed_addr constant [13 x i8] c"lockd_sv_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 353, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 385, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [24 x i8] c"lockd_inetaddr_notifier\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 321, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant [25 x i8] c"lockd_inet6addr_notifier\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 348, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 401, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"nlmsvc_version\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 763, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 778, i32 14 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 779, i32 15 }
@___asan_gen_.150 = private unnamed_addr constant [13 x i8] c"nlmsvc_stats\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 771, i32 25 }
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"nlmsvc_version1\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 735, i32 33 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"nlmsvc_version3\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 744, i32 33 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"nlmsvc_version4\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 754, i32 33 }
@___asan_gen_.162 = private unnamed_addr constant [22 x i8] c"nlmsvc_version1_count\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 734, i32 21 }
@___asan_gen_.165 = private unnamed_addr constant [22 x i8] c"nlmsvc_version3_count\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 743, i32 21 }
@___asan_gen_.168 = private unnamed_addr constant [22 x i8] c"nlmsvc_version4_count\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 753, i32 21 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 144, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 172, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 184, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 45, i32 7 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 695, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 723, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 310, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 336, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 272, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [7 x i8] c"warned\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 233, i32 13 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 249, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 211, i32 36 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 216, i32 37 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 408, i32 6 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 420, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 290, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 294, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 615, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 626, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 629, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 632, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [16 x i8] c"nlm_sysctl_root\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 530, i32 25 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 532, i32 15 }
@___asan_gen_.303 = private unnamed_addr constant [15 x i8] c"nlm_sysctl_dir\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 521, i32 25 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 523, i32 15 }
@___asan_gen_.309 = private unnamed_addr constant [12 x i8] c"nlm_sysctls\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 467, i32 25 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 469, i32 15 }
@___asan_gen_.315 = private unnamed_addr constant [21 x i8] c"nlm_grace_period_min\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 76, i32 28 }
@___asan_gen_.318 = private unnamed_addr constant [21 x i8] c"nlm_grace_period_max\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 77, i32 28 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 478, i32 15 }
@___asan_gen_.324 = private unnamed_addr constant [16 x i8] c"nlm_timeout_min\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 78, i32 28 }
@___asan_gen_.327 = private unnamed_addr constant [16 x i8] c"nlm_timeout_max\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 79, i32 28 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 487, i32 15 }
@___asan_gen_.333 = private unnamed_addr constant [13 x i8] c"nlm_port_min\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 80, i32 19 }
@___asan_gen_.336 = private unnamed_addr constant [13 x i8] c"nlm_port_max\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 80, i32 37 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 496, i32 15 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 505, i32 15 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.346 = private constant [18 x i8] c"../fs/lockd/svc.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 512, i32 15 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__UNIQUE_ID_author504, ptr @__UNIQUE_ID_description505, ptr @__UNIQUE_ID_file506, ptr @__UNIQUE_ID_license507, ptr @__UNIQUE_ID_nlm_max_connectionstype509, ptr @__UNIQUE_ID_nsm_use_hostnamestype508, ptr @__exitcall_exit_nlm, ptr @__initcall__kmod_lockd__510_690_init_nlm6, ptr @__ksymtab_lockd_down, ptr @__ksymtab_lockd_up, ptr @__ksymtab_nlmsvc_ops, ptr @__param_nlm_grace_period, ptr @__param_nlm_max_connections, ptr @__param_nlm_tcpport, ptr @__param_nlm_timeout, ptr @__param_nlm_udpport, ptr @__param_nsm_use_hostnames, ptr @exit_nlm, ptr @lockd._entry, ptr @lockd._entry.14, ptr @lockd._entry.17, ptr @lockd._entry_ptr, ptr @lockd._entry_ptr.16, ptr @lockd._entry_ptr.19, ptr @lockd_down_net._entry, ptr @lockd_down_net._entry.40, ptr @lockd_down_net._entry_ptr, ptr @lockd_down_net._entry_ptr.42, ptr @lockd_get._entry, ptr @lockd_get._entry.5, ptr @lockd_get._entry.8, ptr @lockd_get._entry_ptr, ptr @lockd_get._entry_ptr.10, ptr @lockd_get._entry_ptr.7, ptr @lockd_inet6addr_event._entry, ptr @lockd_inet6addr_event._entry_ptr, ptr @lockd_inetaddr_event._entry, ptr @lockd_inetaddr_event._entry_ptr, ptr @lockd_put._entry, ptr @lockd_put._entry_ptr, ptr @lockd_up_net._entry, ptr @lockd_up_net._entry_ptr, ptr @make_socks._entry, ptr @make_socks._entry_ptr, ptr @nlmsvc_ops, ptr @nlmsvc_mutex, ptr @nlmsvc_serv, ptr @nlm_grace_period, ptr @nlm_timeout, ptr @nlm_udpport, ptr @nlm_tcpport, ptr @nlm_max_connections, ptr @lockd_net_ops, ptr @nlm_sysctl_table, ptr @nlmsvc_timeout, ptr @lockd_net_id, ptr @.str, ptr @.str.1, ptr @nlmsvc_users, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nlmsvc_program, ptr @lockd_sv_ops, ptr @.str.6, ptr @lockd_inetaddr_notifier, ptr @lockd_inet6addr_notifier, ptr @.str.9, ptr @nlmsvc_version, ptr @.str.11, ptr @.str.12, ptr @nlmsvc_stats, ptr @nlmsvc_version1, ptr @nlmsvc_version3, ptr @nlmsvc_version4, ptr @nlmsvc_version1_count, ptr @nlmsvc_version3_count, ptr @nlmsvc_version4_count, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @make_socks.warned, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @lockd_init_net.__key, ptr @.str.43, ptr @lockd_init_net.__key.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @nlm_sysctl_root, ptr @.str.51, ptr @nlm_sysctl_dir, ptr @.str.52, ptr @nlm_sysctls, ptr @.str.53, ptr @nlm_grace_period_min, ptr @nlm_grace_period_max, ptr @.str.54, ptr @nlm_timeout_min, ptr @nlm_timeout_max, ptr @.str.55, ptr @nlm_port_min, ptr @nlm_port_max, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_serv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_grace_period to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_udpport to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_tcpport to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_max_connections to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_sysctl_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_users to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_program to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_sv_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_get._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_inetaddr_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_inet6addr_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_get._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_stats to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_version1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_version3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_version4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_version1_count to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_version3_count to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_version4_count to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_inetaddr_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_inet6addr_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_up_net._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_socks.warned to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_socks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_down_net._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_down_net._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_init_net.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockd_init_net.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_sysctl_root to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_sysctl_dir to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_sysctls to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_grace_period_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_grace_period_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_timeout_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_timeout_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_port_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_port_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lockd_up(ptr noundef %net, ptr noundef %cred) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nlmsvc_mutex, i32 noundef 0) #10
  %0 = load ptr, ptr @nlmsvc_serv, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %sv_refcnt.i.i = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i.i, ptr %sv_refcnt.i.i, i32 1, ptr elementtype(i32) %sv_refcnt.i.i) #10, !srcloc !235
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !236

if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !237

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %3 = load i32, ptr @nlmsvc_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %do.end.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3) #13
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %if.end.i.if.end4.i_crit_edge
  %4 = load i32, ptr @nlm_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not.i = icmp eq i32 %4, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end4.i.if.end7.i_crit_edge

if.end4.i.if.end7.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 10, ptr @nlm_timeout, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end7.i_crit_edge
  %5 = load i32, ptr @nlm_timeout, align 4
  %mul.i = mul i32 %5, 100
  store i32 %mul.i, ptr @nlmsvc_timeout, align 4
  %call8.i = tail call ptr @svc_create(ptr noundef nonnull @nlmsvc_program, i32 noundef 1408, ptr noundef nonnull @lockd_sv_ops) #10
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %do.end13.i, label %if.end16.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #13
  br label %err

if.end16.i:                                       ; preds = %if.end7.i
  %6 = load i32, ptr @nlm_max_connections, align 4
  %sv_maxconn.i = getelementptr inbounds %struct.svc_serv, ptr %call8.i, i32 0, i32 5
  %7 = ptrtoint ptr %sv_maxconn.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %sv_maxconn.i, align 4
  %call17.i = tail call i32 @svc_set_num_threads(ptr noundef nonnull %call8.i, ptr noundef null, i32 noundef 1) #10
  %sv_refcnt.i43.i = getelementptr inbounds %struct.svc_serv, ptr %call8.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i44.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i43.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt.i43.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i43.i, ptr %sv_refcnt.i43.i, i32 1, ptr elementtype(i32) %sv_refcnt.i43.i) #10, !srcloc !239
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i45.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i45.i, label %if.end5.i.i.i.i.i.i.svc_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !237

if.end5.i.i.i.i.i.i.svc_put.exit.i_crit_edge:     ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %svc_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i43.i, i32 noundef 3) #10
  br label %svc_put.exit.i

if.then.i.i.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !240
  tail call void @svc_destroy(ptr noundef %sv_refcnt.i43.i) #10
  br label %svc_put.exit.i

svc_put.exit.i:                                   ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.svc_put.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp.i = icmp slt i32 %call17.i, 0
  br i1 %cmp.i, label %svc_put.exit.i.err_crit_edge, label %if.end19.i

svc_put.exit.i.err_crit_edge:                     ; preds = %svc_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end19.i:                                       ; preds = %svc_put.exit.i
  store ptr %call8.i, ptr @nlmsvc_serv, align 4
  %call20.i = tail call i32 @register_inetaddr_notifier(ptr noundef nonnull @lockd_inetaddr_notifier) #10
  %call21.i = tail call i32 @register_inet6addr_notifier(ptr noundef nonnull @lockd_inet6addr_notifier) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %9 = load i32, ptr @nlm_debug, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool23.not.i, label %if.end19.i.if.end_crit_edge, label %do.end29.i, !prof !237

if.end19.i.if.end_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end29.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %if.end

if.end:                                           ; preds = %do.end29.i, %if.end19.i.if.end_crit_edge, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end_crit_edge
  %storemerge.in = load i32, ptr @nlmsvc_users, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr @nlmsvc_users, align 4
  %10 = load ptr, ptr @nlmsvc_serv, align 4
  %11 = load i32, ptr @lockd_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %11) #10
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i, align 4
  %inc.i6 = add i32 %13, 1
  store i32 %inc.i6, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i7 = icmp eq i32 %13, 0
  br i1 %tobool.not.i7, label %if.end.i8, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end.i8:                                        ; preds = %if.end
  %call1.i = tail call i32 @svc_bind(ptr noundef %10, ptr noundef %net) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i9, label %lockd_up_net.exit

if.end4.i9:                                       ; preds = %if.end.i8
  %call.i.i = tail call fastcc i32 @create_lockd_family(ptr noundef %10, ptr noundef %net, i32 noundef 2, ptr noundef %cred) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end4.i9.out_err.i.i_crit_edge, label %if.end.i.i

if.end4.i9.out_err.i.i_crit_edge:                 ; preds = %if.end4.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err.i.i

if.end.i.i:                                       ; preds = %if.end4.i9
  %call1.i.i = tail call fastcc i32 @create_lockd_family(ptr noundef %10, ptr noundef %net, i32 noundef 10, ptr noundef %cred) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp2.i.i = icmp sgt i32 %call1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -97, i32 %call1.i.i)
  %cmp3.not.i.i = icmp eq i32 %call1.i.i, -97
  %or.cond.i.i = or i1 %cmp2.i.i, %cmp3.not.i.i
  br i1 %or.cond.i.i, label %if.end7.i10, label %if.end.i.i.out_err.i.i_crit_edge

if.end.i.i.out_err.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err.i.i

out_err.i.i:                                      ; preds = %if.end.i.i.out_err.i.i_crit_edge, %if.end4.i9.out_err.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %if.end4.i9.out_err.i.i_crit_edge ], [ %call1.i.i, %if.end.i.i.out_err.i.i_crit_edge ]
  %14 = load i32, ptr @make_socks.warned, align 4
  %inc.i.i = add i32 %14, 1
  store i32 %inc.i.i, ptr @make_socks.warned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp6.i.i = icmp eq i32 %14, 0
  br i1 %cmp6.i.i, label %do.end.i.i, label %out_err.i.i.lockd_up_net.exit.thread19_crit_edge

out_err.i.i.lockd_up_net.exit.thread19_crit_edge: ; preds = %out_err.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lockd_up_net.exit.thread19

do.end.i.i:                                       ; preds = %out_err.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %err.0.i.i) #13
  br label %lockd_up_net.exit.thread19

lockd_up_net.exit.thread19:                       ; preds = %do.end.i.i, %out_err.i.i.lockd_up_net.exit.thread19_crit_edge
  tail call void @svc_shutdown_net(ptr noundef %10, ptr noundef %net) #10
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i, align 4
  %dec.i21 = add i32 %16, -1
  store i32 %dec.i21, ptr %call.i, align 4
  br label %if.then2

if.end7.i10:                                      ; preds = %if.end.i.i
  store i32 0, ptr @make_socks.warned, align 4
  %17 = load i32, ptr @nlm_grace_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  %18 = load i32, ptr @nlm_timeout, align 4
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i11

if.then.i.i.i11:                                  ; preds = %if.end7.i10
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %17, -1
  %add.i.i.i = add i32 %sub.i.i.i, %18
  %19 = urem i32 %add.i.i.i, %18
  %mul.i.i.i = sub i32 %add.i.i.i, %19
  %mul1.i.i.i = mul i32 %mul.i.i.i, 100
  br label %set_grace_period.exit.i

if.else.i.i.i:                                    ; preds = %if.end7.i10
  call void @__sanitizer_cov_trace_pc() #12
  %mul3.i.i.i = mul i32 %18, 500
  br label %set_grace_period.exit.i

set_grace_period.exit.i:                          ; preds = %if.else.i.i.i, %if.then.i.i.i11
  %retval.0.i.i.i = phi i32 [ %mul1.i.i.i, %if.then.i.i.i11 ], [ %mul3.i.i.i, %if.else.i.i.i ]
  %20 = load i32, ptr @lockd_net_id, align 4
  %call1.i27.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %20) #10
  %lockd_manager.i.i = getelementptr inbounds %struct.lockd_net, ptr %call1.i27.i, i32 0, i32 4
  tail call void @locks_start_grace(ptr noundef %net, ptr noundef %lockd_manager.i.i) #10
  %grace_period_end.i.i = getelementptr inbounds %struct.lockd_net, ptr %call1.i27.i, i32 0, i32 3
  %call2.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %grace_period_end.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %grace_period_end.i.i, i32 noundef %retval.0.i.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %22 = load i32, ptr @nlm_debug, align 4
  %and.i12 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool8.not.i = icmp eq i32 %and.i12, 0
  br i1 %tobool8.not.i, label %set_grace_period.exit.i.err_crit_edge, label %do.end.i13, !prof !237

set_grace_period.exit.i.err_crit_edge:            ; preds = %set_grace_period.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.end.i13:                                       ; preds = %set_grace_period.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %inum.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %23 = ptrtoint ptr %inum.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %inum.i, align 8
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %24) #13
  br label %err

lockd_up_net.exit:                                ; preds = %if.end.i8
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call.i, align 4
  %dec.i = add i32 %26, -1
  store i32 %dec.i, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %lockd_up_net.exit.if.then2_crit_edge, label %lockd_up_net.exit.err_crit_edge

lockd_up_net.exit.err_crit_edge:                  ; preds = %lockd_up_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

lockd_up_net.exit.if.then2_crit_edge:             ; preds = %lockd_up_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

if.then2:                                         ; preds = %lockd_up_net.exit.if.then2_crit_edge, %lockd_up_net.exit.thread19
  %error.0.i23 = phi i32 [ %err.0.i.i, %lockd_up_net.exit.thread19 ], [ %call1.i, %lockd_up_net.exit.if.then2_crit_edge ]
  tail call fastcc void @lockd_put()
  br label %err

err:                                              ; preds = %if.then2, %lockd_up_net.exit.err_crit_edge, %do.end.i13, %set_grace_period.exit.i.err_crit_edge, %if.end.err_crit_edge, %svc_put.exit.i.err_crit_edge, %do.end13.i
  %error.0 = phi i32 [ %error.0.i23, %if.then2 ], [ %call1.i, %lockd_up_net.exit.err_crit_edge ], [ -12, %do.end13.i ], [ %call17.i, %svc_put.exit.i.err_crit_edge ], [ 0, %if.end.err_crit_edge ], [ 0, %do.end.i13 ], [ 0, %set_grace_period.exit.i.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @nlmsvc_mutex) #10
  ret i32 %error.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lockd_put() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nlmsvc_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !236

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 408, i32 noundef 9, ptr noundef nonnull @.str.35) #10
  br label %do.end43

if.end21.critedge:                                ; preds = %entry
  %dec = add i32 %0, -1
  store i32 %dec, ptr @nlmsvc_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %if.end24, label %if.end21.critedge.do.end43_crit_edge

if.end21.critedge.do.end43_crit_edge:             ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

if.end24:                                         ; preds = %if.end21.critedge
  %call = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @lockd_inetaddr_notifier) #10
  %call25 = tail call i32 @unregister_inet6addr_notifier(ptr noundef nonnull @lockd_inet6addr_notifier) #10
  %1 = load ptr, ptr @nlmsvc_serv, align 4
  %call26 = tail call i32 @svc_set_num_threads(ptr noundef %1, ptr noundef null, i32 noundef 0) #10
  store ptr null, ptr @nlmsvc_serv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %2 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end24.do.end43_crit_edge, label %do.end38, !prof !237

if.end24.do.end43_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

do.end38:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #13
  br label %do.end43

do.end43:                                         ; preds = %do.end38, %if.end24.do.end43_crit_edge, %if.end21.critedge.do.end43_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lockd_down(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nlmsvc_mutex, i32 noundef 0) #10
  %0 = load ptr, ptr @nlmsvc_serv, align 4
  %1 = load i32, ptr @lockd_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %1) #10
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.end15.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %dec.i = add i32 %3, -1
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec.i, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.lockd_down_net.exit_crit_edge

if.then.i.lockd_down_net.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lockd_down_net.exit

if.then2.i:                                       ; preds = %if.then.i
  tail call void @nlm_shutdown_hosts_net(ptr noundef %net) #10
  %grace_period_end.i = getelementptr inbounds %struct.lockd_net, ptr %call.i, i32 0, i32 3
  %call3.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %grace_period_end.i) #10
  %lockd_manager.i = getelementptr inbounds %struct.lockd_net, ptr %call.i, i32 0, i32 4
  tail call void @locks_end_grace(ptr noundef %lockd_manager.i) #10
  tail call void @svc_shutdown_net(ptr noundef %0, ptr noundef %net) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %5 = load i32, ptr @nlm_debug, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.lockd_down_net.exit_crit_edge, label %do.end.i, !prof !237

if.then2.i.lockd_down_net.exit_crit_edge:         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lockd_down_net.exit

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %inum.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %6 = ptrtoint ptr %inum.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inum.i, align 8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %7) #13
  br label %lockd_down_net.exit

do.end15.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %inum18.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %8 = ptrtoint ptr %inum18.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inum18.i, align 8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %9) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/lockd/svc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 296, 0\0A.popsection", ""() #10, !srcloc !241
  unreachable

lockd_down_net.exit:                              ; preds = %do.end.i, %if.then2.i.lockd_down_net.exit_crit_edge, %if.then.i.lockd_down_net.exit_crit_edge
  tail call fastcc void @lockd_put()
  tail call void @mutex_unlock(ptr noundef nonnull @nlmsvc_mutex) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_nlm() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nlm_shutdown_hosts() #10
  tail call void @lockd_remove_procfs() #10
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @lockd_net_ops) #10
  %0 = load ptr, ptr @nlm_sysctl_table, align 4
  tail call void @unregister_sysctl_table(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_shutdown_hosts() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockd_remove_procfs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_nlm() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_sysctl_table(ptr noundef nonnull @nlm_sysctl_root) #10
  store ptr %call, ptr @nlm_sysctl_table, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @lockd_net_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.err_pernet_crit_edge

if.end.err_pernet_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pernet

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @lockd_create_procfs() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %err_procfs

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_procfs:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @lockd_net_ops) #10
  br label %err_pernet

err_pernet:                                       ; preds = %err_procfs, %if.end.err_pernet_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.err_pernet_crit_edge ], [ %call4, %err_procfs ]
  %0 = load ptr, ptr @nlm_sysctl_table, align 4
  tail call void @unregister_sysctl_table(ptr noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %err_pernet, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %err.0, %err_pernet ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_set_num_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lockd_authenticate(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_client = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 43
  %0 = ptrtoint ptr %rq_client to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rq_client, align 8
  %rq_authop = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 10
  %1 = ptrtoint ptr %rq_authop to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rq_authop, align 8
  %flavour = getelementptr inbounds %struct.auth_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %flavour to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flavour, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  %rq_auth_stat = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  br i1 %switch, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rq_auth_stat, align 4
  %rq_proc = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 30
  %6 = ptrtoint ptr %rq_proc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_proc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %7)
  %8 = icmp ult i32 %7, 17
  br i1 %8, label %switch.hole_check, label %sw.bb.if.end3_crit_edge

sw.bb.if.end3_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %switch.hole_check.if.end3_crit_edge, %sw.bb.if.end3_crit_edge
  %call4 = tail call i32 @svc_set_client(ptr noundef %rqstp) #10
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %rq_auth_stat, align 4
  br label %return

switch.hole_check:                                ; preds = %sw.bb
  %switch.shifted = lshr i32 97313, %7
  %10 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %switch.lobit.not = icmp eq i32 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end3_crit_edge, label %switch.hole_check.return_crit_edge

switch.hole_check.return_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

switch.hole_check.if.end3_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

return:                                           ; preds = %switch.hole_check.return_crit_edge, %sw.epilog, %if.end3
  %retval.0 = phi i32 [ 8, %sw.epilog ], [ %call4, %if.end3 ], [ 5, %switch.hole_check.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_generic_init_request(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_generic_rpcbind_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nlmsvc_dispatch(ptr noundef %rqstp, ptr nocapture noundef writeonly %statp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_procinfo = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 9
  %0 = ptrtoint ptr %rq_procinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_procinfo, align 4
  %rq_arg_stream.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 16
  %rq_arg.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %2 = ptrtoint ptr %rq_arg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_arg.i, align 4
  tail call void @xdr_init_decode(ptr noundef %rq_arg_stream.i, ptr noundef %rq_arg.i, ptr noundef %3, ptr noundef null) #10
  %rq_scratch_page.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 18
  %4 = ptrtoint ptr %rq_scratch_page.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_scratch_page.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %5) #10
  %scratch.i.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 16, i32 4
  %6 = ptrtoint ptr %scratch.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %scratch.i.i.i, align 4
  %iov_len.i.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 16, i32 4, i32 1
  %7 = ptrtoint ptr %iov_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %iov_len.i.i.i, align 4
  %pc_decode = getelementptr inbounds %struct.svc_procedure, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pc_decode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pc_decode, align 4
  %call = tail call zeroext i1 %9(ptr noundef %rqstp, ptr noundef %rq_arg_stream.i) #10
  br i1 %call, label %if.end, label %out_decode_err

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call1 = tail call i32 %11(ptr noundef %rqstp) #10
  %12 = ptrtoint ptr %statp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call1, ptr %statp, align 4
  %13 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %if.then5 [
    i32 60000, label %if.end.cleanup_crit_edge
    i32 0, label %if.end6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %rq_res_stream.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17
  %rq_res.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %scratch.i.i.i23 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 4
  %14 = ptrtoint ptr %scratch.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %scratch.i.i.i23, align 4
  %iov_len.i.i.i24 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 4, i32 1
  %15 = ptrtoint ptr %iov_len.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %iov_len.i.i.i24, align 4
  %buf1.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rq_res.i, ptr %buf1.i, align 4
  %iov.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 3
  %17 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rq_res.i, ptr %iov.i, align 4
  %18 = ptrtoint ptr %rq_res.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rq_res.i, align 4
  %iov_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iov_len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %21
  %22 = ptrtoint ptr %rq_res_stream.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %rq_res_stream.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %19, i32 4096
  %rq_auth_slack.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 39
  %23 = ptrtoint ptr %rq_auth_slack.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rq_auth_slack.i, align 8
  %idx.neg.i = sub i32 0, %24
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i, i32 %idx.neg.i
  %end.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 2
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr4.i, ptr %end.i, align 4
  %len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 8
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %len.i, align 4
  %pages.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 3
  %27 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i, align 4
  %add.ptr6.i = getelementptr ptr, ptr %28, i32 -1
  %page_ptr.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 5
  %29 = ptrtoint ptr %page_ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr6.i, ptr %page_ptr.i, align 4
  %rq_page_end.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 23
  %30 = ptrtoint ptr %rq_page_end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rq_page_end.i, align 4
  %add.ptr7.i = getelementptr ptr, ptr %31, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr7.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %mul.i = shl i32 %sub.ptr.sub.i, 10
  %buflen.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 7
  %sub.i = sub i32 %mul.i, %24
  %32 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.i, ptr %buflen.i, align 4
  %rqst.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 17, i32 7
  %33 = ptrtoint ptr %rqst.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rqst.i, align 4
  %pc_encode = getelementptr inbounds %struct.svc_procedure, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %pc_encode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pc_encode, align 4
  %call7 = tail call zeroext i1 %35(ptr noundef %rqstp, ptr noundef %rq_res_stream.i) #10
  br i1 %call7, label %if.end6.cleanup_crit_edge, label %out_encode_err

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_decode_err:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %statp to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %statp, align 4
  br label %cleanup

out_encode_err:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %statp to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %statp, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_encode_err, %out_decode_err, %if.end6.cleanup_crit_edge, %if.then5, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then5 ], [ 1, %out_encode_err ], [ 1, %out_decode_err ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_set_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rpcb_cleanup(ptr noundef, ptr noundef) #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lockd(ptr noundef %vrqstp) #6 align 64 {
entry:
  %buf = alloca [63 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lockd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef nonnull @init_net, i32 noundef %0)
  %call1 = tail call zeroext i1 @set_freezable() #10
  tail call void @kernel_sigaction(i32 noundef 9, ptr noundef nonnull inttoptr (i32 2 to ptr)) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %1 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !237

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call879 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call879, label %do.end7.while.end_crit_edge, label %while.body.lr.ph

do.end7.while.end_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end7
  %rq_server = getelementptr inbounds %struct.svc_rqst, ptr %vrqstp, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %buf) #10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 63)
  %3 = load i32, ptr @nlm_max_connections, align 4
  %4 = ptrtoint ptr %rq_server to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_server, align 4
  %sv_maxconn = getelementptr inbounds %struct.svc_serv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %sv_maxconn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %sv_maxconn, align 4
  %7 = call i32 @llvm.read_register.i32(metadata !225) #10
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body.if.then14_crit_edge, !prof !237

while.body.if.then14_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

signal_pending.exit:                              ; preds = %while.body
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %12, align 4
  %and1.i.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool13.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool13.not, label %if.end17, label %signal_pending.exit.if.then14_crit_edge

signal_pending.exit.if.then14_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %signal_pending.exit.if.then14_crit_edge, %while.body.if.then14_crit_edge
  call void @flush_signals(ptr noundef %10) #10
  %18 = load ptr, ptr @nlmsvc_ops, align 4
  %tobool.not.i74 = icmp eq ptr %18, null
  br i1 %tobool.not.i74, label %if.then14.cleanup_crit_edge, label %if.then.i

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then14
  %19 = load i32, ptr @lockd_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef nonnull @init_net, i32 noundef %19) #10
  %grace_period_end.i = getelementptr inbounds %struct.lockd_net, ptr %call.i, i32 0, i32 3
  %call1.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %grace_period_end.i) #10
  %lockd_manager.i = getelementptr inbounds %struct.lockd_net, ptr %call.i, i32 0, i32 4
  call void @locks_end_grace(ptr noundef %lockd_manager.i) #10
  call void @nlmsvc_invalidate_all() #10
  %20 = load i32, ptr @nlm_grace_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i = icmp eq i32 %20, 0
  %21 = load i32, ptr @nlm_timeout, align 4
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %20, -1
  %add.i.i.i = add i32 %sub.i.i.i, %21
  %22 = urem i32 %add.i.i.i, %21
  %mul.i.i.i = sub i32 %add.i.i.i, %22
  %mul1.i.i.i = mul i32 %mul.i.i.i, 100
  br label %set_grace_period.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul3.i.i.i = mul i32 %21, 500
  br label %set_grace_period.exit.i

set_grace_period.exit.i:                          ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %mul1.i.i.i, %if.then.i.i.i ], [ %mul3.i.i.i, %if.else.i.i.i ]
  %23 = load i32, ptr @lockd_net_id, align 4
  %call1.i.i = call fastcc ptr @net_generic(ptr noundef nonnull @init_net, i32 noundef %23) #10
  %lockd_manager.i.i = getelementptr inbounds %struct.lockd_net, ptr %call1.i.i, i32 0, i32 4
  call void @locks_start_grace(ptr noundef nonnull @init_net, ptr noundef %lockd_manager.i.i) #10
  %grace_period_end.i.i = getelementptr inbounds %struct.lockd_net, ptr %call1.i.i, i32 0, i32 3
  %call2.i.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %grace_period_end.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %grace_period_end.i.i, i32 noundef %retval.0.i.i.i) #10
  br label %cleanup

if.end17:                                         ; preds = %signal_pending.exit
  %call18 = call i32 @nlmsvc_retry_blocked() #10
  %call19 = call i32 @svc_recv(ptr noundef %vrqstp, i32 noundef %call18) #10
  %25 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call19, label %do.body23 [
    i32 -11, label %if.end17.cleanup_crit_edge
    i32 -4, label %if.end17.cleanup_crit_edge80
  ]

if.end17.cleanup_crit_edge80:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body23:                                        ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %26 = load i32, ptr @nlm_debug, align 4
  %and24 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.do.end41_crit_edge, label %do.end35, !prof !237

do.body23.do.end41_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

do.end35:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = call ptr @svc_print_addr(ptr noundef %vrqstp, ptr noundef nonnull %buf, i32 noundef 63) #10
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %call37) #13
  br label %do.end41

do.end41:                                         ; preds = %do.end35, %do.body23.do.end41_crit_edge
  %call42 = call i32 @svc_process(ptr noundef %vrqstp) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end17.cleanup_crit_edge, %if.end17.cleanup_crit_edge80, %set_grace_period.exit.i, %if.then14.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %buf) #10
  %call8 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call8, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do.end7.while.end_crit_edge
  %27 = call i32 @llvm.read_register.i32(metadata !225) #10
  %and.i76 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i76 to ptr
  %task45 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task45, align 8
  call void @flush_signals(ptr noundef %30) #10
  %31 = load ptr, ptr @nlmsvc_ops, align 4
  %tobool46.not = icmp eq ptr %31, null
  br i1 %tobool46.not, label %while.end.if.end48_crit_edge, label %if.then47

while.end.if.end48_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then47:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @nlmsvc_invalidate_all() #10
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %while.end.if.end48_crit_edge
  call void @nlm_shutdown_hosts() #10
  %grace_period_end = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 3
  %call49 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %grace_period_end) #10
  %lockd_manager = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 4
  call void @locks_end_grace(ptr noundef %lockd_manager) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %32 = load i32, ptr @nlm_debug, align 4
  %and51 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end48.do.end67_crit_edge, label %do.end62, !prof !237

if.end48.do.end67_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

do.end62:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  br label %do.end67

do.end67:                                         ; preds = %do.end62, %if.end48.do.end67_crit_edge
  call void @svc_exit_thread(ptr noundef %vrqstp) #10
  call void @__asan_handle_no_return()
  call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #14
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_do_enqueue(ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !225) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !242
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 45, ptr noundef nonnull @.str.21) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !243
  %8 = tail call i32 @llvm.read_register.i32(metadata !225) #10
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_retry_blocked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_recv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_print_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_invalidate_all() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_end_grace(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_exit_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__module_put_and_kthread_exit(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_start_grace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lockd_inetaddr_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  %sin = alloca %struct.sockaddr_in, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin) #10
  %0 = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp.not = icmp eq i32 %event, 2
  %1 = call ptr @memset(ptr %sin, i32 255, i32 16)
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @nlmsvc_serv, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %do.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %3 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end9_crit_edge, label %do.end, !prof !237

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %ifa_local = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %ifa_local) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %4 = ptrtoint ptr %sin to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %sin, align 4
  %ifa_local10 = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 4
  %5 = ptrtoint ptr %ifa_local10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifa_local10, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %8 = load ptr, ptr @nlmsvc_serv, align 4
  call void @svc_age_temp_xprts_now(ptr noundef %8, ptr noundef nonnull %sin) #10
  br label %out

out:                                              ; preds = %do.end9, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_age_temp_xprts_now(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lockd_inet6addr_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  %sin6 = alloca %struct.sockaddr_in6, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sin6) #10
  %0 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6, i32 0, i32 3
  %1 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp.not = icmp eq i32 %event, 2
  %2 = call ptr @memset(ptr %sin6, i32 255, i32 28)
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @nlmsvc_serv, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %do.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %4 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end9_crit_edge, label %do.end, !prof !237

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %ptr) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %5 = ptrtoint ptr %sin6 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 10, ptr %sin6, align 4
  %6 = call ptr @memcpy(ptr %0, ptr %ptr, i32 16)
  %call.i = call i32 @__ipv6_addr_type(ptr noundef %0) #10
  %and13 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.end9.if.end16_crit_edge, label %if.then15

do.end9.if.end16_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %idev = getelementptr inbounds %struct.inet6_ifaddr, ptr %ptr, i32 0, i32 16
  %7 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %idev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifindex, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %1, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.end9.if.end16_crit_edge
  %14 = load ptr, ptr @nlmsvc_serv, align 4
  call void @svc_age_temp_xprts_now(ptr noundef %14, ptr noundef nonnull %sin6) #10
  br label %out

out:                                              ; preds = %if.end16, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sin6) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_bind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_lockd_family(ptr noundef %serv, ptr noundef %net, i32 noundef %family, ptr noundef %cred) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nlm_udpport, align 4
  %conv.i = trunc i32 %family to i16
  %call.i = tail call ptr @svc_find_xprt(ptr noundef %serv, ptr noundef nonnull @.str.33, ptr noundef %net, i16 noundef zeroext %conv.i, i16 noundef zeroext 0) #10
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %create_lockd_listener.exit, label %create_lockd_listener.exit.thread

create_lockd_listener.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @svc_xprt_put(ptr noundef nonnull %call.i) #10
  br label %if.end

create_lockd_listener.exit:                       ; preds = %entry
  %conv = trunc i32 %0 to i16
  %call2.i = tail call i32 @svc_create_xprt(ptr noundef %serv, ptr noundef nonnull @.str.33, ptr noundef %net, i32 noundef %family, i16 noundef zeroext %conv, i32 noundef 0, ptr noundef %cred) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %create_lockd_listener.exit.cleanup_crit_edge, label %create_lockd_listener.exit.if.end_crit_edge

create_lockd_listener.exit.if.end_crit_edge:      ; preds = %create_lockd_listener.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

create_lockd_listener.exit.cleanup_crit_edge:     ; preds = %create_lockd_listener.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %create_lockd_listener.exit.if.end_crit_edge, %create_lockd_listener.exit.thread
  %1 = load i32, ptr @nlm_tcpport, align 4
  %call.i10 = tail call ptr @svc_find_xprt(ptr noundef %serv, ptr noundef nonnull @.str.34, ptr noundef %net, i16 noundef zeroext %conv.i, i16 noundef zeroext 0) #10
  %cmp.i11 = icmp eq ptr %call.i10, null
  br i1 %cmp.i11, label %if.then.i13, label %if.end.i14

if.then.i13:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv2 = trunc i32 %1 to i16
  %call2.i12 = tail call i32 @svc_create_xprt(ptr noundef %serv, ptr noundef nonnull @.str.34, ptr noundef %net, i32 noundef %family, i16 noundef zeroext %conv2, i32 noundef 0, ptr noundef %cred) #10
  br label %cleanup

if.end.i14:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @svc_xprt_put(ptr noundef nonnull %call.i10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i14, %if.then.i13, %create_lockd_listener.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %create_lockd_listener.exit.cleanup_crit_edge ], [ %call2.i12, %if.then.i13 ], [ 0, %if.end.i14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_shutdown_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_find_xprt(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_create_xprt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inet6addr_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_shutdown_hosts_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_grace_period(ptr noundef %val, ptr nocapture noundef readonly %kp) #0 align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #10
  %0 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !244
  %call = call i32 @simple_strtoul(ptr noundef %val, ptr noundef nonnull %endp, i32 noundef 0) #10
  %1 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %endp, align 4
  %cmp = icmp eq ptr %2, %val
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %call)
  %cmp5 = icmp ugt i32 %call, 240
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp5
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %5 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_ulong(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_timeout(ptr noundef %val, ptr nocapture noundef readonly %kp) #0 align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #10
  %0 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !244
  %call = call i32 @simple_strtoul(ptr noundef %val, ptr noundef nonnull %endp, i32 noundef 0) #10
  %1 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %endp, align 4
  %cmp = icmp eq ptr %2, %val
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp2 = icmp ult i32 %call, 3
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call)
  %cmp5 = icmp ugt i32 %call, 20
  %or.cond11 = select i1 %or.cond, i1 true, i1 %cmp5
  br i1 %or.cond11, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %5 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_port(ptr noundef %val, ptr nocapture noundef readonly %kp) #0 align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #10
  %0 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !244
  %call = call i32 @simple_strtol(ptr noundef %val, ptr noundef nonnull %endp, i32 noundef 0) #10
  %1 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %endp, align 4
  %cmp = icmp eq ptr %2, %val
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call)
  %cmp5 = icmp sgt i32 %call, 65535
  %or.cond11 = select i1 %or.cond, i1 true, i1 %cmp5
  br i1 %or.cond11, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %5 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_int(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lockd_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lockd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %grace_period_end = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 3
  tail call void @__init_work(ptr noundef %grace_period_end, i32 noundef 0) #10
  %1 = ptrtoint ptr %grace_period_end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %grace_period_end, align 4
  %lockdep_map = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.43, ptr noundef nonnull @lockd_init_net.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry8 = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 3, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 3, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @grace_ender, ptr %func, align 4
  %timer = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.45, ptr noundef nonnull @lockd_init_net.__key.44) #10
  %lockd_manager = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %lockd_manager to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %lockd_manager, ptr %lockd_manager, align 4
  %prev.i26 = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lockd_manager, ptr %prev.i26, align 4
  %block_opens = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %block_opens to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %block_opens, align 4
  %nsm_handles = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %nsm_handles to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %nsm_handles, ptr %nsm_handles, align 4
  %prev.i27 = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %nsm_handles, ptr %prev.i27, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lockd_exit_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lockd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %lockd_manager = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %lockd_manager to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %lockd_manager, align 4
  %cmp.i.not = icmp eq ptr %2, %lockd_manager
  br i1 %cmp.i.not, label %entry.if.end30_crit_edge, label %land.rhs

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b169 = load i1, ptr @lockd_exit_net.__already_done, align 1
  br i1 %.b169, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !237

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @lockd_exit_net.__already_done, align 1
  %inum = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inum, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 628, i32 noundef 9, ptr noundef nonnull @.str.46, i32 noundef %4, ptr noundef nonnull @__func__.lockd_exit_net) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %nsm_handles = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %nsm_handles to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %nsm_handles, align 4
  %cmp.i170.not = icmp eq ptr %6, %nsm_handles
  br i1 %cmp.i170.not, label %if.end30.if.end89_crit_edge, label %land.rhs49

if.end30.if.end89_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

land.rhs49:                                       ; preds = %if.end30
  %.b165168 = load i1, ptr @lockd_exit_net.__already_done.47, align 1
  br i1 %.b165168, label %land.rhs49.if.end89_crit_edge, label %if.then60, !prof !237

land.rhs49.if.end89_crit_edge:                    ; preds = %land.rhs49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then60:                                        ; preds = %land.rhs49
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @lockd_exit_net.__already_done.47, align 1
  %inum75 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %7 = ptrtoint ptr %inum75 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inum75, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 631, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %8, ptr noundef nonnull @__func__.lockd_exit_net) #10
  br label %if.end89

if.end89:                                         ; preds = %if.then60, %land.rhs49.if.end89_crit_edge, %if.end30.if.end89_crit_edge
  %grace_period_end = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %grace_period_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %grace_period_end, align 4
  %and1.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool99.not = icmp eq i32 %and1.i, 0
  br i1 %tobool99.not, label %if.end89.if.end146_crit_edge, label %land.rhs106

if.end89.if.end146_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

land.rhs106:                                      ; preds = %if.end89
  %.b166167 = load i1, ptr @lockd_exit_net.__already_done.49, align 1
  br i1 %.b166167, label %land.rhs106.if.end146_crit_edge, label %if.then117, !prof !237

land.rhs106.if.end146_crit_edge:                  ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then117:                                       ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @lockd_exit_net.__already_done.49, align 1
  %inum132 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %11 = ptrtoint ptr %inum132 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %inum132, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 634, i32 noundef 9, ptr noundef nonnull @.str.50, i32 noundef %12, ptr noundef nonnull @__func__.lockd_exit_net) #10
  br label %if.end146

if.end146:                                        ; preds = %if.then117, %land.rhs106.if.end146_crit_edge, %if.end89.if.end146_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grace_ender(ptr noundef %grace) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lockd_manager = getelementptr i8, ptr %grace, i32 100
  tail call void @locks_end_grace(ptr noundef %lockd_manager) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockd_create_procfs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dobool(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !116, !118, !119, !120, !121, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !137, !138, !139, !140, !142, !144, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !162, !163, !164, !166, !167, !168, !169, !170, !171, !172, !174, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !190, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223}
!llvm.named.register.sp = !{!225}
!llvm.module.flags = !{!226, !227, !228, !229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = !{ptr @__ksymtab_nlmsvc_ops, !1, !"__ksymtab_nlmsvc_ops", i1 false, i1 false}
!1 = !{!"../fs/lockd/svc.c", i32 53, i32 1}
!2 = !{ptr @__ksymtab_lockd_up, !3, !"__ksymtab_lockd_up", i1 false, i1 false}
!3 = !{!"../fs/lockd/svc.c", i32 446, i32 1}
!4 = !{ptr @__ksymtab_lockd_down, !5, !"__ksymtab_lockd_down", i1 false, i1 false}
!5 = !{!"../fs/lockd/svc.c", i32 459, i32 1}
!6 = !{ptr @__UNIQUE_ID_author504, !7, !"__UNIQUE_ID_author504", i1 false, i1 false}
!7 = !{!"../fs/lockd/svc.c", i32 596, i32 1}
!8 = !{ptr @__UNIQUE_ID_description505, !9, !"__UNIQUE_ID_description505", i1 false, i1 false}
!9 = !{!"../fs/lockd/svc.c", i32 597, i32 1}
!10 = !{ptr @__UNIQUE_ID_file506, !11, !"__UNIQUE_ID_file506", i1 false, i1 false}
!11 = !{!"../fs/lockd/svc.c", i32 598, i32 1}
!12 = !{ptr @__UNIQUE_ID_license507, !11, !"__UNIQUE_ID_license507", i1 false, i1 false}
!13 = !{ptr @__param_nlm_grace_period, !14, !"__param_nlm_grace_period", i1 false, i1 false}
!14 = !{!"../fs/lockd/svc.c", i32 600, i32 1}
!15 = !{ptr @__param_nlm_timeout, !16, !"__param_nlm_timeout", i1 false, i1 false}
!16 = !{!"../fs/lockd/svc.c", i32 602, i32 1}
!17 = !{ptr @__param_nlm_udpport, !18, !"__param_nlm_udpport", i1 false, i1 false}
!18 = !{!"../fs/lockd/svc.c", i32 604, i32 1}
!19 = !{ptr @__param_nlm_tcpport, !20, !"__param_nlm_tcpport", i1 false, i1 false}
!20 = !{!"../fs/lockd/svc.c", i32 606, i32 1}
!21 = !{ptr @__param_nsm_use_hostnames, !22, !"__param_nsm_use_hostnames", i1 false, i1 false}
!22 = !{!"../fs/lockd/svc.c", i32 608, i32 1}
!23 = !{ptr @__UNIQUE_ID_nsm_use_hostnamestype508, !22, !"__UNIQUE_ID_nsm_use_hostnamestype508", i1 false, i1 false}
!24 = !{ptr @__param_nlm_max_connections, !25, !"__param_nlm_max_connections", i1 false, i1 false}
!25 = !{!"../fs/lockd/svc.c", i32 609, i32 1}
!26 = !{ptr @__UNIQUE_ID_nlm_max_connectionstype509, !25, !"__UNIQUE_ID_nlm_max_connectionstype509", i1 false, i1 false}
!27 = !{ptr @__initcall__kmod_lockd__510_690_init_nlm6, !28, !"__initcall__kmod_lockd__510_690_init_nlm6", i1 false, i1 false}
!28 = !{!"../fs/lockd/svc.c", i32 690, i32 1}
!29 = !{ptr @__exitcall_exit_nlm, !30, !"__exitcall_exit_nlm", i1 false, i1 false}
!30 = !{!"../fs/lockd/svc.c", i32 691, i32 1}
!31 = !{ptr @nlmsvc_ops, !32, !"nlmsvc_ops", i1 false, i1 false}
!32 = !{!"../fs/lockd/svc.c", i32 52, i32 30}
!33 = !{ptr @nlmsvc_serv, !34, !"nlmsvc_serv", i1 false, i1 false}
!34 = !{!"../fs/lockd/svc.c", i32 57, i32 26}
!35 = !{ptr @nlmsvc_timeout, !36, !"nlmsvc_timeout", i1 false, i1 false}
!36 = !{!"../fs/lockd/svc.c", i32 58, i32 17}
!37 = !{ptr @lockd_net_id, !38, !"lockd_net_id", i1 false, i1 false}
!38 = !{!"../fs/lockd/svc.c", i32 60, i32 14}
!39 = !{ptr @nlm_grace_period, !40, !"nlm_grace_period", i1 false, i1 false}
!40 = !{!"../fs/lockd/svc.c", i32 66, i32 23}
!41 = !{ptr @nlm_udpport, !42, !"nlm_udpport", i1 false, i1 false}
!42 = !{!"../fs/lockd/svc.c", i32 68, i32 14}
!43 = !{ptr @nlm_tcpport, !44, !"nlm_tcpport", i1 false, i1 false}
!44 = !{!"../fs/lockd/svc.c", i32 68, i32 27}
!45 = !{ptr @nlm_sysctl_table, !46, !"nlm_sysctl_table", i1 false, i1 false}
!46 = !{!"../fs/lockd/svc.c", i32 83, i32 34}
!47 = !{ptr @.str, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/lockd/svc.c", i32 55, i32 8}
!49 = !{ptr @.str.1, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @nlmsvc_mutex, !48, !"nlmsvc_mutex", i1 false, i1 false}
!51 = !{ptr @.str.2, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/lockd/svc.c", i32 376, i32 3}
!53 = !{ptr @.str.3, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @lockd_get._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @lockd_get._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.6, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/lockd/svc.c", i32 385, i32 3}
!59 = !{ptr @lockd_get._entry.5, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @lockd_get._entry_ptr.7, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/lockd/svc.c", i32 401, i32 2}
!63 = !{ptr @lockd_get._entry.8, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @lockd_get._entry_ptr.10, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @nlmsvc_users, !66, !"nlmsvc_users", i1 false, i1 false}
!66 = !{!"../fs/lockd/svc.c", i32 56, i32 22}
!67 = !{ptr @.str.11, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/lockd/svc.c", i32 778, i32 14}
!69 = !{ptr @.str.12, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/lockd/svc.c", i32 779, i32 15}
!71 = !{ptr @nlmsvc_program, !72, !"nlmsvc_program", i1 false, i1 false}
!72 = !{!"../fs/lockd/svc.c", i32 774, i32 27}
!73 = !{ptr @nlmsvc_version, !74, !"nlmsvc_version", i1 false, i1 false}
!74 = !{!"../fs/lockd/svc.c", i32 763, i32 34}
!75 = !{ptr @nlmsvc_version1, !76, !"nlmsvc_version1", i1 false, i1 false}
!76 = !{!"../fs/lockd/svc.c", i32 735, i32 33}
!77 = !{ptr @nlmsvc_version1_count, !78, !"nlmsvc_version1_count", i1 false, i1 false}
!78 = !{!"../fs/lockd/svc.c", i32 734, i32 21}
!79 = !{ptr @nlmsvc_version3, !80, !"nlmsvc_version3", i1 false, i1 false}
!80 = !{!"../fs/lockd/svc.c", i32 744, i32 33}
!81 = !{ptr @nlmsvc_version3_count, !82, !"nlmsvc_version3_count", i1 false, i1 false}
!82 = !{!"../fs/lockd/svc.c", i32 743, i32 21}
!83 = !{ptr @nlmsvc_version4, !84, !"nlmsvc_version4", i1 false, i1 false}
!84 = !{!"../fs/lockd/svc.c", i32 754, i32 33}
!85 = !{ptr @nlmsvc_version4_count, !86, !"nlmsvc_version4_count", i1 false, i1 false}
!86 = !{!"../fs/lockd/svc.c", i32 753, i32 21}
!87 = !{ptr @nlmsvc_stats, !88, !"nlmsvc_stats", i1 false, i1 false}
!88 = !{!"../fs/lockd/svc.c", i32 771, i32 25}
!89 = !{ptr @lockd_sv_ops, !90, !"lockd_sv_ops", i1 false, i1 false}
!90 = !{!"../fs/lockd/svc.c", i32 353, i32 34}
!91 = !{ptr @.str.13, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/lockd/svc.c", i32 144, i32 2}
!93 = !{ptr @lockd._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @lockd._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.15, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/lockd/svc.c", i32 172, i32 3}
!97 = !{ptr @lockd._entry.14, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @lockd._entry_ptr.16, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.18, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/lockd/svc.c", i32 184, i32 2}
!101 = !{ptr @lockd._entry.17, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @lockd._entry_ptr.19, !100, !"_entry_ptr", i1 false, i1 false}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!105 = !{ptr @.str.20, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.21, !104, !"<string literal>", i1 false, i1 false}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!109 = !{ptr @.str.22, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.23, !108, !"<string literal>", i1 false, i1 false}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!113 = !{ptr @.str.24, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @lockd_inetaddr_notifier, !115, !"lockd_inetaddr_notifier", i1 false, i1 false}
!115 = !{!"../fs/lockd/svc.c", i32 321, i32 30}
!116 = !{ptr @.str.25, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/lockd/svc.c", i32 310, i32 3}
!118 = !{ptr @.str.26, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @lockd_inetaddr_event._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @lockd_inetaddr_event._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @lockd_inet6addr_notifier, !122, !"lockd_inet6addr_notifier", i1 false, i1 false}
!122 = !{!"../fs/lockd/svc.c", i32 348, i32 30}
!123 = !{ptr @.str.27, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/lockd/svc.c", i32 336, i32 3}
!125 = !{ptr @.str.28, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @lockd_inet6addr_event._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @lockd_inet6addr_event._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.29, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/lockd/svc.c", i32 272, i32 2}
!130 = !{ptr @.str.30, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @lockd_up_net._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @lockd_up_net._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @make_socks.warned, !134, !"warned", i1 false, i1 false}
!134 = !{!"../fs/lockd/svc.c", i32 233, i32 13}
!135 = !{ptr @.str.31, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/lockd/svc.c", i32 249, i32 3}
!137 = !{ptr @.str.32, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @make_socks._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @make_socks._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.33, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/lockd/svc.c", i32 211, i32 36}
!142 = !{ptr @.str.34, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/lockd/svc.c", i32 216, i32 37}
!144 = !{ptr @.str.35, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/lockd/svc.c", i32 408, i32 6}
!146 = !{ptr @.str.36, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/lockd/svc.c", i32 420, i32 2}
!148 = !{ptr @.str.37, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @lockd_put._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @lockd_put._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.38, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/lockd/svc.c", i32 290, i32 4}
!153 = !{ptr @.str.39, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @lockd_down_net._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @lockd_down_net._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.41, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/lockd/svc.c", i32 294, i32 3}
!158 = !{ptr @lockd_down_net._entry.40, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @lockd_down_net._entry_ptr.42, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @__param_str_nlm_grace_period, !14, !"__param_str_nlm_grace_period", i1 false, i1 false}
!161 = !{ptr @__param_ops_nlm_grace_period, !14, !"__param_ops_nlm_grace_period", i1 false, i1 false}
!162 = !{ptr @__param_str_nlm_timeout, !16, !"__param_str_nlm_timeout", i1 false, i1 false}
!163 = !{ptr @__param_ops_nlm_timeout, !16, !"__param_ops_nlm_timeout", i1 false, i1 false}
!164 = !{ptr @nlm_timeout, !165, !"nlm_timeout", i1 false, i1 false}
!165 = !{!"../fs/lockd/svc.c", i32 67, i32 23}
!166 = !{ptr @__param_str_nlm_udpport, !18, !"__param_str_nlm_udpport", i1 false, i1 false}
!167 = !{ptr @__param_ops_nlm_udpport, !18, !"__param_ops_nlm_udpport", i1 false, i1 false}
!168 = !{ptr @__param_str_nlm_tcpport, !20, !"__param_str_nlm_tcpport", i1 false, i1 false}
!169 = !{ptr @__param_ops_nlm_tcpport, !20, !"__param_ops_nlm_tcpport", i1 false, i1 false}
!170 = !{ptr @__param_str_nsm_use_hostnames, !22, !"__param_str_nsm_use_hostnames", i1 false, i1 false}
!171 = !{ptr @__param_str_nlm_max_connections, !25, !"__param_str_nlm_max_connections", i1 false, i1 false}
!172 = !{ptr @nlm_max_connections, !173, !"nlm_max_connections", i1 false, i1 false}
!173 = !{!"../fs/lockd/svc.c", i32 71, i32 22}
!174 = !{ptr @lockd_net_ops, !175, !"lockd_net_ops", i1 false, i1 false}
!175 = !{!"../fs/lockd/svc.c", i32 637, i32 33}
!176 = !{ptr @lockd_init_net.__key, !177, !"__key", i1 false, i1 false}
!177 = !{!"../fs/lockd/svc.c", i32 615, i32 2}
!178 = !{ptr @.str.43, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @lockd_init_net.__key.44, !177, !"__key", i1 false, i1 false}
!180 = !{ptr @.str.45, !177, !"<string literal>", i1 false, i1 false}
!181 = distinct !{null, !182, !"__already_done", i1 false, i1 false}
!182 = !{!"../fs/lockd/svc.c", i32 626, i32 2}
!183 = !{ptr @.str.46, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @__func__.lockd_exit_net, !182, !"<string literal>", i1 false, i1 false}
!185 = distinct !{null, !186, !"__already_done", i1 false, i1 false}
!186 = !{!"../fs/lockd/svc.c", i32 629, i32 2}
!187 = !{ptr @.str.48, !186, !"<string literal>", i1 false, i1 false}
!188 = distinct !{null, !189, !"__already_done", i1 false, i1 false}
!189 = !{!"../fs/lockd/svc.c", i32 632, i32 2}
!190 = !{ptr @.str.50, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.51, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/lockd/svc.c", i32 532, i32 15}
!193 = !{ptr @nlm_sysctl_root, !194, !"nlm_sysctl_root", i1 false, i1 false}
!194 = !{!"../fs/lockd/svc.c", i32 530, i32 25}
!195 = !{ptr @.str.52, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/lockd/svc.c", i32 523, i32 15}
!197 = !{ptr @nlm_sysctl_dir, !198, !"nlm_sysctl_dir", i1 false, i1 false}
!198 = !{!"../fs/lockd/svc.c", i32 521, i32 25}
!199 = !{ptr @.str.53, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/lockd/svc.c", i32 469, i32 15}
!201 = !{ptr @.str.54, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/lockd/svc.c", i32 478, i32 15}
!203 = !{ptr @.str.55, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/lockd/svc.c", i32 487, i32 15}
!205 = !{ptr @.str.56, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/lockd/svc.c", i32 496, i32 15}
!207 = !{ptr @.str.57, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/lockd/svc.c", i32 505, i32 15}
!209 = !{ptr @.str.58, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/lockd/svc.c", i32 512, i32 15}
!211 = !{ptr @nlm_sysctls, !212, !"nlm_sysctls", i1 false, i1 false}
!212 = !{!"../fs/lockd/svc.c", i32 467, i32 25}
!213 = !{ptr @nlm_grace_period_min, !214, !"nlm_grace_period_min", i1 false, i1 false}
!214 = !{!"../fs/lockd/svc.c", i32 76, i32 28}
!215 = !{ptr @nlm_grace_period_max, !216, !"nlm_grace_period_max", i1 false, i1 false}
!216 = !{!"../fs/lockd/svc.c", i32 77, i32 28}
!217 = !{ptr @nlm_timeout_min, !218, !"nlm_timeout_min", i1 false, i1 false}
!218 = !{!"../fs/lockd/svc.c", i32 78, i32 28}
!219 = !{ptr @nlm_timeout_max, !220, !"nlm_timeout_max", i1 false, i1 false}
!220 = !{!"../fs/lockd/svc.c", i32 79, i32 28}
!221 = !{ptr @nlm_port_min, !222, !"nlm_port_min", i1 false, i1 false}
!222 = !{!"../fs/lockd/svc.c", i32 80, i32 19}
!223 = !{ptr @nlm_port_max, !224, !"nlm_port_max", i1 false, i1 false}
!224 = !{!"../fs/lockd/svc.c", i32 80, i32 37}
!225 = !{!"sp"}
!226 = !{i32 1, !"wchar_size", i32 2}
!227 = !{i32 1, !"min_enum_size", i32 4}
!228 = !{i32 8, !"branch-target-enforcement", i32 0}
!229 = !{i32 8, !"sign-return-address", i32 0}
!230 = !{i32 8, !"sign-return-address-all", i32 0}
!231 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!232 = !{i32 7, !"uwtable", i32 1}
!233 = !{i32 7, !"frame-pointer", i32 2}
!234 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!235 = !{i64 2148358540, i64 2148358572, i64 2148358601, i64 2148358635, i64 2148358666, i64 2148358689}
!236 = !{!"branch_weights", i32 1, i32 2000}
!237 = !{!"branch_weights", i32 2000, i32 1}
!238 = !{i64 2148446565}
!239 = !{i64 2148361005, i64 2148361037, i64 2148361066, i64 2148361100, i64 2148361131, i64 2148361154}
!240 = !{i64 2149322679}
!241 = !{i64 2157550329, i64 2157550808, i64 2157550366, i64 2157550422, i64 2157550456, i64 2157550480, i64 2157550521, i64 2157550542, i64 2157550570, i64 2157550604}
!242 = !{i64 2149373169}
!243 = !{i64 2149373435}
!244 = !{!"auto-init"}
