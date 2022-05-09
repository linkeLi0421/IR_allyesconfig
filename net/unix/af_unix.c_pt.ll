; ModuleID = '/llk/IR_all_yes/net/unix/af_unix.c_pt.bc'
source_filename = "../net/unix/af_unix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+unix_table_locks\22, \22a\22\09"
module asm "\09.weak\09__crc_unix_table_locks\09\09\09\09"
module asm "\09.long\09__crc_unix_table_locks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_table_locks:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_table_locks\22\09\09\09\09\09"
module asm "__kstrtabns_unix_table_locks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unix_socket_table\22, \22a\22\09"
module asm "\09.weak\09__crc_unix_socket_table\09\09\09\09"
module asm "\09.long\09__crc_unix_socket_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_socket_table:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_socket_table\22\09\09\09\09\09"
module asm "__kstrtabns_unix_socket_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unix_peer_get\22, \22a\22\09"
module asm "\09.weak\09__crc_unix_peer_get\09\09\09\09"
module asm "\09.long\09__crc_unix_peer_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_peer_get:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_peer_get\22\09\09\09\09\09"
module asm "__kstrtabns_unix_peer_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unix_inq_len\22, \22a\22\09"
module asm "\09.weak\09__crc_unix_inq_len\09\09\09\09"
module asm "\09.long\09__crc_unix_inq_len\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_inq_len:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_inq_len\22\09\09\09\09\09"
module asm "__kstrtabns_unix_inq_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unix_outq_len\22, \22a\22\09"
module asm "\09.weak\09__crc_unix_outq_len\09\09\09\09"
module asm "\09.long\09__crc_unix_outq_len\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_outq_len:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_outq_len\22\09\09\09\09\09"
module asm "__kstrtabns_unix_outq_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.151, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.151 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_iter_reg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x %struct.bpf_ctx_arg_aux], ptr }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.bpf_iter_seq_info = type { ptr, ptr, ptr, i32 }
%struct.unix_sock = type { %struct.sock, ptr, %struct.path, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.atomic_t, %struct.spinlock, i32, [60 x i8], %struct.socket_wq, %struct.wait_queue_entry, %struct.scm_stat, ptr, [100 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.156, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.157, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.158, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.2, %union.anon.4, %union.anon.5, i16, i8, i8, i32, %union.anon.7, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.152, [0 x i32], %union.anon.153, i16, i16, %union.anon.154, %struct.refcount_struct, [0 x i32], %union.anon.155 }
%union.anon.2 = type { i64 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.7 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.152 = type { i32 }
%union.anon.153 = type { %struct.hlist_node }
%union.anon.154 = type { i32 }
%union.anon.155 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.156 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.157 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.158 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.scm_stat = type { %struct.atomic_t }
%struct.scm_cookie = type { ptr, ptr, %struct.scm_creds, i32 }
%struct.scm_creds = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.kgid_t = type { i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
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
%struct.unix_address = type { %struct.refcount_struct, i32, [0 x %struct.sockaddr_un] }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.150, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.8, %union.anon.148 }
%union.anon.8 = type { ptr }
%union.anon.148 = type { i64 }
%union.anon.150 = type { ptr }
%struct.ucred = type { i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.122, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.122 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.unix_stream_read_state = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.68, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.68 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [112 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.181, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.182, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.183, ptr, %struct.address_space, %struct.list_head, %union.anon.184, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.181 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.182 = type { %struct.callback_head }
%union.anon.183 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.184 = type { ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.134, %struct.list_head, %struct.list_head, %union.anon.135 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.spinlock, i32 }
%union.anon.134 = type { %struct.list_head }
%union.anon.135 = type { %struct.hlist_node }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.read_descriptor_t = type { i32, i32, %union.anon.159, i32 }
%union.anon.159 = type { ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.bpf_iter__unix = type { %union.anon.201, %union.anon.202, i32 }
%union.anon.201 = type { i64 }
%union.anon.202 = type { i64 }
%struct.bpf_iter_meta = type { %union.anon.186, i64, i64 }
%union.anon.186 = type { i64 }

@unix_table_locks = dso_local global { [512 x %struct.spinlock], [5632 x i8] } zeroinitializer, align 32
@__kstrtab_unix_table_locks = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_table_locks = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_table_locks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_table_locks to i32), ptr @__kstrtab_unix_table_locks, ptr @__kstrtabns_unix_table_locks }, section "___ksymtab_gpl+unix_table_locks", align 4
@unix_socket_table = dso_local global { [512 x %struct.hlist_head], [512 x i8] } zeroinitializer, align 32
@__kstrtab_unix_socket_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_socket_table = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_socket_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_socket_table to i32), ptr @__kstrtab_unix_socket_table, ptr @__kstrtabns_unix_socket_table }, section "___ksymtab_gpl+unix_socket_table", align 4
@__kstrtab_unix_peer_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_peer_get = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_peer_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_peer_get to i32), ptr @__kstrtab_unix_peer_get, ptr @__kstrtabns_unix_peer_get }, section "___ksymtab_gpl+unix_peer_get", align 4
@unix_dgram_proto = dso_local global { %struct.proto, [36 x i8] } { %struct.proto { ptr @unix_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @unix_dgram_bpf_update_proto, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1536, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.151 zeroinitializer, ptr null, [32 x i8] c"UNIX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@unix_stream_proto = dso_local global { %struct.proto, [36 x i8] } { %struct.proto { ptr @unix_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @unix_unhash, ptr null, ptr null, ptr null, ptr @unix_stream_bpf_update_proto, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1536, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.151 zeroinitializer, ptr null, [32 x i8] c"UNIX-STREAM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_unix_inq_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_inq_len = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_inq_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_inq_len to i32), ptr @__kstrtab_unix_inq_len, ptr @__kstrtabns_unix_inq_len }, section "___ksymtab_gpl+unix_inq_len", align 4
@__kstrtab_unix_outq_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_outq_len = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_outq_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_outq_len to i32), ptr @__kstrtab_unix_outq_len, ptr @__kstrtabns_unix_outq_len }, section "___ksymtab_gpl+unix_outq_len", align 4
@unix_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @unix_net_init, ptr null, ptr @unix_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_unix__547_3520_af_unix_init5 = internal global ptr @af_unix_init, section ".initcall5.init", align 4
@__exitcall_af_unix_exit = internal global ptr @af_unix_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file548 = internal constant [24 x i8] c"unix.file=net/unix/unix\00", section ".modinfo", align 1
@__UNIQUE_ID_license549 = internal constant [17 x i8] c"unix.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias550 = internal constant [20 x i8] c"unix.alias=net-pf-1\00", section ".modinfo", align 1
@unix_gc_lock = external dso_local global %struct.spinlock, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"unix\00", [27 x i8] zeroinitializer }, align 32
@unix_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @unix_seq_start, ptr @unix_seq_stop, ptr @unix_seq_next, ptr @unix_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Num       RefCount Protocol Flags    Type St Inode Path\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%pK: %08X %08X %08X %04X %02X %5lu\00", [61 x i8] zeroinitializer }, align 32
@af_unix_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&unix_table_locks[i]\00", [43 x i8] zeroinitializer }, align 32
@af_unix_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 3486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\012unix: %s: Cannot create unix_sock SLAB cache!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"af_unix_init\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/unix/af_unix.c\00", [45 x i8] zeroinitializer }, align 32
@af_unix_init._entry_ptr = internal global ptr @af_unix_init._entry, section ".printk_index", align 4
@af_unix_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 3492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af_unix_init._entry_ptr.9 = internal global ptr @af_unix_init._entry.8, section ".printk_index", align 4
@unix_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 1, ptr @unix_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@unix_stream_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 1, ptr null, ptr @unix_release, ptr @unix_bind, ptr @unix_stream_connect, ptr @unix_socketpair, ptr @unix_accept, ptr @unix_getname, ptr @unix_poll, ptr @unix_ioctl, ptr null, ptr @unix_listen, ptr @unix_shutdown, ptr null, ptr null, ptr @unix_show_fdinfo, ptr @unix_stream_sendmsg, ptr @unix_stream_recvmsg, ptr @sock_no_mmap, ptr @unix_stream_sendpage, ptr @unix_stream_splice_read, ptr @unix_set_peek_off, ptr null, ptr @unix_stream_read_sock, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@unix_dgram_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 1, ptr null, ptr @unix_release, ptr @unix_bind, ptr @unix_dgram_connect, ptr @unix_socketpair, ptr @sock_no_accept, ptr @unix_getname, ptr @unix_dgram_poll, ptr @unix_ioctl, ptr null, ptr @sock_no_listen, ptr @unix_shutdown, ptr null, ptr null, ptr @unix_show_fdinfo, ptr @unix_dgram_sendmsg, ptr @unix_dgram_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr @unix_set_peek_off, ptr null, ptr @unix_read_sock, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@unix_seqpacket_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 1, ptr null, ptr @unix_release, ptr @unix_bind, ptr @unix_stream_connect, ptr @unix_socketpair, ptr @unix_accept, ptr @unix_getname, ptr @unix_dgram_poll, ptr @unix_ioctl, ptr null, ptr @unix_listen, ptr @unix_shutdown, ptr null, ptr null, ptr @unix_show_fdinfo, ptr @unix_seqpacket_sendmsg, ptr @unix_seqpacket_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr @unix_set_peek_off, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@unix_tot_inflight = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@sk_wake_async.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%05x\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scm_fds: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@unix_nr_socks = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@unix_create1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&u->lock\00", [23 x i8] zeroinitializer }, align 32
@unix_create1.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&u->iolock\00", [21 x i8] zeroinitializer }, align 32
@unix_create1.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&u->bindlock\00", [19 x i8] zeroinitializer }, align 32
@unix_create1.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&u->peer_wait\00", [18 x i8] zeroinitializer }, align 32
@unix_write_space.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@unix_sock_destructor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.7, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016unix: Attempt to release alive unix socket: %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unix_sock_destructor\00", [43 x i8] zeroinitializer }, align 32
@unix_sock_destructor._entry_ptr = internal global ptr @unix_sock_destructor._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@btf_sock_ids = external dso_local local_unnamed_addr global [0 x i32], align 4
@unix_reg_info = internal global { %struct.bpf_iter_reg, [36 x i8] } { %struct.bpf_iter_reg { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 0, [2 x %struct.bpf_ctx_arg_aux] [%struct.bpf_ctx_arg_aux { i32 8, i32 272, i32 0 }, %struct.bpf_ctx_arg_aux zeroinitializer], ptr @unix_seq_info }, [36 x i8] zeroinitializer }, align 32
@bpf_iter_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 3471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014unix: Warning: could not register bpf iterator unix\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bpf_iter_register\00", [46 x i8] zeroinitializer }, align 32
@bpf_iter_register._entry_ptr = internal global ptr @bpf_iter_register._entry, section ".printk_index", align 4
@unix_seq_info = internal constant { %struct.bpf_iter_seq_info, [16 x i8] } { %struct.bpf_iter_seq_info { ptr @bpf_iter_unix_seq_ops, ptr @bpf_iter_init_seq_net, ptr @bpf_iter_fini_seq_net, i32 8 }, [16 x i8] zeroinitializer }, align 32
@bpf_iter_unix_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @unix_seq_start, ptr @bpf_iter_unix_seq_stop, ptr @unix_seq_next, ptr @bpf_iter_unix_seq_show }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 7]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 21521, i64 21531, i64 35077, i64 35296]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"unix_table_locks\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 121, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"unix_socket_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 123, i32 19 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"unix_dgram_proto\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 872, i32 14 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"unix_stream_proto\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 882, i32 14 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"unix_net_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 3441, i32 33 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 57, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 3424, i32 7 }
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"unix_seq_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 3342, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 3300, i32 17 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 3307, i32 19 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 3482, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 3486, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 3492, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"unix_family_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 3408, i32 38 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"unix_stream_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 783, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"unix_dgram_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 809, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"unix_seqpacket_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 834, i32 31 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 729, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2444, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 695, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 723, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 1102, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 253, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 775, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant [14 x i8] c"unix_nr_socks\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 125, i32 22 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 925, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 928, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 929, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 930, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 561, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [14 x i8] c"unix_reg_info\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 3457, i32 28 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 3471, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [14 x i8] c"unix_seq_info\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 3450, i32 39 }
@___asan_gen_.177 = private unnamed_addr constant [22 x i8] c"bpf_iter_unix_seq_ops\00", align 1
@___asan_gen_.178 = private constant [22 x i8] c"../net/unix/af_unix.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 3399, i32 36 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias550, ptr @__UNIQUE_ID_file548, ptr @__UNIQUE_ID_license549, ptr @__exitcall_af_unix_exit, ptr @__initcall__kmod_unix__547_3520_af_unix_init5, ptr @__ksymtab_unix_inq_len, ptr @__ksymtab_unix_outq_len, ptr @__ksymtab_unix_peer_get, ptr @__ksymtab_unix_socket_table, ptr @__ksymtab_unix_table_locks, ptr @af_unix_exit, ptr @af_unix_init._entry, ptr @af_unix_init._entry.8, ptr @af_unix_init._entry_ptr, ptr @af_unix_init._entry_ptr.9, ptr @bpf_iter_register._entry, ptr @bpf_iter_register._entry_ptr, ptr @unix_sock_destructor._entry, ptr @unix_sock_destructor._entry_ptr, ptr @unix_table_locks, ptr @unix_socket_table, ptr @unix_dgram_proto, ptr @unix_stream_proto, ptr @unix_net_ops, ptr @.str, ptr @.str.1, ptr @unix_seq_ops, ptr @.str.2, ptr @.str.3, ptr @af_unix_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @unix_family_ops, ptr @unix_stream_ops, ptr @unix_dgram_ops, ptr @unix_seqpacket_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @unix_nr_socks, ptr @unix_create1.__key, ptr @.str.19, ptr @unix_create1.__key.20, ptr @.str.21, ptr @unix_create1.__key.22, ptr @.str.23, ptr @unix_create1.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @unix_reg_info, ptr @.str.28, ptr @.str.29, ptr @unix_seq_info, ptr @bpf_iter_unix_seq_ops], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_table_locks to i32), i32 22528, i32 28160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_socket_table to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_dgram_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_stream_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af_unix_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af_unix_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af_unix_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_stream_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_dgram_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_seqpacket_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_nr_socks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_create1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_create1.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_create1.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_create1.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_sock_destructor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_reg_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_iter_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_seq_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_iter_unix_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @unix_peer_get(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.unix_sock, ptr %s, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %peer2 = getelementptr inbounds %struct.unix_sock, ptr %s, i32 0, i32 5
  %0 = ptrtoint ptr %peer2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !134

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @unix_close(ptr nocapture noundef %sk, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unix_dgram_bpf_update_proto(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @unix_unhash(ptr nocapture noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unix_stream_bpf_update_proto(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__unix_dgram_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %scm = alloca %struct.scm_cookie, align 4
  %last = alloca ptr, align 4
  %timeo = alloca i32, align 4
  %skip = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scm) #16
  %0 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2
  %1 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 1
  %2 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 2
  %3 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 3
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %4 = call ptr @memset(ptr %scm, i32 255, i32 24)
  %5 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_socket, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last) #16
  %7 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %last, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip) #16
  %8 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %skip, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %9 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -95, ptr %err, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %and1 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %cond.false.i, label %if.end.sock_rcvtimeo.exit_crit_edge

if.end.sock_rcvtimeo.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 62
  %10 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %if.end.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %11, %cond.false.i ], [ 0, %if.end.sock_rcvtimeo.exit_crit_edge ]
  %12 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond.i, ptr %timeo, align 4
  %iolock = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 3
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %sk_peek_off.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 27
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %sock_rcvtimeo.exit
  call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #16
  br i1 %tobool.not.i, label %sk_peek_offset.exit, label %sk_peek_offset.exit.thread, !prof !135

sk_peek_offset.exit:                              ; preds = %do.body
  %13 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %skip, align 4
  %call5 = call ptr @__skb_try_recv_datagram(ptr noundef %sk, ptr noundef %sk_receive_queue, i32 noundef %flags, ptr noundef nonnull %skip, ptr noundef nonnull %err, ptr noundef nonnull %last) #16
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %sk_peek_offset.exit.if.end12_crit_edge, label %if.then10

sk_peek_offset.exit.if.end12_crit_edge:           ; preds = %sk_peek_offset.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

sk_peek_offset.exit.thread:                       ; preds = %do.body
  %14 = ptrtoint ptr %sk_peek_off.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %sk_peek_off.i, align 8
  %16 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %skip, align 4
  %call5159 = call ptr @__skb_try_recv_datagram(ptr noundef %sk, ptr noundef %sk_receive_queue, i32 noundef %flags, ptr noundef nonnull %skip, ptr noundef nonnull %err, ptr noundef nonnull %last) #16
  %tobool6.not160 = icmp eq ptr %call5159, null
  br i1 %tobool6.not160, label %sk_peek_offset.exit.thread.if.end12_crit_edge, label %sk_peek_offset.exit.thread.if.end35_crit_edge

sk_peek_offset.exit.thread.if.end35_crit_edge:    ; preds = %sk_peek_offset.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

sk_peek_offset.exit.thread.if.end12_crit_edge:    ; preds = %sk_peek_offset.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then10:                                        ; preds = %sk_peek_offset.exit
  %fp1.i = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 3, i32 12
  %17 = ptrtoint ptr %fp1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fp1.i, align 4
  %tobool.not.i146 = icmp eq ptr %18, null
  br i1 %tobool.not.i146, label %if.then10.if.end35_crit_edge, label %land.rhs.i

if.then10.if.end35_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.rhs.i:                                       ; preds = %if.then10
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool2.not.i = icmp eq i16 %20, 0
  br i1 %tobool2.not.i, label %land.rhs.i.if.end35_crit_edge, label %if.then.i, !prof !135

land.rhs.i.if.end35_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv6.i = sext i16 %20 to i32
  %scm_stat.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scm_stat.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %scm_stat.i, i32 1, i32 3, i32 1) #16
  %21 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scm_stat.i, ptr %scm_stat.i, i32 %conv6.i, ptr elementtype(i32) %scm_stat.i) #16, !srcloc !137
  br label %if.end35

if.end12:                                         ; preds = %sk_peek_offset.exit.thread.if.end12_crit_edge, %sk_peek_offset.exit.if.end12_crit_edge
  call void @mutex_unlock(ptr noundef %iolock) #16
  %22 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %23)
  %cmp.not = icmp eq i32 %23, -11
  br i1 %cmp.not, label %do.cond, label %if.end12.if.then21_crit_edge

if.end12.if.then21_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

do.cond:                                          ; preds = %if.end12
  %24 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool16.not = icmp eq i32 %25, 0
  br i1 %tobool16.not, label %do.cond.if.then21_crit_edge, label %land.rhs

do.cond.if.then21_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

land.rhs:                                         ; preds = %do.cond
  %26 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %last, align 4
  %call18 = call i32 @__skb_wait_for_more_packets(ptr noundef %sk, ptr noundef %sk_receive_queue, ptr noundef nonnull %err, ptr noundef nonnull %timeo, ptr noundef %27) #16
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.rhs.do.body_crit_edge, label %land.rhs.if.then21_crit_edge

land.rhs.if.then21_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then21:                                        ; preds = %land.rhs.if.then21_crit_edge, %do.cond.if.then21_crit_edge, %if.end12.if.then21_crit_edge
  %lock = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %lock) #16
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %28 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %29)
  %cmp23 = icmp eq i16 %29, 5
  br i1 %cmp23, label %land.lhs.true, label %if.then21.if.end32_crit_edge

if.then21.if.end32_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

land.lhs.true:                                    ; preds = %if.then21
  %30 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %31)
  %cmp25 = icmp eq i32 %31, -11
  br i1 %cmp25, label %land.lhs.true27, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

land.lhs.true27:                                  ; preds = %land.lhs.true
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %32 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sk_shutdown, align 2
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool30.not = icmp eq i8 %34, 0
  br i1 %tobool30.not, label %land.lhs.true27.if.end32_crit_edge, label %if.then31

land.lhs.true27.if.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then31:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %err, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %land.lhs.true27.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.then21.if.end32_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %out

if.end35:                                         ; preds = %if.then.i, %land.rhs.i.if.end35_crit_edge, %if.then10.if.end35_crit_edge, %sk_peek_offset.exit.thread.if.end35_crit_edge
  %call5161166 = phi ptr [ %call5, %if.then.i ], [ %call5, %land.rhs.i.if.end35_crit_edge ], [ %call5, %if.then10.if.end35_crit_edge ], [ %call5159, %sk_peek_offset.exit.thread.if.end35_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !138
  %head.i.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 11, i32 0, i32 1
  %36 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.i.not = icmp eq ptr %37, %head.i.i
  br i1 %cmp.i.i.i.not, label %if.end35.if.end40_crit_edge, label %if.then37

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %peer_wq = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 11
  call void @__wake_up_sync_key(ptr noundef %peer_wq, i32 noundef 1, ptr noundef nonnull inttoptr (i32 772 to ptr)) #16
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35.if.end40_crit_edge
  %38 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msg, align 8
  %tobool41.not = icmp eq ptr %39, null
  br i1 %tobool41.not, label %if.end40.if.end43_crit_edge, label %if.then42

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then42:                                        ; preds = %if.end40
  %40 = getelementptr inbounds %struct.sk_buff, ptr %call5161166, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %addr1.i = getelementptr inbounds %struct.unix_sock, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %addr1.i, align 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !139
  %tobool.not.i147 = icmp eq ptr %44, null
  br i1 %tobool.not.i147, label %if.then42.if.end43_crit_edge, label %if.then.i148

if.then42.if.end43_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then.i148:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  %len.i = getelementptr inbounds %struct.unix_address, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i, align 4
  %msg_namelen.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %47 = ptrtoint ptr %msg_namelen.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %msg_namelen.i, align 4
  %48 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %msg, align 8
  %name.i = getelementptr inbounds %struct.unix_address, ptr %44, i32 0, i32 2
  %50 = load i32, ptr %len.i, align 4
  %51 = call ptr @memcpy(ptr %49, ptr %name.i, i32 %50)
  br label %if.end43

if.end43:                                         ; preds = %if.then.i148, %if.then42.if.end43_crit_edge, %if.end40.if.end43_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %call5161166, i32 0, i32 6
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  %54 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %skip, align 4
  %sub = sub i32 %53, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %size)
  %cmp44 = icmp ult i32 %sub, %size
  br i1 %cmp44, label %if.end43.if.end55_crit_edge, label %if.else

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %size)
  %cmp51 = icmp ugt i32 %sub, %size
  br i1 %cmp51, label %if.then53, label %if.else.if.end55_crit_edge

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %56 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_flags, align 4
  %or = or i32 %57, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.else.if.end55_crit_edge, %if.end43.if.end55_crit_edge
  %size.addr.0 = phi i32 [ %size, %if.then53 ], [ %size, %if.else.if.end55_crit_edge ], [ %sub, %if.end43.if.end55_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call5161166, i32 noundef %55, ptr noundef %msg_iter.i, i32 noundef %size.addr.0) #16
  %58 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool57.not = icmp eq i32 %call.i, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.out_free_crit_edge

if.end55.out_free_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

if.end59:                                         ; preds = %if.end55
  %59 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %62 = and i32 %61, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i.not = icmp eq i32 %62, 0
  br i1 %tobool.i.not, label %if.end59.if.end62_crit_edge, label %if.then61

if.end59.if.end62_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sock_recv_timestamp(ptr noundef %msg, ptr noundef %sk, ptr noundef nonnull %call5161166) #16
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end59.if.end62_crit_edge
  %63 = getelementptr inbounds i8, ptr %scm, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %63, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call5161166, i32 0, i32 3
  %65 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cb, align 8
  %uid = getelementptr inbounds %struct.sk_buff, ptr %call5161166, i32 0, i32 3, i32 4
  %gid = getelementptr inbounds %struct.sk_buff, ptr %call5161166, i32 0, i32 3, i32 8
  %67 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %67)
  %.unpack = load i32, ptr %uid, align 4
  %68 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %68)
  %.unpack142 = load i32, ptr %gid, align 8
  %tobool.not.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i, label %if.end62.scm_set_cred.exit_crit_edge, label %if.then.i.i

if.end62.scm_set_cred.exit_crit_edge:             ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %scm_set_cred.exit

if.then.i.i:                                      ; preds = %if.end62
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %66, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull %66, i32 1, i32 3, i32 1) #16
  %69 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %66, ptr nonnull %66, i32 1, ptr nonnull elementtype(i32) %66) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !134

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %70 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %.not.i.i.i.i.i = icmp sgt i32 %70, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.scm_set_cred.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.scm_set_cred.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %scm_set_cred.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %66, i32 noundef %.sink.i.i.i.i.i) #16
  br label %scm_set_cred.exit

scm_set_cred.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.scm_set_cred.exit_crit_edge, %if.end62.scm_set_cred.exit_crit_edge
  %71 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %66, ptr %scm, align 4
  %call3.i = call i32 @pid_vnr(ptr noundef %66) #16
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call3.i, ptr %0, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.unpack, ptr %1, align 4
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %.unpack142, ptr %2, align 4
  %secid.i = getelementptr inbounds %struct.sk_buff, ptr %call5161166, i32 0, i32 3, i32 16
  %75 = ptrtoint ptr %secid.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %secid.i, align 8
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %3, align 4
  br i1 %tobool.not.i, label %if.then68, label %if.else74

if.then68:                                        ; preds = %scm_set_cred.exit
  %fp = getelementptr inbounds %struct.sk_buff, ptr %call5161166, i32 0, i32 3, i32 12
  %78 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fp, align 4
  %tobool70.not = icmp eq ptr %79, null
  br i1 %tobool70.not, label %if.then68.if.end72_crit_edge, label %if.then71

if.then68.if.end72_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

if.then71:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #18
  call void @unix_detach_fds(ptr noundef nonnull %scm, ptr noundef nonnull %call5161166) #16
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.then68.if.end72_crit_edge
  %80 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len, align 4
  %82 = ptrtoint ptr %sk_peek_off.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %sk_peek_off.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp.i = icmp sgt i32 %83, -1
  br i1 %cmp.i, label %if.then.i150, label %if.end72.if.end80_crit_edge, !prof !134

if.end72.if.end80_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

if.then.i150:                                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i = sub i32 %83, %81
  %84 = call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #16
  %85 = ptrtoint ptr %sk_peek_off.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 %84, ptr %sk_peek_off.i, align 8
  br label %if.end80

if.else74:                                        ; preds = %scm_set_cred.exit
  %86 = ptrtoint ptr %sk_peek_off.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %sk_peek_off.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %cmp.i.i = icmp sgt i32 %87, -1
  br i1 %cmp.i.i, label %if.then.i.i151, label %if.else74.sk_peek_offset_fwd.exit_crit_edge, !prof !134

if.else74.sk_peek_offset_fwd.exit_crit_edge:      ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #18
  br label %sk_peek_offset_fwd.exit

if.then.i.i151:                                   ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %87, %size.addr.0
  %88 = call i32 @llvm.smax.i32(i32 %sub.i.i, i32 0) #16
  %89 = ptrtoint ptr %sk_peek_off.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 %88, ptr %sk_peek_off.i, align 8
  br label %sk_peek_offset_fwd.exit

sk_peek_offset_fwd.exit:                          ; preds = %if.then.i.i151, %if.else74.sk_peek_offset_fwd.exit_crit_edge
  %fp76 = getelementptr inbounds %struct.sk_buff, ptr %call5161166, i32 0, i32 3, i32 12
  %90 = ptrtoint ptr %fp76 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fp76, align 4
  %tobool77.not = icmp eq ptr %91, null
  br i1 %tobool77.not, label %sk_peek_offset_fwd.exit.if.end80_crit_edge, label %if.then78

sk_peek_offset_fwd.exit.if.end80_crit_edge:       ; preds = %sk_peek_offset_fwd.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

if.then78:                                        ; preds = %sk_peek_offset_fwd.exit
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @unix_peek_fds(ptr noundef nonnull %scm, ptr noundef nonnull %call5161166)
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %sk_peek_offset_fwd.exit.if.end80_crit_edge, %if.then.i150, %if.end72.if.end80_crit_edge
  %and81 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.cond.end_crit_edge, label %cond.true

if.end80.cond.end_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  %92 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len, align 4
  %94 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %skip, align 4
  %sub84 = sub i32 %93, %95
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end80.cond.end_crit_edge
  %cond = phi i32 [ %sub84, %cond.true ], [ %size.addr.0, %if.end80.cond.end_crit_edge ]
  %96 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %cond, ptr %err, align 4
  call fastcc void @scm_recv(ptr noundef %6, ptr noundef %msg, ptr noundef nonnull %scm)
  br label %out_free

out_free:                                         ; preds = %cond.end, %if.end55.out_free_crit_edge
  call void @skb_free_datagram(ptr noundef %sk, ptr noundef nonnull %call5161166) #16
  call void @mutex_unlock(ptr noundef %iolock) #16
  br label %out

out:                                              ; preds = %out_free, %if.end32, %entry.out_crit_edge
  %97 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scm) #16
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_try_recv_datagram(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_wait_for_more_packets(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unix_detach_fds(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unix_peek_fds(ptr nocapture noundef writeonly %scm, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp, align 4
  %call = tail call ptr @scm_fp_dup(ptr noundef %1) #16
  %fp1 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %2 = ptrtoint ptr %fp1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %fp1, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @unix_gc_lock) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scm_recv(ptr noundef %sock, ptr noundef %msg, ptr noundef %scm) unnamed_addr #4 align 64 {
entry:
  %secdata.i = alloca ptr, align 4
  %seclen.i = alloca i32, align 4
  %ucreds = alloca %struct.ucred, align 4
  call void @__sanitizer_cov_trace_pc() #18
  %0 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  %flags1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 2
  %3 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags1, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  br i1 %tobool2.not, label %lor.lhs.false, label %if.then.if.then4_crit_edge

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.then
  %fp = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %6 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fp, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %8 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_flags, align 4
  %or = or i32 %9, 8
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %lor.lhs.false.if.end_crit_edge
  %10 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scm, align 4
  tail call void @put_pid(ptr noundef %11) #16
  %12 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %scm, align 4
  %fp.i = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %13 = ptrtoint ptr %fp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fp.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.then.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__scm_destroy(ptr noundef %scm) #16
  br label %return

if.end5:                                          ; preds = %entry
  br i1 %tobool2.not, label %if.end5.if.end21_crit_edge, label %if.then9

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %15 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 99
  %19 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %user_ns, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ucreds) #16
  %23 = getelementptr inbounds %struct.ucred, ptr %ucreds, i32 0, i32 1
  %24 = getelementptr inbounds %struct.ucred, ptr %ucreds, i32 0, i32 2
  %creds = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2
  %25 = ptrtoint ptr %creds to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %creds, align 4
  %27 = ptrtoint ptr %ucreds to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ucreds, align 4
  %uid14 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %uid14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack = load i32, ptr %uid14, align 4
  %29 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call15 = tail call i32 @from_kuid_munged(ptr noundef %22, [1 x i32] %29) #16
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call15, ptr %23, align 4
  %gid17 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %gid17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack1 = load i32, ptr %gid17, align 4
  %32 = insertvalue [1 x i32] undef, i32 %.unpack1, 0
  %call19 = tail call i32 @from_kgid_munged(ptr noundef %22, [1 x i32] %32) #16
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call19, ptr %24, align 4
  %call20 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 1, i32 noundef 2, i32 noundef 12, ptr noundef nonnull %ucreds) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ucreds) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then9, %if.end5.if.end21_crit_edge
  %34 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %scm, align 4
  call void @put_pid(ptr noundef %35) #16
  %36 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %scm, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secdata.i) #16
  %37 = ptrtoint ptr %secdata.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %secdata.i, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seclen.i) #16
  %38 = ptrtoint ptr %seclen.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %seclen.i, align 4, !annotation !136
  %39 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags1, align 4
  %41 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i4 = icmp eq i32 %41, 0
  br i1 %tobool.not.i4, label %if.end21.scm_passec.exit_crit_edge, label %if.then.i5

if.end21.scm_passec.exit_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %scm_passec.exit

if.then.i5:                                       ; preds = %if.end21
  %secid.i = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 3
  %42 = ptrtoint ptr %secid.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %secid.i, align 4
  %call1.i = call i32 @security_secid_to_secctx(i32 noundef %43, ptr noundef nonnull %secdata.i, ptr noundef nonnull %seclen.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.then.i5.scm_passec.exit_crit_edge

if.then.i5.scm_passec.exit_crit_edge:             ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #18
  br label %scm_passec.exit

if.then3.i:                                       ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %seclen.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %seclen.i, align 4
  %46 = ptrtoint ptr %secdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %secdata.i, align 4
  %call4.i = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 1, i32 noundef 3, i32 noundef %45, ptr noundef %47) #16
  %48 = ptrtoint ptr %secdata.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %secdata.i, align 4
  %50 = ptrtoint ptr %seclen.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %seclen.i, align 4
  call void @security_release_secctx(ptr noundef %49, i32 noundef %51) #16
  br label %scm_passec.exit

scm_passec.exit:                                  ; preds = %if.then3.i, %if.then.i5.scm_passec.exit_crit_edge, %if.end21.scm_passec.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seclen.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secdata.i) #16
  %fp22 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %52 = ptrtoint ptr %fp22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fp22, align 4
  %tobool23.not = icmp eq ptr %53, null
  br i1 %tobool23.not, label %scm_passec.exit.return_crit_edge, label %if.end25

scm_passec.exit.return_crit_edge:                 ; preds = %scm_passec.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end25:                                         ; preds = %scm_passec.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @scm_detach_fds(ptr noundef %msg, ptr noundef %scm) #16
  br label %return

return:                                           ; preds = %if.end25, %scm_passec.exit.return_crit_edge, %if.then.i, %if.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__unix_stream_recvmsg(ptr nocapture noundef readonly %sk, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %state = alloca %struct.unix_stream_read_state, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %state) #16
  %0 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 1
  %1 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 2
  %2 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 3
  %3 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 4
  %4 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 5
  %5 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 6
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @unix_stream_read_actor, ptr %state, align 4
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %7 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_socket, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %size, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %flags, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %5, align 4
  %call = call fastcc i32 @unix_stream_read_generic(ptr noundef nonnull %state, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %state) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_stream_read_actor(ptr noundef %skb, i32 noundef %skip, i32 noundef %chunk, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %consumed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %0 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %consumed, align 4
  %add = add i32 %1, %skip
  %msg = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 4
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 2
  %call.i = tail call i32 @skb_copy_datagram_iter(ptr noundef %skb, i32 noundef %add, ptr noundef %msg_iter.i, i32 noundef %chunk) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool.not, i32 %chunk, i32 %call.i
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unix_stream_read_generic(ptr noundef %state, i1 noundef zeroext %freezable) unnamed_addr #0 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %scm = alloca %struct.scm_cookie, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scm) #16
  %0 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %1 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2
  %2 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 2
  %4 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 3
  %socket = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %socket, align 4
  %sk1 = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk1, align 16
  %flags2 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 5
  %9 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags2, align 4
  %and = and i32 %10, 64
  %size3 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 4
  %11 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size3, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.not = icmp eq i8 %14, 1
  br i1 %cmp.not, label %if.end, label %entry.out.thread_crit_edge, !prof !135

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.thread

if.end:                                           ; preds = %entry
  %and6 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end16, label %if.then14, !prof !135

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call15 = tail call fastcc i32 @unix_stream_recv_urg(ptr noundef %state)
  br label %out.thread

if.end16:                                         ; preds = %if.end
  %and17 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not.i = icmp eq i32 %and17, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end16.sock_rcvlowat.exit_crit_edge

if.end16.sock_rcvlowat.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_rcvlowat.exit

cond.false.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %sk_rcvlowat.i = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 6
  %15 = ptrtoint ptr %sk_rcvlowat.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sk_rcvlowat.i, align 8
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 %12) #16
  br label %sock_rcvlowat.exit

sock_rcvlowat.exit:                               ; preds = %cond.false.i, %if.end16.sock_rcvlowat.exit_crit_edge
  %cond5.i = phi i32 [ %17, %cond.false.i ], [ %12, %if.end16.sock_rcvlowat.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond5.i)
  %tobool6.not.i = icmp eq i32 %cond5.i, 0
  %..i = select i1 %tobool6.not.i, i32 1, i32 %cond5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %cond.false.i345, label %sock_rcvlowat.exit.sock_rcvtimeo.exit_crit_edge

sock_rcvlowat.exit.sock_rcvtimeo.exit_crit_edge:  ; preds = %sock_rcvlowat.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_rcvtimeo.exit

cond.false.i345:                                  ; preds = %sock_rcvlowat.exit
  call void @__sanitizer_cov_trace_pc() #18
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 62
  %18 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i345, %sock_rcvlowat.exit.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %19, %cond.false.i345 ], [ 0, %sock_rcvlowat.exit.sock_rcvtimeo.exit_crit_edge ]
  %20 = call ptr @memset(ptr %scm, i32 0, i32 24)
  %iolock = getelementptr inbounds %struct.unix_sock, ptr %8, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #16
  %and.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i346 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i346, label %sock_rcvtimeo.exit.sk_peek_offset.exit.thread_crit_edge, label %sk_peek_offset.exit, !prof !135

sock_rcvtimeo.exit.sk_peek_offset.exit.thread_crit_edge: ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sk_peek_offset.exit.thread

sk_peek_offset.exit:                              ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #18
  %sk_peek_off.i = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 27
  %21 = ptrtoint ptr %sk_peek_off.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %sk_peek_off.i, align 8
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0)
  br label %sk_peek_offset.exit.thread

sk_peek_offset.exit.thread:                       ; preds = %sk_peek_offset.exit, %sock_rcvtimeo.exit.sk_peek_offset.exit.thread_crit_edge
  %24 = phi i32 [ 0, %sock_rcvtimeo.exit.sk_peek_offset.exit.thread_crit_edge ], [ %23, %sk_peek_offset.exit ]
  %lock = getelementptr inbounds %struct.unix_sock, ptr %8, i32 0, i32 8
  %25 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 13
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 8
  %oob_skb.i = getelementptr inbounds %struct.unix_sock, ptr %8, i32 0, i32 14
  %flags97 = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 2
  %msg = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 2
  %sk_peek_off.i.i = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 27
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 51
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 66
  %26 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %28 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %29 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %30 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 17
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 8, i32 0, i32 0, i32 1
  %scm_stat.i = getelementptr inbounds %struct.unix_sock, ptr %8, i32 0, i32 13
  br label %redo.outer.outer

redo.outer.outer:                                 ; preds = %if.end75, %sk_peek_offset.exit.thread
  %copied.1.ph.ph = phi i32 [ 0, %sk_peek_offset.exit.thread ], [ %copied.2.ph.lcssa544, %if.end75 ]
  %check_creds.1.off0.ph.ph = phi i1 [ false, %sk_peek_offset.exit.thread ], [ %check_creds.2.off0.ph.lcssa540, %if.end75 ]
  %timeo.1.ph.ph = phi i32 [ %cond.i, %sk_peek_offset.exit.thread ], [ %timeo.addr.2.i, %if.end75 ]
  %skip.1.ph.ph = phi i32 [ %24, %sk_peek_offset.exit.thread ], [ %skip.2.lcssa, %if.end75 ]
  %size.1.ph.ph = phi i32 [ %12, %sk_peek_offset.exit.thread ], [ %size.2.ph.lcssa536, %if.end75 ]
  br label %redo.outer

redo.outer:                                       ; preds = %if.end156.redo.outer_crit_edge, %redo.outer.outer
  %copied.1.ph = phi i32 [ %add, %if.end156.redo.outer_crit_edge ], [ %copied.1.ph.ph, %redo.outer.outer ]
  %check_creds.1.off0.ph = phi i1 [ %check_creds.4.off0, %if.end156.redo.outer_crit_edge ], [ %check_creds.1.off0.ph.ph, %redo.outer.outer ]
  %skip.1.ph = phi i32 [ %skip.4, %if.end156.redo.outer_crit_edge ], [ %skip.1.ph.ph, %redo.outer.outer ]
  %size.1.ph = phi i32 [ %sub140, %if.end156.redo.outer_crit_edge ], [ %size.1.ph.ph, %redo.outer.outer ]
  br label %redo

redo:                                             ; preds = %if.then38.redo_crit_edge, %redo.outer
  %copied.1 = phi i32 [ 0, %if.then38.redo_crit_edge ], [ %copied.1.ph, %redo.outer ]
  call void @_raw_spin_lock(ptr noundef %lock) #16
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %25, align 4
  %33 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not = icmp eq i32 %33, 0
  br i1 %tobool.i.not, label %if.end27, label %redo.unlock_crit_edge

redo.unlock_crit_edge:                            ; preds = %redo
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.end27:                                         ; preds = %redo
  %34 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %35, %sk_receive_queue
  %tobool29.not753 = icmp eq ptr %35, null
  %tobool29.not = or i1 %cmp.i, %tobool29.not753
  br i1 %tobool29.not, label %if.end27.if.then48_crit_edge, label %if.then35

if.end27.if.then48_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then48

if.then35:                                        ; preds = %if.end27
  %len = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %consumed.i.i = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3, i32 20
  %38 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %consumed.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %tobool.not.i347 = icmp eq i32 %37, %39
  %or.cond.i = and i1 %tobool.not.i346, %tobool.not.i347
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  call void @skb_unlink(ptr noundef nonnull %35, ptr noundef %sk_receive_queue) #16
  call void @consume_skb(ptr noundef nonnull %35) #16
  br label %if.then38

if.else.i:                                        ; preds = %if.then35
  %40 = ptrtoint ptr %oob_skb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %oob_skb.i, align 8
  %cmp.i349 = icmp eq ptr %41, %35
  br i1 %cmp.i349, label %if.then3.i, label %if.else.i.if.end45_crit_edge

if.else.i.if.end45_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.1)
  %tobool4.not.i = icmp eq i32 %copied.1, 0
  br i1 %tobool4.not.i, label %if.else6.i, label %if.then38.thread

if.then38.thread:                                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %do.end189

if.else6.i:                                       ; preds = %if.then3.i
  %42 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %25, align 4
  %44 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not.i = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i, label %if.else13.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else6.i
  br i1 %tobool.not.i346, label %if.then11.i, label %if.then8.i.if.end45_crit_edge

if.then8.i.if.end45_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  %45 = ptrtoint ptr %oob_skb.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %oob_skb.i, align 8
  call void @consume_skb(ptr noundef nonnull %35) #16
  br label %if.end45

if.else13.i:                                      ; preds = %if.else6.i
  br i1 %tobool.not.i346, label %if.then16.i, label %if.else13.i.if.end45_crit_edge

if.else13.i.if.end45_crit_edge:                   ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then16.i:                                      ; preds = %if.else13.i
  call void @skb_unlink(ptr noundef nonnull %35, ptr noundef %sk_receive_queue) #16
  call void @consume_skb(ptr noundef nonnull %35) #16
  %46 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.i = icmp eq ptr %47, %sk_receive_queue
  %tobool37.not = icmp eq ptr %47, null
  %or.cond = or i1 %cmp.i.i, %tobool37.not
  br i1 %or.cond, label %if.then16.i.if.then38_crit_edge, label %if.then16.i.while.cond.preheader.lr.ph.preheader_crit_edge

if.then16.i.while.cond.preheader.lr.ph.preheader_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader.lr.ph.preheader

if.then16.i.if.then38_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then38

if.then38:                                        ; preds = %if.then16.i.if.then38_crit_edge, %if.then.i
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  %tobool41.not = icmp eq i32 %copied.1, 0
  br i1 %tobool41.not, label %if.then38.redo_crit_edge, label %if.then38.do.end189_crit_edge

if.then38.do.end189_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end189

if.then38.redo_crit_edge:                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %redo

if.end45:                                         ; preds = %if.else13.i.if.end45_crit_edge, %if.then11.i, %if.then8.i.if.end45_crit_edge, %if.else.i.if.end45_crit_edge
  %copied.1602 = phi i32 [ 0, %if.then8.i.if.end45_crit_edge ], [ 0, %if.then11.i ], [ %copied.1, %if.else.i.if.end45_crit_edge ], [ 0, %if.else13.i.if.end45_crit_edge ]
  %cmp46560574 = icmp eq ptr %35, null
  br i1 %cmp46560574, label %if.end45.if.then48_crit_edge, label %if.end45.while.cond.preheader.lr.ph.preheader_crit_edge

if.end45.while.cond.preheader.lr.ph.preheader_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader.lr.ph.preheader

if.end45.if.then48_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then48

while.cond.preheader.lr.ph.preheader:             ; preds = %if.end45.while.cond.preheader.lr.ph.preheader_crit_edge, %if.then16.i.while.cond.preheader.lr.ph.preheader_crit_edge
  %skb.1.ph579.ph = phi ptr [ %35, %if.end45.while.cond.preheader.lr.ph.preheader_crit_edge ], [ %47, %if.then16.i.while.cond.preheader.lr.ph.preheader_crit_edge ]
  %copied.2.ph575.ph = phi i32 [ %copied.1602, %if.end45.while.cond.preheader.lr.ph.preheader_crit_edge ], [ 0, %if.then16.i.while.cond.preheader.lr.ph.preheader_crit_edge ]
  br label %while.cond.preheader.lr.ph

while.cond.preheader.lr.ph:                       ; preds = %if.end172.while.cond.preheader.lr.ph_crit_edge, %while.cond.preheader.lr.ph.preheader
  %skb.1.ph579 = phi ptr [ %232, %if.end172.while.cond.preheader.lr.ph_crit_edge ], [ %skb.1.ph579.ph, %while.cond.preheader.lr.ph.preheader ]
  %size.2.ph578 = phi i32 [ %sub140, %if.end172.while.cond.preheader.lr.ph_crit_edge ], [ %size.1.ph, %while.cond.preheader.lr.ph.preheader ]
  %skip.2.ph577 = phi i32 [ 0, %if.end172.while.cond.preheader.lr.ph_crit_edge ], [ %skip.1.ph, %while.cond.preheader.lr.ph.preheader ]
  %check_creds.2.off0.ph576 = phi i1 [ %check_creds.4.off0, %if.end172.while.cond.preheader.lr.ph_crit_edge ], [ %check_creds.1.off0.ph, %while.cond.preheader.lr.ph.preheader ]
  %copied.2.ph575 = phi i32 [ %add, %if.end172.while.cond.preheader.lr.ph_crit_edge ], [ %copied.2.ph575.ph, %while.cond.preheader.lr.ph.preheader ]
  br label %while.cond

if.then48:                                        ; preds = %while.body.if.then48_crit_edge, %if.end45.if.then48_crit_edge, %if.end27.if.then48_crit_edge
  %copied.2.ph.lcssa544 = phi i32 [ %copied.2.ph575, %while.body.if.then48_crit_edge ], [ %copied.1, %if.end27.if.then48_crit_edge ], [ %copied.1602, %if.end45.if.then48_crit_edge ]
  %check_creds.2.off0.ph.lcssa540 = phi i1 [ %check_creds.2.off0.ph576, %while.body.if.then48_crit_edge ], [ %check_creds.1.off0.ph, %if.end27.if.then48_crit_edge ], [ %check_creds.1.off0.ph, %if.end45.if.then48_crit_edge ]
  %size.2.ph.lcssa536 = phi i32 [ %size.2.ph578, %while.body.if.then48_crit_edge ], [ %size.1.ph, %if.end27.if.then48_crit_edge ], [ %size.1.ph, %if.end45.if.then48_crit_edge ]
  %skip.2.lcssa = phi i32 [ %sub, %while.body.if.then48_crit_edge ], [ %skip.1.ph, %if.end27.if.then48_crit_edge ], [ %skip.1.ph, %if.end45.if.then48_crit_edge ]
  %last_len.0.lcssa = phi i32 [ %142, %while.body.if.then48_crit_edge ], [ 0, %if.end27.if.then48_crit_edge ], [ %37, %if.end45.if.then48_crit_edge ]
  %last.0.lcssa = phi ptr [ %skb.2, %while.body.if.then48_crit_edge ], [ null, %if.end27.if.then48_crit_edge ], [ %35, %if.end45.if.then48_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %copied.2.ph.lcssa544, i32 %..i)
  %cmp49.not = icmp slt i32 %copied.2.ph.lcssa544, %..i
  br i1 %cmp49.not, label %if.end52, label %if.then48.unlock_crit_edge

if.then48.unlock_crit_edge:                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.end52:                                         ; preds = %if.then48
  %48 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i350 = icmp eq i32 %49, 0
  br i1 %tobool.not.i350, label %if.end52.if.end56_crit_edge, label %sock_error.exit, !prof !135

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

sock_error.exit:                                  ; preds = %if.end52
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !140
  call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #16
  %50 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #16, !srcloc !141
  %asmresult.i.i = extractvalue { i32, i32 } %50, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool54.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool54.not, label %sock_error.exit.if.end56_crit_edge, label %unlock.loopexit459.split.loop.exit586

sock_error.exit.if.end56_crit_edge:               ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.end56:                                         ; preds = %sock_error.exit.if.end56_crit_edge, %if.end52.if.end56_crit_edge
  %51 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sk_shutdown, align 2
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool59.not = icmp eq i8 %53, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.unlock_crit_edge

if.end56.unlock_crit_edge:                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.end61:                                         ; preds = %if.end56
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.1.ph.ph)
  %tobool64.not = icmp eq i32 %timeo.1.ph.ph, 0
  br i1 %tobool64.not, label %if.end61.do.end189_crit_edge, label %if.end66

if.end61.do.end189_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end189

if.end66:                                         ; preds = %if.end61
  call void @mutex_unlock(ptr noundef %iolock) #16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #16
  %54 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %wait.i, align 4
  %55 = call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i, align 8
  %59 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %26, align 4
  %60 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @autoremove_wake_function, ptr %27, align 4
  %61 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %28, ptr %28, align 4
  %62 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %28, ptr %29, align 4
  call void @_raw_spin_lock(ptr noundef %lock) #16
  %63 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %30, align 8
  call void @prepare_to_wait(ptr noundef %64, ptr noundef nonnull %wait.i, i32 noundef 1) #16
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i56.i = icmp eq ptr %66, %sk_receive_queue
  %spec.store.select.i57.i = select i1 %cmp.i56.i, ptr null, ptr %66
  %cmp.not58.i = icmp eq ptr %spec.store.select.i57.i, %last.0.lcssa
  br i1 %cmp.not58.i, label %lor.lhs.false.lr.ph.i, label %if.end66.unix_stream_data_wait.exit_crit_edge

if.end66.unix_stream_data_wait.exit_crit_edge:    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_stream_data_wait.exit

lor.lhs.false.lr.ph.i:                            ; preds = %if.end66
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %last.0.lcssa, i32 0, i32 6
  %tobool.not.i354 = icmp eq ptr %last.0.lcssa, null
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %sk_clear_bit.exit.i.lor.lhs.false.i_crit_edge, %lor.lhs.false.lr.ph.i
  %timeo.addr.059.i = phi i32 [ %timeo.1.ph.ph, %lor.lhs.false.lr.ph.i ], [ %timeo.addr.1.i, %sk_clear_bit.exit.i.lor.lhs.false.i_crit_edge ]
  br i1 %tobool.not.i354, label %lor.lhs.false.i.lor.lhs.false8.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.lhs.false8.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false8.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %67 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %last_len.0.lcssa)
  %cmp7.not.i = icmp eq i32 %68, %last_len.0.lcssa
  br i1 %cmp7.not.i, label %land.lhs.true.i.lor.lhs.false8.i_crit_edge, label %land.lhs.true.i.unix_stream_data_wait.exit_crit_edge

land.lhs.true.i.unix_stream_data_wait.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_stream_data_wait.exit

land.lhs.true.i.lor.lhs.false8.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false8.i

lor.lhs.false8.i:                                 ; preds = %land.lhs.true.i.lor.lhs.false8.i_crit_edge, %lor.lhs.false.i.lor.lhs.false8.i_crit_edge
  %69 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool9.not.i = icmp eq i32 %70, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %lor.lhs.false8.i.unix_stream_data_wait.exit_crit_edge

lor.lhs.false8.i.unix_stream_data_wait.exit_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_stream_data_wait.exit

lor.lhs.false10.i:                                ; preds = %lor.lhs.false8.i
  %71 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %sk_shutdown, align 2
  %73 = and i8 %72, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool11.not.i = icmp eq i8 %73, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false10.i.unix_stream_data_wait.exit_crit_edge

lor.lhs.false10.i.unix_stream_data_wait.exit_crit_edge: ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_stream_data_wait.exit

lor.lhs.false12.i:                                ; preds = %lor.lhs.false10.i
  %74 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %stack.i.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  %80 = and i32 %79, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %lor.lhs.false12.i.unix_stream_data_wait.exit_crit_edge, !prof !135

lor.lhs.false12.i.unix_stream_data_wait.exit_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_stream_data_wait.exit

signal_pending.exit.i:                            ; preds = %lor.lhs.false12.i
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %77, align 4
  %and1.i.i.i.i.i.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool16.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool16.not.i, label %lor.lhs.false17.i, label %signal_pending.exit.i.unix_stream_data_wait.exit_crit_edge

signal_pending.exit.i.unix_stream_data_wait.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_stream_data_wait.exit

lor.lhs.false17.i:                                ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.addr.059.i)
  %tobool18.not.i = icmp eq i32 %timeo.addr.059.i, 0
  br i1 %tobool18.not.i, label %lor.lhs.false17.i.unix_stream_data_wait.exit_crit_edge, label %if.end.i355

lor.lhs.false17.i.unix_stream_data_wait.exit_crit_edge: ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_stream_data_wait.exit

if.end.i355:                                      ; preds = %lor.lhs.false17.i
  %83 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %25, align 4
  %85 = and i32 %84, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.i.not.i.i = icmp eq i32 %85, 0
  br i1 %tobool.i.not.i.i, label %if.end.i355.sk_set_bit.exit.i_crit_edge, label %if.end.i50.i

if.end.i355.sk_set_bit.exit.i_crit_edge:          ; preds = %if.end.i355
  call void @__sanitizer_cov_trace_pc() #18
  br label %sk_set_bit.exit.i

if.end.i50.i:                                     ; preds = %if.end.i355
  call void @__sanitizer_cov_trace_pc() #18
  %86 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %30, align 8
  %flags.i.i = getelementptr inbounds %struct.socket_wq, ptr %87, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i.i) #16
  br label %sk_set_bit.exit.i

sk_set_bit.exit.i:                                ; preds = %if.end.i50.i, %if.end.i355.sk_set_bit.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  br i1 %freezable, label %if.then22.i, label %if.else.i357

if.then22.i:                                      ; preds = %sk_set_bit.exit.i
  %88 = call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags.i.i.i, align 4
  %or.i.i.i = or i32 %93, 1073741824
  store i32 %or.i.i.i, ptr %flags.i.i.i, align 4
  %call.i.i356 = call i32 @schedule_timeout(i32 noundef %timeo.addr.059.i) #16
  %94 = call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i1.i.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i1.i.i to ptr
  %task.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task.i2.i.i, align 8
  %flags.i3.i.i = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %flags.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags.i3.i.i, align 4
  %and.i.i.i = and i32 %99, -1073741825
  store i32 %and.i.i.i, ptr %flags.i3.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !143
  %100 = call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i.i.i.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task.i.i.i.i, align 8
  %flags.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags.i.i.i.i, align 4
  %and.i4.i.i.i = and i32 %105, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i4.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.then22.i.if.end.i.i.i.i_crit_edge

if.then22.i.if.end.i.i.i.i_crit_edge:             ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @debug_check_no_locks_held() #16
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %if.then22.i.if.end.i.i.i.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 57) #16
  %106 = call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i.i.i.i.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task.i.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %110 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %110, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.end.i.i.i.i.if.end25.i_crit_edge, label %freezing.exit.i.i.i.i.i, !prof !135

if.end.i.i.i.i.if.end25.i_crit_edge:              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i

freezing.exit.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  %call4.i.i.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %109) #16
  br i1 %call4.i.i.i.i.i.i, label %if.end.i.i.i.i.i, label %freezing.exit.i.i.i.i.i.if.end25.i_crit_edge, !prof !134

freezing.exit.i.i.i.i.i.if.end25.i_crit_edge:     ; preds = %freezing.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i

if.end.i.i.i.i.i:                                 ; preds = %freezing.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i.i.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #16
  br label %if.end25.i

if.else.i357:                                     ; preds = %sk_set_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call24.i = call i32 @schedule_timeout(i32 noundef %timeo.addr.059.i) #16
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i357, %if.end.i.i.i.i.i, %freezing.exit.i.i.i.i.i.if.end25.i_crit_edge, %if.end.i.i.i.i.if.end25.i_crit_edge
  %timeo.addr.1.i = phi i32 [ %call24.i, %if.else.i357 ], [ %call.i.i356, %if.end.i.i.i.i.if.end25.i_crit_edge ], [ %call.i.i356, %freezing.exit.i.i.i.i.i.if.end25.i_crit_edge ], [ %call.i.i356, %if.end.i.i.i.i.i ]
  call void @_raw_spin_lock(ptr noundef %lock) #16
  %111 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %25, align 4
  %113 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.i.not.i358 = icmp eq i32 %113, 0
  br i1 %tobool.i.not.i358, label %if.end30.i, label %if.end25.i.unix_stream_data_wait.exit_crit_edge

if.end25.i.unix_stream_data_wait.exit_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_stream_data_wait.exit

if.end30.i:                                       ; preds = %if.end25.i
  %114 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %25, align 4
  %116 = and i32 %115, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.i.not.i51.i = icmp eq i32 %116, 0
  br i1 %tobool.i.not.i51.i, label %if.end30.i.sk_clear_bit.exit.i_crit_edge, label %if.end.i53.i

if.end30.i.sk_clear_bit.exit.i_crit_edge:         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sk_clear_bit.exit.i

if.end.i53.i:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #18
  %117 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %30, align 8
  %flags.i52.i = getelementptr inbounds %struct.socket_wq, ptr %118, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i52.i) #16
  br label %sk_clear_bit.exit.i

sk_clear_bit.exit.i:                              ; preds = %if.end.i53.i, %if.end30.i.sk_clear_bit.exit.i_crit_edge
  %119 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %30, align 8
  call void @prepare_to_wait(ptr noundef %120, ptr noundef nonnull %wait.i, i32 noundef 1) #16
  %121 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i.i359 = icmp eq ptr %122, %sk_receive_queue
  %spec.store.select.i.i360 = select i1 %cmp.i.i359, ptr null, ptr %122
  %cmp.not.i = icmp eq ptr %spec.store.select.i.i360, %last.0.lcssa
  br i1 %cmp.not.i, label %sk_clear_bit.exit.i.lor.lhs.false.i_crit_edge, label %sk_clear_bit.exit.i.unix_stream_data_wait.exit_crit_edge

sk_clear_bit.exit.i.unix_stream_data_wait.exit_crit_edge: ; preds = %sk_clear_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_stream_data_wait.exit

sk_clear_bit.exit.i.lor.lhs.false.i_crit_edge:    ; preds = %sk_clear_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

unix_stream_data_wait.exit:                       ; preds = %sk_clear_bit.exit.i.unix_stream_data_wait.exit_crit_edge, %if.end25.i.unix_stream_data_wait.exit_crit_edge, %lor.lhs.false17.i.unix_stream_data_wait.exit_crit_edge, %signal_pending.exit.i.unix_stream_data_wait.exit_crit_edge, %lor.lhs.false12.i.unix_stream_data_wait.exit_crit_edge, %lor.lhs.false10.i.unix_stream_data_wait.exit_crit_edge, %lor.lhs.false8.i.unix_stream_data_wait.exit_crit_edge, %land.lhs.true.i.unix_stream_data_wait.exit_crit_edge, %if.end66.unix_stream_data_wait.exit_crit_edge
  %timeo.addr.2.i = phi i32 [ %timeo.1.ph.ph, %if.end66.unix_stream_data_wait.exit_crit_edge ], [ 0, %lor.lhs.false17.i.unix_stream_data_wait.exit_crit_edge ], [ %timeo.addr.059.i, %signal_pending.exit.i.unix_stream_data_wait.exit_crit_edge ], [ %timeo.addr.059.i, %lor.lhs.false10.i.unix_stream_data_wait.exit_crit_edge ], [ %timeo.addr.059.i, %lor.lhs.false8.i.unix_stream_data_wait.exit_crit_edge ], [ %timeo.addr.059.i, %land.lhs.true.i.unix_stream_data_wait.exit_crit_edge ], [ %timeo.addr.1.i, %sk_clear_bit.exit.i.unix_stream_data_wait.exit_crit_edge ], [ %timeo.addr.1.i, %if.end25.i.unix_stream_data_wait.exit_crit_edge ], [ %timeo.addr.059.i, %lor.lhs.false12.i.unix_stream_data_wait.exit_crit_edge ]
  %123 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile ptr, ptr %30, align 8
  call void @finish_wait(ptr noundef %124, ptr noundef nonnull %wait.i) #16
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #16
  %125 = call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i361 = and i32 %125, -16384
  %126 = inttoptr i32 %and.i361 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %stack.i.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %130, align 4
  %133 = and i32 %132, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i362 = icmp eq i32 %133, 0
  br i1 %tobool.not.i362, label %signal_pending.exit, label %unix_stream_data_wait.exit.if.then73_crit_edge, !prof !135

unix_stream_data_wait.exit.if.then73_crit_edge:   ; preds = %unix_stream_data_wait.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then73

signal_pending.exit:                              ; preds = %unix_stream_data_wait.exit
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %130, align 4
  %and1.i.i.i.i.i = and i32 %135, 1
  %tobool72.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool72.not, label %if.end75, label %signal_pending.exit.if.then73_crit_edge

signal_pending.exit.if.then73_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then73

if.then73:                                        ; preds = %signal_pending.exit.if.then73_crit_edge, %unix_stream_data_wait.exit.if.then73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %timeo.addr.2.i)
  %cmp.i365 = icmp eq i32 %timeo.addr.2.i, 2147483647
  %cond.i366 = select i1 %cmp.i365, i32 -512, i32 -4
  %136 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %scm, align 4
  call void @put_pid(ptr noundef %137) #16
  %138 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %scm, align 4
  %139 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %0, align 4
  %tobool.not.i367 = icmp eq ptr %140, null
  br i1 %tobool.not.i367, label %if.then73.out_crit_edge, label %if.then.i368

if.then73.out_crit_edge:                          ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then.i368:                                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #18
  call void @__scm_destroy(ptr noundef nonnull %scm) #16
  br label %out

if.end75:                                         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #16
  br label %redo.outer.outer

unlock.loopexit459.split.loop.exit586:            ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #18
  %asmresult.i.i.le = extractvalue { i32, i32 } %50, 0
  %sub.i.le = sub i32 0, %asmresult.i.i.le
  br label %unlock

unlock:                                           ; preds = %unlock.loopexit459.split.loop.exit586, %if.end56.unlock_crit_edge, %if.then48.unlock_crit_edge, %redo.unlock_crit_edge
  %copied.3 = phi i32 [ %copied.2.ph.lcssa544, %unlock.loopexit459.split.loop.exit586 ], [ %copied.1, %redo.unlock_crit_edge ], [ %copied.2.ph.lcssa544, %if.end56.unlock_crit_edge ], [ %copied.2.ph.lcssa544, %if.then48.unlock_crit_edge ]
  %err.2 = phi i32 [ %sub.i.le, %unlock.loopexit459.split.loop.exit586 ], [ -104, %redo.unlock_crit_edge ], [ 0, %if.end56.unlock_crit_edge ], [ 0, %if.then48.unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %do.end189

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader.lr.ph
  %skip.4 = phi i32 [ %sub, %while.body.while.cond_crit_edge ], [ %skip.2.ph577, %while.cond.preheader.lr.ph ]
  %skb.2 = phi ptr [ %146, %while.body.while.cond_crit_edge ], [ %skb.1.ph579, %while.cond.preheader.lr.ph ]
  %len.i370 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 6
  %141 = ptrtoint ptr %len.i370 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %len.i370, align 4
  %consumed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 20
  %143 = ptrtoint ptr %consumed.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %consumed.i, align 4
  %sub.i371 = sub i32 %142, %144
  call void @__sanitizer_cov_trace_cmp4(i32 %skip.4, i32 %sub.i371)
  %cmp81.not = icmp ult i32 %skip.4, %sub.i371
  br i1 %cmp81.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %sub = sub i32 %skip.4, %sub.i371
  %145 = ptrtoint ptr %skb.2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %skb.2, align 8
  %cmp.i375 = icmp eq ptr %146, %sk_receive_queue
  %tobool87.not454 = icmp eq ptr %146, null
  %tobool87.not = or i1 %cmp.i375, %tobool87.not454
  br i1 %tobool87.not, label %while.body.if.then48_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

while.body.if.then48_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then48

while.end:                                        ; preds = %while.cond
  %len.i370.le = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 6
  %consumed.i.le = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 20
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  br i1 %check_creds.2.off0.ph576, label %if.then93, label %if.else

if.then93:                                        ; preds = %while.end
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3
  %147 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cb.i, align 4
  %149 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %scm, align 4
  %cmp.i377 = icmp eq ptr %148, %150
  br i1 %cmp.i377, label %land.lhs.true.i379, label %if.then93.do.end189_crit_edge

if.then93.do.end189_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end189

land.lhs.true.i379:                               ; preds = %if.then93
  %uid.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 4
  %151 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %152 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %152)
  %.unpack17.i = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack17.i)
  %cmp.i.i378 = icmp eq i32 %.unpack.i, %.unpack17.i
  br i1 %cmp.i.i378, label %land.lhs.true4.i, label %land.lhs.true.i379.do.end189_crit_edge

land.lhs.true.i379.do.end189_crit_edge:           ; preds = %land.lhs.true.i379
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end189

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i379
  %gid.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 8
  %153 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %.unpack18.i = load i32, ptr %gid.i, align 4
  %154 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %154)
  %.unpack19.i = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack18.i, i32 %.unpack19.i)
  %cmp.i20.i = icmp eq i32 %.unpack18.i, %.unpack19.i
  br i1 %cmp.i20.i, label %unix_skb_scm_eq.exit, label %land.lhs.true4.i.do.end189_crit_edge

land.lhs.true4.i.do.end189_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end189

unix_skb_scm_eq.exit:                             ; preds = %land.lhs.true4.i
  %155 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %4, align 4
  %secid1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 16
  %157 = ptrtoint ptr %secid1.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %secid1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %158)
  %cmp.i21.i = icmp eq i32 %156, %158
  br i1 %cmp.i21.i, label %unix_skb_scm_eq.exit.if.end105_crit_edge, label %unix_skb_scm_eq.exit.do.end189_crit_edge

unix_skb_scm_eq.exit.do.end189_crit_edge:         ; preds = %unix_skb_scm_eq.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end189

unix_skb_scm_eq.exit.if.end105_crit_edge:         ; preds = %unix_skb_scm_eq.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

if.else:                                          ; preds = %while.end
  %159 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %flags97, align 4
  %161 = and i32 %160, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool99.not = icmp eq i32 %161, 0
  br i1 %tobool99.not, label %if.else.if.end105_crit_edge, label %if.then100

if.else.if.end105_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

if.then100:                                       ; preds = %if.else
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3
  %162 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cb, align 8
  %uid = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 4
  %gid = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 8
  %164 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %164)
  %.unpack = load i32, ptr %uid, align 4
  %165 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %165)
  %.unpack344 = load i32, ptr %gid, align 8
  %tobool.not.i.i380 = icmp eq ptr %163, null
  br i1 %tobool.not.i.i380, label %if.then100.scm_set_cred.exit_crit_edge, label %if.then.i.i

if.then100.scm_set_cred.exit_crit_edge:           ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #18
  br label %scm_set_cred.exit

if.then.i.i:                                      ; preds = %if.then100
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %163, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull %163, i32 1, i32 3, i32 1) #16
  %166 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %163, ptr nonnull %163, i32 1, ptr nonnull elementtype(i32) %163) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %166, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !134

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %167 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %167)
  %.not.i.i.i.i.i = icmp sgt i32 %167, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.scm_set_cred.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.scm_set_cred.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %scm_set_cred.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %163, i32 noundef %.sink.i.i.i.i.i) #16
  br label %scm_set_cred.exit

scm_set_cred.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.scm_set_cred.exit_crit_edge, %if.then100.scm_set_cred.exit_crit_edge
  %168 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %163, ptr %scm, align 4
  %call3.i = call i32 @pid_vnr(ptr noundef %163) #16
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %call3.i, ptr %1, align 4
  %170 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %.unpack, ptr %2, align 4
  %171 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %.unpack344, ptr %3, align 4
  %secid.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 16
  %172 = ptrtoint ptr %secid.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %secid.i, align 8
  %174 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %4, align 4
  br label %if.end105

if.end105:                                        ; preds = %scm_set_cred.exit, %if.else.if.end105_crit_edge, %unix_skb_scm_eq.exit.if.end105_crit_edge
  %check_creds.4.off0 = phi i1 [ true, %unix_skb_scm_eq.exit.if.end105_crit_edge ], [ true, %scm_set_cred.exit ], [ false, %if.else.if.end105_crit_edge ]
  %175 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %msg, align 4
  %tobool106.not = icmp eq ptr %176, null
  br i1 %tobool106.not, label %if.end105.if.end115_crit_edge, label %land.lhs.true

if.end105.if.end115_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

land.lhs.true:                                    ; preds = %if.end105
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 8
  %tobool108.not = icmp eq ptr %178, null
  br i1 %tobool108.not, label %land.lhs.true.if.end115_crit_edge, label %if.then109

land.lhs.true.if.end115_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

if.then109:                                       ; preds = %land.lhs.true
  %179 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 1
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %addr1.i = getelementptr inbounds %struct.unix_sock, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile ptr, ptr %addr1.i, align 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !139
  %tobool.not.i381 = icmp eq ptr %183, null
  br i1 %tobool.not.i381, label %if.then109.if.end115_crit_edge, label %if.then.i383

if.then109.if.end115_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

if.then.i383:                                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #18
  %len.i382 = getelementptr inbounds %struct.unix_address, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %len.i382 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %len.i382, align 4
  %msg_namelen.i = getelementptr inbounds %struct.msghdr, ptr %176, i32 0, i32 1
  %186 = ptrtoint ptr %msg_namelen.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %msg_namelen.i, align 4
  %187 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %176, align 8
  %name.i = getelementptr inbounds %struct.unix_address, ptr %183, i32 0, i32 2
  %189 = load i32, ptr %len.i382, align 4
  %190 = call ptr @memcpy(ptr %188, ptr %name.i, i32 %189)
  br label %if.end115

if.end115:                                        ; preds = %if.then.i383, %if.then109.if.end115_crit_edge, %land.lhs.true.if.end115_crit_edge, %if.end105.if.end115_crit_edge
  %191 = ptrtoint ptr %len.i370.le to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %len.i370.le, align 4
  %193 = ptrtoint ptr %consumed.i.le to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %consumed.i.le, align 4
  %195 = add i32 %skip.4, %194
  %sub117 = sub i32 %192, %195
  %196 = call i32 @llvm.umin.i32(i32 %sub117, i32 %size.2.ph578)
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 21
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #16
  %197 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %197, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end115.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !134

if.end115.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end115
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %198 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %198)
  %.not.i.i.i.i = icmp sgt i32 %198, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end115.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end115.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #16
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %199 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %state, align 4
  %call126 = call i32 %200(ptr noundef nonnull %skb.2, i32 noundef %skip.4, i32 noundef %196, ptr noundef %state) #16
  %201 = ptrtoint ptr %len.i370.le to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %len.i370.le, align 4
  %203 = ptrtoint ptr %consumed.i.le to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %consumed.i.le, align 4
  call void @consume_skb(ptr noundef nonnull %skb.2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp132 = icmp slt i32 %call126, 0
  br i1 %cmp132, label %if.then134, label %if.end139

if.then134:                                       ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.2.ph575)
  %cmp135 = icmp eq i32 %copied.2.ph575, 0
  %spec.store.select = select i1 %cmp135, i32 -14, i32 %copied.2.ph575
  br label %do.end189

if.end139:                                        ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %204)
  %tobool128.not = icmp eq i32 %202, %204
  %add = add i32 %call126, %copied.2.ph575
  %sub140 = sub i32 %size.2.ph578, %call126
  br i1 %tobool128.not, label %if.end139.do.end189_crit_edge, label %if.end143

if.end139.do.end189_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end189

if.end143:                                        ; preds = %if.end139
  br i1 %tobool.not.i346, label %if.then146, label %if.else162

if.then146:                                       ; preds = %if.end143
  %205 = ptrtoint ptr %consumed.i.le to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %consumed.i.le, align 4
  %add148 = add i32 %206, %call126
  store i32 %add148, ptr %consumed.i.le, align 4
  %207 = ptrtoint ptr %sk_peek_off.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %sk_peek_off.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %208)
  %cmp.i392 = icmp sgt i32 %208, -1
  br i1 %cmp.i392, label %if.then.i394, label %if.then146.sk_peek_offset_bwd.exit_crit_edge, !prof !134

if.then146.sk_peek_offset_bwd.exit_crit_edge:     ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #18
  br label %sk_peek_offset_bwd.exit

if.then.i394:                                     ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i393 = sub nsw i32 %208, %call126
  %209 = call i32 @llvm.smax.i32(i32 %sub.i393, i32 0) #16
  %210 = ptrtoint ptr %sk_peek_off.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile i32 %209, ptr %sk_peek_off.i.i, align 8
  br label %sk_peek_offset_bwd.exit

sk_peek_offset_bwd.exit:                          ; preds = %if.then.i394, %if.then146.sk_peek_offset_bwd.exit_crit_edge
  %fp = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 12
  %211 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %fp, align 4
  %tobool150.not = icmp eq ptr %212, null
  br i1 %tobool150.not, label %sk_peek_offset_bwd.exit.if.end152_crit_edge, label %land.rhs.i398

sk_peek_offset_bwd.exit.if.end152_crit_edge:      ; preds = %sk_peek_offset_bwd.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end152

land.rhs.i398:                                    ; preds = %sk_peek_offset_bwd.exit
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %212, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %214)
  %tobool2.not.i397 = icmp eq i16 %214, 0
  br i1 %tobool2.not.i397, label %land.rhs.i398.scm_stat_del.exit_crit_edge, label %if.then.i399, !prof !135

land.rhs.i398.scm_stat_del.exit_crit_edge:        ; preds = %land.rhs.i398
  call void @__sanitizer_cov_trace_pc() #18
  br label %scm_stat_del.exit

if.then.i399:                                     ; preds = %land.rhs.i398
  call void @__sanitizer_cov_trace_pc() #18
  %conv6.i = sext i16 %214 to i32
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scm_stat.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %scm_stat.i, i32 1, i32 3, i32 1) #16
  %215 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scm_stat.i, ptr %scm_stat.i, i32 %conv6.i, ptr elementtype(i32) %scm_stat.i) #16, !srcloc !137
  br label %scm_stat_del.exit

scm_stat_del.exit:                                ; preds = %if.then.i399, %land.rhs.i398.scm_stat_del.exit_crit_edge
  call void @unix_detach_fds(ptr noundef nonnull %scm, ptr noundef nonnull %skb.2) #16
  br label %if.end152

if.end152:                                        ; preds = %scm_stat_del.exit, %sk_peek_offset_bwd.exit.if.end152_crit_edge
  %216 = ptrtoint ptr %len.i370.le to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %len.i370.le, align 4
  %218 = ptrtoint ptr %consumed.i.le to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %consumed.i.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %217, i32 %219)
  %tobool154.not = icmp eq i32 %217, %219
  br i1 %tobool154.not, label %if.end156, label %if.end152.do.end189_crit_edge

if.end152.do.end189_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end189

if.end156:                                        ; preds = %if.end152
  call void @skb_unlink(ptr noundef nonnull %skb.2, ptr noundef %sk_receive_queue) #16
  call void @consume_skb(ptr noundef nonnull %skb.2) #16
  %220 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %0, align 4
  %tobool159.not = icmp ne ptr %221, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub140)
  %tobool188.not = icmp eq i32 %sub140, 0
  %or.cond453 = select i1 %tobool159.not, i1 true, i1 %tobool188.not
  br i1 %or.cond453, label %if.end156.do.end189_crit_edge, label %if.end156.redo.outer_crit_edge

if.end156.redo.outer_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #18
  br label %redo.outer

if.end156.do.end189_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end189

if.else162:                                       ; preds = %if.end143
  %fp164 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 12
  %222 = ptrtoint ptr %fp164 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %fp164, align 4
  %tobool165.not = icmp eq ptr %223, null
  br i1 %tobool165.not, label %if.else162.if.end167_crit_edge, label %if.then166

if.else162.if.end167_crit_edge:                   ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end167

if.then166:                                       ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = call ptr @scm_fp_dup(ptr noundef nonnull %223) #16
  %224 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call.i, ptr %0, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #16
  call void @_raw_spin_unlock(ptr noundef nonnull @unix_gc_lock) #16
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.else162.if.end167_crit_edge
  %225 = ptrtoint ptr %sk_peek_off.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load volatile i32, ptr %sk_peek_off.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %226)
  %cmp.i.i406 = icmp sgt i32 %226, -1
  br i1 %cmp.i.i406, label %if.then.i.i407, label %if.end167.sk_peek_offset_fwd.exit_crit_edge, !prof !134

if.end167.sk_peek_offset_fwd.exit_crit_edge:      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #18
  br label %sk_peek_offset_fwd.exit

if.then.i.i407:                                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add nuw i32 %226, %call126
  %227 = call i32 @llvm.smax.i32(i32 %sub.i.i, i32 0) #16
  %228 = ptrtoint ptr %sk_peek_off.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store volatile i32 %227, ptr %sk_peek_off.i.i, align 8
  br label %sk_peek_offset_fwd.exit

sk_peek_offset_fwd.exit:                          ; preds = %if.then.i.i407, %if.end167.sk_peek_offset_fwd.exit_crit_edge
  %229 = ptrtoint ptr %fp164 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %fp164, align 4
  %tobool170.not = icmp eq ptr %230, null
  br i1 %tobool170.not, label %if.end172, label %sk_peek_offset_fwd.exit.do.end189_crit_edge

sk_peek_offset_fwd.exit.do.end189_crit_edge:      ; preds = %sk_peek_offset_fwd.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end189

if.end172:                                        ; preds = %sk_peek_offset_fwd.exit
  call void @_raw_spin_lock(ptr noundef %lock) #16
  %231 = ptrtoint ptr %skb.2 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %skb.2, align 8
  %cmp.i408 = icmp eq ptr %232, %sk_receive_queue
  %tobool178.not455 = icmp eq ptr %232, null
  %tobool178.not = or i1 %cmp.i408, %tobool178.not455
  br i1 %tobool178.not, label %if.end180, label %if.end172.while.cond.preheader.lr.ph_crit_edge

if.end172.while.cond.preheader.lr.ph_crit_edge:   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader.lr.ph

if.end180:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %do.end189

do.end189:                                        ; preds = %if.end180, %sk_peek_offset_fwd.exit.do.end189_crit_edge, %if.end156.do.end189_crit_edge, %if.end152.do.end189_crit_edge, %if.end139.do.end189_crit_edge, %if.then134, %unix_skb_scm_eq.exit.do.end189_crit_edge, %land.lhs.true4.i.do.end189_crit_edge, %land.lhs.true.i379.do.end189_crit_edge, %if.then93.do.end189_crit_edge, %unlock, %if.end61.do.end189_crit_edge, %if.then38.do.end189_crit_edge, %if.then38.thread
  %err.3438 = phi i32 [ 0, %if.end180 ], [ 0, %if.then134 ], [ %err.2, %unlock ], [ 0, %if.then38.thread ], [ 0, %unix_skb_scm_eq.exit.do.end189_crit_edge ], [ 0, %if.end139.do.end189_crit_edge ], [ 0, %sk_peek_offset_fwd.exit.do.end189_crit_edge ], [ 0, %land.lhs.true4.i.do.end189_crit_edge ], [ 0, %land.lhs.true.i379.do.end189_crit_edge ], [ 0, %if.then93.do.end189_crit_edge ], [ 0, %if.then38.do.end189_crit_edge ], [ 0, %if.end156.do.end189_crit_edge ], [ 0, %if.end152.do.end189_crit_edge ], [ -11, %if.end61.do.end189_crit_edge ]
  %copied.4437 = phi i32 [ %add, %if.end180 ], [ %spec.store.select, %if.then134 ], [ %copied.3, %unlock ], [ %copied.1, %if.then38.thread ], [ %copied.2.ph575, %if.then93.do.end189_crit_edge ], [ %copied.2.ph575, %land.lhs.true.i379.do.end189_crit_edge ], [ %copied.2.ph575, %land.lhs.true4.i.do.end189_crit_edge ], [ %add, %sk_peek_offset_fwd.exit.do.end189_crit_edge ], [ %add, %if.end139.do.end189_crit_edge ], [ %copied.2.ph575, %unix_skb_scm_eq.exit.do.end189_crit_edge ], [ %copied.1, %if.then38.do.end189_crit_edge ], [ %add, %if.end156.do.end189_crit_edge ], [ %add, %if.end152.do.end189_crit_edge ], [ %copied.2.ph.lcssa544, %if.end61.do.end189_crit_edge ]
  call void @mutex_unlock(ptr noundef %iolock) #16
  %233 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %msg, align 4
  %tobool192.not = icmp eq ptr %234, null
  br i1 %tobool192.not, label %if.else195, label %if.then193

if.then193:                                       ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @scm_recv(ptr noundef %6, ptr noundef nonnull %234, ptr noundef nonnull %scm)
  br label %out

if.else195:                                       ; preds = %do.end189
  %235 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %scm, align 4
  call void @put_pid(ptr noundef %236) #16
  %237 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr null, ptr %scm, align 4
  %238 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %0, align 4
  %tobool.not.i411 = icmp eq ptr %239, null
  br i1 %tobool.not.i411, label %if.else195.out_crit_edge, label %if.then.i412

if.else195.out_crit_edge:                         ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then.i412:                                     ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #18
  call void @__scm_destroy(ptr noundef nonnull %scm) #16
  br label %out

out:                                              ; preds = %if.then.i412, %if.else195.out_crit_edge, %if.then193, %if.then.i368, %if.then73.out_crit_edge
  %copied.5 = phi i32 [ %copied.4437, %if.then193 ], [ %copied.4437, %if.else195.out_crit_edge ], [ %copied.4437, %if.then.i412 ], [ %copied.2.ph.lcssa544, %if.then73.out_crit_edge ], [ %copied.2.ph.lcssa544, %if.then.i368 ]
  %err.4 = phi i32 [ %err.3438, %if.then193 ], [ %err.3438, %if.else195.out_crit_edge ], [ %err.3438, %if.then.i412 ], [ %cond.i366, %if.then73.out_crit_edge ], [ %cond.i366, %if.then.i368 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.5)
  %tobool197.not = icmp eq i32 %copied.5, 0
  br i1 %tobool197.not, label %out.out.thread_crit_edge, label %out.cleanup202_crit_edge

out.cleanup202_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup202

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %if.then14, %entry.out.thread_crit_edge
  %err.4451 = phi i32 [ %err.4, %out.out.thread_crit_edge ], [ -22, %entry.out.thread_crit_edge ], [ %call15, %if.then14 ]
  br label %cleanup202

cleanup202:                                       ; preds = %out.thread, %out.cleanup202_crit_edge
  %240 = phi i32 [ %err.4451, %out.thread ], [ %copied.5, %out.cleanup202_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scm) #16
  ret i32 %240
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unix_inq_len(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp = icmp eq i8 %1, 10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %2 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_type, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.else [
    i16 1, label %if.end.if.then9_crit_edge
    i16 5, label %if.end.if.then9_crit_edge40
  ]

if.end.if.then9_crit_edge40:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %if.end.if.then9_crit_edge40
  %5 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %skb.036 = load ptr, ptr %sk_receive_queue, align 4
  %cmp12.not37 = icmp eq ptr %skb.036, %sk_receive_queue
  br i1 %cmp12.not37, label %if.then9.if.end19_crit_edge, label %if.then9.for.body_crit_edge

if.then9.for.body_crit_edge:                      ; preds = %if.then9
  br label %for.body

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then9.for.body_crit_edge
  %skb.039 = phi ptr [ %skb.0, %for.body.for.body_crit_edge ], [ %skb.036, %if.then9.for.body_crit_edge ]
  %amount.038 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.then9.for.body_crit_edge ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.039, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %consumed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.039, i32 0, i32 3, i32 20
  %8 = ptrtoint ptr %consumed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %consumed.i, align 4
  %sub.i = add i32 %7, %amount.038
  %add = sub i32 %sub.i, %9
  %10 = ptrtoint ptr %skb.039 to i32
  call void @__asan_load4_noabort(i32 %10)
  %skb.0 = load ptr, ptr %skb.039, align 4
  %cmp12.not = icmp eq ptr %skb.0, %sk_receive_queue
  br i1 %cmp12.not, label %for.body.if.end19_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.else:                                          ; preds = %if.end
  %11 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %12, %sk_receive_queue
  %tobool.not35 = icmp eq ptr %12, null
  %tobool.not = or i1 %cmp.i, %tobool.not35
  br i1 %tobool.not, label %if.else.if.end19_crit_edge, label %if.then17

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %len = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.else.if.end19_crit_edge, %for.body.if.end19_crit_edge, %if.then9.if.end19_crit_edge
  %amount.1 = phi i32 [ %14, %if.then17 ], [ 0, %if.else.if.end19_crit_edge ], [ 0, %if.then9.if.end19_crit_edge ], [ %add, %for.body.if.end19_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %amount.1, %if.end19 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unix_outq_len(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #16
  %0 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %1, -1
  ret i32 %sub.i
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_iter_unix(ptr nocapture noundef readnone %meta, ptr nocapture noundef readnone %unix_sk, i32 noundef %uid) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @af_unix_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @sock_unregister(i32 noundef 1) #16
  tail call void @proto_unregister(ptr noundef nonnull @unix_dgram_proto) #16
  tail call void @proto_unregister(ptr noundef nonnull @unix_stream_proto) #16
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @unix_net_ops) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @af_unix_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body1

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %do.body1.do.body1_crit_edge ]
  %arrayidx = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %i.025
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.4, ptr noundef nonnull @af_unix_init.__key, i16 noundef signext 3) #16
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end, label %do.body1.do.body1_crit_edge

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1

for.end:                                          ; preds = %do.body1
  %call4 = tail call i32 @proto_register(ptr noundef nonnull @unix_dgram_proto, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end, label %do.end8

do.end8:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #19
  br label %out

if.end:                                           ; preds = %for.end
  %call10 = tail call i32 @proto_register(ptr noundef nonnull @unix_stream_proto, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #19
  br label %out

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call19 = tail call i32 @sock_register(ptr noundef nonnull @unix_family_ops) #16
  %call20 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @unix_net_ops) #16
  tail call void @unix_bpf_build_proto() #19
  tail call fastcc void @bpf_iter_register() #20
  br label %out

out:                                              ; preds = %if.end18, %do.end15, %do.end8
  %rc.0 = phi i32 [ %call4, %do.end8 ], [ %call10, %do.end15 ], [ 0, %if.end18 ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #16, !srcloc !133
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !134

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !135

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #16
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scm_fp_dup(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scm_destroy(ptr noundef %scm) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scm, align 4
  tail call void @put_pid(ptr noundef %1) #16
  %2 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %scm, align 4
  %fp = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__scm_destroy(ptr noundef %scm) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scm_detach_fds(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__scm_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_secid_to_secctx(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_release_secctx(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unix_stream_recv_urg(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %socket = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socket, align 4
  %sk1 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  %iolock = getelementptr inbounds %struct.unix_sock, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #16
  %lock = getelementptr inbounds %struct.unix_sock, ptr %3, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %4 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %oob_skb4 = getelementptr inbounds %struct.unix_sock, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %oob_skb4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oob_skb4, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  tail call void @mutex_unlock(ptr noundef %iolock) #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 5
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %oob_skb4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %oob_skb4, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %call15 = tail call i32 %14(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 1, ptr noundef %state) #16
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %consumed = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 20
  %17 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %consumed, align 4
  %add = add i32 %18, 1
  store i32 %add, ptr %consumed, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %9, i32 noundef 0) #16
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end12.if.end20_crit_edge
  tail call void @mutex_unlock(ptr noundef %iolock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %msg = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 2
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msg, align 4
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_flags, align 4
  %or = or i32 %22, 1
  store i32 %or, ptr %msg_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end20.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 1, %if.end23 ], [ -14, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %unx = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 32
  %0 = ptrtoint ptr %unx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %unx, align 4
  %call = tail call i32 @unix_sysctl_register(ptr noundef %net) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %1 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %proc_net, align 4
  %call1 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.1, i16 noundef zeroext 0, ptr noundef %2, ptr noundef nonnull @unix_seq_ops, i32 noundef 8, ptr noundef null) #16
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @unix_sysctl_unregister(ptr noundef %net) #16
  br label %out

out:                                              ; preds = %if.then3, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ -12, %entry.out_crit_edge ], [ -12, %if.then3 ], [ 0, %if.end.out_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unix_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unix_sysctl_unregister(ptr noundef %net) #16
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unix_sysctl_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unix_sysctl_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @unix_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %1)
  %cmp = icmp sgt i64 %1, 2147483647
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call fastcc ptr @unix_next_socket(ptr noundef %seq, ptr noundef null, ptr noundef %pos)
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end2 ], [ inttoptr (i32 1 to ptr), %entry.return_crit_edge ], [ null, %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unix_seq_stop(ptr nocapture noundef readnone %seq, ptr noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %arrayidx = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %2
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @unix_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %call = tail call fastcc ptr @unix_next_socket(ptr noundef %seq, ptr noundef %v, ptr noundef %pos)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.2) #16
  br label %if.end47

if.else:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.unix_sock, ptr %v, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #16
  %0 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %skc_refcnt, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp4 = icmp eq i8 %3, 10
  %cond = select i1 %cmp4, i32 65536, i32 0
  %sk_type = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 45
  %4 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_type, align 2
  %conv6 = zext i16 %5 to i32
  %sk_socket = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 71
  %6 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_socket, align 8
  %tobool.not = icmp eq ptr %7, null
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp16 = icmp eq i8 %9, 1
  %cond12 = select i1 %cmp16, i32 3, i32 1
  %cond18 = select i1 %cmp16, i32 2, i32 4
  %cond19 = select i1 %tobool.not, i32 %cond18, i32 %cond12
  %call20 = tail call i32 @sock_i_ino(ptr noundef %v) #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.3, ptr noundef %v, i32 noundef %1, i32 noundef 0, i32 noundef %cond, i32 noundef %conv6, i32 noundef %cond19, i32 noundef %call20) #16
  %addr = getelementptr inbounds %struct.unix_sock, ptr %v, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr, align 64
  %tobool21.not = icmp eq ptr %11, null
  br i1 %tobool21.not, label %if.else.if.end44_crit_edge, label %if.then22

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.then22:                                        ; preds = %if.else
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 32) #16
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr, align 64
  %len24 = getelementptr inbounds %struct.unix_address, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len24, align 4
  %name = getelementptr inbounds %struct.unix_address, ptr %13, i32 0, i32 2
  %sun_path = getelementptr inbounds %struct.sockaddr_un, ptr %name, i32 0, i32 1
  %16 = ptrtoint ptr %sun_path to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sun_path, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool26.not = icmp eq i8 %17, 0
  br i1 %tobool26.not, label %if.else28, label %if.then27

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  %dec = add i32 %15, -3
  br label %if.end

if.else28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  %sub = add i32 %15, -2
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 64) #16
  br label %if.end

if.end:                                           ; preds = %if.else28, %if.then27
  %i.0 = phi i32 [ 0, %if.then27 ], [ 1, %if.else28 ]
  %len.0 = phi i32 [ %dec, %if.then27 ], [ %sub, %if.else28 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %len.0)
  %cmp2971 = icmp slt i32 %i.0, %len.0
  br i1 %cmp2971, label %if.end.for.body_crit_edge, label %if.end.if.end44_crit_edge

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.172 = phi i32 [ %inc43, %for.body.for.body_crit_edge ], [ %i.0, %if.end.for.body_crit_edge ]
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr, align 64
  %name32 = getelementptr inbounds %struct.unix_address, ptr %19, i32 0, i32 2
  %arrayidx35 = getelementptr %struct.sockaddr_un, ptr %name32, i32 0, i32 1, i32 %i.172
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool37.not = icmp eq i8 %21, 0
  %narrow = select i1 %tobool37.not, i8 64, i8 %21
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext %narrow) #16
  %inc43 = add nuw i32 %i.172, 1
  %exitcond.not = icmp eq i32 %inc43, %len.0
  br i1 %exitcond.not, label %for.body.if.end44_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.if.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.end44:                                         ; preds = %for.body.if.end44_crit_edge, %if.end.if.end44_crit_edge, %if.else.if.end44_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #16
  br label %if.end47

if.end47:                                         ; preds = %if.end44, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @unix_next_socket(ptr nocapture noundef readonly %seq, ptr noundef readonly %sk, ptr nocapture noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %2 = lshr i64 %1, 22
  %conv = trunc i64 %2 to i32
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %sk.addr.0 = phi ptr [ %sk, %entry ], [ %add.ptr.i, %if.end.while.cond_crit_edge ]
  %cmp = icmp ugt ptr %sk.addr.0, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %while.body, label %while.cond.do.body_crit_edge

while.cond.do.body_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

while.body:                                       ; preds = %while.cond
  %3 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0, i32 0, i32 15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %add.ptr.i = getelementptr i8, ptr %5, i32 -84
  %tobool.not31 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %tobool.not.i, %tobool.not31
  br i1 %tobool.not, label %while.body.next_bucket_crit_edge, label %if.end

while.body.next_bucket_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %next_bucket

if.end:                                           ; preds = %while.body
  %skc_net.i = getelementptr i8, ptr %5, i32 -48
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %cmp4 = icmp eq ptr %7, %11
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %next_bucket.do.body_crit_edge, %while.cond.do.body_crit_edge
  %bucket.0 = phi i32 [ %inc, %next_bucket.do.body_crit_edge ], [ %conv, %while.cond.do.body_crit_edge ]
  %arrayidx = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %bucket.0
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #16
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos, align 8
  %14 = trunc i64 %13 to i32
  %conv.i = and i32 %14, 4194303
  %15 = lshr i64 %13, 22
  %conv1.i = trunc i64 %15 to i32
  %arrayidx.i = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %conv1.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %17, null
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 -84
  %tobool.not1722.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not17.i = or i1 %tobool.not.i.not.i.i, %tobool.not1722.i
  br i1 %tobool.not17.i, label %do.body.next_bucket_crit_edge, label %for.body.lr.ph.i

do.body.next_bucket_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %next_bucket

for.body.lr.ph.i:                                 ; preds = %do.body
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %count.1.i, %for.inc.i.for.body.i_crit_edge ]
  %sk.018.i = phi ptr [ %add.ptr.i.i.i, %for.body.lr.ph.i ], [ %add.ptr.i.i, %for.inc.i.for.body.i_crit_edge ]
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.018.i, i32 0, i32 9
  %22 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.not.i = icmp eq ptr %23, %21
  br i1 %cmp.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add i32 %count.020.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp5.i = icmp eq i32 %inc.i, %conv.i
  br i1 %cmp5.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %count.1.i = phi i32 [ %count.020.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end.i.for.inc.i_crit_edge ]
  %24 = getelementptr inbounds %struct.sock_common, ptr %sk.018.i, i32 0, i32 15
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 -84
  %tobool.not23.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i28 = or i1 %tobool.not.i.i, %tobool.not23.i
  br i1 %tobool.not.i28, label %for.inc.i.next_bucket_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.next_bucket_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %next_bucket

next_bucket:                                      ; preds = %for.inc.i.next_bucket_crit_edge, %do.body.next_bucket_crit_edge, %while.body.next_bucket_crit_edge
  %bucket.1 = phi i32 [ %bucket.0, %do.body.next_bucket_crit_edge ], [ %bucket.0, %for.inc.i.next_bucket_crit_edge ], [ %conv, %while.body.next_bucket_crit_edge ]
  %inc = add i32 %bucket.1, 1
  %arrayidx12 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %bucket.1
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx12) #16
  %shl = shl i32 %inc, 22
  %or = or i32 %shl, 1
  %conv13 = zext i32 %or to i64
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv13, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %inc)
  %cmp14 = icmp ult i32 %inc, 512
  br i1 %cmp14, label %next_bucket.do.body_crit_edge, label %next_bucket.cleanup_crit_edge

next_bucket.cleanup_crit_edge:                    ; preds = %next_bucket
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

next_bucket.do.body_crit_edge:                    ; preds = %next_bucket
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

cleanup:                                          ; preds = %next_bucket.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %next_bucket.cleanup_crit_edge ], [ %sk.018.i, %if.end.i.cleanup_crit_edge ], [ %add.ptr.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @unix_bpf_build_proto() local_unnamed_addr #9 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bpf_iter_register() unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i32], ptr @btf_sock_ids, i32 0, i32 13) to i32))
  %0 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @btf_sock_ids, i32 0, i32 13), align 4
  store i32 %0, ptr getelementptr inbounds (%struct.bpf_iter_reg, ptr @unix_reg_info, i32 0, i32 8, i32 0, i32 2), align 4
  %call = tail call i32 @bpf_iter_reg_target(ptr noundef nonnull @unix_reg_info) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %protocol)
  %switch = icmp ult i32 %protocol, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %sock, align 128
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 4
  %conv = sext i16 %2 to i32
  %3 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %conv, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 3, label %sw.bb1
    i32 2, label %if.end.sw.bb3_crit_edge
    i32 5, label %sw.bb5
  ]

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %type, align 4
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb1, %if.end.sw.bb3_crit_edge
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %if.end.sw.epilog_crit_edge
  %unix_seqpacket_ops.sink = phi ptr [ @unix_seqpacket_ops, %sw.bb5 ], [ @unix_dgram_ops, %sw.bb3 ], [ @unix_stream_ops, %if.end.sw.epilog_crit_edge ]
  %ops6 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %5 = ptrtoint ptr %ops6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %unix_seqpacket_ops.sink, ptr %ops6, align 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type, align 4
  %conv8 = sext i16 %7 to i32
  %call = tail call fastcc ptr @unix_create1(ptr noundef %net, ptr noundef %sock, i32 noundef %kern, i32 noundef %conv8)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %8 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %8, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -93, %entry.cleanup_crit_edge ], [ -94, %if.end.cleanup_crit_edge ], [ %spec.select, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @unix_create1(ptr noundef %net, ptr noundef %sock, i32 noundef %kern, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @unix_nr_socks, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @unix_nr_socks, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @unix_nr_socks, ptr nonnull @unix_nr_socks, i32 1, ptr nonnull elementtype(i32) @unix_nr_socks) #16, !srcloc !144
  %call.i.i52 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @unix_nr_socks, i32 noundef 4) #16
  %1 = load volatile i32, ptr @unix_nr_socks, align 4
  %call1 = tail call i32 @get_max_files() #16
  %mul = shl i32 %call1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul)
  %cmp = icmp ugt i32 %1, %mul
  br i1 %cmp, label %entry.err24_crit_edge, label %if.end

entry.err24_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %err24

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp2 = icmp eq i32 %type, 1
  %unix_stream_proto.unix_dgram_proto = select i1 %cmp2, ptr @unix_stream_proto, ptr @unix_dgram_proto
  %call5 = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 1, i32 noundef 3264, ptr noundef nonnull %unix_stream_proto.unix_dgram_proto, i32 noundef %kern) #16
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.err24_crit_edge, label %if.end8

if.end.err24_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err24

if.end8:                                          ; preds = %if.end
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call5) #16
  %2 = ptrtoint ptr %call5 to i32
  %shr.i = lshr i32 %2, 16
  %xor.i = xor i32 %shr.i, %2
  %shr1.i = lshr i32 %xor.i, 8
  %xor2.i = xor i32 %shr1.i, %xor.i
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %call5, i32 0, i32 45
  %3 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sk_type.i, align 2
  %conv.i = zext i16 %4 to i32
  %xor3.i = xor i32 %xor2.i, %conv.i
  %and.i = and i32 %xor3.i, 255
  %add.i = or i32 %and.i, 256
  %5 = getelementptr inbounds %struct.sock_common, ptr %call5, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %5, align 8
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %call5, i32 0, i32 41
  %7 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4197568, ptr %sk_allocation, align 8
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %call5, i32 0, i32 78
  %8 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @unix_write_space, ptr %sk_write_space, align 4
  %unx = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 32
  %9 = ptrtoint ptr %unx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %unx, align 4
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %call5, i32 0, i32 54
  %11 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sk_max_ack_backlog, align 8
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call5, i32 0, i32 82
  %12 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @unix_sock_destructor, ptr %sk_destruct, align 4
  %path = getelementptr inbounds %struct.unix_sock, ptr %call5, i32 0, i32 2
  %dentry = getelementptr inbounds %struct.unix_sock, ptr %call5, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dentry, align 4
  %14 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %path, align 4
  %lock = getelementptr inbounds %struct.unix_sock, ptr %call5, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @unix_create1.__key, i16 noundef signext 3) #16
  %inflight = getelementptr inbounds %struct.unix_sock, ptr %call5, i32 0, i32 7
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight, i32 noundef 4) #16
  %15 = ptrtoint ptr %inflight to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %inflight, align 4
  %link = getelementptr inbounds %struct.unix_sock, ptr %call5, i32 0, i32 6
  %16 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %link, ptr %link, align 4
  %prev.i = getelementptr inbounds %struct.unix_sock, ptr %call5, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %link, ptr %prev.i, align 4
  %iolock = getelementptr inbounds %struct.unix_sock, ptr %call5, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %iolock, ptr noundef nonnull @.str.21, ptr noundef nonnull @unix_create1.__key.20) #16
  %bindlock = getelementptr inbounds %struct.unix_sock, ptr %call5, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %bindlock, ptr noundef nonnull @.str.23, ptr noundef nonnull @unix_create1.__key.22) #16
  %peer_wq = getelementptr inbounds %struct.unix_sock, ptr %call5, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %peer_wq, ptr noundef nonnull @.str.25, ptr noundef nonnull @unix_create1.__key.24) #16
  %peer_wake = getelementptr inbounds %struct.unix_sock, ptr %call5, i32 0, i32 12
  %18 = ptrtoint ptr %peer_wake to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %peer_wake, align 4
  %private.i = getelementptr inbounds %struct.unix_sock, ptr %call5, i32 0, i32 12, i32 1
  %19 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %private.i, align 4
  %func1.i = getelementptr inbounds %struct.unix_sock, ptr %call5, i32 0, i32 12, i32 2
  %20 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @unix_dgram_peer_wake_relay, ptr %func1.i, align 4
  %scm_stat = getelementptr inbounds %struct.unix_sock, ptr %call5, i32 0, i32 13
  %21 = ptrtoint ptr %scm_stat to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %scm_stat, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %5, align 8
  %arrayidx.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %23
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i) #16
  %pprev.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call5, i32 0, i32 15, i32 0, i32 1
  %24 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i.i, label %if.end8.if.end.i.i_crit_edge, label %do.end.i.i, !prof !135

if.end8.if.end.i.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 305, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end8.if.end.i.i_crit_edge
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %5, align 8
  %arrayidx.i.i = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %27
  %skc_refcnt.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call5, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i.i, i32 1, i32 3, i32 1) #16
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i.i, ptr %skc_refcnt.i.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i.i) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !134

if.end.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.sock_hold.exit.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.sock_hold.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_hold.exit.i.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #16
  br label %sock_hold.exit.i.i.i

sock_hold.exit.i.i.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.sock_hold.exit.i.i.i_crit_edge
  %30 = getelementptr inbounds %struct.sock_common, ptr %call5, i32 0, i32 15
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %32, ptr %30, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i.i.i, label %sock_hold.exit.i.i.i.unix_insert_unbound_socket.exit_crit_edge, label %do.body12.i.i.i.i.i

sock_hold.exit.i.i.i.unix_insert_unbound_socket.exit_crit_edge: ; preds = %sock_hold.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_insert_unbound_socket.exit

do.body12.i.i.i.i.i:                              ; preds = %sock_hold.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %30, ptr %pprev.i.i.i.i.i, align 4
  br label %unix_insert_unbound_socket.exit

unix_insert_unbound_socket.exit:                  ; preds = %do.body12.i.i.i.i.i, %sock_hold.exit.i.i.i.unix_insert_unbound_socket.exit_crit_edge
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %30, ptr %arrayidx.i.i, align 4
  %36 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %arrayidx.i.i, ptr %pprev.i.i.i.i, align 4
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %5, align 8
  %arrayidx2.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %38
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx2.i) #16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %call5, i32 0, i32 9
  %39 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skc_net.i, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %call5, i32 0, i32 8
  %41 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skc_prot, align 8
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !145
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %40, i32 0, i32 29, i32 2
  %44 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prot_inuse.i, align 8
  %inuse_idx.i = getelementptr inbounds %struct.proto, ptr %42, i32 0, i32 26
  %46 = ptrtoint ptr %inuse_idx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %inuse_idx.i, align 4
  %arrayidx.i55 = getelementptr %struct.prot_inuse, ptr %45, i32 0, i32 1, i32 %47
  %48 = ptrtoint ptr %arrayidx.i55 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx14.i, align 4
  %add.i56 = add i32 %54, %48
  %55 = inttoptr i32 %add.i56 to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add15.i = add i32 %57, 1
  store i32 %add15.i, ptr %55, align 4
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !146
  %and.i.i.i = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %unix_insert_unbound_socket.exit.sock_prot_inuse_add.exit_crit_edge, !prof !134

unix_insert_unbound_socket.exit.sock_prot_inuse_add.exit_crit_edge: ; preds = %unix_insert_unbound_socket.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_prot_inuse_add.exit

if.then.i:                                        ; preds = %unix_insert_unbound_socket.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i, %unix_insert_unbound_socket.exit.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #16, !srcloc !147
  br label %cleanup

err24:                                            ; preds = %if.end.err24_crit_edge, %entry.err24_crit_edge
  %err.0 = phi ptr [ inttoptr (i32 -23 to ptr), %entry.err24_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.err24_crit_edge ]
  %call.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @unix_nr_socks, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @unix_nr_socks, i32 1, i32 3, i32 1) #16
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @unix_nr_socks, ptr nonnull @unix_nr_socks, i32 1, ptr nonnull elementtype(i32) @unix_nr_socks) #16, !srcloc !137
  br label %cleanup

cleanup:                                          ; preds = %err24, %sock_prot_inuse_add.exit
  %retval.0 = phi ptr [ %err.0, %err24 ], [ %call5, %sock_prot_inuse_add.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_release(ptr nocapture noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_prot, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef nonnull %1, i32 noundef 0) #16
  tail call fastcc void @unix_release_sock(ptr noundef nonnull %1, i32 noundef 0)
  %6 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sk1, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_bind(ptr nocapture noundef readonly %sock, ptr nocapture noundef %uaddr, i32 noundef %addr_len) #0 align 64 {
entry:
  %parent.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %addr_len)
  %cmp = icmp eq i32 %addr_len, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp2 = icmp eq i16 %3, 1
  br i1 %cmp2, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call fastcc i32 @unix_autobind(ptr noundef %1)
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = add i32 %addr_len, -111
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %4)
  %5 = icmp ult i32 %4, -108
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %uaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp2.not.i = icmp eq i16 %7, 1
  br i1 %cmp2.not.i, label %if.end6, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %sun_path = getelementptr inbounds %struct.sockaddr_un, ptr %uaddr, i32 0, i32 1
  %8 = ptrtoint ptr %sun_path to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sun_path, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %10 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk_socket.i, align 8
  %vfs_inode.i.i = getelementptr inbounds %struct.socket_alloc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %vfs_inode.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vfs_inode.i.i, align 8
  %call1.i = tail call i32 @current_umask() #16
  %14 = trunc i32 %call1.i to i16
  %15 = xor i16 %14, -1
  %16 = and i16 %13, %15
  %conv2.i = or i16 %16, -16384
  %17 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent.i) #16
  %20 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent.i, align 4, !annotation !136
  %21 = getelementptr inbounds %struct.path, ptr %parent.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %21, align 4, !annotation !136
  %arrayidx.i.i = getelementptr i8, ptr %uaddr, i32 %addr_len
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx.i.i, align 1
  %call4.i = tail call i32 @strlen(ptr noundef %sun_path) #21
  %add.i.i = add i32 %call4.i, 11
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #22
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then8.unix_bind_bsd.exit_crit_edge, label %if.end.i25

if.then8.unix_bind_bsd.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_bind_bsd.exit

if.end.i25:                                       ; preds = %if.then8
  %add5.i = add i32 %call4.i, 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i, i32 noundef 4) #16
  %24 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %call9.i.i.i, align 128
  %len.i.i = getelementptr inbounds %struct.unix_address, ptr %call9.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add5.i, ptr %len.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.unix_address, ptr %call9.i.i.i, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %name.i.i, ptr %uaddr, i32 %add5.i)
  %sun_path8.i = getelementptr inbounds %struct.sockaddr_un, ptr %name.i.i, i32 0, i32 1
  %call10.i = call ptr @kern_path_create(i32 noundef -100, ptr noundef %sun_path8.i, ptr noundef nonnull %parent.i, i32 noundef 0) #16
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %call10.i to i32
  br label %out.i

if.end14.i:                                       ; preds = %if.end.i25
  %28 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent.i, align 4
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !148
  %call16.i = call i32 @security_path_mknod(ptr noundef nonnull %parent.i, ptr noundef %call10.i, i16 noundef zeroext %conv2.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end22.i, label %if.end14.i.out_path.i_crit_edge

if.end14.i.out_path.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_path.i

if.end22.i:                                       ; preds = %if.end14.i
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %21, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i.i, align 8
  %call21.i = call i32 @vfs_mknod(ptr noundef %31, ptr noundef %35, ptr noundef %call10.i, i16 noundef zeroext %conv2.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool23.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end22.i.out_path.i_crit_edge

if.end22.i.out_path.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_path.i

if.end25.i:                                       ; preds = %if.end22.i
  %bindlock.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 4
  %call26.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %bindlock.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.out_unlink.i_crit_edge

if.end25.i.out_unlink.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlink.i

if.end29.i:                                       ; preds = %if.end25.i
  %addr30.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %addr30.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr30.i, align 64
  %tobool31.not.i = icmp eq ptr %37, null
  br i1 %tobool31.not.i, label %if.end33.i, label %out_unlock.i

if.end33.i:                                       ; preds = %if.end29.i
  %d_inode.i87.i = getelementptr inbounds %struct.dentry, ptr %call10.i, i32 0, i32 5
  %38 = ptrtoint ptr %d_inode.i87.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_inode.i87.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_ino.i.i, align 8
  %and.i.i = and i32 %41, 255
  call fastcc void @unix_table_double_lock(i32 noundef %19, i32 noundef %and.i.i) #16
  %42 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent.i, align 4
  %call37.i = call ptr @mntget(ptr noundef %43) #16
  %path.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call37.i, ptr %path.i, align 4
  %tobool.not.i88.i = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i88.i, label %if.end33.i.dget.exit.i_crit_edge, label %if.then.i.i

if.end33.i.dget.exit.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dget.exit.i

if.then.i.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %call10.i, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i.i) #16
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %if.then.i.i, %if.end33.i.dget.exit.i_crit_edge
  %dentry41.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %dentry41.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call10.i, ptr %dentry41.i, align 4
  call fastcc void @__unix_set_addr_hash(ptr noundef %1, ptr noundef nonnull %call9.i.i.i, i32 noundef %and.i.i) #16
  %arrayidx.i90.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %19
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i90.i) #16
  %arrayidx1.i.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %and.i.i
  call void @_raw_spin_unlock(ptr noundef %arrayidx1.i.i) #16
  call void @mutex_unlock(ptr noundef %bindlock.i) #16
  call void @done_path_create(ptr noundef nonnull %parent.i, ptr noundef %call10.i) #16
  br label %unix_bind_bsd.exit

out_unlock.i:                                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @mutex_unlock(ptr noundef %bindlock.i) #16
  br label %out_unlink.i

out_unlink.i:                                     ; preds = %out_unlock.i, %if.end25.i.out_unlink.i_crit_edge
  %err.1.i = phi i32 [ %call26.i, %if.end25.i.out_unlink.i_crit_edge ], [ -22, %out_unlock.i ]
  %46 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %21, align 4
  %d_inode.i91.i = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %d_inode.i91.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %d_inode.i91.i, align 8
  %call46.i = call i32 @vfs_unlink(ptr noundef %31, ptr noundef %49, ptr noundef %call10.i, ptr noundef null) #16
  br label %out_path.i

out_path.i:                                       ; preds = %out_unlink.i, %if.end22.i.out_path.i_crit_edge, %if.end14.i.out_path.i_crit_edge
  %err.2.i = phi i32 [ %call21.i, %if.end22.i.out_path.i_crit_edge ], [ %err.1.i, %out_unlink.i ], [ %call16.i, %if.end14.i.out_path.i_crit_edge ]
  call void @done_path_create(ptr noundef nonnull %parent.i, ptr noundef %call10.i) #16
  br label %out.i

out.i:                                            ; preds = %out_path.i, %if.then12.i
  %err.3.i = phi i32 [ %27, %if.then12.i ], [ %err.2.i, %out_path.i ]
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  call void @llvm.prefetch.p0(ptr nonnull %call9.i.i.i, i32 1, i32 3, i32 1) #16
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call9.i.i.i, ptr nonnull %call9.i.i.i, i32 1, ptr nonnull elementtype(i32) %call9.i.i.i) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i92.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.unix_release_addr.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !135

if.end5.i.i.i.i.i.unix_release_addr.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_release_addr.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef nonnull %call9.i.i.i, i32 noundef 3) #16
  br label %unix_release_addr.exit.i

if.then.i92.i:                                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #16
  br label %unix_release_addr.exit.i

unix_release_addr.exit.i:                         ; preds = %if.then.i92.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.unix_release_addr.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %err.3.i)
  %cmp.i = icmp eq i32 %err.3.i, -17
  %spec.select.i = select i1 %cmp.i, i32 -98, i32 %err.3.i
  br label %unix_bind_bsd.exit

unix_bind_bsd.exit:                               ; preds = %unix_release_addr.exit.i, %dget.exit.i, %if.then8.unix_bind_bsd.exit_crit_edge
  %retval.0.i26 = phi i32 [ %spec.select.i, %unix_release_addr.exit.i ], [ 0, %dget.exit.i ], [ -12, %if.then8.unix_bind_bsd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent.i) #16
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %51 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %add.i.i27 = add nuw nsw i32 %addr_len, 8
  %call9.i.i.i56 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i27, i32 noundef 3264) #22
  %tobool.not.i.i59 = icmp eq ptr %call9.i.i.i56, null
  br i1 %tobool.not.i.i59, label %if.else.cleanup_crit_edge, label %if.end.i66

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i66:                                       ; preds = %if.else
  %call.i.i.i.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i56, i32 noundef 4) #16
  %54 = ptrtoint ptr %call9.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 1, ptr %call9.i.i.i56, align 128
  %len.i.i63 = getelementptr inbounds %struct.unix_address, ptr %call9.i.i.i56, i32 0, i32 1
  %55 = ptrtoint ptr %len.i.i63 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %addr_len, ptr %len.i.i63, align 4
  %name.i.i64 = getelementptr inbounds %struct.unix_address, ptr %call9.i.i.i56, i32 0, i32 2
  %56 = call ptr @memcpy(ptr %name.i.i64, ptr %uaddr, i32 %addr_len)
  %bindlock.i65 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 4
  %call2.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bindlock.i65, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i66.out.i75_crit_edge

if.end.i66.out.i75_crit_edge:                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i75

if.end5.i:                                        ; preds = %if.end.i66
  %addr6.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %addr6.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %addr6.i, align 64
  %tobool7.not.i = icmp eq ptr %58, null
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.out_mutex.i_crit_edge

if.end5.i.out_mutex.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_mutex.i

if.end9.i:                                        ; preds = %if.end5.i
  %59 = ptrtoint ptr %len.i.i63 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i.i63, align 4
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %61 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %sk_type.i, align 2
  %conv.i = zext i16 %62 to i32
  %call.i.i = tail call i32 @csum_partial(ptr noundef %name.i.i64, i32 noundef %60, i32 noundef 0) #16
  %63 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #23, !srcloc !152
  %neg.i.i.i = xor i32 %63, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %shr.i.i = lshr i32 %neg.i.i.i, 24
  %xor.i.i = xor i32 %shr.i.i.i, %conv.i
  %xor.masked.i.i = and i32 %xor.i.i, 255
  %and.i.i67 = xor i32 %xor.masked.i.i, %shr.i.i
  %64 = tail call i32 @llvm.umax.i32(i32 %53, i32 %and.i.i67) #16
  %65 = tail call i32 @llvm.umin.i32(i32 %53, i32 %and.i.i67) #16
  %arrayidx.i.i68 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %65
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i68) #16
  %arrayidx2.i.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %64
  tail call void @_raw_spin_lock_nested(ptr noundef %arrayidx2.i.i, i32 noundef 1) #16
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %66 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skc_net.i.i, align 4
  %68 = ptrtoint ptr %len.i.i63 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len.i.i63, align 4
  %arrayidx.i45.i = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %and.i.i67
  %70 = ptrtoint ptr %arrayidx.i45.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i45.i, align 4
  %tobool.not.i46.i = icmp eq ptr %71, null
  %add.ptr.i.i = getelementptr i8, ptr %71, i32 -84
  %tobool2.not3842.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not38.i.i = or i1 %tobool.not.i46.i, %tobool2.not3842.i.i
  br i1 %tobool2.not38.i.i, label %if.end9.i.if.end18.i_crit_edge, label %if.end9.i.for.body.i.i_crit_edge

if.end9.i.for.body.i.i_crit_edge:                 ; preds = %if.end9.i
  br label %for.body.i.i

if.end9.i.if.end18.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end9.i.for.body.i.i_crit_edge
  %s.039.i.i = phi ptr [ %add.ptr18.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end9.i.for.body.i.i_crit_edge ]
  %skc_net.i.i.i = getelementptr inbounds %struct.sock_common, ptr %s.039.i.i, i32 0, i32 9
  %72 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %skc_net.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %73, %67
  br i1 %cmp.i.not.i.i, label %if.end.i47.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.end.i47.i:                                     ; preds = %for.body.i.i
  %addr.i.i = getelementptr inbounds %struct.unix_sock, ptr %s.039.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %addr.i.i, align 64
  %len6.i.i = getelementptr inbounds %struct.unix_address, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %69)
  %cmp.i.i69 = icmp eq i32 %77, %69
  br i1 %cmp.i.i69, label %land.lhs.true.i.i, label %if.end.i47.i.for.inc.i.i_crit_edge

if.end.i47.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i47.i
  %name.i48.i = getelementptr inbounds %struct.unix_address, ptr %75, i32 0, i32 2
  %bcmp.i.i = tail call i32 @bcmp(ptr %name.i48.i, ptr %name.i.i64, i32 %69) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool9.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool9.not.i.i, label %out_spin.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end.i47.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %78 = getelementptr inbounds %struct.sock_common, ptr %s.039.i.i, i32 0, i32 15
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %tobool14.not.i.i = icmp eq ptr %80, null
  %add.ptr18.i.i = getelementptr i8, ptr %80, i32 -84
  %tobool2.not43.i.i = icmp eq ptr %add.ptr18.i.i, null
  %tobool2.not.i.i = or i1 %tobool14.not.i.i, %tobool2.not43.i.i
  br i1 %tobool2.not.i.i, label %for.inc.i.i.if.end18.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.if.end18.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

if.end18.i:                                       ; preds = %for.inc.i.i.if.end18.i_crit_edge, %if.end9.i.if.end18.i_crit_edge
  tail call fastcc void @__unix_set_addr_hash(ptr noundef %1, ptr noundef nonnull %call9.i.i.i56, i32 noundef %and.i.i67) #16
  %arrayidx.i49.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %53
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i49.i) #16
  %arrayidx1.i.i70 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %and.i.i67
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx1.i.i70) #16
  tail call void @mutex_unlock(ptr noundef %bindlock.i65) #16
  br label %cleanup

out_spin.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i50.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %53
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i50.i) #16
  %arrayidx1.i51.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %and.i.i67
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx1.i51.i) #16
  br label %out_mutex.i

out_mutex.i:                                      ; preds = %out_spin.i, %if.end5.i.out_mutex.i_crit_edge
  %err.0.i = phi i32 [ -98, %out_spin.i ], [ -22, %if.end5.i.out_mutex.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bindlock.i65) #16
  br label %out.i75

out.i75:                                          ; preds = %out_mutex.i, %if.end.i66.out.i75_crit_edge
  %err.1.i71 = phi i32 [ %call2.i, %if.end.i66.out.i75_crit_edge ], [ %err.0.i, %out_mutex.i ]
  %call.i.i.i.i.i.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i56, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr nonnull %call9.i.i.i56, i32 1, i32 3, i32 1) #16
  %81 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call9.i.i.i56, ptr nonnull %call9.i.i.i56, i32 1, ptr nonnull elementtype(i32) %call9.i.i.i56) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i.i73 = extractvalue { i32, i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i73)
  %cmp.i.i.i.i.i74 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i73, 1
  br i1 %cmp.i.i.i.i.i74, label %if.then.i.i79, label %if.end5.i.i.i.i.i77

if.end5.i.i.i.i.i77:                              ; preds = %out.i75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i73)
  %.not.i.i.i.i.i76 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i73, 0
  br i1 %.not.i.i.i.i.i76, label %if.end5.i.i.i.i.i77.cleanup_crit_edge, label %if.then10.i.i.i.i.i78, !prof !135

if.end5.i.i.i.i.i77.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i78:                            ; preds = %if.end5.i.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call9.i.i.i56, i32 noundef 3) #16
  br label %cleanup

if.then.i.i79:                                    ; preds = %out.i75
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i56) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i79, %if.then10.i.i.i.i.i78, %if.end5.i.i.i.i.i77.cleanup_crit_edge, %if.end18.i, %if.else.cleanup_crit_edge, %unix_bind_bsd.exit, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ %retval.0.i26, %unix_bind_bsd.exit ], [ 0, %if.end18.i ], [ %err.1.i71, %if.end5.i.i.i.i.i77.cleanup_crit_edge ], [ %err.1.i71, %if.then10.i.i.i.i.i78 ], [ %err.1.i71, %if.then.i.i79 ], [ -12, %if.else.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_stream_connect(ptr noundef %sock, ptr noundef %uaddr, i32 noundef %addr_len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %4 = add i32 %addr_len, -111
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %4)
  %5 = icmp ult i32 %4, -108
  br i1 %5, label %entry.if.end159.thread_crit_edge, label %if.end.i

entry.if.end159.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end159.thread

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %uaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp2.not.i = icmp eq i16 %7, 1
  br i1 %cmp2.not.i, label %if.end, label %if.end.i.if.end159.thread_crit_edge

if.end.i.if.end159.thread_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end159.thread

if.end:                                           ; preds = %if.end.i
  %flags4 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 2
  %8 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags4, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %addr = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr, align 64
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true
  %call9 = tail call fastcc i32 @unix_autobind(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then8.if.end159.thread_crit_edge

if.then8.if.end159.thread_crit_edge:              ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end159.thread

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %cond.false.i, label %if.end13.sock_sndtimeo.exit_crit_edge

if.end13.sock_sndtimeo.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %13 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.end13.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %14, %cond.false.i ], [ 0, %if.end13.sock_sndtimeo.exit_crit_edge ]
  %15 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i, align 4
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %type, align 4
  %conv = sext i16 %18 to i32
  %call17 = tail call fastcc ptr @unix_create1(ptr noundef %16, ptr noundef null, i32 noundef 0, i32 noundef %conv)
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %call17 to i32
  br label %if.end159.thread

if.end21:                                         ; preds = %sock_sndtimeo.exit
  %call22 = tail call ptr @sock_wmalloc(ptr noundef %call17, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #16
  %cmp = icmp eq ptr %call22, null
  br i1 %cmp, label %if.end21.out_crit_edge, label %restart.preheader

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

restart.preheader:                                ; preds = %if.end21
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %20 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sk_type, align 2
  %conv26334339 = zext i16 %21 to i32
  %call27335340 = tail call fastcc ptr @unix_find_other(ptr noundef %3, ptr noundef %uaddr, i32 noundef %addr_len, i32 noundef %conv26334339)
  %cmp.i261336341 = icmp ugt ptr %call27335340, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i261336341, label %restart.preheader.if.then29_crit_edge, label %if.end31.lr.ph.lr.ph

restart.preheader.if.then29_crit_edge:            ; preds = %restart.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29

if.end31.lr.ph.lr.ph:                             ; preds = %restart.preheader
  %skc_state63 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %lock66 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 8
  br label %if.end31.lr.ph

if.end31.lr.ph:                                   ; preds = %sock_put.exit280.if.end31.lr.ph_crit_edge, %if.end31.lr.ph.lr.ph
  %call27335343 = phi ptr [ %call27335340, %if.end31.lr.ph.lr.ph ], [ %call27335, %sock_put.exit280.if.end31.lr.ph_crit_edge ]
  %timeo.0.ph342 = phi i32 [ %cond.i, %if.end31.lr.ph.lr.ph ], [ %call54, %sock_put.exit280.if.end31.lr.ph_crit_edge ]
  br label %if.end31

if.then29:                                        ; preds = %sock_put.exit280.if.then29_crit_edge, %restart.backedge.if.then29_crit_edge, %restart.preheader.if.then29_crit_edge
  %call27.lcssa = phi ptr [ %call27335340, %restart.preheader.if.then29_crit_edge ], [ %call27, %restart.backedge.if.then29_crit_edge ], [ %call27335, %sock_put.exit280.if.then29_crit_edge ]
  %22 = ptrtoint ptr %call27.lcssa to i32
  br label %out

if.end31:                                         ; preds = %restart.backedge.if.end31_crit_edge, %if.end31.lr.ph
  %call27337 = phi ptr [ %call27335343, %if.end31.lr.ph ], [ %call27, %restart.backedge.if.end31_crit_edge ]
  %lock = getelementptr inbounds %struct.unix_sock, ptr %call27337, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %23 = getelementptr inbounds %struct.sock_common, ptr %call27337, i32 0, i32 13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not = icmp eq i32 %26, 0
  br i1 %tobool.i.not, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.end31
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %skc_refcnt.i262 = getelementptr inbounds %struct.sock_common, ptr %call27337, i32 0, i32 19
  %call.i.i.i.i.i.i263 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i262, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i262, i32 1, i32 3, i32 1) #16
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i262, ptr %skc_refcnt.i262, i32 1, ptr elementtype(i32) %skc_refcnt.i262) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i264 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i264, label %if.end5.i.i.i.i.restart.backedge_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.restart.backedge_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %restart.backedge

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i262, i32 noundef 3) #16
  br label %restart.backedge

if.then.i:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @sk_free(ptr noundef %call27337) #16
  br label %restart.backedge

restart.backedge:                                 ; preds = %if.then.i288, %if.then10.i.i.i.i287, %if.end5.i.i.i.i286.restart.backedge_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.restart.backedge_crit_edge
  %28 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sk_type, align 2
  %conv26 = zext i16 %29 to i32
  %call27 = tail call fastcc ptr @unix_find_other(ptr noundef %3, ptr noundef %uaddr, i32 noundef %addr_len, i32 noundef %conv26)
  %cmp.i261 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i261, label %restart.backedge.if.then29_crit_edge, label %restart.backedge.if.end31_crit_edge

restart.backedge.if.end31_crit_edge:              ; preds = %restart.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

restart.backedge.if.then29_crit_edge:             ; preds = %restart.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29

if.end37:                                         ; preds = %if.end31
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call27337, i32 0, i32 4
  %30 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %31)
  %cmp39.not = icmp eq i8 %31, 10
  br i1 %cmp39.not, label %if.end42, label %if.end37.out_unlock.loopexit_crit_edge

if.end37.out_unlock.loopexit_crit_edge:           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock.loopexit

if.end42:                                         ; preds = %if.end37
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %call27337, i32 0, i32 66
  %32 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sk_shutdown, align 2
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool45.not = icmp eq i8 %34, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.out_unlock.loopexit_crit_edge

if.end42.out_unlock.loopexit_crit_edge:           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock.loopexit

if.end47:                                         ; preds = %if.end42
  %qlen.i.i = getelementptr inbounds %struct.sock, ptr %call27337, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qlen.i.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %call27337, i32 0, i32 54
  %37 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.i266.not = icmp ugt i32 %36, %38
  br i1 %cmp.i266.not, label %if.then50, label %if.end61

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.0.ph342)
  %tobool51.not = icmp eq i32 %timeo.0.ph342, 0
  br i1 %tobool51.not, label %if.then50.out_unlock_crit_edge, label %if.end53

if.then50.out_unlock_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end53:                                         ; preds = %if.then50
  %call54 = tail call fastcc i32 @unix_wait_for_peer(ptr noundef %call27337, i32 noundef %timeo.0.ph342)
  %39 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stack.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %47 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end53.out.loopexit_crit_edge, !prof !135

if.end53.out.loopexit_crit_edge:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.loopexit

signal_pending.exit:                              ; preds = %if.end53
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %44, align 4
  %and1.i.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool58.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool58.not, label %if.end60, label %signal_pending.exit.out.loopexit_crit_edge

signal_pending.exit.out.loopexit_crit_edge:       ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.loopexit

if.end60:                                         ; preds = %signal_pending.exit
  %skc_refcnt.i271 = getelementptr inbounds %struct.sock_common, ptr %call27337, i32 0, i32 19
  %call.i.i.i.i.i.i272 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i271, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i271, i32 1, i32 3, i32 1) #16
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i271, ptr %skc_refcnt.i271, i32 1, ptr elementtype(i32) %skc_refcnt.i271) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i273 = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i273)
  %cmp.i.i.i.i274 = icmp eq i32 %asmresult.i.i.i.i.i.i.i273, 1
  br i1 %cmp.i.i.i.i274, label %if.then.i278, label %if.end5.i.i.i.i276

if.end5.i.i.i.i276:                               ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i273)
  %.not.i.i.i.i275 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i273, 0
  br i1 %.not.i.i.i.i275, label %if.end5.i.i.i.i276.sock_put.exit280_crit_edge, label %if.then10.i.i.i.i277, !prof !135

if.end5.i.i.i.i276.sock_put.exit280_crit_edge:    ; preds = %if.end5.i.i.i.i276
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_put.exit280

if.then10.i.i.i.i277:                             ; preds = %if.end5.i.i.i.i276
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i271, i32 noundef 3) #16
  br label %sock_put.exit280

if.then.i278:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @sk_free(ptr noundef %call27337) #16
  br label %sock_put.exit280

sock_put.exit280:                                 ; preds = %if.then.i278, %if.then10.i.i.i.i277, %if.end5.i.i.i.i276.sock_put.exit280_crit_edge
  %51 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sk_type, align 2
  %conv26334 = zext i16 %52 to i32
  %call27335 = tail call fastcc ptr @unix_find_other(ptr noundef %3, ptr noundef %uaddr, i32 noundef %addr_len, i32 noundef %conv26334)
  %cmp.i261336 = icmp ugt ptr %call27335, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i261336, label %sock_put.exit280.if.then29_crit_edge, label %sock_put.exit280.if.end31.lr.ph_crit_edge

sock_put.exit280.if.end31.lr.ph_crit_edge:        ; preds = %sock_put.exit280
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.lr.ph

sock_put.exit280.if.then29_crit_edge:             ; preds = %sock_put.exit280
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29

if.end61:                                         ; preds = %if.end47
  %53 = ptrtoint ptr %skc_state63 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load volatile i8, ptr %skc_state63, align 2
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %54, label %if.end61.out_unlock_crit_edge [
    i8 7, label %do.body
    i8 1, label %if.end61.out_unlock.loopexit_crit_edge
  ]

if.end61.out_unlock.loopexit_crit_edge:           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock.loopexit

if.end61.out_unlock_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

do.body:                                          ; preds = %if.end61
  tail call void @_raw_spin_lock_nested(ptr noundef %lock66, i32 noundef 1) #16
  %56 = ptrtoint ptr %skc_state63 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load volatile i8, ptr %skc_state63, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %57)
  %cmp71.not = icmp eq i8 %57, 7
  br i1 %cmp71.not, label %if.end78, label %if.then73

if.then73:                                        ; preds = %do.body
  tail call void @_raw_spin_unlock(ptr noundef %lock66) #16
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %skc_refcnt.i281 = getelementptr inbounds %struct.sock_common, ptr %call27337, i32 0, i32 19
  %call.i.i.i.i.i.i282 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i281, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i281, i32 1, i32 3, i32 1) #16
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i281, ptr %skc_refcnt.i281, i32 1, ptr elementtype(i32) %skc_refcnt.i281) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i283 = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i283)
  %cmp.i.i.i.i284 = icmp eq i32 %asmresult.i.i.i.i.i.i.i283, 1
  br i1 %cmp.i.i.i.i284, label %if.then.i288, label %if.end5.i.i.i.i286

if.end5.i.i.i.i286:                               ; preds = %if.then73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i283)
  %.not.i.i.i.i285 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i283, 0
  br i1 %.not.i.i.i.i285, label %if.end5.i.i.i.i286.restart.backedge_crit_edge, label %if.then10.i.i.i.i287, !prof !135

if.end5.i.i.i.i286.restart.backedge_crit_edge:    ; preds = %if.end5.i.i.i.i286
  call void @__sanitizer_cov_trace_pc() #18
  br label %restart.backedge

if.then10.i.i.i.i287:                             ; preds = %if.end5.i.i.i.i286
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i281, i32 noundef 3) #16
  br label %restart.backedge

if.then.i288:                                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @sk_free(ptr noundef %call27337) #16
  br label %restart.backedge

if.end78:                                         ; preds = %do.body
  %qlen.i.i.le = getelementptr inbounds %struct.sock, ptr %call27337, i32 0, i32 8, i32 1
  %call79 = tail call i32 @security_unix_stream_connect(ptr noundef %1, ptr noundef %call27337, ptr noundef %call17) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end84, label %if.then81

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock66) #16
  br label %out_unlock

if.end84:                                         ; preds = %if.end78
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #16
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end84.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !134

if.end84.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end84
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %60 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %.not.i.i.i.i = icmp sgt i32 %60, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end84.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end84.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #16
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %peer = getelementptr inbounds %struct.unix_sock, ptr %call17, i32 0, i32 5
  %61 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %1, ptr %peer, align 4
  %skc_state87 = getelementptr inbounds %struct.sock_common, ptr %call17, i32 0, i32 4
  %62 = ptrtoint ptr %skc_state87 to i32
  call void @__asan_store1_noabort(i32 %62)
  store volatile i8 1, ptr %skc_state87, align 2
  %63 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %sk_type, align 2
  %sk_type89 = getelementptr inbounds %struct.sock, ptr %call17, i32 0, i32 45
  %65 = ptrtoint ptr %sk_type89 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %sk_type89, align 2
  tail call fastcc void @init_peercred(ptr noundef %call17)
  %peer_wq = getelementptr inbounds %struct.unix_sock, ptr %call17, i32 0, i32 11
  %66 = getelementptr inbounds %struct.sock, ptr %call17, i32 0, i32 17
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %peer_wq, ptr %66, align 8
  %dentry = getelementptr inbounds %struct.unix_sock, ptr %call27337, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dentry, align 4
  %tobool104.not = icmp eq ptr %69, null
  br i1 %tobool104.not, label %sock_hold.exit.if.end109_crit_edge, label %if.then105

sock_hold.exit.if.end109_crit_edge:               ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end109

if.then105:                                       ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #18
  %path = getelementptr inbounds %struct.unix_sock, ptr %call27337, i32 0, i32 2
  tail call void @path_get(ptr noundef %path) #16
  %path107 = getelementptr inbounds %struct.unix_sock, ptr %call17, i32 0, i32 2
  %70 = ptrtoint ptr %path to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %path, align 4
  %72 = ptrtoint ptr %path107 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %71, ptr %path107, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %sock_hold.exit.if.end109_crit_edge
  %addr110 = getelementptr inbounds %struct.unix_sock, ptr %call27337, i32 0, i32 1
  %73 = ptrtoint ptr %addr110 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %addr110, align 64
  tail call fastcc void @refcount_inc(ptr noundef %74)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !153
  %75 = ptrtoint ptr %addr110 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %addr110, align 64
  %addr125 = getelementptr inbounds %struct.unix_sock, ptr %call17, i32 0, i32 1
  %77 = ptrtoint ptr %addr125 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %76, ptr %addr125, align 64
  tail call fastcc void @copy_peercred(ptr noundef %1, ptr noundef %call27337)
  %78 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3, ptr %sock, align 128
  %79 = ptrtoint ptr %skc_state63 to i32
  call void @__asan_store1_noabort(i32 %79)
  store volatile i8 1, ptr %skc_state63, align 2
  %skc_refcnt.i250 = getelementptr inbounds %struct.sock_common, ptr %call17, i32 0, i32 19
  %call.i.i.i.i.i.i251 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i250, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i250, i32 1, i32 3, i32 1) #16
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i250, ptr %skc_refcnt.i250, i32 1, ptr elementtype(i32) %skc_refcnt.i250) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i252 = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i252)
  %tobool1.not.i.i.i.i253 = icmp eq i32 %asmresult.i.i.i.i.i.i252, 0
  br i1 %tobool1.not.i.i.i.i253, label %if.end109.if.end15.sink.split.i.i.i.i258_crit_edge, label %if.else.i.i.i.i256, !prof !134

if.end109.if.end15.sink.split.i.i.i.i258_crit_edge: ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i258

if.else.i.i.i.i256:                               ; preds = %if.end109
  %add.i.i.i.i254 = add i32 %asmresult.i.i.i.i.i.i252, 1
  %81 = or i32 %add.i.i.i.i254, %asmresult.i.i.i.i.i.i252
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %.not.i.i.i.i255 = icmp sgt i32 %81, -1
  br i1 %.not.i.i.i.i255, label %if.else.i.i.i.i256.sock_hold.exit259_crit_edge, label %if.else.i.i.i.i256.if.end15.sink.split.i.i.i.i258_crit_edge, !prof !135

if.else.i.i.i.i256.if.end15.sink.split.i.i.i.i258_crit_edge: ; preds = %if.else.i.i.i.i256
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i258

if.else.i.i.i.i256.sock_hold.exit259_crit_edge:   ; preds = %if.else.i.i.i.i256
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_hold.exit259

if.end15.sink.split.i.i.i.i258:                   ; preds = %if.else.i.i.i.i256.if.end15.sink.split.i.i.i.i258_crit_edge, %if.end109.if.end15.sink.split.i.i.i.i258_crit_edge
  %.sink.i.i.i.i257 = phi i32 [ 2, %if.end109.if.end15.sink.split.i.i.i.i258_crit_edge ], [ 1, %if.else.i.i.i.i256.if.end15.sink.split.i.i.i.i258_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i250, i32 noundef %.sink.i.i.i.i257) #16
  br label %sock_hold.exit259

sock_hold.exit259:                                ; preds = %if.end15.sink.split.i.i.i.i258, %if.else.i.i.i.i256.sock_hold.exit259_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !154
  %peer143 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 5
  %82 = ptrtoint ptr %peer143 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call17, ptr %peer143, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock66) #16
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %call27337, i32 0, i32 8
  %lock146 = getelementptr inbounds %struct.sock, ptr %call27337, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock146) #16
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %call27337, i32 0, i32 8, i32 0, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i, align 4
  %85 = ptrtoint ptr %call22 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %sk_receive_queue, ptr %call22, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %call22, i32 0, i32 1
  %86 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %prev10.i.i.i, align 4
  store volatile ptr %call22, ptr %prev.i.i, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %call22, ptr %84, align 4
  %88 = ptrtoint ptr %qlen.i.i.le to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %qlen.i.i.le, align 4
  %add.i.i.i = add i32 %89, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.le, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock146) #16
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %call27337, i32 0, i32 77
  %90 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sk_data_ready, align 8
  tail call void %91(ptr noundef %call27337) #16
  tail call fastcc void @sock_put(ptr noundef %call27337)
  br label %cleanup

out_unlock.loopexit:                              ; preds = %if.end61.out_unlock.loopexit_crit_edge, %if.end42.out_unlock.loopexit_crit_edge, %if.end37.out_unlock.loopexit_crit_edge
  %err.0.ph = phi i32 [ -111, %if.end37.out_unlock.loopexit_crit_edge ], [ -111, %if.end42.out_unlock.loopexit_crit_edge ], [ -106, %if.end61.out_unlock.loopexit_crit_edge ]
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.loopexit, %if.then81, %if.end61.out_unlock_crit_edge, %if.then50.out_unlock_crit_edge
  %err.0 = phi i32 [ %call79, %if.then81 ], [ %err.0.ph, %out_unlock.loopexit ], [ -22, %if.end61.out_unlock_crit_edge ], [ -11, %if.then50.out_unlock_crit_edge ]
  %tobool152.not = icmp eq ptr %call27337, null
  br i1 %tobool152.not, label %out_unlock.out_crit_edge, label %if.then153

out_unlock.out_crit_edge:                         ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then153:                                       ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %out

if.end159.thread:                                 ; preds = %if.then19, %if.then8.if.end159.thread_crit_edge, %if.end.i.if.end159.thread_crit_edge, %entry.if.end159.thread_crit_edge
  %err.1.ph = phi i32 [ %call9, %if.then8.if.end159.thread_crit_edge ], [ %19, %if.then19 ], [ -22, %entry.if.end159.thread_crit_edge ], [ -22, %if.end.i.if.end159.thread_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef null, i32 noundef 0) #16
  br label %cleanup

out.loopexit:                                     ; preds = %signal_pending.exit.out.loopexit_crit_edge, %if.end53.out.loopexit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call54)
  %cmp.i267.le = icmp eq i32 %call54, 2147483647
  %cond.i268.le = select i1 %cmp.i267.le, i32 -512, i32 -4
  br label %out

out:                                              ; preds = %out.loopexit, %if.then153, %out_unlock.out_crit_edge, %if.then29, %if.end21.out_crit_edge
  %other.0 = phi ptr [ null, %if.end21.out_crit_edge ], [ null, %if.then29 ], [ %call27337, %if.then153 ], [ null, %out_unlock.out_crit_edge ], [ %call27337, %out.loopexit ]
  %err.1 = phi i32 [ -12, %if.end21.out_crit_edge ], [ %22, %if.then29 ], [ %err.0, %if.then153 ], [ %err.0, %out_unlock.out_crit_edge ], [ %cond.i268.le, %out.loopexit ]
  tail call void @kfree_skb_reason(ptr noundef %call22, i32 noundef 0) #16
  %tobool157.not = icmp eq ptr %call17, null
  br i1 %tobool157.not, label %out.if.end159_crit_edge, label %if.then158

out.if.end159_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end159

if.then158:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @unix_release_sock(ptr noundef nonnull %call17, i32 noundef 0)
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %out.if.end159_crit_edge
  %tobool160.not = icmp eq ptr %other.0, null
  br i1 %tobool160.not, label %if.end159.cleanup_crit_edge, label %if.then161

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then161:                                       ; preds = %if.end159
  %skc_refcnt.i291 = getelementptr inbounds %struct.sock_common, ptr %other.0, i32 0, i32 19
  %call.i.i.i.i.i.i292 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i291, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i291, i32 1, i32 3, i32 1) #16
  %92 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i291, ptr %skc_refcnt.i291, i32 1, ptr elementtype(i32) %skc_refcnt.i291) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i293 = extractvalue { i32, i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i293)
  %cmp.i.i.i.i294 = icmp eq i32 %asmresult.i.i.i.i.i.i.i293, 1
  br i1 %cmp.i.i.i.i294, label %if.then.i298, label %if.end5.i.i.i.i296

if.end5.i.i.i.i296:                               ; preds = %if.then161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i293)
  %.not.i.i.i.i295 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i293, 0
  br i1 %.not.i.i.i.i295, label %if.end5.i.i.i.i296.cleanup_crit_edge, label %if.then10.i.i.i.i297, !prof !135

if.end5.i.i.i.i296.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i296
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i297:                             ; preds = %if.end5.i.i.i.i296
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i291, i32 noundef 3) #16
  br label %cleanup

if.then.i298:                                     ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @sk_free(ptr noundef nonnull %other.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i298, %if.then10.i.i.i.i297, %if.end5.i.i.i.i296.cleanup_crit_edge, %if.end159.cleanup_crit_edge, %if.end159.thread, %sock_hold.exit259
  %retval.0 = phi i32 [ 0, %sock_hold.exit259 ], [ %err.1, %if.end159.cleanup_crit_edge ], [ %err.1.ph, %if.end159.thread ], [ %err.1, %if.end5.i.i.i.i296.cleanup_crit_edge ], [ %err.1, %if.then10.i.i.i.i297 ], [ %err.1, %if.then.i298 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_socketpair(ptr nocapture noundef %socka, ptr nocapture noundef %sockb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %socka, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %sk1 = getelementptr inbounds %struct.socket, ptr %sockb, i32 0, i32 4
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !134

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #16
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %skc_refcnt.i17 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  %call.i.i.i.i.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i17, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i17, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i17, ptr %skc_refcnt.i17, i32 1, ptr elementtype(i32) %skc_refcnt.i17) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i19 = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i19)
  %tobool1.not.i.i.i.i20 = icmp eq i32 %asmresult.i.i.i.i.i.i19, 0
  br i1 %tobool1.not.i.i.i.i20, label %sock_hold.exit.if.end15.sink.split.i.i.i.i25_crit_edge, label %if.else.i.i.i.i23, !prof !134

sock_hold.exit.if.end15.sink.split.i.i.i.i25_crit_edge: ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i25

if.else.i.i.i.i23:                                ; preds = %sock_hold.exit
  %add.i.i.i.i21 = add i32 %asmresult.i.i.i.i.i.i19, 1
  %7 = or i32 %add.i.i.i.i21, %asmresult.i.i.i.i.i.i19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i22 = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i22, label %if.else.i.i.i.i23.sock_hold.exit26_crit_edge, label %if.else.i.i.i.i23.if.end15.sink.split.i.i.i.i25_crit_edge, !prof !135

if.else.i.i.i.i23.if.end15.sink.split.i.i.i.i25_crit_edge: ; preds = %if.else.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i25

if.else.i.i.i.i23.sock_hold.exit26_crit_edge:     ; preds = %if.else.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_hold.exit26

if.end15.sink.split.i.i.i.i25:                    ; preds = %if.else.i.i.i.i23.if.end15.sink.split.i.i.i.i25_crit_edge, %sock_hold.exit.if.end15.sink.split.i.i.i.i25_crit_edge
  %.sink.i.i.i.i24 = phi i32 [ 2, %sock_hold.exit.if.end15.sink.split.i.i.i.i25_crit_edge ], [ 1, %if.else.i.i.i.i23.if.end15.sink.split.i.i.i.i25_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i17, i32 noundef %.sink.i.i.i.i24) #16
  br label %sock_hold.exit26

sock_hold.exit26:                                 ; preds = %if.end15.sink.split.i.i.i.i25, %if.else.i.i.i.i23.sock_hold.exit26_crit_edge
  %peer = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %peer, align 4
  %peer3 = getelementptr inbounds %struct.unix_sock, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %peer3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %peer3, align 4
  tail call fastcc void @init_peercred(ptr noundef %1)
  tail call fastcc void @init_peercred(ptr noundef %3)
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store volatile i8 1, ptr %skc_state, align 2
  %skc_state5 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store volatile i8 1, ptr %skc_state5, align 2
  %12 = ptrtoint ptr %socka to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %socka, align 128
  %13 = ptrtoint ptr %sockb to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %sockb, align 128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_accept(ptr noundef %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -95, ptr %err, align 4
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %type, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %4, label %entry.out_crit_edge [
    i16 1, label %entry.if.end_crit_edge
    i16 5, label %entry.if.end_crit_edge39
  ]

entry.if.end_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge39
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -22, ptr %err, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp8.not = icmp eq i8 %8, 10
  br i1 %cmp8.not, label %if.end11, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end11:                                         ; preds = %if.end
  %and = and i32 %flags, 2048
  %call = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef 0, i32 noundef %and, ptr noundef nonnull %err) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end11
  %9 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13 = icmp eq i32 %10, 0
  br i1 %cmp13, label %if.then15, label %if.then12.out_crit_edge

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -22, ptr %err, align 4
  br label %out

if.end17:                                         ; preds = %if.end11
  %12 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call) #16
  %peer_wq = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 11
  call void @__wake_up(ptr noundef %peer_wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  %lock = getelementptr inbounds %struct.unix_sock, ptr %14, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %lock) #16
  %15 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %newsock, align 128
  %flags.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 2
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end17.if.end.i_crit_edge, label %if.then.i

if.end17.if.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %flags1.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 2
  call void @_set_bit(i32 noundef 3, ptr noundef %flags1.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end17.if.end.i_crit_edge
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %21 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not.i = icmp eq i32 %21, 0
  br i1 %tobool4.not.i, label %if.end.i.unix_sock_inherit_flags.exit_crit_edge, label %if.then5.i

if.end.i.unix_sock_inherit_flags.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_sock_inherit_flags.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %flags6.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 2
  call void @_set_bit(i32 noundef 4, ptr noundef %flags6.i) #16
  br label %unix_sock_inherit_flags.exit

unix_sock_inherit_flags.exit:                     ; preds = %if.then5.i, %if.end.i.unix_sock_inherit_flags.exit_crit_edge
  %sk1.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 4
  %22 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk1.i, align 16
  %tobool.not.i37 = icmp eq ptr %23, null
  br i1 %tobool.not.i37, label %unix_sock_inherit_flags.exit.sock_graft.exit_crit_edge, label %do.end.i, !prof !135

unix_sock_inherit_flags.exit.sock_graft.exit_crit_edge: ; preds = %unix_sock_inherit_flags.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_graft.exit

do.end.i:                                         ; preds = %unix_sock_inherit_flags.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 2024, i32 noundef 9, ptr noundef null) #16
  br label %sock_graft.exit

sock_graft.exit:                                  ; preds = %do.end.i, %unix_sock_inherit_flags.exit.sock_graft.exit_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #16
  %wq.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !155
  %24 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %wq.i, ptr %24, align 8
  %26 = ptrtoint ptr %sk1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %14, ptr %sk1.i, align 16
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 71
  %27 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %newsock, ptr %sk_socket.i.i, align 8
  %sk_uid.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 55
  %i_uid.i = getelementptr inbounds %struct.socket_alloc, ptr %newsock, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_uid.i, align 4
  %30 = ptrtoint ptr %sk_uid.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sk_uid.i, align 4
  call void @security_sock_graft(ptr noundef %14, ptr noundef %newsock) #16
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #16
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %cleanup

out:                                              ; preds = %if.then15, %if.then12.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %31 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %sock_graft.exit
  %retval.0 = phi i32 [ %32, %out ], [ 0, %sock_graft.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %uaddr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %peer2.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %peer2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer2.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %unix_peer_get.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !134

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.unix_peer_get.exit.thread_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.unix_peer_get.exit.thread_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_peer_get.exit.thread

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #16
  br label %unix_peer_get.exit.thread

unix_peer_get.exit.thread:                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.unix_peer_get.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  br label %if.end4

unix_peer_get.exit:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  br label %out

if.else:                                          ; preds = %entry
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !134

if.else.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end4_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end4_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #16
  br label %if.end4

if.end4:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end4_crit_edge, %unix_peer_get.exit.thread
  %sk.0 = phi ptr [ %3, %unix_peer_get.exit.thread ], [ %1, %if.else.i.i.i.i.if.end4_crit_edge ], [ %1, %if.end15.sink.split.i.i.i.i ]
  %addr10 = getelementptr inbounds %struct.unix_sock, ptr %sk.0, i32 0, i32 1
  %8 = ptrtoint ptr %addr10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %addr10, align 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !156
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %uaddr, align 2
  %sun_path = getelementptr inbounds %struct.sockaddr_un, ptr %uaddr, i32 0, i32 1
  %11 = ptrtoint ptr %sun_path to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %sun_path, align 2
  br label %if.end19

if.else17:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %len = getelementptr inbounds %struct.unix_address, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %name = getelementptr inbounds %struct.unix_address, ptr %9, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %uaddr, ptr %name, i32 %13)
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then16
  %err.0 = phi i32 [ %13, %if.else17 ], [ 2, %if.then16 ]
  %skc_refcnt.i29 = getelementptr inbounds %struct.sock_common, ptr %sk.0, i32 0, i32 19
  %call.i.i.i.i.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i29, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i29, i32 1, i32 3, i32 1) #16
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i29, ptr %skc_refcnt.i29, i32 1, ptr elementtype(i32) %skc_refcnt.i29) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i31 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i31)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i31, 1
  br i1 %cmp.i.i.i.i, label %if.then.i33, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i31)
  %.not.i.i.i.i32 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i31, 0
  br i1 %.not.i.i.i.i32, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i29, i32 noundef 3) #16
  br label %out

if.then.i33:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @sk_free(ptr noundef %sk.0) #16
  br label %out

out:                                              ; preds = %if.then.i33, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %unix_peer_get.exit
  %err.1 = phi i32 [ -107, %unix_peer_get.exit ], [ %err.0, %if.end5.i.i.i.i.out_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i33 ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_poll(ptr noundef %file, ptr noundef %sock, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %cmp.i.i = icmp eq ptr %wait, null
  br i1 %cmp.i.i, label %entry.sock_poll_wait.exit_crit_edge, label %poll_does_not_wait.exit.i

entry.sock_poll_wait.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_poll_wait.exit

poll_does_not_wait.exit.i:                        ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %cmp1.i.i = icmp eq ptr %3, null
  br i1 %cmp1.i.i, label %poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge, label %poll_wait.exit.i

poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge: ; preds = %poll_does_not_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_poll_wait.exit

poll_wait.exit.i:                                 ; preds = %poll_does_not_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %wq.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 7
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wq.i, ptr noundef nonnull %wait) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !157
  br label %sock_poll_wait.exit

sock_poll_wait.exit:                              ; preds = %poll_wait.exit.i, %poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge, %entry.sock_poll_wait.exit_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 8
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %6 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sk_shutdown, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp eq i8 %7, 3
  %or4 = or i32 %spec.select, 16
  %mask.1 = select i1 %cmp, i32 %or4, i32 %spec.select
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  %or10 = or i32 %mask.1, 8257
  %mask.2 = select i1 %tobool8.not, i32 %mask.1, i32 %or10
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %10, %sk_receive_queue
  %or13 = or i32 %mask.2, 65
  %mask.3 = select i1 %cmp.i, i32 %mask.2, i32 %or13
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_prot.i, align 8
  %sock_is_readable.i = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 29
  %13 = ptrtoint ptr %sock_is_readable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sock_is_readable.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %sock_poll_wait.exit.sk_is_readable.exit.thread_crit_edge, label %sk_is_readable.exit

sock_poll_wait.exit.sk_is_readable.exit.thread_crit_edge: ; preds = %sock_poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sk_is_readable.exit.thread

sk_is_readable.exit:                              ; preds = %sock_poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call zeroext i1 %14(ptr noundef %1) #16
  %spec.select58 = select i1 %call.i, i32 %or13, i32 %mask.3
  br label %sk_is_readable.exit.thread

sk_is_readable.exit.thread:                       ; preds = %sk_is_readable.exit, %sock_poll_wait.exit.sk_is_readable.exit.thread_crit_edge
  %15 = phi i32 [ %mask.3, %sock_poll_wait.exit.sk_is_readable.exit.thread_crit_edge ], [ %spec.select58, %sk_is_readable.exit ]
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %16 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sk_type, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %17, label %sk_is_readable.exit.thread.if.end31_crit_edge [
    i16 1, label %sk_is_readable.exit.thread.land.lhs.true_crit_edge
    i16 5, label %sk_is_readable.exit.thread.land.lhs.true_crit_edge59
  ]

sk_is_readable.exit.thread.land.lhs.true_crit_edge59: ; preds = %sk_is_readable.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

sk_is_readable.exit.thread.land.lhs.true_crit_edge: ; preds = %sk_is_readable.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

sk_is_readable.exit.thread.if.end31_crit_edge:    ; preds = %sk_is_readable.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

land.lhs.true:                                    ; preds = %sk_is_readable.exit.thread.land.lhs.true_crit_edge, %sk_is_readable.exit.thread.land.lhs.true_crit_edge59
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %20)
  %cmp27 = icmp eq i8 %20, 7
  %or30 = or i32 %15, 16
  %spec.select53 = select i1 %cmp27, i32 %or30, i32 %15
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true, %sk_is_readable.exit.thread.if.end31_crit_edge
  %mask.5 = phi i32 [ %15, %sk_is_readable.exit.thread.if.end31_crit_edge ], [ %spec.select53, %land.lhs.true ]
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %22)
  %cmp.not.i = icmp eq i8 %22, 10
  br i1 %cmp.not.i, label %if.end31.unix_writable.exit.thread_crit_edge, label %unix_writable.exit

if.end31.unix_writable.exit.thread_crit_edge:     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_writable.exit.thread

unix_writable.exit:                               ; preds = %if.end31
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #16
  %23 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %shl.i = shl i32 %24, 2
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %25 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sk_sndbuf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %26)
  %cmp2.i.not = icmp ugt i32 %shl.i, %26
  %or35 = or i32 %mask.5, 772
  br i1 %cmp2.i.not, label %unix_writable.exit.unix_writable.exit.thread_crit_edge, label %unix_writable.exit._crit_edge

unix_writable.exit._crit_edge:                    ; preds = %unix_writable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %27

unix_writable.exit.unix_writable.exit.thread_crit_edge: ; preds = %unix_writable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_writable.exit.thread

unix_writable.exit.thread:                        ; preds = %unix_writable.exit.unix_writable.exit.thread_crit_edge, %if.end31.unix_writable.exit.thread_crit_edge
  br label %27

27:                                               ; preds = %unix_writable.exit.thread, %unix_writable.exit._crit_edge
  %28 = phi i32 [ %mask.5, %unix_writable.exit.thread ], [ %or35, %unix_writable.exit._crit_edge ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %path.i = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 21521, label %sw.bb
    i32 21531, label %sw.bb4
    i32 35296, label %sw.bb21
    i32 35077, label %sw.bb23
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #16
  %3 = ptrtoint ptr %sk_wmem_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sk_wmem_alloc.i.i, align 4
  %sub.i.i = add i32 %4, -1
  %5 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 3081) #16
  %6 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !158
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !160
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %5, i32 %sub.i.i, i32 -1226833921) #16, !srcloc !161
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #16, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !160
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp.i = icmp eq i8 %11, 10
  br i1 %cmp.i, label %sw.bb4.sw.epilog_crit_edge, label %if.end.i

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb4
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %12 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sk_type.i, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %13, label %if.else.i [
    i16 1, label %if.end.i.if.then9.i_crit_edge
    i16 5, label %if.end.i.if.then9.i_crit_edge76
  ]

if.end.i.if.then9.i_crit_edge76:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9.i

if.end.i.if.then9.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i.if.then9.i_crit_edge, %if.end.i.if.then9.i_crit_edge76
  %15 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %skb.036.i = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp12.not37.i = icmp eq ptr %skb.036.i, %sk_receive_queue.i
  br i1 %cmp12.not37.i, label %if.then9.i.unix_inq_len.exit.thread71_crit_edge, label %if.then9.i.for.body.i_crit_edge

if.then9.i.for.body.i_crit_edge:                  ; preds = %if.then9.i
  br label %for.body.i

if.then9.i.unix_inq_len.exit.thread71_crit_edge:  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_inq_len.exit.thread71

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then9.i.for.body.i_crit_edge
  %skb.039.i = phi ptr [ %skb.0.i, %for.body.i.for.body.i_crit_edge ], [ %skb.036.i, %if.then9.i.for.body.i_crit_edge ]
  %amount.038.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then9.i.for.body.i_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.039.i, i32 0, i32 6
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i, align 4
  %consumed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.039.i, i32 0, i32 3, i32 20
  %18 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %consumed.i.i, align 4
  %sub.i.i62 = add i32 %17, %amount.038.i
  %add.i = sub i32 %sub.i.i62, %19
  %20 = ptrtoint ptr %skb.039.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %skb.0.i = load ptr, ptr %skb.039.i, align 4
  %cmp12.not.i = icmp eq ptr %skb.0.i, %sk_receive_queue.i
  br i1 %cmp12.not.i, label %for.body.i.unix_inq_len.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.unix_inq_len.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_inq_len.exit

if.else.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp.i.i = icmp eq ptr %22, %sk_receive_queue.i
  %tobool.not35.i = icmp eq ptr %22, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not35.i
  br i1 %tobool.not.i, label %if.else.i.unix_inq_len.exit.thread71_crit_edge, label %if.then17.i

if.else.i.unix_inq_len.exit.thread71_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_inq_len.exit.thread71

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  br label %unix_inq_len.exit

unix_inq_len.exit.thread71:                       ; preds = %if.else.i.unix_inq_len.exit.thread71_crit_edge, %if.then9.i.unix_inq_len.exit.thread71_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  br label %if.else

unix_inq_len.exit:                                ; preds = %if.then17.i, %for.body.i.unix_inq_len.exit_crit_edge
  %amount.1.i = phi i32 [ %24, %if.then17.i ], [ %add.i, %for.body.i.unix_inq_len.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %amount.1.i)
  %cmp = icmp slt i32 %amount.1.i, 0
  br i1 %cmp, label %unix_inq_len.exit.sw.epilog_crit_edge, label %unix_inq_len.exit.if.else_crit_edge

unix_inq_len.exit.if.else_crit_edge:              ; preds = %unix_inq_len.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

unix_inq_len.exit.sw.epilog_crit_edge:            ; preds = %unix_inq_len.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.else:                                          ; preds = %unix_inq_len.exit.if.else_crit_edge, %unix_inq_len.exit.thread71
  %amount.1.i74 = phi i32 [ 0, %unix_inq_len.exit.thread71 ], [ %amount.1.i, %unix_inq_len.exit.if.else_crit_edge ]
  %25 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 3088) #16
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i.i54 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i54 to ptr
  %cpu_domain.i.i55 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i55) #8, !srcloc !158
  %and.i56 = and i32 %28, -13
  %or.i57 = or i32 %and.i56, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i57) #16, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !160
  %29 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %25, i32 %amount.1.i74, i32 -1226833921) #16, !srcloc !162
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #16, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !160
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #16
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skc_net.i.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %33, i32 noundef 12) #16
  br i1 %call1.i, label %if.end.i64, label %sw.bb21.unix_open_file.exit_crit_edge

sw.bb21.unix_open_file.exit_crit_edge:            ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_open_file.exit

if.end.i64:                                       ; preds = %sw.bb21
  %addr.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %addr.i, align 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !163
  %tobool.not.i63 = icmp eq ptr %35, null
  br i1 %tobool.not.i63, label %if.end.i64.unix_open_file.exit_crit_edge, label %if.end8.i

if.end.i64.unix_open_file.exit_crit_edge:         ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_open_file.exit

if.end8.i:                                        ; preds = %if.end.i64
  %path10.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %path10.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %path10.i, align 4
  %38 = ptrtoint ptr %path.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %path.i, align 8
  %39 = trunc i64 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool11.not.i = icmp eq i32 %39, 0
  br i1 %tobool11.not.i, label %if.end8.i.unix_open_file.exit_crit_edge, label %if.end13.i

if.end8.i.unix_open_file.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_open_file.exit

if.end13.i:                                       ; preds = %if.end8.i
  call void @path_get(ptr noundef nonnull %path.i) #16
  %call14.i = call i32 @get_unused_fd_flags(i32 noundef 524288) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp.i65 = icmp slt i32 %call14.i, 0
  br i1 %cmp.i65, label %if.end13.i.out.i_crit_edge, label %do.end19.i

if.end13.i.out.i_crit_edge:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

do.end19.i:                                       ; preds = %if.end13.i
  %40 = call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 99
  %44 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cred.i, align 16
  %call22.i = call ptr @dentry_open(ptr noundef nonnull %path.i, i32 noundef 2097152, ptr noundef %45) #16
  %cmp.i.i66 = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i66, label %if.then24.i, label %if.end26.i

if.then24.i:                                      ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @put_unused_fd(i32 noundef %call14.i) #16
  %46 = ptrtoint ptr %call22.i to i32
  br label %out.i

if.end26.i:                                       ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @fd_install(i32 noundef %call14.i, ptr noundef %call22.i) #16
  br label %out.i

out.i:                                            ; preds = %if.end26.i, %if.then24.i, %if.end13.i.out.i_crit_edge
  %fd.0.i = phi i32 [ %call14.i, %if.end13.i.out.i_crit_edge ], [ %46, %if.then24.i ], [ %call14.i, %if.end26.i ]
  call void @path_put(ptr noundef nonnull %path.i) #16
  br label %unix_open_file.exit

unix_open_file.exit:                              ; preds = %out.i, %if.end8.i.unix_open_file.exit_crit_edge, %if.end.i64.unix_open_file.exit_crit_edge, %sw.bb21.unix_open_file.exit_crit_edge
  %retval.0.i67 = phi i32 [ %fd.0.i, %out.i ], [ -1, %sw.bb21.unix_open_file.exit_crit_edge ], [ -2, %if.end.i64.unix_open_file.exit_crit_edge ], [ -2, %if.end8.i.unix_open_file.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #16
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i68 = icmp eq ptr %48, %sk_receive_queue
  %tobool.not75 = icmp eq ptr %48, null
  %tobool.not = or i1 %cmp.i68, %tobool.not75
  br i1 %tobool.not, label %sw.bb23.if.end28_crit_edge, label %land.lhs.true

sw.bb23.if.end28_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

land.lhs.true:                                    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #18
  %oob_skb = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 14
  %49 = ptrtoint ptr %oob_skb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %oob_skb, align 8
  %cmp26 = icmp eq ptr %48, %50
  %spec.select = zext i1 %cmp26 to i32
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true, %sw.bb23.if.end28_crit_edge
  %answ.0 = phi i32 [ 0, %sw.bb23.if.end28_crit_edge ], [ %spec.select, %land.lhs.true ]
  %51 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 3103) #16
  %52 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i.i58 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i58 to ptr
  %cpu_domain.i.i59 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 4
  %54 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i59) #8, !srcloc !158
  %and.i60 = and i32 %54, -13
  %or.i61 = or i32 %and.i60, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i61) #16, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !160
  %55 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %51, i32 %answ.0, i32 -1226833921) #16, !srcloc !164
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #16, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !160
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end28, %unix_open_file.exit, %if.else, %unix_inq_len.exit.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ %55, %if.end28 ], [ %retval.0.i67, %unix_open_file.exit ], [ %29, %if.else ], [ %9, %sw.bb ], [ %amount.1.i, %unix_inq_len.exit.sw.epilog_crit_edge ], [ -515, %entry.sw.epilog_crit_edge ], [ -22, %sw.bb4.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %3, label %entry.out_crit_edge [
    i16 1, label %entry.if.end_crit_edge
    i16 5, label %entry.if.end_crit_edge42
  ]

entry.if.end_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge42
  %addr = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr, align 64
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end8:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp11.not = icmp eq i8 %8, 7
  br i1 %cmp11.not, label %if.end8.if.end20_crit_edge, label %land.lhs.true13

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

land.lhs.true13:                                  ; preds = %if.end8
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %10)
  %cmp17.not = icmp eq i8 %10, 10
  br i1 %cmp17.not, label %land.lhs.true13.if.end20_crit_edge, label %land.lhs.true13.out_unlock_crit_edge

land.lhs.true13.out_unlock_crit_edge:             ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

land.lhs.true13.if.end20_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true13.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %11 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sk_max_ack_backlog, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %backlog)
  %cmp21 = icmp ult i32 %12, %backlog
  br i1 %cmp21, label %if.then23, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %peer_wq = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %peer_wq, i32 noundef 1, i32 noundef 0, ptr noundef null) #16
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %13 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %backlog, ptr %sk_max_ack_backlog, align 8
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 10, ptr %skc_state, align 2
  tail call fastcc void @init_peercred(ptr noundef %1)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end24, %land.lhs.true13.out_unlock_crit_edge
  %err.0 = phi i32 [ -22, %land.lhs.true13.out_unlock_crit_edge ], [ 0, %if.end24 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %out

out:                                              ; preds = %out_unlock, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ %err.0, %out_unlock ], [ -22, %if.end.out_crit_edge ], [ -95, %entry.out_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_shutdown(ptr nocapture noundef readonly %sock, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %2 = icmp ugt i32 %mode, 2
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %inc = add nuw nsw i32 %mode, 1
  %lock = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %3 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sk_shutdown, align 2
  %5 = trunc i32 %inc to i8
  %conv3 = or i8 %4, %5
  store i8 %conv3, ptr %sk_shutdown, align 2
  %peer = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end49.critedge, label %if.then5

if.then5:                                         ; preds = %if.end
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then5.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !134

if.then5.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then5
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then5.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then5.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #16
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %sk_state_change.c = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %10 = ptrtoint ptr %sk_state_change.c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk_state_change.c, align 4
  tail call void %11(ptr noundef %1) #16
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %12 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sk_type, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %13, label %sock_hold.exit.if.then51_crit_edge [
    i16 1, label %sock_hold.exit.if.then18_crit_edge
    i16 5, label %sock_hold.exit.if.then18_crit_edge94
  ]

sock_hold.exit.if.then18_crit_edge94:             ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

sock_hold.exit.if.then18_crit_edge:               ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

sock_hold.exit.if.then51_crit_edge:               ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then51

if.then18:                                        ; preds = %sock_hold.exit.if.then18_crit_edge, %sock_hold.exit.if.then18_crit_edge94
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 8
  %15 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %skc_prot, align 8
  %unhash = getelementptr inbounds %struct.proto, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %unhash to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unhash, align 4
  %tobool19.not = icmp eq ptr %18, null
  br i1 %tobool19.not, label %if.then18.if.end22_crit_edge, label %if.then20

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %18(ptr noundef nonnull %7) #16
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then18.if.end22_crit_edge
  %trunc = trunc i32 %inc to i2
  %rev = tail call i2 @llvm.bitreverse.i2(i2 %trunc)
  %lock33 = getelementptr inbounds %struct.unix_sock, ptr %7, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock33) #16
  %sk_shutdown34 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 66
  %19 = ptrtoint ptr %sk_shutdown34 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sk_shutdown34, align 2
  %21 = zext i2 %rev to i8
  %conv37 = or i8 %20, %21
  store i8 %conv37, ptr %sk_shutdown34, align 2
  tail call void @_raw_spin_unlock(ptr noundef %lock33) #16
  %sk_state_change40 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 76
  %22 = ptrtoint ptr %sk_state_change40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk_state_change40, align 4
  tail call void %23(ptr noundef nonnull %7) #16
  %24 = sext i2 %rev to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp41 = icmp eq i2 %rev, -1
  br i1 %cmp41, label %if.end22.if.then51.sink.split_crit_edge, label %if.else

if.end22.if.then51.sink.split_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then51.sink.split

if.else:                                          ; preds = %if.end22
  %25 = and i2 %rev, 1
  %26 = sext i2 %25 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool45.not = icmp eq i2 %25, 0
  br i1 %tobool45.not, label %if.else.if.then51_crit_edge, label %if.else.if.then51.sink.split_crit_edge

if.else.if.then51.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then51.sink.split

if.else.if.then51_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then51

if.end49.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %sk_state_change.c87 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %27 = ptrtoint ptr %sk_state_change.c87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_state_change.c87, align 4
  tail call void %28(ptr noundef %1) #16
  br label %cleanup

if.then51.sink.split:                             ; preds = %if.else.if.then51.sink.split_crit_edge, %if.end22.if.then51.sink.split_crit_edge
  %.sink = phi i32 [ 6, %if.end22.if.then51.sink.split_crit_edge ], [ 1, %if.else.if.then51.sink.split_crit_edge ]
  tail call fastcc void @sk_wake_async(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %.sink)
  br label %if.then51

if.then51:                                        ; preds = %if.then51.sink.split, %if.else.if.then51_crit_edge, %sock_hold.exit.if.then51_crit_edge
  %call.i.i.i.i.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #16
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i93 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i93, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #16
  br label %cleanup

if.then.i:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @sk_free(ptr noundef nonnull %7) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end49.critedge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end49.critedge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unix_show_fdinfo(ptr noundef %m, ptr nocapture noundef readonly %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %scm_stat = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %scm_stat, i32 noundef 4) #16
  %2 = ptrtoint ptr %scm_stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %scm_stat, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, i32 noundef %3) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_stream_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %err = alloca i32, align 4
  %scm = alloca %struct.scm_cookie, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scm) #16
  %2 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %3 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 1
  %4 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 2
  %5 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 3
  tail call void @wait_for_unix_gc() #16
  %6 = call ptr @memset(ptr %scm, i32 0, i32 24)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %3, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %4, align 4
  %call.i.i = call i32 @security_socket_getpeersec_dgram(ptr noundef %sock, ptr noundef null, ptr noundef %5) #16
  %msg_controllen.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %9 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_controllen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i187 = icmp eq i32 %10, 0
  br i1 %cmp.i187, label %entry.if.end_crit_edge, label %scm_send.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

scm_send.exit:                                    ; preds = %entry
  %call19.i = call i32 @__scm_send(ptr noundef %sock, ptr noundef %msg, ptr noundef nonnull %scm) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp = icmp slt i32 %call19.i, 0
  br i1 %cmp, label %scm_send.exit.cleanup_crit_edge, label %scm_send.exit.if.end_crit_edge

scm_send.exit.if.end_crit_edge:                   ; preds = %scm_send.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

scm_send.exit.cleanup_crit_edge:                  ; preds = %scm_send.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %scm_send.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -95, ptr %err, align 4
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %12 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_flags, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool3.not = icmp eq i32 %len, 0
  br i1 %tobool3.not, label %if.then2.out_err_crit_edge, label %if.then4

if.then2.out_err_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_err

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %dec = add i32 %len, -1
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %len.addr.0 = phi i32 [ %dec, %if.then4 ], [ %len, %if.end.if.end6_crit_edge ]
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.else11, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp9 = icmp eq i8 %17, 1
  %cond = select i1 %cmp9, i32 -106, i32 -95
  %18 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %err, align 4
  br label %out_err

if.else11:                                        ; preds = %if.end6
  %19 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -107, ptr %err, align 4
  %peer = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %peer, align 4
  %tobool13.not = icmp eq ptr %21, null
  br i1 %tobool13.not, label %if.else11.out_err_crit_edge, label %if.end16

if.else11.out_err_crit_edge:                      ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_err

if.end16:                                         ; preds = %if.else11
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %22 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sk_shutdown, align 2
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool19.not = icmp eq i8 %24, 0
  br i1 %tobool19.not, label %while.cond.preheader, label %if.end16.land.lhs.true_crit_edge

if.end16.land.lhs.true_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

while.cond.preheader:                             ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp22215.not = icmp eq i32 %len.addr.0, 0
  br i1 %cmp22215.not, label %while.cond.preheader.while.end_crit_edge, label %get_order.exit.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

get_order.exit.lr.ph:                             ; preds = %while.cond.preheader
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %lock = getelementptr inbounds %struct.unix_sock, ptr %21, i32 0, i32 8
  %25 = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 13
  %sk_shutdown80 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 66
  %scm_stat.i = getelementptr inbounds %struct.unix_sock, ptr %21, i32 0, i32 13
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 8
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 77
  br label %get_order.exit

get_order.exit:                                   ; preds = %scm_stat_add.exit.get_order.exit_crit_edge, %get_order.exit.lr.ph
  %fds_sent.0.off0217 = phi i1 [ true, %get_order.exit.lr.ph ], [ false, %scm_stat_add.exit.get_order.exit_crit_edge ]
  %sent.0216 = phi i32 [ 0, %get_order.exit.lr.ph ], [ %add88, %scm_stat_add.exit.get_order.exit_crit_edge ]
  %sub = sub i32 %len.addr.0, %sent.0216
  %26 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sk_sndbuf, align 4
  %shr = ashr i32 %27, 1
  %sub24 = add nsw i32 %shr, -64
  %28 = call i32 @llvm.smin.i32(i32 %sub, i32 %sub24)
  %29 = call i32 @llvm.smin.i32(i32 %28, i32 36608)
  %sub36 = add i32 %29, -3840
  %30 = call i32 @llvm.smax.i32(i32 %sub36, i32 0)
  %add44 = add nuw i32 %30, 4095
  %and45 = and i32 %add44, -4096
  %31 = call i32 @llvm.umin.i32(i32 %29, i32 %and45)
  %sub53 = sub i32 %29, %31
  %32 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_flags, align 4
  %and55 = and i32 %33, 64
  %call59 = call ptr @sock_alloc_send_pskb(ptr noundef %1, i32 noundef %sub53, i32 noundef %31, i32 noundef %and55, ptr noundef nonnull %err, i32 noundef 3) #16
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %get_order.exit.out_err_crit_edge, label %if.end62

get_order.exit.out_err_crit_edge:                 ; preds = %get_order.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_err

if.end62:                                         ; preds = %get_order.exit
  %34 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %scm, align 4
  %tobool.not.i.i189 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i189, label %if.end62.get_pid.exit.i_crit_edge, label %if.then.i.i

if.end62.get_pid.exit.i_crit_edge:                ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit.i

if.then.i.i:                                      ; preds = %if.end62
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %35, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull %35, i32 1, i32 3, i32 1) #16
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %35, ptr nonnull %35, i32 1, ptr nonnull elementtype(i32) %35) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !134

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %37 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i.i.i = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_pid.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %35, i32 noundef %.sink.i.i.i.i.i) #16
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, %if.end62.get_pid.exit.i_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call59, i32 0, i32 3
  %38 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %cb.i, align 8
  %uid.i190 = getelementptr inbounds %struct.sk_buff, ptr %call59, i32 0, i32 3, i32 4
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %3, align 4
  %41 = ptrtoint ptr %uid.i190 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %uid.i190, align 4
  %gid.i191 = getelementptr inbounds %struct.sk_buff, ptr %call59, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %4, align 4
  %44 = ptrtoint ptr %gid.i191 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %gid.i191, align 8
  %fp.i = getelementptr inbounds %struct.sk_buff, ptr %call59, i32 0, i32 3, i32 12
  %45 = ptrtoint ptr %fp.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %fp.i, align 4
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %5, align 4
  %secid1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call59, i32 0, i32 3, i32 16
  %48 = ptrtoint ptr %secid1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %secid1.i.i, align 8
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %2, align 4
  %tobool.not.i = icmp ne ptr %50, null
  %51 = and i1 %fds_sent.0.off0217, %tobool.not.i
  br i1 %51, label %unix_scm_to_skb.exit, label %unix_scm_to_skb.exit.thread

unix_scm_to_skb.exit.thread:                      ; preds = %get_pid.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %destructor.i202 = getelementptr inbounds %struct.sk_buff, ptr %call59, i32 0, i32 4, i32 0, i32 1
  %52 = ptrtoint ptr %destructor.i202 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @unix_destruct_scm, ptr %destructor.i202, align 4
  %53 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %err, align 4
  br label %if.end68

unix_scm_to_skb.exit:                             ; preds = %get_pid.exit.i
  %call10.i = call i32 @unix_attach_fds(ptr noundef nonnull %scm, ptr noundef nonnull %call59) #16
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call59, i32 0, i32 4, i32 0, i32 1
  %54 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @unix_destruct_scm, ptr %destructor.i, align 4
  %55 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call10.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp65 = icmp slt i32 %call10.i, 0
  br i1 %cmp65, label %if.then67, label %unix_scm_to_skb.exit.if.end68_crit_edge

unix_scm_to_skb.exit.if.end68_crit_edge:          ; preds = %unix_scm_to_skb.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68

if.then67:                                        ; preds = %unix_scm_to_skb.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call59, i32 noundef 0) #16
  br label %out_err

if.end68:                                         ; preds = %unix_scm_to_skb.exit.if.end68_crit_edge, %unix_scm_to_skb.exit.thread
  %call70 = call ptr @skb_put(ptr noundef nonnull %call59, i32 noundef %sub53) #16
  %data_len71 = getelementptr inbounds %struct.sk_buff, ptr %call59, i32 0, i32 7
  %56 = ptrtoint ptr %data_len71 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %31, ptr %data_len71, align 8
  %len72 = getelementptr inbounds %struct.sk_buff, ptr %call59, i32 0, i32 6
  %57 = ptrtoint ptr %len72 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %29, ptr %len72, align 4
  %call73 = call i32 @skb_copy_datagram_from_iter(ptr noundef nonnull %call59, i32 noundef 0, ptr noundef %msg_iter, i32 noundef %29) #16
  %58 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call73, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.then75

if.then75:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call59, i32 noundef 0) #16
  br label %out_err

if.end76:                                         ; preds = %if.end68
  call void @_raw_spin_lock(ptr noundef %lock) #16
  %59 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %25, align 4
  %61 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i.not = icmp eq i32 %61, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end76.pipe_err_crit_edge

if.end76.pipe_err_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %pipe_err

lor.lhs.false:                                    ; preds = %if.end76
  %62 = ptrtoint ptr %sk_shutdown80 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %sk_shutdown80, align 2
  %64 = and i8 %63, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool83.not = icmp eq i8 %64, 0
  br i1 %tobool83.not, label %if.end85, label %lor.lhs.false.pipe_err_crit_edge

lor.lhs.false.pipe_err_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %pipe_err

if.end85:                                         ; preds = %lor.lhs.false
  call fastcc void @maybe_add_creds(ptr noundef nonnull %call59, ptr noundef %sock, ptr noundef nonnull %21)
  %65 = ptrtoint ptr %fp.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fp.i, align 4
  %tobool.not.i194 = icmp eq ptr %66, null
  br i1 %tobool.not.i194, label %if.end85.scm_stat_add.exit_crit_edge, label %land.rhs.i

if.end85.scm_stat_add.exit_crit_edge:             ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %scm_stat_add.exit

land.rhs.i:                                       ; preds = %if.end85
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool2.not.i = icmp eq i16 %68, 0
  br i1 %tobool2.not.i, label %land.rhs.i.scm_stat_add.exit_crit_edge, label %if.then.i195, !prof !135

land.rhs.i.scm_stat_add.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %scm_stat_add.exit

if.then.i195:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv6.i = sext i16 %68 to i32
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scm_stat.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %scm_stat.i, i32 1, i32 3, i32 1) #16
  %69 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scm_stat.i, ptr %scm_stat.i, i32 %conv6.i, ptr elementtype(i32) %scm_stat.i) #16, !srcloc !144
  br label %scm_stat_add.exit

scm_stat_add.exit:                                ; preds = %if.then.i195, %land.rhs.i.scm_stat_add.exit_crit_edge, %if.end85.scm_stat_add.exit_crit_edge
  call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef nonnull %call59) #16
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  %70 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sk_data_ready, align 8
  call void %71(ptr noundef nonnull %21) #16
  %add88 = add i32 %29, %sent.0216
  %cmp22 = icmp ugt i32 %len.addr.0, %add88
  br i1 %cmp22, label %scm_stat_add.exit.get_order.exit_crit_edge, label %scm_stat_add.exit.while.end_crit_edge

scm_stat_add.exit.while.end_crit_edge:            ; preds = %scm_stat_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

scm_stat_add.exit.get_order.exit_crit_edge:       ; preds = %scm_stat_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_order.exit

while.end:                                        ; preds = %scm_stat_add.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %sent.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add88, %scm_stat_add.exit.while.end_crit_edge ]
  %72 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %msg_flags, align 4
  %and90 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %while.end.if.end97_crit_edge, label %if.then92

while.end.if.end97_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

if.then92:                                        ; preds = %while.end
  %call93 = call fastcc i32 @queue_oob(ptr noundef %sock, ptr noundef %msg, ptr noundef nonnull %21)
  %74 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call93, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.then92.out_err_crit_edge

if.then92.out_err_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_err

if.end96:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #18
  %inc = add i32 %sent.0.lcssa, 1
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %while.end.if.end97_crit_edge
  %sent.1 = phi i32 [ %inc, %if.end96 ], [ %sent.0.lcssa, %while.end.if.end97_crit_edge ]
  call fastcc void @scm_destroy(ptr noundef nonnull %scm)
  br label %cleanup

pipe_err:                                         ; preds = %lor.lhs.false.pipe_err_crit_edge, %if.end76.pipe_err_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  call void @kfree_skb_reason(ptr noundef nonnull %call59, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sent.0216)
  %cmp100 = icmp eq i32 %sent.0216, 0
  br i1 %cmp100, label %pipe_err.land.lhs.true_crit_edge, label %pipe_err.if.end108_crit_edge

pipe_err.if.end108_crit_edge:                     ; preds = %pipe_err
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end108

pipe_err.land.lhs.true_crit_edge:                 ; preds = %pipe_err
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %pipe_err.land.lhs.true_crit_edge, %if.end16.land.lhs.true_crit_edge
  %75 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_flags, align 4
  %and103 = and i32 %76, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.then105, label %land.lhs.true.if.end108_crit_edge

land.lhs.true.if.end108_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end108

if.then105:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %77 = call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task, align 8
  %call107 = call i32 @send_sig(i32 noundef 13, ptr noundef %80, i32 noundef 0) #16
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %land.lhs.true.if.end108_crit_edge, %pipe_err.if.end108_crit_edge
  %sent.2206 = phi i32 [ 0, %if.then105 ], [ 0, %land.lhs.true.if.end108_crit_edge ], [ %sent.0216, %pipe_err.if.end108_crit_edge ]
  %81 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -32, ptr %err, align 4
  br label %out_err

out_err:                                          ; preds = %if.end108, %if.then92.out_err_crit_edge, %if.then75, %if.then67, %get_order.exit.out_err_crit_edge, %if.else11.out_err_crit_edge, %if.then8, %if.then2.out_err_crit_edge
  %sent.3 = phi i32 [ 0, %if.then8 ], [ %sent.2206, %if.end108 ], [ %sent.0216, %if.then67 ], [ %sent.0216, %if.then75 ], [ %sent.0.lcssa, %if.then92.out_err_crit_edge ], [ 0, %if.else11.out_err_crit_edge ], [ 0, %if.then2.out_err_crit_edge ], [ %sent.0216, %get_order.exit.out_err_crit_edge ]
  %82 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %scm, align 4
  call void @put_pid(ptr noundef %83) #16
  %84 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %scm, align 4
  %85 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %2, align 4
  %tobool.not.i197 = icmp eq ptr %86, null
  br i1 %tobool.not.i197, label %out_err.scm_destroy.exit_crit_edge, label %if.then.i198

out_err.scm_destroy.exit_crit_edge:               ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #18
  br label %scm_destroy.exit

if.then.i198:                                     ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #18
  call void @__scm_destroy(ptr noundef nonnull %scm) #16
  br label %scm_destroy.exit

scm_destroy.exit:                                 ; preds = %if.then.i198, %out_err.scm_destroy.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sent.3)
  %tobool109.not = icmp eq i32 %sent.3, 0
  br i1 %tobool109.not, label %cond.false111, label %scm_destroy.exit.cleanup_crit_edge

scm_destroy.exit.cleanup_crit_edge:               ; preds = %scm_destroy.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.false111:                                    ; preds = %scm_destroy.exit
  call void @__sanitizer_cov_trace_pc() #18
  %87 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false111, %scm_destroy.exit.cleanup_crit_edge, %if.end97, %scm_send.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %sent.1, %if.end97 ], [ %call19.i, %scm_send.exit.cleanup_crit_edge ], [ %88, %cond.false111 ], [ %sent.3, %scm_destroy.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scm) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_stream_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %state = alloca %struct.unix_stream_read_state, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %state) #16
  %0 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 1
  %1 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 2
  %2 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 3
  %3 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 4
  %4 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 5
  %5 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 6
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @unix_stream_read_actor, ptr %state, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sock, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %msg, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %size, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %5, align 4
  %sk4 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %13 = ptrtoint ptr %sk4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk4, align 16
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %skc_prot, align 8
  %cmp.not = icmp eq ptr %16, @unix_stream_proto
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %recvmsg = getelementptr inbounds %struct.proto, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %recvmsg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %recvmsg, align 4
  %and = and i32 %flags, 64
  %and5 = and i32 %flags, -65
  %call = tail call i32 %18(ptr noundef %14, ptr noundef %msg, i32 noundef %size, i32 noundef %and, i32 noundef %and5, ptr noundef null) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = call fastcc i32 @unix_stream_read_generic(ptr noundef nonnull %state, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.end ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %state) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_stream_sendpage(ptr noundef %socket, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %err = alloca i32, align 4
  %scm = alloca %struct.scm_cookie, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scm) #16
  %1 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %2 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 2
  %4 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 3
  %sk1 = getelementptr inbounds %struct.socket, ptr %socket, i32 0, i32 4
  %5 = call ptr @memset(ptr %scm, i32 255, i32 24)
  %6 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk1, align 16
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %peer = getelementptr inbounds %struct.unix_sock, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.not = icmp eq i8 %11, 1
  br i1 %cmp.not, label %if.end14.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end14.preheader:                               ; preds = %lor.lhs.false
  %iolock16 = getelementptr inbounds %struct.unix_sock, ptr %9, i32 0, i32 3
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 66
  %lock29 = getelementptr inbounds %struct.unix_sock, ptr %9, i32 0, i32 8
  %12 = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 13
  %sk_shutdown33 = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 66
  %flags.i.i = getelementptr inbounds %struct.socket, ptr %socket, i32 0, i32 2
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 71
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 8, i32 0, i32 0, i32 1
  %and9 = and i32 %flags, 64
  br label %if.end14

alloc_skb:                                        ; preds = %if.end64.alloc_skb_crit_edge, %if.then54.alloc_skb_crit_edge
  %tail.0 = phi ptr [ %spec.store.select.i, %if.then54.alloc_skb_crit_edge ], [ %skb.0, %if.end64.alloc_skb_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock29) #16
  call void @mutex_unlock(ptr noundef %iolock16) #16
  %call10 = call ptr @sock_alloc_send_pskb(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef %and9, ptr noundef nonnull %err, i32 noundef 0) #16
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %alloc_skb.err91_crit_edge, label %alloc_skb.if.end14_crit_edge

alloc_skb.if.end14_crit_edge:                     ; preds = %alloc_skb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

alloc_skb.err91_crit_edge:                        ; preds = %alloc_skb
  call void @__sanitizer_cov_trace_pc() #18
  br label %err91

if.end14:                                         ; preds = %alloc_skb.if.end14_crit_edge, %if.end14.preheader
  %init_scm.0.off0 = phi i1 [ false, %alloc_skb.if.end14_crit_edge ], [ true, %if.end14.preheader ]
  %newskb.0 = phi ptr [ %call10, %alloc_skb.if.end14_crit_edge ], [ null, %if.end14.preheader ]
  %tail.1 = phi ptr [ %tail.0, %alloc_skb.if.end14_crit_edge ], [ null, %if.end14.preheader ]
  %call17 = call i32 @mutex_lock_interruptible_nested(ptr noundef %iolock16, i32 noundef 0) #16
  %13 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call17, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool21.not = icmp eq i32 %and9, 0
  %cond = select i1 %tobool21.not, i32 -512, i32 -11
  %14 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %err, align 4
  br label %err91

if.end22:                                         ; preds = %if.end14
  %15 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sk_shutdown, align 2
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool25.not = icmp eq i8 %17, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -32, ptr %err, align 4
  br label %err_unlock

if.end27:                                         ; preds = %if.end22
  call void @_raw_spin_lock(ptr noundef %lock29) #16
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %12, align 4
  %21 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %lor.lhs.false32, label %if.end27.if.then37_crit_edge

if.end27.if.then37_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then37

lor.lhs.false32:                                  ; preds = %if.end27
  %22 = ptrtoint ptr %sk_shutdown33 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sk_shutdown33, align 2
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool36.not = icmp eq i8 %24, 0
  br i1 %tobool36.not, label %if.end38, label %lor.lhs.false32.if.then37_crit_edge

lor.lhs.false32.if.then37_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false32.if.then37_crit_edge, %if.end27.if.then37_crit_edge
  %25 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -32, ptr %err, align 4
  br label %err_state_unlock

if.end38:                                         ; preds = %lor.lhs.false32
  br i1 %init_scm.0.off0, label %if.then40, label %if.end38.if.end45_crit_edge

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then40:                                        ; preds = %if.end38
  %26 = call ptr @memset(ptr %scm, i32 0, i32 24)
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %2, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %3, align 4
  %call.i.i.i = call i32 @security_socket_getpeersec_dgram(ptr noundef %socket, ptr noundef null, ptr noundef %4) #16
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags.i.i, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.then40.if.then2.i_crit_edge

if.then40.if.then2.i_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then2.i

lor.lhs.false.i.i:                                ; preds = %if.then40
  %32 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk_socket.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %33, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.then2.i_crit_edge, label %unix_passcred_enabled.exit.i

lor.lhs.false.i.i.if.then2.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then2.i

unix_passcred_enabled.exit.i:                     ; preds = %lor.lhs.false.i.i
  %flags3.i.i = getelementptr inbounds %struct.socket, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags3.i.i, align 4
  %36 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool5.i.not.i = icmp eq i32 %36, 0
  br i1 %tobool5.i.not.i, label %unix_passcred_enabled.exit.i.maybe_init_creds.exit_crit_edge, label %unix_passcred_enabled.exit.i.if.then2.i_crit_edge

unix_passcred_enabled.exit.i.if.then2.i_crit_edge: ; preds = %unix_passcred_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then2.i

unix_passcred_enabled.exit.i.maybe_init_creds.exit_crit_edge: ; preds = %unix_passcred_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %maybe_init_creds.exit

if.then2.i:                                       ; preds = %unix_passcred_enabled.exit.i.if.then2.i_crit_edge, %lor.lhs.false.i.i.if.then2.i_crit_edge, %if.then40.if.then2.i_crit_edge
  %37 = call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 111
  %41 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %42, i32 0, i32 22, i32 1
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i23.i = icmp eq ptr %44, null
  br i1 %tobool.not.i23.i, label %if.then2.i.get_pid.exit.i_crit_edge, label %if.then.i.i

if.then2.i.get_pid.exit.i_crit_edge:              ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit.i

if.then.i.i:                                      ; preds = %if.then2.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %44, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull %44, i32 1, i32 3, i32 1) #16
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %44, ptr nonnull %44, i32 1, ptr nonnull elementtype(i32) %44) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !134

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %46 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %.not.i.i.i.i.i = icmp sgt i32 %46, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_pid.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %44, i32 noundef %.sink.i.i.i.i.i) #16
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, %if.then2.i.get_pid.exit.i_crit_edge
  %47 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %scm, align 4
  %48 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 99
  %50 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cred.i, align 16
  %uid9.i = getelementptr inbounds %struct.cred, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %uid9.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %uid9.i, align 4
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %2, align 4
  %gid11.i = getelementptr inbounds %struct.cred, ptr %51, i32 0, i32 5
  %55 = ptrtoint ptr %gid11.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %gid11.i, align 4
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %3, align 4
  br label %maybe_init_creds.exit

maybe_init_creds.exit:                            ; preds = %get_pid.exit.i, %unix_passcred_enabled.exit.i.maybe_init_creds.exit_crit_edge
  %58 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %err, align 4
  br label %if.end45

if.end45:                                         ; preds = %maybe_init_creds.exit, %if.end38.if.end45_crit_edge
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %60, %sk_receive_queue
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %60
  %tobool47.not = icmp ne ptr %tail.1, null
  %cmp48 = icmp eq ptr %tail.1, %spec.store.select.i
  %or.cond = select i1 %tobool47.not, i1 %cmp48, i1 false
  br i1 %or.cond, label %if.end45.if.end64_crit_edge, label %if.else

if.end45.if.end64_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end64

if.else:                                          ; preds = %if.end45
  %tobool51.not = icmp eq ptr %spec.store.select.i, null
  br i1 %tobool51.not, label %if.else.if.then54_crit_edge, label %lor.lhs.false52

if.else.if.then54_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

lor.lhs.false52:                                  ; preds = %if.else
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3
  %61 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cb.i, align 4
  %63 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %scm, align 4
  %cmp.i171 = icmp eq ptr %62, %64
  br i1 %cmp.i171, label %land.lhs.true.i, label %lor.lhs.false52.if.then54_crit_edge

lor.lhs.false52.if.then54_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

land.lhs.true.i:                                  ; preds = %lor.lhs.false52
  %uid.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 4
  %65 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack17.i = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack17.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %.unpack17.i
  br i1 %cmp.i.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.then54_crit_edge

land.lhs.true.i.if.then54_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %gid.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 8
  %67 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.unpack18.i = load i32, ptr %gid.i, align 4
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.unpack19.i = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack18.i, i32 %.unpack19.i)
  %cmp.i20.i = icmp eq i32 %.unpack18.i, %.unpack19.i
  br i1 %cmp.i20.i, label %unix_skb_scm_eq.exit, label %land.lhs.true4.i.if.then54_crit_edge

land.lhs.true4.i.if.then54_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

unix_skb_scm_eq.exit:                             ; preds = %land.lhs.true4.i
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %4, align 4
  %secid1.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 16
  %71 = ptrtoint ptr %secid1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %secid1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp.i21.i = icmp eq i32 %70, %72
  br i1 %cmp.i21.i, label %if.else59, label %unix_skb_scm_eq.exit.if.then54_crit_edge

unix_skb_scm_eq.exit.if.then54_crit_edge:         ; preds = %unix_skb_scm_eq.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

if.then54:                                        ; preds = %unix_skb_scm_eq.exit.if.then54_crit_edge, %land.lhs.true4.i.if.then54_crit_edge, %land.lhs.true.i.if.then54_crit_edge, %lor.lhs.false52.if.then54_crit_edge, %if.else.if.then54_crit_edge
  %tobool55.not = icmp eq ptr %newskb.0, null
  br i1 %tobool55.not, label %if.then54.alloc_skb_crit_edge, label %if.then54.if.end64_crit_edge

if.then54.if.end64_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end64

if.then54.alloc_skb_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #18
  br label %alloc_skb

if.else59:                                        ; preds = %unix_skb_scm_eq.exit
  %tobool60.not = icmp eq ptr %newskb.0, null
  br i1 %tobool60.not, label %if.else59.if.end64_crit_edge, label %if.then61

if.else59.if.end64_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end64

if.then61:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #18
  call void @consume_skb(ptr noundef nonnull %newskb.0) #16
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.else59.if.end64_crit_edge, %if.then54.if.end64_crit_edge, %if.end45.if.end64_crit_edge
  %skb.0 = phi ptr [ %60, %if.then61 ], [ %60, %if.else59.if.end64_crit_edge ], [ %newskb.0, %if.end45.if.end64_crit_edge ], [ %newskb.0, %if.then54.if.end64_crit_edge ]
  %newskb.1 = phi ptr [ null, %if.then61 ], [ null, %if.else59.if.end64_crit_edge ], [ %newskb.0, %if.end45.if.end64_crit_edge ], [ %newskb.0, %if.then54.if.end64_crit_edge ]
  %call65 = call i32 @skb_append_pagefrags(ptr noundef %skb.0, ptr noundef %page, i32 noundef %offset, i32 noundef %size) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.alloc_skb_crit_edge

if.end64.alloc_skb_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  br label %alloc_skb

if.end68:                                         ; preds = %if.end64
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %73 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len, align 4
  %add = add i32 %74, %size
  store i32 %add, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 7
  %75 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %data_len, align 8
  %add69 = add i32 %76, %size
  store i32 %add69, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 20
  %77 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %truesize, align 8
  %add70 = add i32 %78, %size
  store i32 %add70, ptr %truesize, align 8
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 23
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %sk_wmem_alloc, i32 1, i32 3, i32 1) #16
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc, ptr %sk_wmem_alloc, i32 %size, ptr elementtype(i32) %sk_wmem_alloc) #16, !srcloc !133
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i172 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i172, label %if.end68.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !134

if.end68.if.end15.sink.split.i.i_crit_edge:       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end68
  %add.i.i = add i32 %asmresult.i.i.i.i, %size
  %80 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %.not.i.i = icmp sgt i32 %80, -1
  br i1 %.not.i.i, label %if.else.i.i.refcount_add.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !135

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i

if.else.i.i.refcount_add.exit_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %refcount_add.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %if.end68.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %if.end68.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc, i32 noundef %.sink.i.i) #16
  br label %refcount_add.exit

refcount_add.exit:                                ; preds = %if.end15.sink.split.i.i, %if.else.i.i.refcount_add.exit_crit_edge
  %tobool71.not = icmp eq ptr %newskb.1, null
  br i1 %tobool71.not, label %refcount_add.exit.if.end82_crit_edge, label %if.then72

refcount_add.exit.if.end82_crit_edge:             ; preds = %refcount_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

if.then72:                                        ; preds = %refcount_add.exit
  %call73 = call fastcc i32 @unix_scm_to_skb(ptr noundef nonnull %scm, ptr noundef %skb.0, i1 noundef zeroext false)
  %81 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call73, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.then72.err_state_unlock_crit_edge

if.then72.err_state_unlock_crit_edge:             ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_state_unlock

if.end76:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #18
  %lock78 = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 8, i32 2
  call void @_raw_spin_lock(ptr noundef %lock78) #16
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i, align 4
  %84 = ptrtoint ptr %newskb.1 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %sk_receive_queue, ptr %newskb.1, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %newskb.1, i32 0, i32 1
  %85 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %83, ptr %prev10.i.i.i, align 4
  store volatile ptr %newskb.1, ptr %prev.i, align 4
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %newskb.1, ptr %83, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 8, i32 1
  %87 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %88, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock78) #16
  br label %if.end82

if.end82:                                         ; preds = %if.end76, %refcount_add.exit.if.end82_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock29) #16
  call void @mutex_unlock(ptr noundef %iolock16) #16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 77
  %89 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sk_data_ready, align 8
  call void %90(ptr noundef nonnull %9) #16
  call fastcc void @scm_destroy(ptr noundef nonnull %scm)
  br label %cleanup

err_state_unlock:                                 ; preds = %if.then72.err_state_unlock_crit_edge, %if.then37
  %send_sigpipe.0 = phi i1 [ true, %if.then37 ], [ false, %if.then72.err_state_unlock_crit_edge ]
  %init_scm.2.off0 = phi i1 [ %init_scm.0.off0, %if.then37 ], [ false, %if.then72.err_state_unlock_crit_edge ]
  %newskb.2 = phi ptr [ %newskb.0, %if.then37 ], [ %newskb.1, %if.then72.err_state_unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock29) #16
  br label %err_unlock

err_unlock:                                       ; preds = %err_state_unlock, %if.then26
  %send_sigpipe.1 = phi i1 [ true, %if.then26 ], [ %send_sigpipe.0, %err_state_unlock ]
  %init_scm.3.off0 = phi i1 [ %init_scm.0.off0, %if.then26 ], [ %init_scm.2.off0, %err_state_unlock ]
  %newskb.3 = phi ptr [ %newskb.0, %if.then26 ], [ %newskb.2, %err_state_unlock ]
  call void @mutex_unlock(ptr noundef %iolock16) #16
  br label %err91

err91:                                            ; preds = %err_unlock, %if.then19, %alloc_skb.err91_crit_edge
  %send_sigpipe.2.off0 = phi i1 [ false, %if.then19 ], [ %send_sigpipe.1, %err_unlock ], [ false, %alloc_skb.err91_crit_edge ]
  %init_scm.4.off0 = phi i1 [ %init_scm.0.off0, %if.then19 ], [ %init_scm.3.off0, %err_unlock ], [ false, %alloc_skb.err91_crit_edge ]
  %newskb.4 = phi ptr [ %newskb.0, %if.then19 ], [ %newskb.3, %err_unlock ], [ null, %alloc_skb.err91_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %newskb.4, i32 noundef 0) #16
  %and95 = and i32 %flags, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  %or.cond170 = and i1 %tobool96.not, %send_sigpipe.2.off0
  br i1 %or.cond170, label %if.then97, label %err91.if.end100_crit_edge

err91.if.end100_crit_edge:                        ; preds = %err91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end100

if.then97:                                        ; preds = %err91
  call void @__sanitizer_cov_trace_pc() #18
  %91 = call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task, align 8
  %call99 = call i32 @send_sig(i32 noundef 13, ptr noundef %94, i32 noundef 0) #16
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %err91.if.end100_crit_edge
  br i1 %init_scm.4.off0, label %if.end100.if.end103_crit_edge, label %if.then102

if.end100.if.end103_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

if.then102:                                       ; preds = %if.end100
  %95 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %scm, align 4
  call void @put_pid(ptr noundef %96) #16
  %97 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %scm, align 4
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %99, null
  br i1 %tobool.not.i, label %if.then102.if.end103_crit_edge, label %if.then.i

if.then102.if.end103_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

if.then.i:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #18
  call void @__scm_destroy(ptr noundef nonnull %scm) #16
  br label %if.end103

if.end103:                                        ; preds = %if.then.i, %if.then102.if.end103_crit_edge, %if.end100.if.end103_crit_edge
  %100 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.end82, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %101, %if.end103 ], [ %size, %if.end82 ], [ -95, %entry.cleanup_crit_edge ], [ -107, %lor.lhs.false.cleanup_crit_edge ], [ -107, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scm) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_stream_splice_read(ptr noundef %sock, ptr nocapture noundef readonly %ppos, ptr noundef %pipe, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %state = alloca %struct.unix_stream_read_state, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %state) #16
  %0 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 1
  %1 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 2
  %2 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 3
  %3 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 4
  %4 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 5
  %5 = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 6
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @unix_stream_splice_actor, ptr %state, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sock, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pipe, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %size, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %flags, ptr %5, align 4
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not = icmp eq i64 %14, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !135

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %file = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 3
  %15 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %file, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_flags, align 4
  %and = and i32 %18, 2048
  %and7 = and i32 %flags, 2
  %19 = or i32 %and, %and7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 64, ptr %4, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %call = call fastcc i32 @unix_stream_read_generic(ptr noundef nonnull %state, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end11 ], [ -29, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %state) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_set_peek_off(ptr noundef %sk, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %iolock = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 3
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %iolock, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sk_peek_off = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %sk_peek_off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %sk_peek_off, align 8
  tail call void @mutex_unlock(ptr noundef %iolock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_stream_read_sock(ptr noundef %sk, ptr noundef %desc, ptr nocapture noundef readonly %recv_actor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !135

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @unix_read_sock(ptr noundef %sk, ptr noundef %desc, ptr noundef %recv_actor)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -107, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unix_release_sock(ptr noundef %sk, i32 noundef %embrion) unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #16
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %arrayidx.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %3
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i) #16
  tail call fastcc void @__unix_remove_socket(ptr noundef %sk) #16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %arrayidx2.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %5
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx2.i) #16
  %lock = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #16
  %6 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %or.i.i.i = or i32 %8, 1
  store i32 %or.i.i.i, ptr %6, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %9 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %sk_socket.i.i, align 8
  %10 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %10, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #16
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %12 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %sk_shutdown, align 2
  %path2 = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 2
  %13 = ptrtoint ptr %path2 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %path2, align 4
  %15 = ptrtoint ptr %path to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %path, align 8
  %dentry = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dentry, align 4
  store ptr null, ptr %path2, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %skc_state, align 2
  store volatile i8 7, ptr %skc_state, align 2
  %peer = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 5
  %19 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %peer, align 4
  store ptr null, ptr %peer, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %peer_wq = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %peer_wq, i32 noundef 1, i32 noundef 0, ptr noundef null) #16
  %cmp.not = icmp eq ptr %20, null
  br i1 %cmp.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then:                                          ; preds = %entry
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %21 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sk_type, align 2
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %22, label %if.then.if.end30_crit_edge [
    i16 1, label %if.then.if.then20_crit_edge
    i16 5, label %if.then.if.then20_crit_edge91
  ]

if.then.if.then20_crit_edge91:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then20

if.then.if.then20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then20

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then20:                                        ; preds = %if.then.if.then20_crit_edge, %if.then.if.then20_crit_edge91
  %lock22 = getelementptr inbounds %struct.unix_sock, ptr %20, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock22) #16
  %sk_shutdown23 = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 66
  %24 = ptrtoint ptr %sk_shutdown23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %sk_shutdown23, align 2
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %25 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %26, %sk_receive_queue
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %embrion)
  %tobool26.not = icmp eq i32 %embrion, 0
  %or.cond = and i1 %tobool26.not, %cmp.i
  br i1 %or.cond, label %if.then20.if.end_crit_edge, label %if.then27

if.then20.if.end_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then27:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #18
  %sk_err = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 51
  %27 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 104, ptr %sk_err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then27, %if.then20.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock22) #16
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 76
  %28 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk_state_change, align 4
  tail call void %29(ptr noundef nonnull %20) #16
  tail call fastcc void @sk_wake_async(ptr noundef nonnull %20, i32 noundef 1, i32 noundef 6)
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then.if.end30_crit_edge
  %peer_wq.i = getelementptr inbounds %struct.unix_sock, ptr %20, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %peer_wq.i) #16
  %private.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 1
  %30 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private.i, align 4
  %cmp.i77 = icmp eq ptr %31, %20
  br i1 %cmp.i77, label %if.then.i, label %if.end30.unix_dgram_peer_wake_disconnect.exit_crit_edge

if.end30.unix_dgram_peer_wake_disconnect.exit_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_dgram_peer_wake_disconnect.exit

if.then.i:                                        ; preds = %if.end30
  %entry1.i.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.i.i) #16
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.__remove_wait_queue.exit.i_crit_edge

if.then.i.__remove_wait_queue.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__remove_wait_queue.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 3, i32 1
  %32 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i.i, align 4
  %34 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %entry1.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %__remove_wait_queue.exit.i

__remove_wait_queue.exit.i:                       ; preds = %if.end.i.i.i.i, %if.then.i.__remove_wait_queue.exit.i_crit_edge
  %38 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 3, i32 1
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %private.i, align 4
  br label %unix_dgram_peer_wake_disconnect.exit

unix_dgram_peer_wake_disconnect.exit:             ; preds = %__remove_wait_queue.exit.i, %if.end30.unix_dgram_peer_wake_disconnect.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %peer_wq.i) #16
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #16
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i78, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %unix_dgram_peer_wake_disconnect.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end31_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.if.end31_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #16
  br label %if.end31

if.then.i78:                                      ; preds = %unix_dgram_peer_wake_disconnect.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @sk_free(ptr noundef nonnull %20) #16
  br label %if.end31

if.end31:                                         ; preds = %if.then.i78, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end31_crit_edge, %entry.if.end31_crit_edge
  %sk_receive_queue32 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %call3388 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue32) #16
  %cmp34.not89 = icmp eq ptr %call3388, null
  br i1 %cmp34.not89, label %if.end31.while.end_crit_edge, label %while.body.lr.ph

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %18)
  %cmp36 = icmp eq i8 %18, 10
  br label %while.body

while.body:                                       ; preds = %if.end39.while.body_crit_edge, %while.body.lr.ph
  %call3390 = phi ptr [ %call3388, %while.body.lr.ph ], [ %call33, %if.end39.while.body_crit_edge ]
  br i1 %cmp36, label %if.then38, label %while.body.if.end39_crit_edge

while.body.if.end39_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then38:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %42 = getelementptr inbounds %struct.sk_buff, ptr %call3390, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  tail call fastcc void @unix_release_sock(ptr noundef %44, i32 noundef 1)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %while.body.if.end39_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %call3390, i32 0, i32 6
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %consumed = getelementptr inbounds %struct.sk_buff, ptr %call3390, i32 0, i32 3, i32 20
  %47 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %consumed, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call3390, i32 noundef 0) #16
  %call33 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue32) #16
  %cmp34.not = icmp eq ptr %call33, null
  br i1 %cmp34.not, label %if.end39.while.end_crit_edge, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end39.while.end_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end39.while.end_crit_edge, %if.end31.while.end_crit_edge
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %0, align 4
  %tobool41.not = icmp eq ptr %49, null
  br i1 %tobool41.not, label %while.end.if.end43_crit_edge, label %if.then42

while.end.if.end43_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then42:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @path_put(ptr noundef nonnull %path) #16
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %while.end.if.end43_crit_edge
  %skc_refcnt.i79 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i80 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i79, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i79, i32 1, i32 3, i32 1) #16
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i79, ptr %skc_refcnt.i79, i32 1, ptr elementtype(i32) %skc_refcnt.i79) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i81 = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i81)
  %cmp.i.i.i.i82 = icmp eq i32 %asmresult.i.i.i.i.i.i.i81, 1
  br i1 %cmp.i.i.i.i82, label %if.then.i86, label %if.end5.i.i.i.i84

if.end5.i.i.i.i84:                                ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i81)
  %.not.i.i.i.i83 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i81, 0
  br i1 %.not.i.i.i.i83, label %if.end5.i.i.i.i84.sock_put.exit87_crit_edge, label %if.then10.i.i.i.i85, !prof !135

if.end5.i.i.i.i84.sock_put.exit87_crit_edge:      ; preds = %if.end5.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_put.exit87

if.then10.i.i.i.i85:                              ; preds = %if.end5.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i79, i32 noundef 3) #16
  br label %sock_put.exit87

if.then.i86:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  call void @sk_free(ptr noundef %sk) #16
  br label %sock_put.exit87

sock_put.exit87:                                  ; preds = %if.then.i86, %if.then10.i.i.i.i85, %if.end5.i.i.i.i84.sock_put.exit87_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @unix_tot_inflight to i32))
  %51 = load i32, ptr @unix_tot_inflight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool44.not = icmp eq i32 %51, 0
  br i1 %tobool44.not, label %sock_put.exit87.if.end46_crit_edge, label %if.then45

sock_put.exit87.if.end46_crit_edge:               ; preds = %sock_put.exit87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

if.then45:                                        ; preds = %sock_put.exit87
  call void @__sanitizer_cov_trace_pc() #18
  call void @unix_gc() #16
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %sock_put.exit87.if.end46_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef %how, i32 noundef %band) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then:                                          ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !165
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %8 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true5

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @sk_wake_async.__warned, align 1
  br i1 %.b14, label %land.lhs.true5.do.end9_crit_edge, label %if.then7

land.lhs.true5.do.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @sk_wake_async.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 2444, ptr noundef nonnull @.str.11) #16
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %land.lhs.true5.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %call11 = tail call i32 @sock_wake_async(ptr noundef %10, i32 noundef %how, i32 noundef %band) #16
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i15, label %do.end9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

do.end9.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %do.end9
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %do.end9.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !166
  %11 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i.i.i.i22 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %if.end12

if.end12:                                         ; preds = %rcu_read_unlock.exit, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !135

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @sk_free(ptr noundef %sk) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unix_gc() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__unix_remove_socket(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.not.i, label %entry.sk_del_node_init.exit_crit_edge, label %if.then.i.i

entry.sk_del_node_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sk_del_node_init.exit

if.then.i.i:                                      ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %1, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %1, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %7 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #16
  %8 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !134

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 729, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.sk_del_node_init.exit_crit_edge, !prof !134

if.end.i.sk_del_node_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sk_del_node_init.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #16
  br label %sk_del_node_init.exit

sk_del_node_init.exit:                            ; preds = %if.then3.i.i.i.i, %if.end.i.sk_del_node_init.exit_crit_edge, %entry.sk_del_node_init.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_wake_async(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unix_autobind(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %bindlock = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 4
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bindlock, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr2 = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 1
  %3 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr2, align 64
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 26) #24
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end9:                                          ; preds = %if.end5
  %len = getelementptr inbounds %struct.unix_address, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %len, align 4
  %name = getelementptr inbounds %struct.unix_address, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %name, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #16
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %call7.i.i, align 8
  %call10 = tail call i32 @prandom_u32() #16
  %and = and i32 %call10, 1048575
  %add.ptr = getelementptr %struct.sockaddr_un, ptr %name, i32 0, i32 1, i32 1
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %arrayidx.i67 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %2
  br label %retry

retry:                                            ; preds = %if.then26.retry_crit_edge, %if.end9
  %ordernum.0 = phi i32 [ %call10, %if.end9 ], [ %and11, %if.then26.retry_crit_edge ]
  %add = add i32 %ordernum.0, 1
  %and11 = and i32 %add, 1048575
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.15, i32 noundef %and11)
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %11 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sk_type, align 2
  %conv = zext i16 %12 to i32
  %call.i = tail call i32 @csum_partial(ptr noundef %name, i32 noundef %10, i32 noundef 0) #16
  %13 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #23, !srcloc !152
  %neg.i.i = xor i32 %13, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %shr.i = lshr i32 %neg.i.i, 24
  %xor.i = xor i32 %shr.i.i, %conv
  %xor.masked.i = and i32 %xor.i, 255
  %and.i = xor i32 %xor.masked.i, %shr.i
  %14 = tail call i32 @llvm.umax.i32(i32 %2, i32 %and.i) #16
  %15 = tail call i32 @llvm.umin.i32(i32 %2, i32 %and.i) #16
  %arrayidx.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %15
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i) #16
  %arrayidx2.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %14
  tail call void @_raw_spin_lock_nested(ptr noundef %arrayidx2.i, i32 noundef 1) #16
  %16 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skc_net.i, align 4
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %arrayidx.i66 = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %and.i
  %20 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i66, align 4
  %tobool.not.i = icmp eq ptr %21, null
  %add.ptr.i = getelementptr i8, ptr %21, i32 -84
  %tobool2.not3842.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not38.i = or i1 %tobool.not.i, %tobool2.not3842.i
  br i1 %tobool2.not38.i, label %retry.if.end31_crit_edge, label %retry.for.body.i_crit_edge

retry.for.body.i_crit_edge:                       ; preds = %retry
  br label %for.body.i

retry.if.end31_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %retry.for.body.i_crit_edge
  %s.039.i = phi ptr [ %add.ptr18.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %retry.for.body.i_crit_edge ]
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %s.039.i, i32 0, i32 9
  %22 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, %17
  br i1 %cmp.i.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %addr.i = getelementptr inbounds %struct.unix_sock, ptr %s.039.i, i32 0, i32 1
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %addr.i, align 64
  %len6.i = getelementptr inbounds %struct.unix_address, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %19)
  %cmp.i = icmp eq i32 %27, %19
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %name.i = getelementptr inbounds %struct.unix_address, ptr %25, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr %name.i, ptr %name, i32 %19) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool9.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool9.not.i, label %if.then26, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %28 = getelementptr inbounds %struct.sock_common, ptr %s.039.i, i32 0, i32 15
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool14.not.i = icmp eq ptr %30, null
  %add.ptr18.i = getelementptr i8, ptr %30, i32 -84
  %tobool2.not43.i = icmp eq ptr %add.ptr18.i, null
  %tobool2.not.i = or i1 %tobool14.not.i, %tobool2.not43.i
  br i1 %tobool2.not.i, label %for.inc.i.if.end31_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.end31_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then26:                                        ; preds = %land.lhs.true.i
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i67) #16
  %arrayidx1.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %and.i
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx1.i) #16
  tail call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 1114, i32 noundef 0) #16
  %call.i68 = tail call i32 @__cond_resched() #16
  %cmp = icmp eq i32 %and11, %and
  br i1 %cmp, label %if.then29, label %if.then26.retry_crit_edge

if.then26.retry_crit_edge:                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %retry

if.then29:                                        ; preds = %if.then26
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i.i, i32 1, i32 3, i32 1) #16
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i, ptr nonnull %call7.i.i, i32 1, ptr nonnull elementtype(i32) %call7.i.i) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i, i32 noundef 3) #16
  br label %out

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %out

if.end31:                                         ; preds = %for.inc.i.if.end31_crit_edge, %retry.if.end31_crit_edge
  tail call fastcc void @__unix_set_addr_hash(ptr noundef %sk, ptr noundef nonnull %call7.i.i, i32 noundef %and.i)
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i67) #16
  %arrayidx1.i71 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %and.i
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx1.i71) #16
  br label %out

out:                                              ; preds = %if.end31, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %if.end31 ], [ -12, %if.end5.out_crit_edge ], [ -28, %if.end5.i.i.i.i.out_crit_edge ], [ -28, %if.then10.i.i.i.i ], [ -28, %if.then.i ]
  tail call void @mutex_unlock(ptr noundef %bindlock) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unix_table_double_lock(i32 noundef %hash1, i32 noundef %hash2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %hash1, i32 %hash2)
  %1 = tail call i32 @llvm.umin.i32(i32 %hash1, i32 %hash2)
  %arrayidx = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %1
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #16
  %arrayidx2 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %0
  tail call void @_raw_spin_lock_nested(ptr noundef %arrayidx2, i32 noundef 1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__unix_set_addr_hash(ptr noundef %sk, ptr noundef %addr, i32 noundef %hash) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__unix_remove_socket(ptr noundef %sk)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !167
  %addr9 = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %addr9 to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %addr, ptr %addr9, align 64
  %1 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %hash, ptr %1, align 8
  %pprev.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !135

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 305, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %arrayidx.i = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %6
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !134

if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #16
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %9 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %9, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i.i, label %sock_hold.exit.i.i.__unix_insert_socket.exit_crit_edge, label %do.body12.i.i.i.i

sock_hold.exit.i.i.__unix_insert_socket.exit_crit_edge: ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__unix_insert_socket.exit

do.body12.i.i.i.i:                                ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %9, ptr %pprev.i.i.i.i, align 4
  br label %__unix_insert_socket.exit

__unix_insert_socket.exit:                        ; preds = %do.body12.i.i.i.i, %sock_hold.exit.i.i.__unix_insert_socket.exit_crit_edge
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %9, ptr %arrayidx.i, align 4
  %15 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_path_create(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_path_mknod(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @done_path_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_wmalloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @unix_find_other(ptr noundef readnone %net, ptr noundef %sunaddr, i32 noundef %addr_len, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %path.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sun_path = getelementptr inbounds %struct.sockaddr_un, ptr %sunaddr, i32 0, i32 1
  %0 = ptrtoint ptr %sun_path to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sun_path, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #16
  %2 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 4, !annotation !136
  %3 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !136
  %arrayidx.i.i = getelementptr i8, ptr %sunaddr, i32 %addr_len
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i.i, align 1
  %call.i = call i32 @kern_path(ptr noundef %sun_path, i32 noundef 1, ptr noundef nonnull %path.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.fail.i_crit_edge

if.then.fail.i_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail.i

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %path.i, align 4
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !148
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i.i.i, align 8
  %call2.i.i = call i32 @inode_permission(ptr noundef %9, ptr noundef %13, i32 noundef 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool2.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.path_put.i_crit_edge

if.end.i.path_put.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %path_put.i

if.end4.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 8
  %20 = and i16 %19, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %20)
  %cmp.i = icmp eq i16 %20, -16384
  br i1 %cmp.i, label %if.end8.i, label %if.end4.i.path_put.i_crit_edge

if.end4.i.path_put.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %path_put.i

if.end8.i:                                        ; preds = %if.end4.i
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino.i.i.i, align 8
  %and.i.i.i = and i32 %22, 255
  %arrayidx.i1.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %and.i.i.i
  call void @_raw_spin_lock(ptr noundef %arrayidx.i1.i) #16
  %arrayidx1.i.i = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %and.i.i.i
  %23 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 -84
  %tobool3.not4448.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool3.not44.i.i = or i1 %tobool.not.i.i, %tobool3.not4448.i.i
  br i1 %tobool3.not44.i.i, label %if.end8.i.unix_find_socket_byinode.exit.thread.i_crit_edge, label %if.end8.i.for.body.i.i_crit_edge

if.end8.i.for.body.i.i_crit_edge:                 ; preds = %if.end8.i
  br label %for.body.i.i

if.end8.i.unix_find_socket_byinode.exit.thread.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_find_socket_byinode.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end8.i.for.body.i.i_crit_edge
  %s.045.i.i = phi ptr [ %add.ptr15.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.end8.i.for.body.i.i_crit_edge ]
  %dentry5.i.i = getelementptr inbounds %struct.unix_sock, ptr %s.045.i.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %dentry5.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dentry5.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %26, null
  br i1 %tobool6.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %d_inode.i.i2.i = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %d_inode.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i.i2.i, align 8
  %cmp.i.i = icmp eq ptr %28, %17
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %s.045.i.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #16
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !134

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end12.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end12.i_crit_edge:         ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #16
  br label %if.end12.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %31 = getelementptr inbounds %struct.sock_common, ptr %s.045.i.i, i32 0, i32 15
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool11.not.i.i = icmp eq ptr %33, null
  %add.ptr15.i.i = getelementptr i8, ptr %33, i32 -84
  %tobool3.not50.i.i = icmp eq ptr %add.ptr15.i.i, null
  %tobool3.not.i.i = or i1 %tobool11.not.i.i, %tobool3.not50.i.i
  br i1 %tobool3.not.i.i, label %for.inc.i.i.unix_find_socket_byinode.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.unix_find_socket_byinode.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_find_socket_byinode.exit.thread.i

unix_find_socket_byinode.exit.thread.i:           ; preds = %for.inc.i.i.unix_find_socket_byinode.exit.thread.i_crit_edge, %if.end8.i.unix_find_socket_byinode.exit.thread.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i1.i) #16
  br label %path_put.i

if.end12.i:                                       ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end12.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i1.i) #16
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %s.045.i.i, i32 0, i32 45
  %34 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sk_type.i, align 2
  %conv13.i = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13.i, i32 %type)
  %cmp14.i = icmp eq i32 %conv13.i, %type
  br i1 %cmp14.i, label %if.then16.i, label %sock_put.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @touch_atime(ptr noundef nonnull %path.i) #16
  call void @path_put(ptr noundef nonnull %path.i) #16
  br label %unix_find_bsd.exit

sock_put.i:                                       ; preds = %if.end12.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #16
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i3.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i3.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i3.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i4.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %sock_put.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i3.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i3.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.path_put.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !135

if.end5.i.i.i.i.i.path_put.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %path_put.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef 3) #16
  br label %path_put.i

if.then.i4.i:                                     ; preds = %sock_put.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  call void @sk_free(ptr noundef nonnull %s.045.i.i) #16
  br label %path_put.i

path_put.i:                                       ; preds = %if.then.i4.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.path_put.i_crit_edge, %unix_find_socket_byinode.exit.thread.i, %if.end4.i.path_put.i_crit_edge, %if.end.i.path_put.i_crit_edge
  %err.0.i = phi i32 [ %call2.i.i, %if.end.i.path_put.i_crit_edge ], [ -111, %if.end4.i.path_put.i_crit_edge ], [ -111, %unix_find_socket_byinode.exit.thread.i ], [ -91, %if.end5.i.i.i.i.i.path_put.i_crit_edge ], [ -91, %if.then10.i.i.i.i.i ], [ -91, %if.then.i4.i ]
  call void @path_put(ptr noundef nonnull %path.i) #16
  br label %fail.i

fail.i:                                           ; preds = %path_put.i, %if.then.fail.i_crit_edge
  %err.1.i = phi i32 [ %call.i, %if.then.fail.i_crit_edge ], [ %err.0.i, %path_put.i ]
  %37 = inttoptr i32 %err.1.i to ptr
  br label %unix_find_bsd.exit

unix_find_bsd.exit:                               ; preds = %fail.i, %if.then16.i
  %retval.0.i = phi ptr [ %37, %fail.i ], [ %s.045.i.i, %if.then16.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #16
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i.i = tail call i32 @csum_partial(ptr noundef %sunaddr, i32 noundef %addr_len, i32 noundef 0) #16
  %38 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #23, !srcloc !152
  %neg.i.i.i = xor i32 %38, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %shr.i.i = lshr i32 %neg.i.i.i, 24
  %xor.i.i = xor i32 %shr.i.i.i, %type
  %xor.masked.i.i = and i32 %xor.i.i, 255
  %and.i.i = xor i32 %xor.masked.i.i, %shr.i.i
  %arrayidx.i.i7 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %and.i.i
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i7) #16
  %arrayidx.i.i.i = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %and.i.i
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %40, null
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 -84
  %tobool2.not3842.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not38.i.i.i = or i1 %tobool.not.i.i.i, %tobool2.not3842.i.i.i
  br i1 %tobool2.not38.i.i.i, label %if.else.if.then.i_crit_edge, label %if.else.for.body.i.i.i_crit_edge

if.else.for.body.i.i.i_crit_edge:                 ; preds = %if.else
  br label %for.body.i.i.i

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.else.for.body.i.i.i_crit_edge
  %s.039.i.i.i = phi ptr [ %add.ptr18.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.else.for.body.i.i.i_crit_edge ]
  %skc_net.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %s.039.i.i.i, i32 0, i32 9
  %41 = ptrtoint ptr %skc_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skc_net.i.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %42, %net
  br i1 %cmp.i.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %addr.i.i.i = getelementptr inbounds %struct.unix_sock, ptr %s.039.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %addr.i.i.i, align 64
  %len6.i.i.i = getelementptr inbounds %struct.unix_address, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %len6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len6.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %addr_len)
  %cmp.i.i.i = icmp eq i32 %46, %addr_len
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.i.for.inc.i.i.i_crit_edge

if.end.i.i.i.for.inc.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %name.i.i.i = getelementptr inbounds %struct.unix_address, ptr %44, i32 0, i32 2
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %name.i.i.i, ptr %sunaddr, i32 %addr_len) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.then.i.i12, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %if.end.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %47 = getelementptr inbounds %struct.sock_common, ptr %s.039.i.i.i, i32 0, i32 15
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %tobool14.not.i.i.i = icmp eq ptr %49, null
  %add.ptr18.i.i.i = getelementptr i8, ptr %49, i32 -84
  %tobool2.not43.i.i.i = icmp eq ptr %add.ptr18.i.i.i, null
  %tobool2.not.i.i.i = or i1 %tobool14.not.i.i.i, %tobool2.not43.i.i.i
  br i1 %tobool2.not.i.i.i, label %for.inc.i.i.i.if.then.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.inc.i.i.i.if.then.i_crit_edge:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i.i12:                                    ; preds = %land.lhs.true.i.i.i
  %skc_refcnt.i.i.i8 = getelementptr inbounds %struct.sock_common, ptr %s.039.i.i.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i8, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i8, i32 1, i32 3, i32 1) #16
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i8, ptr %skc_refcnt.i.i.i8, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i8) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i10 = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i10)
  %tobool1.not.i.i.i.i.i.i11 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i10, 0
  br i1 %tobool1.not.i.i.i.i.i.i11, label %if.then.i.i12.if.end15.sink.split.i.i.i.i.i.i17_crit_edge, label %if.else.i.i.i.i.i.i15, !prof !134

if.then.i.i12.if.end15.sink.split.i.i.i.i.i.i17_crit_edge: ; preds = %if.then.i.i12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i17

if.else.i.i.i.i.i.i15:                            ; preds = %if.then.i.i12
  %add.i.i.i.i.i.i13 = add i32 %asmresult.i.i.i.i.i.i.i.i10, 1
  %51 = or i32 %add.i.i.i.i.i.i13, %asmresult.i.i.i.i.i.i.i.i10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %.not.i.i.i.i.i.i14 = icmp sgt i32 %51, -1
  br i1 %.not.i.i.i.i.i.i14, label %if.else.i.i.i.i.i.i15.if.end.i18_crit_edge, label %if.else.i.i.i.i.i.i15.if.end15.sink.split.i.i.i.i.i.i17_crit_edge, !prof !135

if.else.i.i.i.i.i.i15.if.end15.sink.split.i.i.i.i.i.i17_crit_edge: ; preds = %if.else.i.i.i.i.i.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i17

if.else.i.i.i.i.i.i15.if.end.i18_crit_edge:       ; preds = %if.else.i.i.i.i.i.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i18

if.end15.sink.split.i.i.i.i.i.i17:                ; preds = %if.else.i.i.i.i.i.i15.if.end15.sink.split.i.i.i.i.i.i17_crit_edge, %if.then.i.i12.if.end15.sink.split.i.i.i.i.i.i17_crit_edge
  %.sink.i.i.i.i.i.i16 = phi i32 [ 2, %if.then.i.i12.if.end15.sink.split.i.i.i.i.i.i17_crit_edge ], [ 1, %if.else.i.i.i.i.i.i15.if.end15.sink.split.i.i.i.i.i.i17_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i8, i32 noundef %.sink.i.i.i.i.i.i16) #16
  br label %if.end.i18

if.then.i:                                        ; preds = %for.inc.i.i.i.if.then.i_crit_edge, %if.else.if.then.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i7) #16
  br label %if.end

if.end.i18:                                       ; preds = %if.end15.sink.split.i.i.i.i.i.i17, %if.else.i.i.i.i.i.i15.if.end.i18_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i7) #16
  %dentry4.i = getelementptr inbounds %struct.unix_sock, ptr %s.039.i.i.i, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %dentry4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dentry4.i, align 4
  %tobool5.not.i = icmp eq ptr %53, null
  br i1 %tobool5.not.i, label %if.end.i18.if.end_crit_edge, label %if.then6.i

if.end.i18.if.end_crit_edge:                      ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then6.i:                                       ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #18
  %path8.i = getelementptr inbounds %struct.unix_sock, ptr %s.039.i.i.i, i32 0, i32 2
  tail call void @touch_atime(ptr noundef %path8.i) #16
  br label %if.end

if.end:                                           ; preds = %if.then6.i, %if.end.i18.if.end_crit_edge, %if.then.i, %unix_find_bsd.exit
  %sk.0 = phi ptr [ %retval.0.i, %unix_find_bsd.exit ], [ inttoptr (i32 -111 to ptr), %if.then.i ], [ %s.039.i.i.i, %if.then6.i ], [ %s.039.i.i.i, %if.end.i18.if.end_crit_edge ]
  ret ptr %sk.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unix_wait_for_peer(ptr noundef %other, i32 noundef %timeo) unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #16
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %peer_wq = getelementptr inbounds %struct.unix_sock, ptr %other, i32 0, i32 11
  %call6 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %peer_wq, ptr noundef nonnull %wait, i32 noundef 1) #16
  %13 = getelementptr inbounds %struct.sock_common, ptr %other, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %if.end.critedge21

land.lhs.true:                                    ; preds = %entry
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %other, i32 0, i32 66
  %17 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sk_shutdown, align 2
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.critedge

land.rhs:                                         ; preds = %land.lhs.true
  %qlen.i.i = getelementptr inbounds %struct.sock, ptr %other, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %other, i32 0, i32 54
  %22 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i = icmp ugt i32 %21, %23
  %lock = getelementptr inbounds %struct.unix_sock, ptr %other, i32 0, i32 8
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  br i1 %cmp.i, label %if.then, label %land.rhs.if.end_crit_edge

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  %call12 = call i32 @schedule_timeout(i32 noundef %timeo) #16
  br label %if.end

if.end.critedge:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %lock.c = getelementptr inbounds %struct.unix_sock, ptr %other, i32 0, i32 8
  call void @_raw_spin_unlock(ptr noundef %lock.c) #16
  br label %if.end

if.end.critedge21:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %lock.c23 = getelementptr inbounds %struct.unix_sock, ptr %other, i32 0, i32 8
  call void @_raw_spin_unlock(ptr noundef %lock.c23) #16
  br label %if.end

if.end:                                           ; preds = %if.end.critedge21, %if.end.critedge, %if.then, %land.rhs.if.end_crit_edge
  %timeo.addr.0 = phi i32 [ %call12, %if.then ], [ %timeo, %land.rhs.if.end_crit_edge ], [ %timeo, %if.end.critedge ], [ %timeo, %if.end.critedge21 ]
  call void @finish_wait(ptr noundef %peer_wq, ptr noundef nonnull %wait) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #16
  ret i32 %timeo.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_unix_stream_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_peercred(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_peer_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %sk_peer_lock) #16
  %sk_peer_pid = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 60
  %0 = ptrtoint ptr %sk_peer_pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_peer_pid, align 4
  %sk_peer_cred = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 61
  %2 = ptrtoint ptr %sk_peer_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_peer_cred, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %8 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 22, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.get_pid.exit_crit_edge, label %if.then.i

entry.get_pid.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !134

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef %.sink.i.i.i.i) #16
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %entry.get_pid.exit_crit_edge
  %14 = ptrtoint ptr %sk_peer_pid to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %sk_peer_pid, align 4
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 99
  %17 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cred, align 16
  %tobool.not.i14 = icmp eq ptr %18, null
  br i1 %tobool.not.i14, label %get_pid.exit.get_cred.exit_crit_edge, label %do.body.i

get_pid.exit.get_cred.exit_crit_edge:             ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_cred.exit

do.body.i:                                        ; preds = %get_pid.exit
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %18) #16
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !134

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__invalid_creds(ptr noundef nonnull %18, ptr noundef nonnull @.str.16, i32 noundef 253) #16
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %19 = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 28
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %19, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %18, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %18, i32 1, i32 3, i32 1) #16
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %18, ptr nonnull %18, i32 1, ptr nonnull elementtype(i32) %18) #16, !srcloc !144
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %get_pid.exit.get_cred.exit_crit_edge
  %22 = ptrtoint ptr %sk_peer_cred to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %18, ptr %sk_peer_cred, align 8
  tail call void @_raw_spin_unlock(ptr noundef %sk_peer_lock) #16
  tail call void @put_pid(ptr noundef %1) #16
  %tobool.not.i15 = icmp eq ptr %3, null
  br i1 %tobool.not.i15, label %get_cred.exit.put_cred.exit_crit_edge, label %do.body.i17

get_cred.exit.put_cred.exit_crit_edge:            ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_cred.exit

do.body.i17:                                      ; preds = %get_cred.exit
  %call.i.i16 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %3) #16
  br i1 %call.i.i16, label %if.then.i.i18, label %do.body.i17.__validate_creds.exit.i20_crit_edge, !prof !134

do.body.i17.__validate_creds.exit.i20_crit_edge:  ; preds = %do.body.i17
  call void @__sanitizer_cov_trace_pc() #18
  br label %__validate_creds.exit.i20

if.then.i.i18:                                    ; preds = %do.body.i17
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__invalid_creds(ptr noundef nonnull %3, ptr noundef nonnull @.str.16, i32 noundef 286) #16
  br label %__validate_creds.exit.i20

__validate_creds.exit.i20:                        ; preds = %if.then.i.i18, %do.body.i17.__validate_creds.exit.i20_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #16
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #16, !srcloc !169
  %asmresult.i.i.i.i.i.i19 = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i19)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i19, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i20.put_cred.exit_crit_edge

__validate_creds.exit.i20.put_cred.exit_crit_edge: ; preds = %__validate_creds.exit.i20
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i20
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_cred(ptr noundef nonnull %3) #16
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i20.put_cred.exit_crit_edge, %get_cred.exit.put_cred.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_peercred(ptr noundef %sk, ptr noundef %peersk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp ult ptr %sk, %peersk
  %sk.peersk = select i1 %cmp, ptr %sk, ptr %peersk
  %peersk.sk = select i1 %cmp, ptr %peersk, ptr %sk
  %sk_peer_lock2 = getelementptr inbounds %struct.sock, ptr %sk.peersk, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %sk_peer_lock2) #16
  %sk_peer_lock4 = getelementptr inbounds %struct.sock, ptr %peersk.sk, i32 0, i32 58
  tail call void @_raw_spin_lock_nested(ptr noundef %sk_peer_lock4, i32 noundef 1) #16
  %sk_peer_pid = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 60
  %0 = ptrtoint ptr %sk_peer_pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_peer_pid, align 4
  %sk_peer_cred = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 61
  %2 = ptrtoint ptr %sk_peer_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_peer_cred, align 8
  %sk_peer_pid8 = getelementptr inbounds %struct.sock, ptr %peersk, i32 0, i32 60
  %4 = ptrtoint ptr %sk_peer_pid8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_peer_pid8, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.get_pid.exit_crit_edge, label %if.then.i

entry.get_pid.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !134

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef %.sink.i.i.i.i) #16
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %entry.get_pid.exit_crit_edge
  %8 = ptrtoint ptr %sk_peer_pid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %sk_peer_pid, align 4
  %sk_peer_cred11 = getelementptr inbounds %struct.sock, ptr %peersk, i32 0, i32 61
  %9 = ptrtoint ptr %sk_peer_cred11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_peer_cred11, align 8
  %tobool.not.i28 = icmp eq ptr %10, null
  br i1 %tobool.not.i28, label %get_pid.exit.get_cred.exit_crit_edge, label %do.body.i

get_pid.exit.get_cred.exit_crit_edge:             ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_cred.exit

do.body.i:                                        ; preds = %get_pid.exit
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %10) #16
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !134

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__invalid_creds(ptr noundef nonnull %10, ptr noundef nonnull @.str.16, i32 noundef 253) #16
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %11 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 28
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %11, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %10, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %10, i32 1, i32 3, i32 1) #16
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #16, !srcloc !144
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %get_pid.exit.get_cred.exit_crit_edge
  %14 = ptrtoint ptr %sk_peer_cred to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %sk_peer_cred, align 8
  %sk_peer_lock14 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 58
  tail call void @_raw_spin_unlock(ptr noundef %sk_peer_lock14) #16
  %sk_peer_lock15 = getelementptr inbounds %struct.sock, ptr %peersk, i32 0, i32 58
  tail call void @_raw_spin_unlock(ptr noundef %sk_peer_lock15) #16
  tail call void @put_pid(ptr noundef %1) #16
  %tobool.not.i29 = icmp eq ptr %3, null
  br i1 %tobool.not.i29, label %get_cred.exit.put_cred.exit_crit_edge, label %do.body.i31

get_cred.exit.put_cred.exit_crit_edge:            ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_cred.exit

do.body.i31:                                      ; preds = %get_cred.exit
  %call.i.i30 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %3) #16
  br i1 %call.i.i30, label %if.then.i.i32, label %do.body.i31.__validate_creds.exit.i34_crit_edge, !prof !134

do.body.i31.__validate_creds.exit.i34_crit_edge:  ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #18
  br label %__validate_creds.exit.i34

if.then.i.i32:                                    ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__invalid_creds(ptr noundef nonnull %3, ptr noundef nonnull @.str.16, i32 noundef 286) #16
  br label %__validate_creds.exit.i34

__validate_creds.exit.i34:                        ; preds = %if.then.i.i32, %do.body.i31.__validate_creds.exit.i34_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #16
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #16, !srcloc !169
  %asmresult.i.i.i.i.i.i33 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i33)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i33, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i34.put_cred.exit_crit_edge

__validate_creds.exit.i34.put_cred.exit_crit_edge: ; preds = %__validate_creds.exit.i34
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i34
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_cred(ptr noundef nonnull %3) #16
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i34.put_cred.exit_crit_edge, %get_cred.exit.put_cred.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sock_graft(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_unix_gc() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_pskb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unix_scm_to_skb(ptr noundef %scm, ptr noundef %skb, i1 noundef zeroext %send_fds) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scm, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.get_pid.exit_crit_edge, label %if.then.i

entry.get_pid.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !134

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %.sink.i.i.i.i) #16
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %entry.get_pid.exit_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %cb, align 8
  %uid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %uid3 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %uid3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %uid3, align 4
  %7 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %gid6 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %gid6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gid6, align 4
  %10 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %gid, align 8
  %fp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %11 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %fp, align 4
  %secid.i = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 3
  %12 = ptrtoint ptr %secid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %secid.i, align 4
  %secid1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %14 = ptrtoint ptr %secid1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %secid1.i, align 8
  %fp8 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %15 = ptrtoint ptr %fp8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fp8, align 4
  %tobool.not = icmp ne ptr %16, null
  %17 = and i1 %tobool.not, %send_fds
  br i1 %17, label %if.then, label %get_pid.exit.if.end_crit_edge

get_pid.exit.if.end_crit_edge:                    ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = tail call i32 @unix_attach_fds(ptr noundef %scm, ptr noundef %skb) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %get_pid.exit.if.end_crit_edge
  %err.0 = phi i32 [ %call10, %if.then ], [ 0, %get_pid.exit.if.end_crit_edge ]
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @unix_destruct_scm, ptr %destructor, align 4
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_from_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @maybe_add_creds(ptr nocapture noundef %skb, ptr noundef %sock, ptr nocapture noundef readonly %other) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.if.then1_crit_edge

if.end.if.then1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then1

lor.lhs.false.i:                                  ; preds = %if.end
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %other, i32 0, i32 71
  %5 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_socket.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then1_crit_edge, label %unix_passcred_enabled.exit

lor.lhs.false.i.if.then1_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then1

unix_passcred_enabled.exit:                       ; preds = %lor.lhs.false.i
  %flags3.i = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags3.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.i.not = icmp eq i32 %9, 0
  br i1 %tobool5.i.not, label %unix_passcred_enabled.exit.if.end16_crit_edge, label %unix_passcred_enabled.exit.if.then1_crit_edge

unix_passcred_enabled.exit.if.then1_crit_edge:    ; preds = %unix_passcred_enabled.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then1

unix_passcred_enabled.exit.if.end16_crit_edge:    ; preds = %unix_passcred_enabled.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then1:                                         ; preds = %unix_passcred_enabled.exit.if.then1_crit_edge, %lor.lhs.false.i.if.then1_crit_edge, %if.end.if.then1_crit_edge
  %10 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 111
  %14 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %15, i32 0, i32 22, i32 1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i21 = icmp eq ptr %17, null
  br i1 %tobool.not.i21, label %if.then1.get_pid.exit_crit_edge, label %if.then.i

if.then1.get_pid.exit_crit_edge:                  ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit

if.then.i:                                        ; preds = %if.then1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %17, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %17, i32 1, i32 3, i32 1) #16
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %17, ptr nonnull %17, i32 1, ptr nonnull elementtype(i32) %17) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !134

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %17, i32 noundef %.sink.i.i.i.i) #16
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %if.then1.get_pid.exit_crit_edge
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %cb, align 8
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 99
  %23 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cred, align 16
  %uid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %uid11 = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %uid11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uid11, align 4
  %27 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %gid13 = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 5
  %28 = ptrtoint ptr %gid13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gid13, align 4
  %30 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %gid, align 8
  br label %if.end16

if.end16:                                         ; preds = %get_pid.exit, %unix_passcred_enabled.exit.if.end16_crit_edge, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scm_stat_add(ptr noundef %sk, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fp1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %0 = ptrtoint ptr %fp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %land.rhs.if.end_crit_edge, label %if.then, !prof !135

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  %conv6 = sext i16 %3 to i32
  %scm_stat = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %scm_stat, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %scm_stat, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scm_stat, ptr %scm_stat, i32 %conv6, ptr elementtype(i32) %scm_stat) #16, !srcloc !144
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @queue_oob(ptr noundef %sock, ptr noundef %msg, ptr noundef %other) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 16
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %3 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_flags, align 4
  %and = and i32 %4, 64
  %call1 = call ptr @sock_alloc_send_skb(ptr noundef %2, i32 noundef 1, i32 noundef %and, ptr noundef nonnull %err) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @skb_put(ptr noundef nonnull %call1, i32 noundef 1) #16
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call3 = call i32 @skb_copy_datagram_from_iter(ptr noundef nonnull %call1, i32 noundef 0, ptr noundef %msg_iter, i32 noundef 1) #16
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #16
  %8 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %err, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.unix_sock, ptr %other, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %lock) #16
  %10 = getelementptr inbounds %struct.sock_common, ptr %other, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end6.if.then11_crit_edge

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end6
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %other, i32 0, i32 66
  %14 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sk_shutdown, align 2
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  br i1 %tobool10.not, label %if.end14, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #16
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  call fastcc void @maybe_add_creds(ptr noundef nonnull %call1, ptr noundef %sock, ptr noundef %other)
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 21
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #16
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end14.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !134

if.end14.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end14
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end14.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end14.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #16
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %oob_skb = getelementptr inbounds %struct.unix_sock, ptr %other, i32 0, i32 14
  %19 = ptrtoint ptr %oob_skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %oob_skb, align 8
  %tobool16.not = icmp eq ptr %20, null
  br i1 %tobool16.not, label %skb_get.exit.if.end19_crit_edge, label %if.then17

skb_get.exit.if.end19_crit_edge:                  ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then17:                                        ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @consume_skb(ptr noundef nonnull %20) #16
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %skb_get.exit.if.end19_crit_edge
  %21 = ptrtoint ptr %oob_skb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1, ptr %oob_skb, align 8
  %fp1.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3, i32 12
  %22 = ptrtoint ptr %fp1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fp1.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end19.scm_stat_add.exit_crit_edge, label %land.rhs.i

if.end19.scm_stat_add.exit_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %scm_stat_add.exit

land.rhs.i:                                       ; preds = %if.end19
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool2.not.i = icmp eq i16 %25, 0
  br i1 %tobool2.not.i, label %land.rhs.i.scm_stat_add.exit_crit_edge, label %if.then.i, !prof !135

land.rhs.i.scm_stat_add.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %scm_stat_add.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv6.i = sext i16 %25 to i32
  %scm_stat.i = getelementptr inbounds %struct.unix_sock, ptr %other, i32 0, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scm_stat.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %scm_stat.i, i32 1, i32 3, i32 1) #16
  %26 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %scm_stat.i, ptr %scm_stat.i, i32 %conv6.i, ptr elementtype(i32) %scm_stat.i) #16, !srcloc !144
  br label %scm_stat_add.exit

scm_stat_add.exit:                                ; preds = %if.then.i, %land.rhs.i.scm_stat_add.exit_crit_edge, %if.end19.scm_stat_add.exit_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %other, i32 0, i32 8
  call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef nonnull %call1) #16
  call void @sk_send_sigurg(ptr noundef %other) #16
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %other, i32 0, i32 77
  %27 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_data_ready, align 8
  call void %28(ptr noundef %other) #16
  %29 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %scm_stat_add.exit, %if.then11, %if.then5, %if.then
  %retval.0 = phi i32 [ %9, %if.then5 ], [ -32, %if.then11 ], [ %30, %scm_stat_add.exit ], [ %6, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scm_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_socket_getpeersec_dgram(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unix_attach_fds(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unix_destruct_scm(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_send_sigurg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_append_pagefrags(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_stream_splice_actor(ptr noundef %skb, i32 noundef %skip, i32 noundef %chunk, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %socket = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socket, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %consumed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %4 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %consumed, align 4
  %add = add i32 %5, %skip
  %pipe = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe, align 4
  %splice_flags = getelementptr inbounds %struct.unix_stream_read_state, ptr %state, i32 0, i32 6
  %8 = ptrtoint ptr %splice_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %splice_flags, align 4
  %call = tail call i32 @skb_splice_bits(ptr noundef %skb, ptr noundef %3, i32 noundef %add, ptr noundef %7, i32 noundef %chunk, i32 noundef %9) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_splice_bits(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_read_sock(ptr noundef %sk, ptr noundef %desc, ptr nocapture noundef readonly %recv_actor) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %iolock = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !136
  call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #16
  %call148 = call ptr @skb_recv_datagram(ptr noundef %sk, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %err) #16
  call void @mutex_unlock(ptr noundef %iolock) #16
  %tobool.not49 = icmp eq ptr %call148, null
  br i1 %tobool.not49, label %entry.cleanup.thread39_crit_edge, label %if.end.lr.ph

entry.cleanup.thread39_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread39

if.end.lr.ph:                                     ; preds = %entry
  %count = getelementptr inbounds %struct.read_descriptor_t, ptr %desc, i32 0, i32 1
  br label %if.end

cleanup.thread39:                                 ; preds = %cleanup.cleanup.thread39_crit_edge, %entry.cleanup.thread39_crit_edge
  %1 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  br label %cleanup19

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %call151 = phi ptr [ %call148, %if.end.lr.ph ], [ %call1, %cleanup.if.end_crit_edge ]
  %copied.050 = phi i32 [ 0, %if.end.lr.ph ], [ %spec.select33, %cleanup.if.end_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %call151, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %call3 = call i32 %recv_actor(ptr noundef %desc, ptr noundef nonnull %call151, i32 noundef 0, i32 noundef %4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.050)
  %tobool5.not = icmp eq i32 %copied.050, 0
  %spec.select = select i1 %tobool5.not, i32 %call3, i32 %copied.050
  call void @kfree_skb_reason(ptr noundef nonnull %call151, i32 noundef 0) #16
  br label %while.end

if.else:                                          ; preds = %if.end
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %6)
  %cmp9.not = icmp ugt i32 %call3, %6
  %add = select i1 %cmp9.not, i32 0, i32 %call3
  %spec.select33 = add i32 %add, %copied.050
  call void @kfree_skb_reason(ptr noundef nonnull %call151, i32 noundef 0) #16
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %if.else.while.end_crit_edge, label %cleanup

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

cleanup:                                          ; preds = %if.else
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %9 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %err, align 4, !annotation !136
  call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #16
  %call1 = call ptr @skb_recv_datagram(ptr noundef %sk, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %err) #16
  call void @mutex_unlock(ptr noundef %iolock) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cleanup.cleanup.thread39_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

cleanup.cleanup.thread39_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread39

while.end:                                        ; preds = %if.else.while.end_crit_edge, %if.then4
  %copied.3.ph = phi i32 [ %spec.select, %if.then4 ], [ %spec.select33, %if.else.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  br label %cleanup19

cleanup19:                                        ; preds = %while.end, %cleanup.thread39
  %retval.2 = phi i32 [ %copied.3.ph, %while.end ], [ %2, %cleanup.thread39 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_dgram_connect(ptr noundef %sock, ptr noundef %addr, i32 noundef %alen, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %alen)
  %cmp = icmp ult i32 %alen, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp2.not = icmp eq i16 %5, 0
  br i1 %cmp2.not, label %if.end40.thread, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = add i32 %alen, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %6)
  %7 = icmp ult i32 %6, 108
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp2.not.i = icmp eq i16 %5, 1
  %or.cond = select i1 %7, i1 %cmp2.not.i, i1 false
  br i1 %or.cond, label %if.end7, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.then4
  %flags8 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 2
  %8 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags8, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %if.end7.if.end19_crit_edge, label %land.lhs.true

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end7
  %addr12 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %addr12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr12, align 64
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then14:                                        ; preds = %land.lhs.true
  %call15 = tail call fastcc i32 @unix_autobind(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %type, align 4
  %conv20189 = sext i16 %14 to i32
  %call21190 = tail call fastcc ptr @unix_find_other(ptr noundef %3, ptr noundef %addr, i32 noundef %alen, i32 noundef %conv20189)
  %cmp.i191 = icmp ugt ptr %call21190, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %if.end19.if.then23_crit_edge, label %if.end25.lr.ph

if.end19.if.then23_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then23

if.end25.lr.ph:                                   ; preds = %if.end19
  %lock14.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 8
  br label %if.end25

if.then23:                                        ; preds = %sock_put.exit.if.then23_crit_edge, %if.end19.if.then23_crit_edge
  %call21.lcssa = phi ptr [ %call21190, %if.end19.if.then23_crit_edge ], [ %call21, %sock_put.exit.if.then23_crit_edge ]
  %15 = ptrtoint ptr %call21.lcssa to i32
  br label %cleanup

if.end25:                                         ; preds = %sock_put.exit.if.end25_crit_edge, %if.end25.lr.ph
  %call21192 = phi ptr [ %call21190, %if.end25.lr.ph ], [ %call21, %sock_put.exit.if.end25_crit_edge ]
  %cmp.i112 = icmp eq ptr %1, %call21192
  %tobool2.not.i = icmp eq ptr %call21192, null
  %or.cond.i = or i1 %cmp.i112, %tobool2.not.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.i113, !prof !171

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_lock(ptr noundef %lock14.i) #16
  br label %unix_state_double_lock.exit

if.end.i113:                                      ; preds = %if.end25
  %cmp3.i = icmp ult ptr %1, %call21192
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_lock(ptr noundef %lock14.i) #16
  %lock8.i = getelementptr inbounds %struct.unix_sock, ptr %call21192, i32 0, i32 8
  tail call void @_raw_spin_lock_nested(ptr noundef %lock8.i, i32 noundef 1) #16
  br label %unix_state_double_lock.exit

if.else.i:                                        ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #18
  %lock11.i = getelementptr inbounds %struct.unix_sock, ptr %call21192, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock11.i) #16
  tail call void @_raw_spin_lock_nested(ptr noundef %lock14.i, i32 noundef 1) #16
  br label %unix_state_double_lock.exit

unix_state_double_lock.exit:                      ; preds = %if.else.i, %if.then4.i, %if.then.i
  %16 = getelementptr inbounds %struct.sock_common, ptr %call21192, i32 0, i32 13
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not = icmp eq i32 %19, 0
  br i1 %tobool.i.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %unix_state_double_lock.exit
  tail call void @_raw_spin_unlock(ptr noundef %lock14.i) #16
  br i1 %or.cond.i, label %if.then27.unix_state_double_unlock.exit_crit_edge, label %if.end.i119, !prof !171

if.then27.unix_state_double_unlock.exit_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_state_double_unlock.exit

if.end.i119:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  %lock6.i118 = getelementptr inbounds %struct.unix_sock, ptr %call21192, i32 0, i32 8
  tail call void @_raw_spin_unlock(ptr noundef %lock6.i118) #16
  br label %unix_state_double_unlock.exit

unix_state_double_unlock.exit:                    ; preds = %if.end.i119, %if.then27.unix_state_double_unlock.exit_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call21192, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #16
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i120, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %unix_state_double_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #16
  br label %sock_put.exit

if.then.i120:                                     ; preds = %unix_state_double_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @sk_free(ptr noundef %call21192) #16
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i120, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %type, align 4
  %conv20 = sext i16 %22 to i32
  %call21 = tail call fastcc ptr @unix_find_other(ptr noundef %3, ptr noundef %addr, i32 noundef %alen, i32 noundef %conv20)
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sock_put.exit.if.then23_crit_edge, label %sock_put.exit.if.end25_crit_edge

sock_put.exit.if.end25_crit_edge:                 ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

sock_put.exit.if.then23_crit_edge:                ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then23

if.end28:                                         ; preds = %unix_state_double_lock.exit
  %peer.i = getelementptr inbounds %struct.unix_sock, ptr %call21192, i32 0, i32 5
  %23 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %peer.i, align 4
  %cmp.i122 = icmp ne ptr %24, null
  %cmp.i.i = icmp ne ptr %24, %1
  %tobool30.not = and i1 %cmp.i122, %cmp.i.i
  br i1 %tobool30.not, label %if.end28.out_unlock_crit_edge, label %if.end32

if.end28.out_unlock_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end32:                                         ; preds = %if.end28
  %sk_socket = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %25 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sk_socket, align 8
  %sk_socket33 = getelementptr inbounds %struct.sock, ptr %call21192, i32 0, i32 71
  %27 = ptrtoint ptr %sk_socket33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_socket33, align 8
  %call34 = tail call i32 @security_unix_may_send(ptr noundef %26, ptr noundef %28) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end40, label %if.end32.out_unlock_crit_edge

if.end32.out_unlock_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end40:                                         ; preds = %if.end32
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call21192, i32 0, i32 4
  %29 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %29)
  store volatile i8 1, ptr %skc_state, align 2
  %skc_state39 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %skc_state39 to i32
  call void @__asan_store1_noabort(i32 %30)
  store volatile i8 1, ptr %skc_state39, align 2
  %peer = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %peer, align 4
  %tobool42.not = icmp eq ptr %32, null
  br i1 %tobool42.not, label %if.end40.if.else57_crit_edge, label %if.then43

if.end40.if.else57_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else57

if.end40.thread:                                  ; preds = %if.end
  %lock.i124 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock.i124) #16
  %peer174 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %peer174 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %peer174, align 4
  %tobool42.not175 = icmp eq ptr %34, null
  br i1 %tobool42.not175, label %if.end40.thread.if.else57_crit_edge, label %if.then43.thread

if.end40.thread.if.else57_crit_edge:              ; preds = %if.end40.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else57

if.then43.thread:                                 ; preds = %if.end40.thread
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %peer174 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %peer174, align 4
  br label %if.then49

if.then43:                                        ; preds = %if.end40
  %36 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call21192, ptr %peer, align 4
  br i1 %tobool2.not.i, label %if.then43.if.then49_crit_edge, label %if.then43.if.end52_crit_edge

if.then43.if.end52_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.then43.if.then49_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49

if.then49:                                        ; preds = %if.then43.if.then49_crit_edge, %if.then43.thread
  %37 = phi ptr [ %34, %if.then43.thread ], [ %32, %if.then43.if.then49_crit_edge ]
  %skc_state51 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %skc_state51 to i32
  call void @__asan_store1_noabort(i32 %38)
  store volatile i8 7, ptr %skc_state51, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.then43.if.end52_crit_edge
  %tobool48.not185 = phi i1 [ true, %if.then49 ], [ false, %if.then43.if.end52_crit_edge ]
  %other.0176183 = phi ptr [ null, %if.then49 ], [ %call21192, %if.then43.if.end52_crit_edge ]
  %39 = phi ptr [ %37, %if.then49 ], [ %32, %if.then43.if.end52_crit_edge ]
  %peer_wq.i.i = getelementptr inbounds %struct.unix_sock, ptr %39, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %peer_wq.i.i) #16
  %private.i.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 12, i32 1
  %40 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private.i.i, align 4
  %cmp.i.i126 = icmp eq ptr %41, %39
  br i1 %cmp.i.i126, label %if.then.i.i, label %if.end52.unix_dgram_peer_wake_disconnect_wakeup.exit_crit_edge

if.end52.unix_dgram_peer_wake_disconnect_wakeup.exit_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_dgram_peer_wake_disconnect_wakeup.exit

if.then.i.i:                                      ; preds = %if.end52
  %entry1.i.i.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 12, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.i.i.i) #16
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.__remove_wait_queue.exit.i.i_crit_edge

if.then.i.i.__remove_wait_queue.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__remove_wait_queue.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 12, i32 3, i32 1
  %42 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %44 = ptrtoint ptr %entry1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %entry1.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %__remove_wait_queue.exit.i.i

__remove_wait_queue.exit.i.i:                     ; preds = %if.end.i.i.i.i.i, %if.then.i.i.__remove_wait_queue.exit.i.i_crit_edge
  %48 = ptrtoint ptr %entry1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 12, i32 3, i32 1
  %49 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %50 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %private.i.i, align 4
  br label %unix_dgram_peer_wake_disconnect_wakeup.exit

unix_dgram_peer_wake_disconnect_wakeup.exit:      ; preds = %__remove_wait_queue.exit.i.i, %if.end52.unix_dgram_peer_wake_disconnect_wakeup.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %peer_wq.i.i) #16
  %51 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %51, align 8
  tail call void @__wake_up(ptr noundef %53, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 772 to ptr)) #16
  %cmp.i127 = icmp eq ptr %1, %other.0176183
  %or.cond.i129 = or i1 %tobool48.not185, %cmp.i127
  %lock.i130 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i130) #16
  br i1 %or.cond.i129, label %unix_dgram_peer_wake_disconnect_wakeup.exit.unix_state_double_unlock.exit133_crit_edge, label %if.end.i132, !prof !171

unix_dgram_peer_wake_disconnect_wakeup.exit.unix_state_double_unlock.exit133_crit_edge: ; preds = %unix_dgram_peer_wake_disconnect_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_state_double_unlock.exit133

if.end.i132:                                      ; preds = %unix_dgram_peer_wake_disconnect_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #18
  %lock6.i131 = getelementptr inbounds %struct.unix_sock, ptr %other.0176183, i32 0, i32 8
  tail call void @_raw_spin_unlock(ptr noundef %lock6.i131) #16
  br label %unix_state_double_unlock.exit133

unix_state_double_unlock.exit133:                 ; preds = %if.end.i132, %unix_dgram_peer_wake_disconnect_wakeup.exit.unix_state_double_unlock.exit133_crit_edge
  %cmp53.not = icmp eq ptr %other.0176183, %39
  br i1 %cmp53.not, label %unix_state_double_unlock.exit133.if.end56_crit_edge, label %if.then55

unix_state_double_unlock.exit133.if.end56_crit_edge: ; preds = %unix_state_double_unlock.exit133
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.then55:                                        ; preds = %unix_state_double_unlock.exit133
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %55, %sk_receive_queue.i
  br i1 %cmp.i.not.i, label %if.then55.unix_dgram_disconnected.exit_crit_edge, label %if.then.i134

if.then55.unix_dgram_disconnected.exit_crit_edge: ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_dgram_disconnected.exit

if.then.i134:                                     ; preds = %if.then55
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue.i) #16
  %peer_wq.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %peer_wq.i, i32 noundef 1, i32 noundef 0, ptr noundef null) #16
  %56 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 13
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  %59 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i.not.i = icmp eq i32 %59, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i, label %if.then.i134.unix_dgram_disconnected.exit_crit_edge

if.then.i134.unix_dgram_disconnected.exit_crit_edge: ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_dgram_disconnected.exit

land.lhs.true.i:                                  ; preds = %if.then.i134
  %peer.i135 = getelementptr inbounds %struct.unix_sock, ptr %39, i32 0, i32 5
  %60 = ptrtoint ptr %peer.i135 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %peer.i135, align 4
  %cmp.i136 = icmp eq ptr %61, %1
  br i1 %cmp.i136, label %if.then5.i, label %land.lhs.true.i.unix_dgram_disconnected.exit_crit_edge

land.lhs.true.i.unix_dgram_disconnected.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_dgram_disconnected.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %39, i32 0, i32 51
  %62 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 104, ptr %sk_err.i, align 4
  tail call void @sk_error_report(ptr noundef nonnull %39) #16
  br label %unix_dgram_disconnected.exit

unix_dgram_disconnected.exit:                     ; preds = %if.then5.i, %land.lhs.true.i.unix_dgram_disconnected.exit_crit_edge, %if.then.i134.unix_dgram_disconnected.exit_crit_edge, %if.then55.unix_dgram_disconnected.exit_crit_edge
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 4
  %63 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store volatile i8 7, ptr %skc_state.i, align 2
  br label %if.end56

if.end56:                                         ; preds = %unix_dgram_disconnected.exit, %unix_state_double_unlock.exit133.if.end56_crit_edge
  %skc_refcnt.i137 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 19
  %call.i.i.i.i.i.i138 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i137, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i137, i32 1, i32 3, i32 1) #16
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i137, ptr %skc_refcnt.i137, i32 1, ptr elementtype(i32) %skc_refcnt.i137) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i139 = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i139)
  %cmp.i.i.i.i140 = icmp eq i32 %asmresult.i.i.i.i.i.i.i139, 1
  br i1 %cmp.i.i.i.i140, label %if.then.i144, label %if.end5.i.i.i.i142

if.end5.i.i.i.i142:                               ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i139)
  %.not.i.i.i.i141 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i139, 0
  br i1 %.not.i.i.i.i141, label %if.end5.i.i.i.i142.cleanup_crit_edge, label %if.then10.i.i.i.i143, !prof !135

if.end5.i.i.i.i142.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i142
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i143:                             ; preds = %if.end5.i.i.i.i142
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i137, i32 noundef 3) #16
  br label %cleanup

if.then.i144:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @sk_free(ptr noundef nonnull %39) #16
  br label %cleanup

if.else57:                                        ; preds = %if.end40.thread.if.else57_crit_edge, %if.end40.if.else57_crit_edge
  %peer178 = phi ptr [ %peer174, %if.end40.thread.if.else57_crit_edge ], [ %peer, %if.end40.if.else57_crit_edge ]
  %other.0177 = phi ptr [ null, %if.end40.thread.if.else57_crit_edge ], [ %call21192, %if.end40.if.else57_crit_edge ]
  %65 = ptrtoint ptr %peer178 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %other.0177, ptr %peer178, align 4
  %cmp.i147 = icmp eq ptr %1, %other.0177
  %tobool2.not.i148 = icmp eq ptr %other.0177, null
  %or.cond.i149 = or i1 %cmp.i147, %tobool2.not.i148
  %lock.i150 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i150) #16
  br i1 %or.cond.i149, label %if.else57.cleanup_crit_edge, label %if.end.i152, !prof !171

if.else57.cleanup_crit_edge:                      ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i152:                                      ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #18
  %lock6.i151 = getelementptr inbounds %struct.unix_sock, ptr %other.0177, i32 0, i32 8
  tail call void @_raw_spin_unlock(ptr noundef %lock6.i151) #16
  br label %cleanup

out_unlock:                                       ; preds = %if.end32.out_unlock_crit_edge, %if.end28.out_unlock_crit_edge
  %err.0 = phi i32 [ %call34, %if.end32.out_unlock_crit_edge ], [ -1, %if.end28.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock14.i) #16
  br i1 %or.cond.i, label %out_unlock.unix_state_double_unlock.exit160_crit_edge, label %if.end.i159, !prof !171

out_unlock.unix_state_double_unlock.exit160_crit_edge: ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_state_double_unlock.exit160

if.end.i159:                                      ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #18
  %lock6.i158 = getelementptr inbounds %struct.unix_sock, ptr %call21192, i32 0, i32 8
  tail call void @_raw_spin_unlock(ptr noundef %lock6.i158) #16
  br label %unix_state_double_unlock.exit160

unix_state_double_unlock.exit160:                 ; preds = %if.end.i159, %out_unlock.unix_state_double_unlock.exit160_crit_edge
  %skc_refcnt.i161 = getelementptr inbounds %struct.sock_common, ptr %call21192, i32 0, i32 19
  %call.i.i.i.i.i.i162 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i161, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i161, i32 1, i32 3, i32 1) #16
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i161, ptr %skc_refcnt.i161, i32 1, ptr elementtype(i32) %skc_refcnt.i161) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i163 = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i163)
  %cmp.i.i.i.i164 = icmp eq i32 %asmresult.i.i.i.i.i.i.i163, 1
  br i1 %cmp.i.i.i.i164, label %if.then.i168, label %if.end5.i.i.i.i166

if.end5.i.i.i.i166:                               ; preds = %unix_state_double_unlock.exit160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i163)
  %.not.i.i.i.i165 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i163, 0
  br i1 %.not.i.i.i.i165, label %if.end5.i.i.i.i166.cleanup_crit_edge, label %if.then10.i.i.i.i167, !prof !135

if.end5.i.i.i.i166.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i166
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i167:                             ; preds = %if.end5.i.i.i.i166
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i161, i32 noundef 3) #16
  br label %cleanup

if.then.i168:                                     ; preds = %unix_state_double_unlock.exit160
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @sk_free(ptr noundef %call21192) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i168, %if.then10.i.i.i.i167, %if.end5.i.i.i.i166.cleanup_crit_edge, %if.end.i152, %if.else57.cleanup_crit_edge, %if.then.i144, %if.then10.i.i.i.i143, %if.end5.i.i.i.i142.cleanup_crit_edge, %if.then23, %if.then14.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %15, %if.then23 ], [ %call15, %if.then14.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i142.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i143 ], [ 0, %if.then.i144 ], [ 0, %if.else57.cleanup_crit_edge ], [ 0, %if.end.i152 ], [ %err.0, %if.end5.i.i.i.i166.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i167 ], [ %err.0, %if.then.i168 ], [ -22, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_dgram_poll(ptr noundef %file, ptr noundef %sock, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %cmp.i.i = icmp eq ptr %wait, null
  br i1 %cmp.i.i, label %entry.sock_poll_wait.exit_crit_edge, label %poll_does_not_wait.exit.i

entry.sock_poll_wait.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_poll_wait.exit

poll_does_not_wait.exit.i:                        ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %cmp1.i.i = icmp eq ptr %3, null
  br i1 %cmp1.i.i, label %poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge, label %poll_wait.exit.i

poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge: ; preds = %poll_does_not_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_poll_wait.exit

poll_wait.exit.i:                                 ; preds = %poll_does_not_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %wq.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 7
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wq.i, ptr noundef nonnull %wait) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !157
  br label %sock_poll_wait.exit

sock_poll_wait.exit:                              ; preds = %poll_wait.exit.i, %poll_does_not_wait.exit.i.sock_poll_wait.exit_crit_edge, %entry.sock_poll_wait.exit_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sock_poll_wait.exit.if.then_crit_edge

sock_poll_wait.exit.if.then_crit_edge:            ; preds = %sock_poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %sock_poll_wait.exit
  %sk_error_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %sk_error_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %sk_error_queue, align 4
  %cmp.i = icmp eq ptr %7, %sk_error_queue
  br i1 %cmp.i, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sock_poll_wait.exit.if.then_crit_edge
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  %or = select i1 %tobool.i.not, i32 8, i32 10
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %mask.0 = phi i32 [ %or, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %12 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sk_shutdown, align 2
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  %or6 = or i32 %mask.0, 8257
  %spec.select = select i1 %tobool4.not, i32 %mask.0, i32 %or6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp = icmp eq i8 %13, 3
  %or12 = or i32 %spec.select, 16
  %mask.2 = select i1 %cmp, i32 %or12, i32 %spec.select
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %sk_receive_queue, align 4
  %cmp.i107 = icmp eq ptr %16, %sk_receive_queue
  %or16 = or i32 %mask.2, 65
  %mask.3 = select i1 %cmp.i107, i32 %mask.2, i32 %or16
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_prot.i, align 8
  %sock_is_readable.i = getelementptr inbounds %struct.proto, ptr %18, i32 0, i32 29
  %19 = ptrtoint ptr %sock_is_readable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sock_is_readable.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.sk_is_readable.exit.thread_crit_edge, label %sk_is_readable.exit

if.end.sk_is_readable.exit.thread_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sk_is_readable.exit.thread

sk_is_readable.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call zeroext i1 %20(ptr noundef %1) #16
  %spec.select121 = select i1 %call.i, i32 %or16, i32 %mask.3
  br label %sk_is_readable.exit.thread

sk_is_readable.exit.thread:                       ; preds = %sk_is_readable.exit, %if.end.sk_is_readable.exit.thread_crit_edge
  %21 = phi i32 [ %mask.3, %if.end.sk_is_readable.exit.thread_crit_edge ], [ %spec.select121, %sk_is_readable.exit ]
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %22 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %23)
  %cmp23 = icmp eq i16 %23, 5
  br i1 %cmp23, label %if.then25, label %sk_is_readable.exit.thread.if.end39_crit_edge

sk_is_readable.exit.thread.if.end39_crit_edge:    ; preds = %sk_is_readable.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then25:                                        ; preds = %sk_is_readable.exit.thread
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %25)
  %cmp27 = icmp eq i8 %25, 7
  %or30 = or i32 %21, 16
  %spec.select105 = select i1 %cmp27, i32 %or30, i32 %21
  %26 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp35 = icmp eq i8 %27, 2
  br i1 %cmp35, label %if.then25.cleanup_crit_edge, label %if.then25.if.end39_crit_edge

if.then25.if.end39_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end39:                                         ; preds = %if.then25.if.end39_crit_edge, %sk_is_readable.exit.thread.if.end39_crit_edge
  %mask.6 = phi i32 [ %spec.select105, %if.then25.if.end39_crit_edge ], [ %21, %sk_is_readable.exit.thread.if.end39_crit_edge ]
  br i1 %cmp.i.i, label %if.end39.if.end44_crit_edge, label %poll_requested_events.exit

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

poll_requested_events.exit:                       ; preds = %if.end39
  %_key.i = getelementptr inbounds %struct.poll_table_struct, ptr %wait, i32 0, i32 1
  %28 = ptrtoint ptr %_key.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %_key.i, align 4
  %and41 = and i32 %29, 772
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %poll_requested_events.exit.cleanup_crit_edge, label %poll_requested_events.exit.if.end44_crit_edge

poll_requested_events.exit.if.end44_crit_edge:    ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

poll_requested_events.exit.cleanup_crit_edge:     ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end44:                                         ; preds = %poll_requested_events.exit.if.end44_crit_edge, %if.end39.if.end44_crit_edge
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %31)
  %cmp.not.i = icmp eq i8 %31, 10
  br i1 %cmp.not.i, label %if.end44.if.else_crit_edge, label %unix_writable.exit

if.end44.if.else_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

unix_writable.exit:                               ; preds = %if.end44
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #16
  %32 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %shl.i = shl i32 %33, 2
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %34 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sk_sndbuf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %35)
  %cmp2.i.not = icmp ugt i32 %shl.i, %35
  br i1 %cmp2.i.not, label %unix_writable.exit.if.else_crit_edge, label %if.then47

unix_writable.exit.if.else_crit_edge:             ; preds = %unix_writable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then47:                                        ; preds = %unix_writable.exit
  %lock = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %peer = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %peer, align 4
  %tobool50.not = icmp eq ptr %37, null
  br i1 %tobool50.not, label %if.then47.if.then67_crit_edge, label %land.lhs.true

if.then47.if.then67_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then67

land.lhs.true:                                    ; preds = %if.then47
  %peer52 = getelementptr inbounds %struct.unix_sock, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %peer52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %peer52, align 4
  %cmp53.not = icmp eq ptr %39, %1
  br i1 %cmp53.not, label %land.lhs.true.if.then67_crit_edge, label %land.lhs.true55

land.lhs.true.if.then67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then67

land.lhs.true55:                                  ; preds = %land.lhs.true
  %qlen.i.i = getelementptr inbounds %struct.sock, ptr %37, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %qlen.i.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %37, i32 0, i32 54
  %42 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp.i109.not = icmp ugt i32 %41, %43
  br i1 %cmp.i109.not, label %land.lhs.true58, label %land.lhs.true55.if.then67_crit_edge

land.lhs.true55.if.then67_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then67

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %call59 = tail call fastcc i32 @unix_dgram_peer_wake_me(ptr noundef %1, ptr noundef nonnull %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true58.if.then67_crit_edge, label %if.end65

land.lhs.true58.if.then67_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then67

if.end65:                                         ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %if.else

if.then67:                                        ; preds = %land.lhs.true58.if.then67_crit_edge, %land.lhs.true55.if.then67_crit_edge, %land.lhs.true.if.then67_crit_edge, %if.then47.if.then67_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %or68 = or i32 %mask.6, 772
  br label %cleanup

if.else:                                          ; preds = %if.end65, %unix_writable.exit.if.else_crit_edge, %if.end44.if.else_crit_edge
  %44 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %47 = and i32 %46, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %48 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %50, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.else.cleanup_crit_edge, %if.then67, %poll_requested_events.exit.cleanup_crit_edge, %if.then25.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select105, %if.then25.cleanup_crit_edge ], [ %mask.6, %poll_requested_events.exit.cleanup_crit_edge ], [ %or68, %if.then67 ], [ %mask.6, %if.else.cleanup_crit_edge ], [ %mask.6, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_dgram_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %err = alloca i32, align 4
  %scm = alloca %struct.scm_cookie, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %err, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scm) #16
  %7 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %8 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 2
  %10 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 3
  tail call void @wait_for_unix_gc() #16
  %11 = call ptr @memset(ptr %scm, i32 0, i32 24)
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %8, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %9, align 4
  %call.i.i = call i32 @security_socket_getpeersec_dgram(ptr noundef %sock, ptr noundef null, ptr noundef %10) #16
  %msg_controllen.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %14 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_controllen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %scm_send.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

scm_send.exit:                                    ; preds = %entry
  %call19.i = call i32 @__scm_send(ptr noundef %sock, ptr noundef %msg, ptr noundef nonnull %scm) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp = icmp slt i32 %call19.i, 0
  br i1 %cmp, label %scm_send.exit.cleanup_crit_edge, label %scm_send.exit.if.end_crit_edge

scm_send.exit.if.end_crit_edge:                   ; preds = %scm_send.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

scm_send.exit.cleanup_crit_edge:                  ; preds = %scm_send.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %scm_send.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -95, ptr %err, align 4
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %17 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_flags, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.end.if.end196_crit_edge

if.end.if.end196_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end196

if.end5:                                          ; preds = %if.end
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %19 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not = icmp eq i32 %20, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  %21 = add i32 %20, -111
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %21)
  %22 = icmp ult i32 %21, -108
  br i1 %22, label %if.then7.unix_validate_addr.exit.thread_crit_edge, label %if.end.i

if.then7.unix_validate_addr.exit.thread_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_validate_addr.exit.thread

if.end.i:                                         ; preds = %if.then7
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %24)
  %cmp2.not.i = icmp eq i16 %24, 1
  br i1 %cmp2.not.i, label %unix_validate_addr.exit, label %if.end.i.unix_validate_addr.exit.thread_crit_edge

if.end.i.unix_validate_addr.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_validate_addr.exit.thread

unix_validate_addr.exit.thread:                   ; preds = %if.end.i.unix_validate_addr.exit.thread_crit_edge, %if.then7.unix_validate_addr.exit.thread_crit_edge
  %25 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -22, ptr %err, align 4
  br label %if.end196

unix_validate_addr.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %err, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end5
  %27 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -107, ptr %err, align 4
  %lock.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %peer2.i = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %peer2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %peer2.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %unix_peer_get.exit, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %29, i32 0, i32 19
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #16
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !134

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %31 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.unix_peer_get.exit.thread_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.unix_peer_get.exit.thread_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_peer_get.exit.thread

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #16
  br label %unix_peer_get.exit.thread

unix_peer_get.exit.thread:                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.unix_peer_get.exit.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  br label %if.end17

unix_peer_get.exit:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  br label %if.end196

if.end17:                                         ; preds = %unix_peer_get.exit.thread, %unix_validate_addr.exit
  %sunaddr.0 = phi ptr [ %5, %unix_validate_addr.exit ], [ null, %unix_peer_get.exit.thread ]
  %other.0 = phi ptr [ null, %unix_validate_addr.exit ], [ %29, %unix_peer_get.exit.thread ]
  %flags = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 2
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags, align 4
  %34 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool19.not = icmp eq i32 %34, 0
  br i1 %tobool19.not, label %if.end17.if.end26_crit_edge, label %land.lhs.true

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end17
  %addr = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %addr, align 64
  %tobool20.not = icmp eq ptr %36, null
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then21:                                        ; preds = %land.lhs.true
  %call22 = call fastcc i32 @unix_autobind(ptr noundef %1)
  %37 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call22, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.if.end26_crit_edge, label %if.then21.out_crit_edge

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end17.if.end26_crit_edge
  %38 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -90, ptr %err, align 4
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %39 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sk_sndbuf, align 4
  %sub = add i32 %40, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp27 = icmp ult i32 %sub, %len
  br i1 %cmp27, label %if.end26.out_crit_edge, label %if.end29

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end29:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 16128, i32 %len)
  %cmp30 = icmp ugt i32 %len, 16128
  br i1 %cmp30, label %if.then31, label %if.end29.if.end39_crit_edge

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %sub32 = add i32 %len, -16128
  %41 = call i32 @llvm.umin.i32(i32 %sub32, i32 69632)
  %add = add nuw nsw i32 %41, 4095
  %and35 = and i32 %add, 258048
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %if.end29.if.end39_crit_edge
  %data_len.0 = phi i32 [ %and35, %if.then31 ], [ 0, %if.end29.if.end39_crit_edge ]
  %sub40 = sub i32 %len, %data_len.0
  %42 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_flags, align 4
  %and42 = and i32 %43, 64
  %call43 = call ptr @sock_alloc_send_pskb(ptr noundef %1, i32 noundef %sub40, i32 noundef %data_len.0, i32 noundef %and42, ptr noundef nonnull %err, i32 noundef 3) #16
  %cmp44 = icmp eq ptr %call43, null
  br i1 %cmp44, label %if.end39.out_crit_edge, label %if.end46

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end46:                                         ; preds = %if.end39
  %44 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %scm, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %if.end46.get_pid.exit.i_crit_edge, label %if.then.i.i

if.end46.get_pid.exit.i_crit_edge:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit.i

if.then.i.i:                                      ; preds = %if.end46
  %call.i.i.i.i.i.i.i313 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %45, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull %45, i32 1, i32 3, i32 1) #16
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %45, ptr nonnull %45, i32 1, ptr nonnull elementtype(i32) %45) #16, !srcloc !133
  %asmresult.i.i.i.i.i.i.i314 = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i314)
  %tobool1.not.i.i.i.i.i315 = icmp eq i32 %asmresult.i.i.i.i.i.i.i314, 0
  br i1 %tobool1.not.i.i.i.i.i315, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i320_crit_edge, label %if.else.i.i.i.i.i318, !prof !134

if.then.i.i.if.end15.sink.split.i.i.i.i.i320_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i320

if.else.i.i.i.i.i318:                             ; preds = %if.then.i.i
  %add.i.i.i.i.i316 = add i32 %asmresult.i.i.i.i.i.i.i314, 1
  %47 = or i32 %add.i.i.i.i.i316, %asmresult.i.i.i.i.i.i.i314
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i.i317 = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i.i317, label %if.else.i.i.i.i.i318.get_pid.exit.i_crit_edge, label %if.else.i.i.i.i.i318.if.end15.sink.split.i.i.i.i.i320_crit_edge, !prof !135

if.else.i.i.i.i.i318.if.end15.sink.split.i.i.i.i.i320_crit_edge: ; preds = %if.else.i.i.i.i.i318
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i320

if.else.i.i.i.i.i318.get_pid.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i.i318
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_pid.exit.i

if.end15.sink.split.i.i.i.i.i320:                 ; preds = %if.else.i.i.i.i.i318.if.end15.sink.split.i.i.i.i.i320_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i320_crit_edge
  %.sink.i.i.i.i.i319 = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i320_crit_edge ], [ 1, %if.else.i.i.i.i.i318.if.end15.sink.split.i.i.i.i.i320_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %45, i32 noundef %.sink.i.i.i.i.i319) #16
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i320, %if.else.i.i.i.i.i318.get_pid.exit.i_crit_edge, %if.end46.get_pid.exit.i_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call43, i32 0, i32 3
  %48 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %cb.i, align 8
  %uid.i321 = getelementptr inbounds %struct.sk_buff, ptr %call43, i32 0, i32 3, i32 4
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %8, align 4
  %51 = ptrtoint ptr %uid.i321 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %uid.i321, align 4
  %gid.i322 = getelementptr inbounds %struct.sk_buff, ptr %call43, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %9, align 4
  %54 = ptrtoint ptr %gid.i322 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %gid.i322, align 8
  %fp.i = getelementptr inbounds %struct.sk_buff, ptr %call43, i32 0, i32 3, i32 12
  %55 = ptrtoint ptr %fp.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %fp.i, align 4
  %56 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %10, align 4
  %secid1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call43, i32 0, i32 3, i32 16
  %58 = ptrtoint ptr %secid1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %secid1.i.i, align 8
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %7, align 4
  %tobool.not.i324.not = icmp eq ptr %60, null
  br i1 %tobool.not.i324.not, label %unix_scm_to_skb.exit.thread, label %unix_scm_to_skb.exit

unix_scm_to_skb.exit.thread:                      ; preds = %get_pid.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %destructor.i349 = getelementptr inbounds %struct.sk_buff, ptr %call43, i32 0, i32 4, i32 0, i32 1
  %61 = ptrtoint ptr %destructor.i349 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @unix_destruct_scm, ptr %destructor.i349, align 4
  %62 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %err, align 4
  br label %if.end50

unix_scm_to_skb.exit:                             ; preds = %get_pid.exit.i
  %call10.i = call i32 @unix_attach_fds(ptr noundef nonnull %scm, ptr noundef nonnull %call43) #16
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call43, i32 0, i32 4, i32 0, i32 1
  %63 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @unix_destruct_scm, ptr %destructor.i, align 4
  %64 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call10.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp48 = icmp slt i32 %call10.i, 0
  br i1 %cmp48, label %unix_scm_to_skb.exit.out_free_crit_edge, label %unix_scm_to_skb.exit.if.end50_crit_edge

unix_scm_to_skb.exit.if.end50_crit_edge:          ; preds = %unix_scm_to_skb.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

unix_scm_to_skb.exit.out_free_crit_edge:          ; preds = %unix_scm_to_skb.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

if.end50:                                         ; preds = %unix_scm_to_skb.exit.if.end50_crit_edge, %unix_scm_to_skb.exit.thread
  %call52 = call ptr @skb_put(ptr noundef nonnull %call43, i32 noundef %sub40) #16
  %data_len53 = getelementptr inbounds %struct.sk_buff, ptr %call43, i32 0, i32 7
  %65 = ptrtoint ptr %data_len53 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %data_len.0, ptr %data_len53, align 8
  %len54 = getelementptr inbounds %struct.sk_buff, ptr %call43, i32 0, i32 6
  %66 = ptrtoint ptr %len54 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %len, ptr %len54, align 4
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call55 = call i32 @skb_copy_datagram_from_iter(ptr noundef nonnull %call43, i32 noundef 0, ptr noundef %msg_iter, i32 noundef %len) #16
  %67 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call55, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end50.out_free_crit_edge

if.end50.out_free_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

if.end58:                                         ; preds = %if.end50
  %68 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %msg_flags, align 4
  %and60 = and i32 %69, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %cond.false.i, label %if.end58.sock_sndtimeo.exit_crit_edge

if.end58.sock_sndtimeo.exit_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 31
  %70 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.end58.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %71, %cond.false.i ], [ 0, %if.end58.sock_sndtimeo.exit_crit_edge ]
  %cmp65 = icmp eq ptr %sunaddr.0, null
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %sk_socket = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %peer160 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 5
  %lock94 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 8
  br label %restart.outer

restart.outer:                                    ; preds = %signal_pending.exit.restart.outer_crit_edge, %sock_sndtimeo.exit
  %other.1.ph = phi ptr [ %other.2, %signal_pending.exit.restart.outer_crit_edge ], [ %other.0, %sock_sndtimeo.exit ]
  %timeo.0.ph = phi i32 [ %call146, %signal_pending.exit.restart.outer_crit_edge ], [ %cond.i, %sock_sndtimeo.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.0.ph)
  %tobool144.not = icmp eq i32 %timeo.0.ph, 0
  br label %restart

restart:                                          ; preds = %if.end107.restart_crit_edge, %restart.outer
  %other.1 = phi ptr [ null, %if.end107.restart_crit_edge ], [ %other.1.ph, %restart.outer ]
  %tobool63.not = icmp eq ptr %other.1, null
  br i1 %tobool63.not, label %if.then64, label %restart.if.end74_crit_edge

restart.if.end74_crit_edge:                       ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.then64:                                        ; preds = %restart
  %72 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -104, ptr %err, align 4
  br i1 %cmp65, label %if.then64.out_free_crit_edge, label %if.end67

if.then64.out_free_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

if.end67:                                         ; preds = %if.then64
  %73 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msg_namelen, align 4
  %75 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %sk_type, align 2
  %conv = zext i16 %76 to i32
  %call69 = call fastcc ptr @unix_find_other(ptr noundef %3, ptr noundef nonnull %sunaddr.0, i32 noundef %74, i32 noundef %conv)
  %cmp.i327 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i327, label %if.then71, label %if.end67.if.end74_crit_edge

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  %77 = ptrtoint ptr %call69 to i32
  %78 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %err, align 4
  br label %out_free

if.end74:                                         ; preds = %if.end67.if.end74_crit_edge, %restart.if.end74_crit_edge
  %other.2 = phi ptr [ %other.1, %restart.if.end74_crit_edge ], [ %call69, %if.end67.if.end74_crit_edge ]
  %call.i = call i32 @sk_filter_trim_cap(ptr noundef %other.2, ptr noundef nonnull %call43, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp76 = icmp slt i32 %call.i, 0
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  %79 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %len, ptr %err, align 4
  br label %out_free

if.end79:                                         ; preds = %if.end74
  %lock = getelementptr inbounds %struct.unix_sock, ptr %other.2, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %lock) #16
  %peer.i = getelementptr inbounds %struct.unix_sock, ptr %other.2, i32 0, i32 5
  %80 = getelementptr inbounds %struct.sock_common, ptr %other.2, i32 0, i32 13
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %other.2, i32 0, i32 66
  %sk_socket122 = getelementptr inbounds %struct.sock, ptr %other.2, i32 0, i32 71
  %cmp128.not = icmp eq ptr %other.2, %1
  %qlen.i.i = getelementptr inbounds %struct.sock, ptr %other.2, i32 0, i32 8, i32 1
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %other.2, i32 0, i32 54
  %81 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %err, align 4
  %82 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %peer.i, align 4
  %cmp.i328 = icmp ne ptr %83, null
  %cmp.i.i = icmp ne ptr %83, %1
  %tobool82.not = and i1 %cmp.i328, %cmp.i.i
  br i1 %tobool82.not, label %if.end79.if.end191_crit_edge, label %if.end84

if.end79.if.end191_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end191

if.end84:                                         ; preds = %if.end79
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %80, align 4
  %86 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i.not = icmp eq i32 %86, 0
  br i1 %tobool.i.not, label %if.end111, label %if.then92.critedge, !prof !135

if.then88:                                        ; preds = %if.end84.1
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  call fastcc void @sock_put(ptr noundef %other.2)
  br i1 %tobool.i.not, label %if.then88.if.end95_crit_edge, label %if.then88.if.then92_crit_edge

if.then88.if.then92_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then92

if.then88.if.end95_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end95

if.then92.critedge:                               ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  call fastcc void @sock_put(ptr noundef %other.2)
  br label %if.then92

if.then92:                                        ; preds = %if.then92.critedge, %if.then88.if.then92_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock94) #16
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.then88.if.end95_crit_edge
  %87 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %err, align 4
  %88 = ptrtoint ptr %peer160 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %peer160, align 4
  %cmp97 = icmp eq ptr %89, %other.2
  br i1 %cmp97, label %if.end107.thread, label %if.end107

if.end107.thread:                                 ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  %90 = ptrtoint ptr %peer160 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %peer160, align 4
  call fastcc void @unix_dgram_peer_wake_disconnect_wakeup(ptr noundef %1, ptr noundef %other.2)
  call void @_raw_spin_unlock(ptr noundef %lock94) #16
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %91 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %91)
  store volatile i8 7, ptr %skc_state, align 2
  call fastcc void @unix_dgram_disconnected(ptr noundef %1, ptr noundef %other.2)
  call fastcc void @sock_put(ptr noundef %other.2)
  %92 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -111, ptr %err, align 4
  br label %out_free

if.end107:                                        ; preds = %if.end95
  call void @_raw_spin_unlock(ptr noundef %lock94) #16
  %93 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr = load i32, ptr %err, align 4
  %tobool108.not = icmp eq i32 %.pr, 0
  br i1 %tobool108.not, label %if.end107.restart_crit_edge, label %if.end107.out_free_crit_edge

if.end107.out_free_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

if.end107.restart_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  br label %restart

if.end111:                                        ; preds = %if.end84
  %94 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -32, ptr %err, align 4
  %95 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %sk_shutdown, align 2
  %97 = and i8 %96, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool114.not = icmp eq i8 %97, 0
  br i1 %tobool114.not, label %if.end116, label %if.end111.if.end191_crit_edge

if.end111.if.end191_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end191

if.end116:                                        ; preds = %if.end111
  %98 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %99)
  %cmp119.not = icmp eq i16 %99, 5
  br i1 %cmp119.not, label %if.end116.if.end127_crit_edge, label %if.then121

if.end116.if.end127_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end127

if.then121:                                       ; preds = %if.end116
  %100 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sk_socket, align 8
  %102 = ptrtoint ptr %sk_socket122 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sk_socket122, align 8
  %call123 = call i32 @security_unix_may_send(ptr noundef %101, ptr noundef %103) #16
  %104 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call123, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.then121.if.end127_crit_edge, label %if.then121.if.end191_crit_edge

if.then121.if.end191_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end191

if.then121.if.end127_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end127

if.end127:                                        ; preds = %if.then121.if.end127_crit_edge, %if.end116.if.end127_crit_edge
  br i1 %cmp128.not, label %if.end127.if.end181_crit_edge, label %land.lhs.true130

if.end127.if.end181_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end181

land.lhs.true130:                                 ; preds = %if.end127
  %105 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %peer.i, align 4
  %cmp133.not = icmp eq ptr %106, %1
  br i1 %cmp133.not, label %land.lhs.true130.if.end181_crit_edge, label %land.rhs

land.lhs.true130.if.end181_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end181

land.rhs:                                         ; preds = %land.lhs.true130
  %107 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %qlen.i.i, align 4
  %109 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %110)
  %cmp.i329 = icmp ugt i32 %108, %110
  br i1 %cmp.i329, label %if.then143, label %land.rhs.if.end181_crit_edge, !prof !134

land.rhs.if.end181_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end181

if.then143:                                       ; preds = %land.rhs
  br i1 %tobool144.not, label %if.end158, label %if.then145

if.then145:                                       ; preds = %if.then143
  %call146 = call fastcc i32 @unix_wait_for_peer(ptr noundef %other.2, i32 noundef %timeo.0.ph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call146)
  %cmp.i330 = icmp eq i32 %call146, 2147483647
  %cond.i331 = select i1 %cmp.i330, i32 -512, i32 -4
  %111 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %cond.i331, ptr %err, align 4
  %112 = call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %stack.i.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %117, align 4
  %120 = and i32 %119, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i332 = icmp eq i32 %120, 0
  br i1 %tobool.not.i332, label %signal_pending.exit, label %if.then145.out_free_crit_edge, !prof !135

if.then145.out_free_crit_edge:                    ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

signal_pending.exit:                              ; preds = %if.then145
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %117, align 4
  %and1.i.i.i.i.i = and i32 %122, 1
  %tobool150.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool150.not, label %signal_pending.exit.restart.outer_crit_edge, label %signal_pending.exit.out_free_crit_edge

signal_pending.exit.out_free_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

signal_pending.exit.restart.outer_crit_edge:      ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %restart.outer

if.end158:                                        ; preds = %if.then143
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  call fastcc void @unix_state_double_lock(ptr noundef %1, ptr noundef %other.2)
  %123 = ptrtoint ptr %peer160 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %peer160, align 4
  %cmp161.not = icmp eq ptr %124, %other.2
  br i1 %cmp161.not, label %lor.lhs.false, label %if.end158.out_unlock.thread_crit_edge

if.end158.out_unlock.thread_crit_edge:            ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock.thread

lor.lhs.false:                                    ; preds = %if.end158
  %call163 = call fastcc i32 @unix_dgram_peer_wake_me(ptr noundef %1, ptr noundef %other.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %lor.lhs.false.out_unlock.thread_crit_edge

lor.lhs.false.out_unlock.thread_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock.thread

out_unlock.thread:                                ; preds = %lor.lhs.false.1.out_unlock.thread_crit_edge, %if.end158.1.out_unlock.thread_crit_edge, %lor.lhs.false.out_unlock.thread_crit_edge, %if.end158.out_unlock.thread_crit_edge
  %125 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -11, ptr %err, align 4
  br label %if.then188

if.end166:                                        ; preds = %lor.lhs.false
  %126 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %err, align 4
  %127 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %peer.i, align 4
  %cmp.i328.1 = icmp ne ptr %128, null
  %cmp.i.i.1 = icmp ne ptr %128, %1
  %tobool82.not.1 = and i1 %cmp.i328.1, %cmp.i.i.1
  br i1 %tobool82.not.1, label %if.end166.if.then188_crit_edge, label %if.end84.1

if.end166.if.then188_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then188

if.end84.1:                                       ; preds = %if.end166
  %129 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %80, align 4
  %131 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.i.not.1 = icmp eq i32 %131, 0
  br i1 %tobool.i.not.1, label %if.end111.1, label %if.then88, !prof !135

if.end111.1:                                      ; preds = %if.end84.1
  %132 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -32, ptr %err, align 4
  %133 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %sk_shutdown, align 2
  %135 = and i8 %134, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool114.not.1 = icmp eq i8 %135, 0
  br i1 %tobool114.not.1, label %if.end116.1, label %if.end111.1.if.then188_crit_edge

if.end111.1.if.then188_crit_edge:                 ; preds = %if.end111.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then188

if.end116.1:                                      ; preds = %if.end111.1
  %136 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %137)
  %cmp119.not.1 = icmp eq i16 %137, 5
  br i1 %cmp119.not.1, label %if.end116.1.land.lhs.true130.1_crit_edge, label %if.then121.1

if.end116.1.land.lhs.true130.1_crit_edge:         ; preds = %if.end116.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true130.1

if.then121.1:                                     ; preds = %if.end116.1
  %138 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %sk_socket, align 8
  %140 = ptrtoint ptr %sk_socket122 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sk_socket122, align 8
  %call123.1 = call i32 @security_unix_may_send(ptr noundef %139, ptr noundef %141) #16
  %142 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call123.1, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.1)
  %tobool124.not.1 = icmp eq i32 %call123.1, 0
  br i1 %tobool124.not.1, label %if.then121.1.land.lhs.true130.1_crit_edge, label %if.then121.1.if.then188_crit_edge

if.then121.1.if.then188_crit_edge:                ; preds = %if.then121.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then188

if.then121.1.land.lhs.true130.1_crit_edge:        ; preds = %if.then121.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true130.1

land.lhs.true130.1:                               ; preds = %if.then121.1.land.lhs.true130.1_crit_edge, %if.end116.1.land.lhs.true130.1_crit_edge
  %143 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %peer.i, align 4
  %cmp133.not.1 = icmp eq ptr %144, %1
  br i1 %cmp133.not.1, label %land.lhs.true130.1.if.then178_crit_edge, label %land.rhs.1, !prof !172

land.lhs.true130.1.if.then178_crit_edge:          ; preds = %land.lhs.true130.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then178

land.rhs.1:                                       ; preds = %land.lhs.true130.1
  %145 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %qlen.i.i, align 4
  %147 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %148)
  %cmp.i329.1 = icmp ugt i32 %146, %148
  br i1 %cmp.i329.1, label %if.end158.1, label %land.rhs.1.if.then178_crit_edge, !prof !134

land.rhs.1.if.then178_crit_edge:                  ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then178

if.end158.1:                                      ; preds = %land.rhs.1
  %149 = ptrtoint ptr %peer160 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %peer160, align 4
  %cmp161.not.1 = icmp eq ptr %150, %other.2
  br i1 %cmp161.not.1, label %lor.lhs.false.1, label %if.end158.1.out_unlock.thread_crit_edge

if.end158.1.out_unlock.thread_crit_edge:          ; preds = %if.end158.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock.thread

lor.lhs.false.1:                                  ; preds = %if.end158.1
  %call163.1 = call fastcc i32 @unix_dgram_peer_wake_me(ptr noundef %1, ptr noundef %other.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163.1)
  %tobool164.not.1 = icmp eq i32 %call163.1, 0
  br i1 %tobool164.not.1, label %lor.lhs.false.1.if.then178_crit_edge, label %lor.lhs.false.1.out_unlock.thread_crit_edge

lor.lhs.false.1.out_unlock.thread_crit_edge:      ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock.thread

lor.lhs.false.1.if.then178_crit_edge:             ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then178

if.then178:                                       ; preds = %lor.lhs.false.1.if.then178_crit_edge, %land.rhs.1.if.then178_crit_edge, %land.lhs.true130.1.if.then178_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock94) #16
  br label %if.end181

if.end181:                                        ; preds = %if.then178, %land.rhs.if.end181_crit_edge, %land.lhs.true130.if.end181_crit_edge, %if.end127.if.end181_crit_edge
  %other.2402 = phi ptr [ %other.2, %if.then178 ], [ %1, %if.end127.if.end181_crit_edge ], [ %other.2, %land.rhs.if.end181_crit_edge ], [ %other.2, %land.lhs.true130.if.end181_crit_edge ]
  %151 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %80, align 4
  %153 = and i32 %152, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool.i335.not = icmp eq i32 %153, 0
  br i1 %tobool.i335.not, label %if.end181.if.end184_crit_edge, label %if.then183

if.end181.if.end184_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end184

if.then183:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i336 = call i64 @ktime_get_with_offset(i32 noundef 0) #16
  %154 = getelementptr inbounds %struct.sk_buff, ptr %call43, i32 0, i32 2
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %call.i.i336, ptr %154, align 8
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %if.end181.if.end184_crit_edge
  call fastcc void @maybe_add_creds(ptr noundef nonnull %call43, ptr noundef %sock, ptr noundef %other.2402)
  call fastcc void @scm_stat_add(ptr noundef %other.2402, ptr noundef nonnull %call43)
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %other.2402, i32 0, i32 8
  call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef nonnull %call43) #16
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %other.2402, i32 0, i32 77
  %156 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sk_data_ready, align 8
  call void %157(ptr noundef %other.2402) #16
  call fastcc void @sock_put(ptr noundef %other.2402)
  call fastcc void @scm_destroy(ptr noundef nonnull %scm)
  br label %cleanup

if.then188:                                       ; preds = %if.then121.1.if.then188_crit_edge, %if.end111.1.if.then188_crit_edge, %if.end166.if.then188_crit_edge, %out_unlock.thread
  call void @_raw_spin_unlock(ptr noundef %lock94) #16
  br label %if.end191

if.end191:                                        ; preds = %if.then188, %if.then121.if.end191_crit_edge, %if.end111.if.end191_crit_edge, %if.end79.if.end191_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %out_free

out_free:                                         ; preds = %if.end191, %signal_pending.exit.out_free_crit_edge, %if.then145.out_free_crit_edge, %if.end107.out_free_crit_edge, %if.end107.thread, %if.then78, %if.then71, %if.then64.out_free_crit_edge, %if.end50.out_free_crit_edge, %unix_scm_to_skb.exit.out_free_crit_edge
  %other.3 = phi ptr [ %other.0, %unix_scm_to_skb.exit.out_free_crit_edge ], [ %other.0, %if.end50.out_free_crit_edge ], [ %other.2, %if.then78 ], [ %other.2, %if.end191 ], [ null, %if.then71 ], [ null, %if.end107.thread ], [ null, %if.then64.out_free_crit_edge ], [ null, %if.end107.out_free_crit_edge ], [ %other.2, %signal_pending.exit.out_free_crit_edge ], [ %other.2, %if.then145.out_free_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call43, i32 noundef 0) #16
  br label %out

out:                                              ; preds = %out_free, %if.end39.out_crit_edge, %if.end26.out_crit_edge, %if.then21.out_crit_edge
  %other.4 = phi ptr [ %other.0, %if.end26.out_crit_edge ], [ %other.0, %if.end39.out_crit_edge ], [ %other.3, %out_free ], [ %other.0, %if.then21.out_crit_edge ]
  %tobool194.not = icmp eq ptr %other.4, null
  br i1 %tobool194.not, label %out.if.end196_crit_edge, label %if.then195

out.if.end196_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end196

if.then195:                                       ; preds = %out
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %other.4, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #16
  %158 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i337 = extractvalue { i32, i32, i32 } %158, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i337)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i337, 1
  br i1 %cmp.i.i.i.i, label %if.then.i338, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i337)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i337, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end196_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.if.end196_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end196

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #16
  br label %if.end196

if.then.i338:                                     ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  call void @sk_free(ptr noundef nonnull %other.4) #16
  br label %if.end196

if.end196:                                        ; preds = %if.then.i338, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end196_crit_edge, %out.if.end196_crit_edge, %unix_peer_get.exit, %unix_validate_addr.exit.thread, %if.end.if.end196_crit_edge
  %159 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %scm, align 4
  call void @put_pid(ptr noundef %160) #16
  %161 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %scm, align 4
  %162 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %7, align 4
  %tobool.not.i341 = icmp eq ptr %163, null
  br i1 %tobool.not.i341, label %if.end196.scm_destroy.exit_crit_edge, label %if.then.i342

if.end196.scm_destroy.exit_crit_edge:             ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #18
  br label %scm_destroy.exit

if.then.i342:                                     ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #18
  call void @__scm_destroy(ptr noundef nonnull %scm) #16
  br label %scm_destroy.exit

scm_destroy.exit:                                 ; preds = %if.then.i342, %if.end196.scm_destroy.exit_crit_edge
  %164 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %scm_destroy.exit, %if.end184, %scm_send.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %165, %scm_destroy.exit ], [ %len, %if.end184 ], [ %call19.i, %scm_send.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scm) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_dgram_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %skc_prot, align 8
  %cmp.not = icmp eq ptr %3, @unix_dgram_proto
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %recvmsg = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %recvmsg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recvmsg, align 4
  %and = and i32 %flags, 64
  %and2 = and i32 %flags, -65
  %call = tail call i32 %5(ptr noundef %1, ptr noundef %msg, i32 noundef %size, i32 noundef %and, i32 noundef %and2, ptr noundef null) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 @__unix_dgram_recvmsg(ptr noundef %1, ptr noundef %msg, i32 noundef %size, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unix_state_double_lock(ptr noundef %sk1, ptr noundef %sk2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %sk1, %sk2
  %tobool2.not = icmp eq ptr %sk2, null
  %or.cond = or i1 %cmp, %tobool2.not
  br i1 %or.cond, label %if.then, label %if.end, !prof !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %lock = getelementptr inbounds %struct.unix_sock, ptr %sk1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  br label %if.end17

if.end:                                           ; preds = %entry
  %cmp3 = icmp ult ptr %sk1, %sk2
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %lock6 = getelementptr inbounds %struct.unix_sock, ptr %sk1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock6) #16
  %lock8 = getelementptr inbounds %struct.unix_sock, ptr %sk2, i32 0, i32 8
  tail call void @_raw_spin_lock_nested(ptr noundef %lock8, i32 noundef 1) #16
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %lock11 = getelementptr inbounds %struct.unix_sock, ptr %sk2, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock11) #16
  %lock14 = getelementptr inbounds %struct.unix_sock, ptr %sk1, i32 0, i32 8
  tail call void @_raw_spin_lock_nested(ptr noundef %lock14, i32 noundef 1) #16
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_unix_may_send(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unix_dgram_peer_wake_disconnect_wakeup(ptr noundef %sk, ptr noundef %other) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_wq.i = getelementptr inbounds %struct.unix_sock, ptr %other, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %peer_wq.i) #16
  %private.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %cmp.i = icmp eq ptr %1, %other
  br i1 %cmp.i, label %if.then.i, label %entry.unix_dgram_peer_wake_disconnect.exit_crit_edge

entry.unix_dgram_peer_wake_disconnect.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_dgram_peer_wake_disconnect.exit

if.then.i:                                        ; preds = %entry
  %entry1.i.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.i.i) #16
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.__remove_wait_queue.exit.i_crit_edge

if.then.i.__remove_wait_queue.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__remove_wait_queue.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i.i, align 4
  %4 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entry1.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %__remove_wait_queue.exit.i

__remove_wait_queue.exit.i:                       ; preds = %if.end.i.i.i.i, %if.then.i.__remove_wait_queue.exit.i_crit_edge
  %8 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %private.i, align 4
  br label %unix_dgram_peer_wake_disconnect.exit

unix_dgram_peer_wake_disconnect.exit:             ; preds = %__remove_wait_queue.exit.i, %entry.unix_dgram_peer_wake_disconnect.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %peer_wq.i) #16
  %11 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %11, align 8
  tail call void @__wake_up(ptr noundef %13, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 772 to ptr)) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unix_dgram_disconnected(ptr noundef %sk, ptr noundef %other) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %0 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %sk_receive_queue
  br i1 %cmp.i.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then:                                          ; preds = %entry
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #16
  %peer_wq = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %peer_wq, i32 noundef 1, i32 noundef 0, ptr noundef null) #16
  %2 = getelementptr inbounds %struct.sock_common, ptr %other, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

land.lhs.true:                                    ; preds = %if.then
  %peer = getelementptr inbounds %struct.unix_sock, ptr %other, i32 0, i32 5
  %6 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer, align 4
  %cmp = icmp eq ptr %7, %sk
  br i1 %cmp, label %if.then5, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %sk_err = getelementptr inbounds %struct.sock, ptr %other, i32 0, i32 51
  %8 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 104, ptr %sk_err, align 4
  tail call void @sk_error_report(ptr noundef %other) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %other, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 7, ptr %skc_state, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unix_dgram_peer_wake_me(ptr noundef %sk, ptr noundef %other) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_wq.i = getelementptr inbounds %struct.unix_sock, ptr %other, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %peer_wq.i) #16
  %private.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.unix_dgram_peer_wake_connect.exit_crit_edge

entry.unix_dgram_peer_wake_connect.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_dgram_peer_wake_connect.exit

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %other, ptr %private.i, align 4
  %head1.i.i = getelementptr inbounds %struct.unix_sock, ptr %other, i32 0, i32 11, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then.i
  %head.0.i.i = phi ptr [ %head1.i.i, %if.then.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %3 = ptrtoint ptr %head.0.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i.i = load ptr, ptr %head.0.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %head1.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %wq.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  %4 = ptrtoint ptr %wq.0.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wq.0.i.i, align 4
  %and.i.i = and i32 %5, 32
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge
  %.pn.lcssa.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %head1.i.i, %for.cond.i.i.for.end.i.i_crit_edge ]
  %entry11.i.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry11.i.i, ptr noundef %head.0.i.i, ptr noundef %.pn.lcssa.i.i) #16
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.unix_dgram_peer_wake_connect.exit_crit_edge

for.end.i.i.unix_dgram_peer_wake_connect.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_dgram_peer_wake_connect.exit

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry11.i.i, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %entry11.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %.pn.lcssa.i.i, ptr %entry11.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 3, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %head.0.i.i, ptr %prev3.i.i.i.i, align 4
  %9 = ptrtoint ptr %head.0.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry11.i.i, ptr %head.0.i.i, align 4
  br label %unix_dgram_peer_wake_connect.exit

unix_dgram_peer_wake_connect.exit:                ; preds = %if.end.i.i.i.i, %for.end.i.i.unix_dgram_peer_wake_connect.exit_crit_edge, %entry.unix_dgram_peer_wake_connect.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %peer_wq.i) #16
  %qlen.i.i = getelementptr inbounds %struct.sock, ptr %other, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %other, i32 0, i32 54
  %12 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i.not = icmp ugt i32 %11, %13
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %unix_dgram_peer_wake_connect.exit
  %14 = getelementptr inbounds %struct.sock_common, ptr %other, i32 0, i32 13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  %tobool.not.i.not = xor i1 %tobool.not.i, true
  %brmerge = select i1 %tobool.i.not, i1 true, i1 %tobool.not.i.not
  %18 = xor i32 %17, 1
  br i1 %brmerge, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then4_crit_edge

land.lhs.true.if.then4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %unix_dgram_peer_wake_connect.exit
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %land.lhs.true.if.then4_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %peer_wq.i) #16
  %19 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private.i, align 4
  %cmp.i12 = icmp eq ptr %20, %other
  br i1 %cmp.i12, label %if.then.i14, label %if.then4.unix_dgram_peer_wake_disconnect.exit_crit_edge

if.then4.unix_dgram_peer_wake_disconnect.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_dgram_peer_wake_disconnect.exit

if.then.i14:                                      ; preds = %if.then4
  %entry1.i.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 3
  %call.i.i.i.i13 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.i.i) #16
  br i1 %call.i.i.i.i13, label %if.end.i.i.i.i15, label %if.then.i14.__remove_wait_queue.exit.i_crit_edge

if.then.i14.__remove_wait_queue.exit.i_crit_edge: ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #18
  br label %__remove_wait_queue.exit.i

if.end.i.i.i.i15:                                 ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry1.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %__remove_wait_queue.exit.i

__remove_wait_queue.exit.i:                       ; preds = %if.end.i.i.i.i15, %if.then.i14.__remove_wait_queue.exit.i_crit_edge
  %27 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 12, i32 3, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %private.i, align 4
  br label %unix_dgram_peer_wake_disconnect.exit

unix_dgram_peer_wake_disconnect.exit:             ; preds = %__remove_wait_queue.exit.i, %if.then4.unix_dgram_peer_wake_disconnect.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %peer_wq.i) #16
  br label %cleanup

cleanup:                                          ; preds = %unix_dgram_peer_wake_disconnect.exit, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %land.lhs.true.cleanup_crit_edge ], [ 0, %unix_dgram_peer_wake_disconnect.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_seqpacket_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %sock_error.exit, !prof !135

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sock_error.exit:                                  ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !140
  tail call void @llvm.prefetch.p0(ptr %sk_err.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err.i) #16, !srcloc !141
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !142
  %sub.i = sub i32 0, %asmresult.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %sock_error.exit.if.end_crit_edge, label %sock_error.exit.cleanup_crit_edge

sock_error.exit.cleanup_crit_edge:                ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sock_error.exit.if.end_crit_edge:                 ; preds = %sock_error.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %sock_error.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %msg_namelen, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %call9 = tail call i32 @unix_dgram_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %sock_error.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %sub.i, %sock_error.exit.cleanup_crit_edge ], [ -107, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_seqpacket_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %skc_prot.i, align 8
  %cmp.not.i = icmp eq ptr %5, @unix_dgram_proto
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %recvmsg.i = getelementptr inbounds %struct.proto, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %recvmsg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recvmsg.i, align 4
  %and.i = and i32 %flags, 64
  %and2.i = and i32 %flags, -65
  %call.i = tail call i32 %7(ptr noundef %1, ptr noundef %msg, i32 noundef %size, i32 noundef %and.i, i32 noundef %and2.i, ptr noundef null) #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i = tail call i32 @__unix_dgram_recvmsg(ptr noundef %1, ptr noundef %msg, i32 noundef %size, i32 noundef %flags) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %entry.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ %call3.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_max_files() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unix_write_space(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !165
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 10
  br i1 %cmp.not.i, label %rcu_read_lock.exit.if.end15_crit_edge, label %unix_writable.exit

rcu_read_lock.exit.if.end15_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

unix_writable.exit:                               ; preds = %rcu_read_lock.exit
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #16
  %6 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %shl.i = shl i32 %7, 2
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %8 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_sndbuf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %9)
  %cmp2.i.not = icmp ugt i32 %shl.i, %9
  br i1 %cmp2.i.not, label %unix_writable.exit.if.end15_crit_edge, label %if.then

unix_writable.exit.if.end15_crit_edge:            ; preds = %unix_writable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then:                                          ; preds = %unix_writable.exit
  %10 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then.do.end10_crit_edge

if.then.do.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

land.lhs.true:                                    ; preds = %if.then
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @unix_write_space.__warned, align 1
  br i1 %.b19, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @unix_write_space.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 514, ptr noundef nonnull @.str.11) #16
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %if.then.do.end10_crit_edge
  %tobool.not.i20 = icmp eq ptr %12, null
  br i1 %tobool.not.i20, label %do.end10.if.end14_crit_edge, label %skwq_has_sleeper.exit

do.end10.if.end14_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

skwq_has_sleeper.exit:                            ; preds = %do.end10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !138
  %head.i.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.i.i.not = icmp eq ptr %14, %head.i.i.i
  br i1 %cmp.i.i.i.i.not, label %skwq_has_sleeper.exit.if.end14_crit_edge, label %if.then13

skwq_has_sleeper.exit.if.end14_crit_edge:         ; preds = %skwq_has_sleeper.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then13:                                        ; preds = %skwq_has_sleeper.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__wake_up_sync_key(ptr noundef nonnull %12, i32 noundef 1, ptr noundef nonnull inttoptr (i32 772 to ptr)) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %skwq_has_sleeper.exit.if.end14_crit_edge, %do.end10.if.end14_crit_edge
  tail call fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef 2, i32 noundef 2)
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %unix_writable.exit.if.end15_crit_edge, %rcu_read_lock.exit.if.end15_crit_edge
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i22, label %if.end15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

if.end15.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %if.end15
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %if.end15.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !166
  %15 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i.i.i.i29 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i30, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unix_sock_destructor(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #16
  %oob_skb = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 14
  %0 = ptrtoint ptr %oob_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_skb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %1, i32 noundef 0) #16
  %2 = ptrtoint ptr %oob_skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %oob_skb, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc, i32 noundef 4) #16
  %3 = ptrtoint ptr %sk_wmem_alloc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sk_wmem_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.end.if.end19_crit_edge, label %do.end, !prof !135

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 557, i32 noundef 9, ptr noundef null) #16
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end19.if.end51_crit_edge, label %do.end45, !prof !135

if.end19.if.end51_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

do.end45:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 558, i32 noundef 9, ptr noundef null) #16
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.end19.if.end51_crit_edge
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %7 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_socket, align 8
  %tobool60.not = icmp eq ptr %8, null
  br i1 %tobool60.not, label %if.end51.if.end82_crit_edge, label %do.end76, !prof !135

if.end51.if.end82_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

do.end76:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 559, i32 noundef 9, ptr noundef null) #16
  br label %if.end82

if.end82:                                         ; preds = %do.end76, %if.end51.if.end82_crit_edge
  %9 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %do.end94, label %if.end97

do.end94:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %sk) #19
  br label %cleanup

if.end97:                                         ; preds = %if.end82
  %addr = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr, align 64
  %tobool98.not = icmp eq ptr %14, null
  br i1 %tobool98.not, label %if.end97.if.end101_crit_edge, label %if.then99

if.end97.if.end101_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101

if.then99:                                        ; preds = %if.end97
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %14, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr nonnull %14, i32 1, i32 3, i32 1) #16
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #16, !srcloc !150
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end101_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.if.end101_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef 3) #16
  br label %if.end101

if.then.i:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !151
  tail call void @kfree(ptr noundef nonnull %14) #16
  br label %if.end101

if.end101:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end101_crit_edge, %if.end97.if.end101_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @unix_nr_socks, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @unix_nr_socks, i32 1, i32 3, i32 1) #16
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @unix_nr_socks, ptr nonnull @unix_nr_socks, i32 1, ptr nonnull elementtype(i32) @unix_nr_socks) #16, !srcloc !137
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %17 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skc_net.i, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %19 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_prot, align 8
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !145
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 29, i32 2
  %22 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prot_inuse.i, align 8
  %inuse_idx.i = getelementptr inbounds %struct.proto, ptr %20, i32 0, i32 26
  %24 = ptrtoint ptr %inuse_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %inuse_idx.i, align 4
  %arrayidx.i = getelementptr %struct.prot_inuse, ptr %23, i32 0, i32 1, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !123) #16
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %32, %26
  %33 = inttoptr i32 %add.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add15.i = add i32 %35, -1
  store i32 %add15.i, ptr %33, align 4
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !146
  %and.i.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i119, label %if.end101.sock_prot_inuse_add.exit_crit_edge, !prof !134

if.end101.sock_prot_inuse_add.exit_crit_edge:     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #18
  br label %sock_prot_inuse_add.exit

if.then.i119:                                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i119, %if.end101.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #16, !srcloc !147
  br label %cleanup

cleanup:                                          ; preds = %sock_prot_inuse_add.exit, %do.end94
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_dgram_peer_wake_relay(ptr noundef %q, i32 noundef %mode, i32 noundef %flags, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %q, i32 0, i32 1
  %entry1.i = getelementptr inbounds %struct.wait_queue_entry, ptr %q, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.__remove_wait_queue.exit_crit_edge

entry.__remove_wait_queue.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__remove_wait_queue.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %q, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i.i, align 4
  %2 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__remove_wait_queue.exit

__remove_wait_queue.exit:                         ; preds = %if.end.i.i.i, %entry.__remove_wait_queue.exit_crit_edge
  %6 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %q, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %private, align 4
  %9 = getelementptr i8, ptr %q, i32 -992
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %9, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %__remove_wait_queue.exit.if.end_crit_edge, label %if.then

__remove_wait_queue.exit.if.end_crit_edge:        ; preds = %__remove_wait_queue.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %__remove_wait_queue.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__wake_up(ptr noundef nonnull %11, i32 noundef 1, i32 noundef 1, ptr noundef %key) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %__remove_wait_queue.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_reg_target(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_init_seq_net(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_iter_fini_seq_net(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_iter_unix_seq_stop(ptr noundef %seq, ptr noundef readonly %v) #0 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__unix, align 8
  %meta = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta) #16
  %0 = getelementptr inbounds %struct.bpf_iter_meta, ptr %meta, i32 0, i32 2
  %tobool.not = icmp eq ptr %v, null
  %1 = call ptr @memset(ptr %meta, i32 255, i32 24)
  br i1 %tobool.not, label %if.then, label %if.then.i

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %seq, ptr %meta, align 8
  %call = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta, i1 noundef zeroext true) #16
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.unix_seq_stop.exit_crit_edge, label %if.then2

if.then.unix_seq_stop.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %unix_seq_stop.exit

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx.i) #16
  %3 = call ptr @memset(ptr %ctx.i, i32 255, i32 24)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %0, align 8
  %dec.i = add i64 %5, -1
  store i64 %dec.i, ptr %0, align 8
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %meta, ptr %ctx.i, align 8
  %7 = getelementptr inbounds %struct.bpf_iter__unix, ptr %ctx.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %7, align 8
  %uid1.i = getelementptr inbounds %struct.bpf_iter__unix, ptr %ctx.i, i32 0, i32 2
  %9 = ptrtoint ptr %uid1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %uid1.i, align 8
  %call.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call, ptr noundef nonnull %ctx.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx.i) #16
  br label %unix_seq_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %10 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %arrayidx.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %12
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #16
  br label %unix_seq_stop.exit

unix_seq_stop.exit:                               ; preds = %if.then.i, %if.then2, %if.then.unix_seq_stop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_iter_unix_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__unix, align 8
  %meta = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta) #16
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %0 = call ptr @memset(ptr %meta, i32 255, i32 24)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = getelementptr inbounds %struct.bpf_iter_meta, ptr %meta, i32 0, i32 2
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %call1 = tail call i32 @sock_i_uid(ptr noundef %v) #16
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call1, 0
  %call3 = tail call i32 @from_kuid_munged(ptr noundef %7, [1 x i32] %.fca.0.insert) #16
  %8 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %seq, ptr %meta, align 8
  %call4 = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta, i1 noundef zeroext false) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx.i) #16
  %9 = call ptr @memset(ptr %ctx.i, i32 255, i32 24)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %1, align 8
  %dec.i = add i64 %11, -1
  store i64 %dec.i, ptr %1, align 8
  %12 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %meta, ptr %ctx.i, align 8
  %13 = getelementptr inbounds %struct.bpf_iter__unix, ptr %ctx.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %v, ptr %13, align 8
  %uid1.i = getelementptr inbounds %struct.bpf_iter__unix, ptr %ctx.i, i32 0, i32 2
  %15 = ptrtoint ptr %uid1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call3, ptr %uid1.i, align 8
  %call.i = call i32 @bpf_iter_run_prog(ptr noundef %call4, ptr noundef nonnull %ctx.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_iter_get_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_run_prog(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { cold }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readnone }
attributes #24 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !47, !48, !49, !50, !52, !53, !55, !57, !59, !61, !62, !64, !65, !66, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !121}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__ksymtab_unix_table_locks, !1, !"__ksymtab_unix_table_locks", i1 false, i1 false}
!1 = !{!"../net/unix/af_unix.c", i32 122, i32 1}
!2 = !{ptr @__ksymtab_unix_socket_table, !3, !"__ksymtab_unix_socket_table", i1 false, i1 false}
!3 = !{!"../net/unix/af_unix.c", i32 124, i32 1}
!4 = !{ptr @__ksymtab_unix_peer_get, !5, !"__ksymtab_unix_peer_get", i1 false, i1 false}
!5 = !{!"../net/unix/af_unix.c", i32 242, i32 1}
!6 = !{ptr @unix_dgram_proto, !7, !"unix_dgram_proto", i1 false, i1 false}
!7 = !{!"../net/unix/af_unix.c", i32 872, i32 14}
!8 = !{ptr @unix_stream_proto, !9, !"unix_stream_proto", i1 false, i1 false}
!9 = !{!"../net/unix/af_unix.c", i32 882, i32 14}
!10 = !{ptr @__ksymtab_unix_inq_len, !11, !"__ksymtab_unix_inq_len", i1 false, i1 false}
!11 = !{!"../net/unix/af_unix.c", i32 3028, i32 1}
!12 = !{ptr @__ksymtab_unix_outq_len, !13, !"__ksymtab_unix_outq_len", i1 false, i1 false}
!13 = !{!"../net/unix/af_unix.c", i32 3034, i32 1}
!14 = !{ptr @__initcall__kmod_unix__547_3520_af_unix_init5, !15, !"__initcall__kmod_unix__547_3520_af_unix_init5", i1 false, i1 false}
!15 = !{!"../net/unix/af_unix.c", i32 3520, i32 1}
!16 = !{ptr @__exitcall_af_unix_exit, !17, !"__exitcall_af_unix_exit", i1 false, i1 false}
!17 = !{!"../net/unix/af_unix.c", i32 3521, i32 1}
!18 = !{ptr @__UNIQUE_ID_file548, !19, !"__UNIQUE_ID_file548", i1 false, i1 false}
!19 = !{!"../net/unix/af_unix.c", i32 3523, i32 1}
!20 = !{ptr @__UNIQUE_ID_license549, !19, !"__UNIQUE_ID_license549", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_alias550, !22, !"__UNIQUE_ID_alias550", i1 false, i1 false}
!22 = !{!"../net/unix/af_unix.c", i32 3524, i32 1}
!23 = !{ptr @unix_table_locks, !24, !"unix_table_locks", i1 false, i1 false}
!24 = !{!"../net/unix/af_unix.c", i32 121, i32 12}
!25 = !{ptr @unix_socket_table, !26, !"unix_socket_table", i1 false, i1 false}
!26 = !{!"../net/unix/af_unix.c", i32 123, i32 19}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/net/scm.h", i32 124, i32 39}
!29 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!31 = !{ptr @unix_net_ops, !32, !"unix_net_ops", i1 false, i1 false}
!32 = !{!"../net/unix/af_unix.c", i32 3441, i32 33}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/unix/af_unix.c", i32 3424, i32 7}
!35 = !{ptr @unix_seq_ops, !36, !"unix_seq_ops", i1 false, i1 false}
!36 = !{!"../net/unix/af_unix.c", i32 3342, i32 36}
!37 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/unix/af_unix.c", i32 3300, i32 17}
!39 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/unix/af_unix.c", i32 3307, i32 19}
!41 = !{ptr @af_unix_init.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../net/unix/af_unix.c", i32 3482, i32 3}
!43 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/unix/af_unix.c", i32 3486, i32 3}
!46 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @af_unix_init._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @af_unix_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @af_unix_init._entry.8, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../net/unix/af_unix.c", i32 3492, i32 3}
!52 = !{ptr @af_unix_init._entry_ptr.9, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @unix_family_ops, !54, !"unix_family_ops", i1 false, i1 false}
!54 = !{!"../net/unix/af_unix.c", i32 3408, i32 38}
!55 = !{ptr @unix_stream_ops, !56, !"unix_stream_ops", i1 false, i1 false}
!56 = !{!"../net/unix/af_unix.c", i32 783, i32 31}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/net/sock.h", i32 729, i32 3}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/net/sock.h", i32 2444, i32 19}
!61 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!64 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!68 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/unix/af_unix.c", i32 1102, i32 36}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../net/unix/af_unix.c", i32 660, i32 21}
!73 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/cred.h", i32 253, i32 2}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../net/unix/af_unix.c", i32 3058, i32 33}
!77 = !{ptr @.str.17, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/unix/af_unix.c", i32 775, i32 17}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/net/scm.h", i32 85, i32 41}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/net/scm.h", i32 85, i32 56}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../net/unix/af_unix.c", i32 1786, i32 3}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../net/unix/af_unix.c", i32 1803, i32 3}
!87 = !{ptr @unix_dgram_ops, !88, !"unix_dgram_ops", i1 false, i1 false}
!88 = !{!"../net/unix/af_unix.c", i32 809, i32 31}
!89 = !{ptr @unix_seqpacket_ops, !90, !"unix_seqpacket_ops", i1 false, i1 false}
!90 = !{!"../net/unix/af_unix.c", i32 834, i32 31}
!91 = !{ptr @unix_create1.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../net/unix/af_unix.c", i32 925, i32 2}
!93 = !{ptr @.str.19, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @unix_create1.__key.20, !95, !"__key", i1 false, i1 false}
!95 = !{!"../net/unix/af_unix.c", i32 928, i32 2}
!96 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @unix_create1.__key.22, !98, !"__key", i1 false, i1 false}
!98 = !{!"../net/unix/af_unix.c", i32 929, i32 2}
!99 = !{ptr @.str.23, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @unix_create1.__key.24, !101, !"__key", i1 false, i1 false}
!101 = !{!"../net/unix/af_unix.c", i32 930, i32 2}
!102 = !{ptr @.str.25, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @unix_nr_socks, !104, !"unix_nr_socks", i1 false, i1 false}
!104 = !{!"../net/unix/af_unix.c", i32 125, i32 22}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../net/unix/af_unix.c", i32 514, i32 8}
!107 = !{ptr @.str.26, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/unix/af_unix.c", i32 561, i32 3}
!109 = !{ptr @.str.27, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @unix_sock_destructor._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @unix_sock_destructor._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.28, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/unix/af_unix.c", i32 3471, i32 3}
!114 = !{ptr @.str.29, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @bpf_iter_register._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @bpf_iter_register._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @unix_reg_info, !118, !"unix_reg_info", i1 false, i1 false}
!118 = !{!"../net/unix/af_unix.c", i32 3457, i32 28}
!119 = !{ptr @unix_seq_info, !120, !"unix_seq_info", i1 false, i1 false}
!120 = !{!"../net/unix/af_unix.c", i32 3450, i32 39}
!121 = !{ptr @bpf_iter_unix_seq_ops, !122, !"bpf_iter_unix_seq_ops", i1 false, i1 false}
!122 = !{!"../net/unix/af_unix.c", i32 3399, i32 36}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2148423566, i64 2148423598, i64 2148423627, i64 2148423661, i64 2148423692, i64 2148423715}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{!"branch_weights", i32 2000, i32 1}
!136 = !{!"auto-init"}
!137 = !{i64 2148424501, i64 2148424527, i64 2148424556, i64 2148424590, i64 2148424621, i64 2148424644}
!138 = !{i64 2149531919}
!139 = !{i64 2158144126}
!140 = !{i64 2157951799}
!141 = !{i64 928804, i64 928821, i64 928845, i64 928871, i64 928889}
!142 = !{i64 2157952142}
!143 = !{i64 2158037787}
!144 = !{i64 2148422036, i64 2148422062, i64 2148422091, i64 2148422125, i64 2148422156, i64 2148422179}
!145 = !{i64 825736, i64 825797}
!146 = !{i64 828468}
!147 = !{i64 828753}
!148 = !{i64 2152693769}
!149 = !{i64 2148511591}
!150 = !{i64 2148426031, i64 2148426063, i64 2148426092, i64 2148426126, i64 2148426157, i64 2148426180}
!151 = !{i64 2149387705}
!152 = !{i64 7320248}
!153 = !{i64 2158091137}
!154 = !{i64 2158093471}
!155 = !{i64 2157899077}
!156 = !{i64 2158101999}
!157 = !{i64 2157945549}
!158 = !{i64 4689398}
!159 = !{i64 4689595}
!160 = !{i64 2152174828}
!161 = !{i64 2158183706, i64 2158183986, i64 2158184320, i64 2158184654}
!162 = !{i64 2158192565, i64 2158192845, i64 2158193179, i64 2158193513}
!163 = !{i64 2158176881}
!164 = !{i64 2158201981, i64 2158202261, i64 2158202595, i64 2158202929}
!165 = !{i64 2149438195}
!166 = !{i64 2149438461}
!167 = !{i64 2158059489}
!168 = !{i64 2148510512}
!169 = !{i64 2148425221, i64 2148425253, i64 2148425282, i64 2148425316, i64 2148425347, i64 2148425370}
!170 = !{i64 2148510741}
!171 = !{!"branch_weights", i32 2002, i32 2000}
!172 = !{!"branch_weights", i32 1073205, i32 2146410443}
