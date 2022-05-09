; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/gss_rpc_upcall.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_rpc_upcall.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.sunrpc_net = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.spinlock, i32, i8, %struct.mutex, ptr, i32, i32, %struct.atomic_t, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rpc_create_args = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.90 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.gssx_ctx = type { %struct.xdr_netobj, %struct.xdr_netobj, i32, %struct.xdr_netobj, %struct.gssx_name, %struct.gssx_name, i64, i64, i32, i32, %struct.gssx_option_array }
%struct.xdr_netobj = type { i32, ptr }
%struct.gssx_name = type { %struct.xdr_netobj }
%struct.gssx_option_array = type { i32, ptr }
%struct.gssx_arg_accept_sec_context = type { %struct.gssx_call_ctx, ptr, ptr, %struct.gssp_in_token, ptr, i32, %struct.gssx_option_array, ptr, i32 }
%struct.gssx_call_ctx = type { %struct.xdr_netobj, %struct.xdr_netobj, %struct.gssx_option_array }
%struct.gssp_in_token = type { ptr, i32, i32 }
%struct.gssx_res_accept_sec_context = type { %struct.gssx_status, ptr, ptr, %struct.gssx_option_array }
%struct.gssx_status = type { i64, %struct.xdr_netobj, i64, %struct.xdr_netobj, %struct.xdr_netobj, %struct.xdr_netobj, %struct.gssx_option_array }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.gssp_upcall_data = type { %struct.xdr_netobj, %struct.gssp_in_token, %struct.xdr_netobj, %struct.xdr_netobj, %struct.rpcsec_gss_oid, %struct.svc_cred, i32, i32, i32 }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.110 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.gssx_option = type { %struct.xdr_netobj, %struct.xdr_netobj }

@init_gssp_clnt.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sn->gssp_lock\00", [17 x i8] zeroinitializer }, align 32
@sunrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@gssp_procedures = internal constant { [16 x %struct.rpc_procinfo], [128 x i8] } { [16 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 1, ptr @.str.14 }, %struct.rpc_procinfo { i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 2, ptr @.str.15 }, %struct.rpc_procinfo { i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 3, ptr @.str.16 }, %struct.rpc_procinfo { i32 4, ptr null, ptr null, i32 0, i32 0, i32 0, i32 4, ptr @.str.17 }, %struct.rpc_procinfo { i32 5, ptr null, ptr null, i32 0, i32 0, i32 0, i32 5, ptr @.str.18 }, %struct.rpc_procinfo { i32 6, ptr null, ptr null, i32 0, i32 0, i32 0, i32 6, ptr @.str.19 }, %struct.rpc_procinfo { i32 7, ptr null, ptr null, i32 0, i32 0, i32 0, i32 7, ptr @.str.20 }, %struct.rpc_procinfo { i32 8, ptr null, ptr null, i32 0, i32 0, i32 0, i32 8, ptr @.str.21 }, %struct.rpc_procinfo { i32 9, ptr @gssx_enc_accept_sec_context, ptr @gssx_dec_accept_sec_context, i32 220, i32 2316, i32 0, i32 9, ptr @.str.22 }, %struct.rpc_procinfo { i32 10, ptr null, ptr null, i32 0, i32 0, i32 0, i32 10, ptr @.str.23 }, %struct.rpc_procinfo { i32 11, ptr null, ptr null, i32 0, i32 0, i32 0, i32 11, ptr @.str.24 }, %struct.rpc_procinfo { i32 12, ptr null, ptr null, i32 0, i32 0, i32 0, i32 12, ptr @.str.25 }, %struct.rpc_procinfo { i32 13, ptr null, ptr null, i32 0, i32 0, i32 0, i32 13, ptr @.str.26 }, %struct.rpc_procinfo { i32 14, ptr null, ptr null, i32 0, i32 0, i32 0, i32 14, ptr @.str.27 }, %struct.rpc_procinfo { i32 15, ptr null, ptr null, i32 0, i32 0, i32 0, i32 15, ptr @.str.28 }], [128 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@gssp_rpc_create.gssp_localaddr = internal constant { %struct.sockaddr_un, [50 x i8] } { %struct.sockaddr_un { i16 1, [108 x i8] c"/var/run/gssproxy.sock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"localhost\00", [22 x i8] zeroinitializer }, align 32
@gssp_program = internal constant { %struct.rpc_program, [40 x i8] } { %struct.rpc_program { ptr @.str.13, i32 400112, i32 2, ptr @gssp_version, ptr @gssp_stats, ptr null }, [40 x i8] zeroinitializer }, align 32
@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@gssp_rpc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"RPC:       failed to create AF_LOCAL gssproxy client (errno %ld).\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gssp_rpc_create\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"net/sunrpc/auth_gss/gss_rpc_upcall.c\00", [59 x i8] zeroinitializer }, align 32
@gssp_rpc_create._entry_ptr = internal global ptr @gssp_rpc_create._entry, section ".printk_index", align 4
@gssp_rpc_create._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"RPC:       created new gssp local client (gssp_local_clnt: %p)\0A\00", [32 x i8] zeroinitializer }, align 32
@gssp_rpc_create._entry_ptr.12 = internal global ptr @gssp_rpc_create._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gssproxy\00", [23 x i8] zeroinitializer }, align 32
@gssp_version = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr null, ptr @gssp_version1], [24 x i8] zeroinitializer }, align 32
@gssp_stats = internal global { %struct.rpc_stat, [56 x i8] } zeroinitializer, align 32
@gssp_version1 = internal constant { %struct.rpc_version, [16 x i8] } { %struct.rpc_version { i32 1, i32 16, ptr @gssp_procedures, ptr @gssp_version1_counts }, [16 x i8] zeroinitializer }, align 32
@gssp_version1_counts = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INDICATE_MECHS\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GET_CALL_CONTEXT\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IMPORT_AND_CANON_NAME\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EXPORT_CRED\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IMPORT_CRED\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ACQUIRE_CRED\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"STORE_CRED\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INIT_SEC_CONTEXT\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ACCEPT_SEC_CONTEXT\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RELEASE_HANDLE\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GET_MIC\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VERIFY\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WRAP\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UNWRAP\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WRAP_SIZE_LIMIT\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gssp_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.9, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"gssp: rpc_call returned error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gssp_call\00", [22 x i8] zeroinitializer }, align 32
@gssp_call._entry_ptr = internal global ptr @gssp_call._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967185, i64 4294967186, i64 4294967189, i64 4294967203]
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 125, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"gssp_procedures\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 53, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 45, i32 7 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 695, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 723, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"gssp_localaddr\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 81, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 90, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"gssp_program\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 396, i32 33 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 108, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 115, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 397, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"gssp_version\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 389, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"gssp_stats\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 394, i32 24 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"gssp_version1\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 382, i32 33 }
@___asan_gen_.95 = private unnamed_addr constant [21 x i8] c"gssp_version1_counts\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 381, i32 21 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 54, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 55, i32 9 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 56, i32 9 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 57, i32 9 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 58, i32 9 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 59, i32 9 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 60, i32 9 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 61, i32 9 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 62, i32 9 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 63, i32 9 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 64, i32 9 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 65, i32 9 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 66, i32 9 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 67, i32 9 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 68, i32 9 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [40 x i8] c"../net/sunrpc/auth_gss/gss_rpc_upcall.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 179, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @gssp_call._entry, ptr @gssp_call._entry_ptr, ptr @gssp_rpc_create._entry, ptr @gssp_rpc_create._entry.10, ptr @gssp_rpc_create._entry_ptr, ptr @gssp_rpc_create._entry_ptr.12, ptr @init_gssp_clnt.__key, ptr @.str, ptr @gssp_procedures, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gssp_rpc_create.gssp_localaddr, ptr @.str.6, ptr @gssp_program, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @gssp_version, ptr @gssp_stats, ptr @gssp_version1, ptr @gssp_version1_counts, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_gssp_clnt.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gssp_procedures to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gssp_rpc_create.gssp_localaddr to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gssp_program to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gssp_rpc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gssp_rpc_create._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gssp_version to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gssp_stats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gssp_version1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gssp_version1_counts to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gssp_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_gssp_clnt(ptr noundef %sn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gssp_lock = getelementptr inbounds %struct.sunrpc_net, ptr %sn, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %gssp_lock, ptr noundef nonnull @.str, ptr noundef nonnull @init_gssp_clnt.__key) #9
  %gssp_clnt = getelementptr inbounds %struct.sunrpc_net, ptr %sn, i32 0, i32 16
  %0 = ptrtoint ptr %gssp_clnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %gssp_clnt, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_gssp_clnt(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.rpc_create_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %0 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %gssp_lock = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %gssp_lock, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %1 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %net, ptr %args.i, align 4
  %protocol.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 1
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 257, ptr %protocol.i, align 4
  %address.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 2
  %3 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @gssp_rpc_create.gssp_localaddr, ptr %address.i, align 4
  %addrsize.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 3
  %4 = ptrtoint ptr %addrsize.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 110, ptr %addrsize.i, align 4
  %saddress.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 4
  %5 = ptrtoint ptr %saddress.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %saddress.i, align 4
  %timeout.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 5
  %6 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %timeout.i, align 4
  %servername.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 6
  %7 = ptrtoint ptr %servername.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.6, ptr %servername.i, align 4
  %nodename.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 7
  %8 = ptrtoint ptr %nodename.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %nodename.i, align 4
  %program.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 8
  %9 = ptrtoint ptr %program.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gssp_program, ptr %program.i, align 4
  %prognumber.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 9
  %10 = ptrtoint ptr %prognumber.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %prognumber.i, align 4
  %version.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 10
  %11 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %version.i, align 4
  %authflavor.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 11
  %12 = ptrtoint ptr %authflavor.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %authflavor.i, align 4
  %nconnect.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 12
  %13 = ptrtoint ptr %nconnect.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %nconnect.i, align 4
  %flags.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 13
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 272, ptr %flags.i, align 4
  %client_name.i = getelementptr inbounds %struct.rpc_create_args, ptr %args.i, i32 0, i32 14
  %15 = call ptr @memset(ptr %client_name.i, i32 0, i32 16)
  %call.i = call ptr @rpc_create(ptr noundef nonnull %args.i) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %16 = load i32, ptr @rpc_debug, align 4
  %and.i = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i.i, label %do.body.i, label %do.body13.i

do.body.i:                                        ; preds = %entry
  %.pre.i = ptrtoint ptr %call.i to i32
  br i1 %tobool.not.i, label %do.body.i.gssp_rpc_create.exit_crit_edge, label %do.end.i, !prof !89

do.body.i.gssp_rpc_create.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gssp_rpc_create.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %.pre.i) #12
  br label %gssp_rpc_create.exit

do.body13.i:                                      ; preds = %entry
  br i1 %tobool.not.i, label %do.body13.i.gssp_rpc_create.exit.thread_crit_edge, label %do.end25.i, !prof !89

do.body13.i.gssp_rpc_create.exit.thread_crit_edge: ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gssp_rpc_create.exit.thread

do.end25.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %call.i) #12
  br label %gssp_rpc_create.exit.thread

gssp_rpc_create.exit.thread:                      ; preds = %do.end25.i, %do.body13.i.gssp_rpc_create.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %gssp_clnt = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 16
  %17 = ptrtoint ptr %gssp_clnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gssp_clnt, align 4
  %tobool2.not = icmp eq ptr %18, null
  br i1 %tobool2.not, label %gssp_rpc_create.exit.thread.if.end_crit_edge, label %if.then3

gssp_rpc_create.exit.thread.if.end_crit_edge:     ; preds = %gssp_rpc_create.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

gssp_rpc_create.exit:                             ; preds = %do.end.i, %do.body.i.gssp_rpc_create.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %if.end6

if.then3:                                         ; preds = %gssp_rpc_create.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  call void @rpc_shutdown_client(ptr noundef nonnull %18) #9
  br label %if.end

if.end:                                           ; preds = %if.then3, %gssp_rpc_create.exit.thread.if.end_crit_edge
  %19 = ptrtoint ptr %gssp_clnt to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %gssp_clnt, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %gssp_rpc_create.exit
  %result.0.i18 = phi i32 [ 0, %if.end ], [ %.pre.i, %gssp_rpc_create.exit ]
  call void @mutex_unlock(ptr noundef %gssp_lock) #9
  ret i32 %result.0.i18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @.str.2) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %8 = tail call i32 @llvm.read_register.i32(metadata !79) #9
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_gssp_clnt(ptr noundef %sn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gssp_lock = getelementptr inbounds %struct.sunrpc_net, ptr %sn, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %gssp_lock, i32 noundef 0) #9
  %gssp_clnt = getelementptr inbounds %struct.sunrpc_net, ptr %sn, i32 0, i32 16
  %0 = ptrtoint ptr %gssp_clnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gssp_clnt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rpc_shutdown_client(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %gssp_clnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %gssp_clnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %gssp_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gssp_accept_sec_context_upcall(ptr noundef %net, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %ctxh = alloca %struct.gssx_ctx, align 8
  %arg = alloca %struct.gssx_arg_accept_sec_context, align 4
  %rctxh = alloca %struct.gssx_ctx, align 8
  %res = alloca %struct.gssx_res_accept_sec_context, align 8
  %msg = alloca %struct.rpc_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ctxh) #9
  %0 = call ptr @memset(ptr %ctxh, i32 0, i32 80)
  %state = getelementptr inbounds %struct.gssx_ctx, ptr %ctxh, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %data, align 4
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %state, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %arg) #9
  %4 = call ptr @memset(ptr %arg, i32 0, i32 68)
  %input_token = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %arg, i32 0, i32 3
  %in_token = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %input_token, ptr %in_token, i32 12)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %rctxh) #9
  %6 = call ptr @memset(ptr %rctxh, i32 0, i32 80)
  %7 = ptrtoint ptr %rctxh to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 128, ptr %rctxh, align 8
  %8 = getelementptr inbounds { %struct.xdr_netobj, %struct.xdr_netobj, i32, %struct.xdr_netobj, %struct.gssx_name, %struct.gssx_name, [4 x i8], i64, i64, i32, i32, %struct.gssx_option_array }, ptr %rctxh, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %8, align 4
  %10 = getelementptr inbounds { %struct.xdr_netobj, %struct.xdr_netobj, i32, %struct.xdr_netobj, %struct.gssx_name, %struct.gssx_name, [4 x i8], i64, i64, i32, i32, %struct.gssx_option_array }, ptr %rctxh, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 256, ptr %10, align 4
  %12 = getelementptr inbounds { %struct.xdr_netobj, %struct.xdr_netobj, i32, %struct.xdr_netobj, %struct.gssx_name, %struct.gssx_name, [4 x i8], i64, i64, i32, i32, %struct.gssx_option_array }, ptr %rctxh, i32 0, i32 5
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 256, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %res) #9
  %14 = call ptr @memset(ptr %res, i32 0, i32 72)
  %context_handle = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %res, i32 0, i32 1
  %15 = ptrtoint ptr %context_handle to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rctxh, ptr %context_handle, align 8
  %output_token = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %res, i32 0, i32 2
  %out_token = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 3
  %16 = ptrtoint ptr %output_token to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %out_token, ptr %output_token, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #9
  %17 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 1
  %18 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 2
  %19 = getelementptr inbounds %struct.rpc_message, ptr %msg, i32 0, i32 3
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr getelementptr inbounds ([16 x %struct.rpc_procinfo], ptr @gssp_procedures, i32 0, i32 9), ptr %msg, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arg, ptr %17, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %res, ptr %18, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %2)
  %cmp.not = icmp ult i64 %2, 4294967296
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %context_handle2 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %arg, i32 0, i32 1
  %24 = ptrtoint ptr %context_handle2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ctxh, ptr %context_handle2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %25 = ptrtoint ptr %out_token to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1024, ptr %out_token, align 4
  %npages.i = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %arg, i32 0, i32 8
  %26 = ptrtoint ptr %npages.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 64, ptr %npages.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 256) #13
  %pages.i = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %arg, i32 0, i32 7
  %28 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i.i.i, ptr %pages.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %for.cond.preheader.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end
  %29 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %npages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp21.not.i = icmp eq i32 %30, 0
  br i1 %cmp21.not.i, label %for.cond.preheader.i.if.end6_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end6_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.022.i, 1
  %31 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %npages.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %32
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end6_crit_edge

for.cond.i.if.end6_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %33 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pages.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %34, i32 %i.022.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call38.i.i.i.i, ptr %arrayidx.i, align 4
  %36 = load ptr, ptr %pages.i, align 4
  %arrayidx7.i = getelementptr ptr, ptr %36, i32 %i.022.i
  %37 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx7.i, align 4
  %tobool8.not.i = icmp eq ptr %38, null
  br i1 %tobool8.not.i, label %if.then9.i, label %for.cond.i

if.then9.i:                                       ; preds = %for.body.i
  %39 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %npages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp10.not.i.i = icmp eq i32 %40, 0
  br i1 %cmp10.not.i.i, label %if.then9.i.gssp_free_receive_pages.exit.i_crit_edge, label %if.then9.i.land.rhs.i.i_crit_edge

if.then9.i.land.rhs.i.i_crit_edge:                ; preds = %if.then9.i
  br label %land.rhs.i.i

if.then9.i.gssp_free_receive_pages.exit.i_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gssp_free_receive_pages.exit.i

land.rhs.i.i:                                     ; preds = %for.body.i.i.land.rhs.i.i_crit_edge, %if.then9.i.land.rhs.i.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i.i, %for.body.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.then9.i.land.rhs.i.i_crit_edge ]
  %41 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pages.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %42, i32 %i.011.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %land.rhs.i.i.gssp_free_receive_pages.exit.i_crit_edge, label %for.body.i.i

land.rhs.i.i.gssp_free_receive_pages.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gssp_free_receive_pages.exit.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  call void @__free_pages(ptr noundef nonnull %44, i32 noundef 0) #9
  %inc.i.i = add nuw i32 %i.011.i.i, 1
  %45 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %npages.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %46
  br i1 %cmp.i.i, label %for.body.i.i.land.rhs.i.i_crit_edge, label %for.body.i.i.gssp_free_receive_pages.exit.i_crit_edge

for.body.i.i.gssp_free_receive_pages.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gssp_free_receive_pages.exit.i

for.body.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

gssp_free_receive_pages.exit.i:                   ; preds = %for.body.i.i.gssp_free_receive_pages.exit.i_crit_edge, %land.rhs.i.i.gssp_free_receive_pages.exit.i_crit_edge, %if.then9.i.gssp_free_receive_pages.exit.i_crit_edge
  %47 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pages.i, align 4
  br label %cleanup.sink.split

if.end6:                                          ; preds = %for.cond.i.if.end6_crit_edge, %for.cond.preheader.i.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %49 = load i32, ptr @sunrpc_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %49) #9
  %gssp_lock.i.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i, i32 0, i32 15
  call void @mutex_lock_nested(ptr noundef %gssp_lock.i.i, i32 noundef 0) #9
  %gssp_clnt.i.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i, i32 0, i32 16
  %50 = ptrtoint ptr %gssp_clnt.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gssp_clnt.i.i, align 4
  %tobool.not.i.i106 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i106, label %get_gssp_clnt.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %51, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr nonnull %51, i32 1, i32 3, i32 1) #9
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %51, ptr nonnull %51, i32 1, ptr nonnull elementtype(i32) %51) #9, !srcloc !92
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !93

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %53 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %.not.i.i.i.i.i = icmp sgt i32 %53, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !89

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end.i_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %51, i32 noundef %.sink.i.i.i.i.i) #9
  br label %if.end.i

get_gssp_clnt.exit.i:                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %gssp_lock.i.i) #9
  br label %gssp_call.exit

if.end.i:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end.i_crit_edge
  call void @mutex_unlock(ptr noundef %gssp_lock.i.i) #9
  %call2.i = call i32 @rpc_call_sync(ptr noundef nonnull %51, ptr noundef nonnull %msg, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i107 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i107, label %do.body.i, label %if.end.i.if.end20.i_crit_edge

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %54 = load i32, ptr @rpc_debug, align 4
  %and.i = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.end.i, !prof !89

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub i32 0, %call2.i
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %sub.i) #12
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %do.body.i.do.end12.i_crit_edge
  %55 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2.i, label %do.end12.i.if.end20.i_crit_edge [
    i32 -93, label %sw.bb.i
    i32 -111, label %do.end12.i.sw.bb13.i_crit_edge
    i32 -110, label %do.end12.i.sw.bb13.i_crit_edge144
    i32 -107, label %do.end12.i.sw.bb13.i_crit_edge145
    i32 -512, label %sw.bb14.i
  ]

do.end12.i.sw.bb13.i_crit_edge145:                ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13.i

do.end12.i.sw.bb13.i_crit_edge144:                ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13.i

do.end12.i.sw.bb13.i_crit_edge:                   ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13.i

do.end12.i.if.end20.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

sw.bb.i:                                          ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

sw.bb13.i:                                        ; preds = %do.end12.i.sw.bb13.i_crit_edge, %do.end12.i.sw.bb13.i_crit_edge144, %do.end12.i.sw.bb13.i_crit_edge145
  br label %if.end20.i

sw.bb14.i:                                        ; preds = %do.end12.i
  %56 = call i32 @llvm.read_register.i32(metadata !79) #9
  %and.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %stack.i.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %64 = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i28.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i28.i, label %signal_pending.exit.i, label %sw.bb14.i.if.end20.i_crit_edge, !prof !89

sw.bb14.i.if.end20.i_crit_edge:                   ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

signal_pending.exit.i:                            ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %61, align 4
  %and1.i.i.i.i.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool17.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  %spec.select.i = select i1 %tobool17.not.i, i32 -512, i32 -4
  br label %if.end20.i

if.end20.i:                                       ; preds = %signal_pending.exit.i, %sw.bb14.i.if.end20.i_crit_edge, %sw.bb13.i, %sw.bb.i, %do.end12.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  %status.0.i = phi i32 [ %call2.i, %do.end12.i.if.end20.i_crit_edge ], [ -11, %sw.bb13.i ], [ -22, %sw.bb.i ], [ %call2.i, %if.end.i.if.end20.i_crit_edge ], [ -4, %sw.bb14.i.if.end20.i_crit_edge ], [ %spec.select.i, %signal_pending.exit.i ]
  call void @rpc_release_client(ptr noundef nonnull %51) #9
  br label %gssp_call.exit

gssp_call.exit:                                   ; preds = %if.end20.i, %get_gssp_clnt.exit.i
  %retval.0.i108 = phi i32 [ %status.0.i, %if.end20.i ], [ -5, %get_gssp_clnt.exit.i ]
  %67 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %npages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp10.not.i = icmp eq i32 %68, 0
  br i1 %cmp10.not.i, label %gssp_call.exit.gssp_free_receive_pages.exit_crit_edge, label %gssp_call.exit.land.rhs.i_crit_edge

gssp_call.exit.land.rhs.i_crit_edge:              ; preds = %gssp_call.exit
  br label %land.rhs.i

gssp_call.exit.gssp_free_receive_pages.exit_crit_edge: ; preds = %gssp_call.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %gssp_free_receive_pages.exit

land.rhs.i:                                       ; preds = %for.body.i115.land.rhs.i_crit_edge, %gssp_call.exit.land.rhs.i_crit_edge
  %i.011.i = phi i32 [ %inc.i113, %for.body.i115.land.rhs.i_crit_edge ], [ 0, %gssp_call.exit.land.rhs.i_crit_edge ]
  %69 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pages.i, align 4
  %arrayidx.i111 = getelementptr ptr, ptr %70, i32 %i.011.i
  %71 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i111, align 4
  %tobool.not.i112 = icmp eq ptr %72, null
  br i1 %tobool.not.i112, label %land.rhs.i.gssp_free_receive_pages.exit_crit_edge, label %for.body.i115

land.rhs.i.gssp_free_receive_pages.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gssp_free_receive_pages.exit

for.body.i115:                                    ; preds = %land.rhs.i
  call void @__free_pages(ptr noundef nonnull %72, i32 noundef 0) #9
  %inc.i113 = add nuw i32 %i.011.i, 1
  %73 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %npages.i, align 4
  %cmp.i114 = icmp ult i32 %inc.i113, %74
  br i1 %cmp.i114, label %for.body.i115.land.rhs.i_crit_edge, label %for.body.i115.gssp_free_receive_pages.exit_crit_edge

for.body.i115.gssp_free_receive_pages.exit_crit_edge: ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %gssp_free_receive_pages.exit

for.body.i115.land.rhs.i_crit_edge:               ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

gssp_free_receive_pages.exit:                     ; preds = %for.body.i115.gssp_free_receive_pages.exit_crit_edge, %land.rhs.i.gssp_free_receive_pages.exit_crit_edge, %gssp_call.exit.gssp_free_receive_pages.exit_crit_edge
  %75 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pages.i, align 4
  call void @kfree(ptr noundef %76) #9
  %77 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %res, align 8
  %conv = trunc i64 %78 to i32
  %major_status8 = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 7
  %79 = ptrtoint ptr %major_status8 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv, ptr %major_status8, align 4
  %minor_status = getelementptr inbounds %struct.gssx_status, ptr %res, i32 0, i32 2
  %80 = ptrtoint ptr %minor_status to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %minor_status, align 8
  %conv10 = trunc i64 %81 to i32
  %minor_status11 = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 8
  %82 = ptrtoint ptr %minor_status11 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv10, ptr %minor_status11, align 4
  %83 = ptrtoint ptr %context_handle to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %context_handle, align 8
  %tobool13.not = icmp eq ptr %84, null
  br i1 %tobool13.not, label %gssp_free_receive_pages.exit.if.end31_crit_edge, label %if.then14

gssp_free_receive_pages.exit.if.end31_crit_edge:  ; preds = %gssp_free_receive_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then14:                                        ; preds = %gssp_free_receive_pages.exit
  %out_handle = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 2
  %85 = ptrtoint ptr %rctxh to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %rctxh, align 8
  %87 = ptrtoint ptr %out_handle to i32
  call void @__asan_storeN_noabort(i32 %87, i32 8)
  store i64 %86, ptr %out_handle, align 4
  %88 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %8, align 4
  %mech_oid = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 4
  %90 = ptrtoint ptr %mech_oid to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %mech_oid, align 4
  %data18 = getelementptr inbounds %struct.gssx_ctx, ptr %rctxh, i32 0, i32 3, i32 1
  %91 = ptrtoint ptr %data18 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data18, align 8
  %tobool19.not = icmp eq ptr %92, null
  br i1 %tobool19.not, label %if.then14.if.end29_crit_edge, label %if.then20

if.then14.if.end29_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %data22 = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 4, i32 1
  %93 = call ptr @memcpy(ptr %data22, ptr %92, i32 %89)
  call void @kfree(ptr noundef nonnull %92) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then20, %if.then14.if.end29_crit_edge
  %94 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %10, align 4
  %src_name.sroa_idx = getelementptr inbounds %struct.gssx_ctx, ptr %rctxh, i32 0, i32 4, i32 0, i32 1
  %96 = ptrtoint ptr %src_name.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %src_name.sroa_idx, align 8
  %98 = inttoptr i32 %97 to ptr
  %99 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %12, align 4
  %targ_name.sroa_idx = getelementptr inbounds %struct.gssx_ctx, ptr %rctxh, i32 0, i32 5, i32 0, i32 1
  %101 = ptrtoint ptr %targ_name.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %targ_name.sroa_idx, align 8
  %103 = inttoptr i32 %102 to ptr
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %gssp_free_receive_pages.exit.if.end31_crit_edge
  %client_name.sroa.6.0 = phi ptr [ null, %gssp_free_receive_pages.exit.if.end31_crit_edge ], [ %98, %if.end29 ]
  %client_name.sroa.0.0 = phi i32 [ 0, %gssp_free_receive_pages.exit.if.end31_crit_edge ], [ %95, %if.end29 ]
  %target_name.sroa.5.0 = phi ptr [ null, %gssp_free_receive_pages.exit.if.end31_crit_edge ], [ %103, %if.end29 ]
  %target_name.sroa.0.0 = phi i32 [ 0, %gssp_free_receive_pages.exit.if.end31_crit_edge ], [ %100, %if.end29 ]
  %options = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %res, i32 0, i32 3
  %104 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %options, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp32 = icmp eq i32 %105, 1
  br i1 %cmp32, label %if.then34, label %if.end31.if.end45_crit_edge

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then34:                                        ; preds = %if.end31
  %data36 = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %res, i32 0, i32 3, i32 1
  %106 = ptrtoint ptr %data36 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data36, align 4
  %value37 = getelementptr inbounds %struct.gssx_option, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %value37 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %value37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp39 = icmp eq i32 %109, 1
  br i1 %cmp39, label %if.then41, label %if.then34.if.end43_crit_edge

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then41:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %creds = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 5
  %data42 = getelementptr inbounds %struct.gssx_option, ptr %107, i32 0, i32 1, i32 1
  %110 = ptrtoint ptr %data42 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data42, align 4
  %112 = call ptr @memcpy(ptr %creds, ptr %111, i32 32)
  %found_creds = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 6
  %113 = ptrtoint ptr %found_creds to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %found_creds, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.then34.if.end43_crit_edge
  %data44 = getelementptr inbounds %struct.gssx_option, ptr %107, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %data44 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data44, align 4
  call void @kfree(ptr noundef %115) #9
  %116 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %116)
  %.pr = load i32, ptr %options, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %if.end31.if.end45_crit_edge
  %117 = phi i32 [ %.pr, %if.end43 ], [ %105, %if.end31.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp48.not = icmp eq i32 %117, 0
  br i1 %cmp48.not, label %if.end45.if.end53_crit_edge, label %if.then50

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %data52 = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %res, i32 0, i32 3, i32 1
  %118 = ptrtoint ptr %data52 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data52, align 4
  call void @kfree(ptr noundef %119) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end45.if.end53_crit_edge
  %found_creds54 = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 6
  %120 = ptrtoint ptr %found_creds54 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %found_creds54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool55.not = icmp eq i32 %121, 0
  br i1 %tobool55.not, label %if.end53.if.end75_crit_edge, label %if.then56

if.end53.if.end75_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then56:                                        ; preds = %if.end53
  %tobool58.not = icmp eq ptr %client_name.sroa.6.0, null
  br i1 %tobool58.not, label %if.then56.if.end66_crit_edge, label %if.then59

if.then56.if.end66_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then59:                                        ; preds = %if.then56
  %call.i116 = call ptr @kmemdup_nul(ptr noundef nonnull %client_name.sroa.6.0, i32 noundef %client_name.sroa.0.0, i32 noundef 3264) #9
  %cr_raw_principal = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 5, i32 4
  %122 = ptrtoint ptr %cr_raw_principal to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call.i116, ptr %cr_raw_principal, align 4
  %call.i118 = call ptr @kmemdup_nul(ptr noundef nonnull %client_name.sroa.6.0, i32 noundef %client_name.sroa.0.0, i32 noundef 3264) #9
  %cr_principal = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 5, i32 5
  %123 = ptrtoint ptr %cr_principal to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i118, ptr %cr_principal, align 4
  %tobool.not.i119 = icmp eq ptr %call.i118, null
  br i1 %tobool.not.i119, label %if.then59.if.end66_crit_edge, label %if.end.i121

if.then59.if.end66_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end.i121:                                      ; preds = %if.then59
  %call.i120 = call ptr @strchr(ptr noundef nonnull %call.i118, i32 noundef 64) #9
  %tobool1.not.i = icmp eq ptr %call.i120, null
  br i1 %tobool1.not.i, label %if.end.i121.if.then9.i123_crit_edge, label %if.then2.i

if.end.i121.if.then9.i123_crit_edge:              ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i123

if.then2.i:                                       ; preds = %if.end.i121
  %124 = ptrtoint ptr %call.i120 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %call.i120, align 1
  %125 = ptrtoint ptr %cr_principal to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cr_principal, align 4
  %call3.i = call ptr @strchr(ptr noundef %126, i32 noundef 47) #9
  %tobool4.not.i122 = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i122, label %if.then2.i.if.then9.i123_crit_edge, label %if.then5.i

if.then2.i.if.then9.i123_crit_edge:               ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i123

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 64, ptr %call3.i, align 1
  br label %if.end66

if.then9.i123:                                    ; preds = %if.then2.i.if.then9.i123_crit_edge, %if.end.i121.if.then9.i123_crit_edge
  %128 = ptrtoint ptr %cr_principal to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cr_principal, align 4
  call void @kfree(ptr noundef %129) #9
  %130 = ptrtoint ptr %cr_principal to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %cr_principal, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then9.i123, %if.then5.i, %if.then59.if.end66_crit_edge, %if.then56.if.end66_crit_edge
  %tobool68.not = icmp eq ptr %target_name.sroa.5.0, null
  br i1 %tobool68.not, label %if.end66.if.end75_crit_edge, label %if.then69

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then69:                                        ; preds = %if.end66
  %call.i125 = call ptr @kmemdup_nul(ptr noundef nonnull %target_name.sroa.5.0, i32 noundef %target_name.sroa.0.0, i32 noundef 3264) #9
  %cr_targ_princ = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 5, i32 6
  %131 = ptrtoint ptr %cr_targ_princ to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i125, ptr %cr_targ_princ, align 4
  %tobool.not.i126 = icmp eq ptr %call.i125, null
  br i1 %tobool.not.i126, label %if.then69.if.end75_crit_edge, label %if.end.i129

if.then69.if.end75_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end.i129:                                      ; preds = %if.then69
  %call.i127 = call ptr @strchr(ptr noundef nonnull %call.i125, i32 noundef 64) #9
  %tobool1.not.i128 = icmp eq ptr %call.i127, null
  br i1 %tobool1.not.i128, label %if.end.i129.if.then9.i134_crit_edge, label %if.then2.i132

if.end.i129.if.then9.i134_crit_edge:              ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i134

if.then2.i132:                                    ; preds = %if.end.i129
  %132 = ptrtoint ptr %call.i127 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %call.i127, align 1
  %133 = ptrtoint ptr %cr_targ_princ to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cr_targ_princ, align 4
  %call3.i130 = call ptr @strchr(ptr noundef %134, i32 noundef 47) #9
  %tobool4.not.i131 = icmp eq ptr %call3.i130, null
  br i1 %tobool4.not.i131, label %if.then2.i132.if.then9.i134_crit_edge, label %if.then5.i133

if.then2.i132.if.then9.i134_crit_edge:            ; preds = %if.then2.i132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i134

if.then5.i133:                                    ; preds = %if.then2.i132
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %call3.i130 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 64, ptr %call3.i130, align 1
  br label %if.end75

if.then9.i134:                                    ; preds = %if.then2.i132.if.then9.i134_crit_edge, %if.end.i129.if.then9.i134_crit_edge
  %136 = ptrtoint ptr %cr_targ_princ to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cr_targ_princ, align 4
  call void @kfree(ptr noundef %137) #9
  %138 = ptrtoint ptr %cr_targ_princ to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %cr_targ_princ, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then9.i134, %if.then5.i133, %if.then69.if.end75_crit_edge, %if.end66.if.end75_crit_edge, %if.end53.if.end75_crit_edge
  call void @kfree(ptr noundef %client_name.sroa.6.0) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end75, %gssp_free_receive_pages.exit.i
  %.sink = phi ptr [ %48, %gssp_free_receive_pages.exit.i ], [ %target_name.sroa.5.0, %if.end75 ]
  %retval.0.ph = phi i32 [ -12, %gssp_free_receive_pages.exit.i ], [ %retval.0.i108, %if.end75 ]
  call void @kfree(ptr noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %res) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %rctxh) #9
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %arg) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ctxh) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gssp_free_upcall_data(ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.xdr_netobj, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  tail call void @kfree(ptr noundef %1) #9
  %data2 = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  tail call void @kfree(ptr noundef %3) #9
  %data3 = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data3, align 4
  tail call void @kfree(ptr noundef %5) #9
  %cr_group_info.i = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cr_group_info.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.free_svc_cred.exit_crit_edge, label %do.body.i

entry.free_svc_cred.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_svc_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #9, !srcloc !95
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then2.i, label %do.body.i.free_svc_cred.exit_crit_edge

do.body.i.free_svc_cred.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_svc_cred.exit

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cr_group_info.i, align 4
  tail call void @groups_free(ptr noundef %10) #9
  br label %free_svc_cred.exit

free_svc_cred.exit:                               ; preds = %if.then2.i, %do.body.i.free_svc_cred.exit_crit_edge, %entry.free_svc_cred.exit_crit_edge
  %cr_raw_principal.i = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 5, i32 4
  %11 = ptrtoint ptr %cr_raw_principal.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cr_raw_principal.i, align 4
  tail call void @kfree(ptr noundef %12) #9
  %cr_principal.i = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 5, i32 5
  %13 = ptrtoint ptr %cr_principal.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cr_principal.i, align 4
  tail call void @kfree(ptr noundef %14) #9
  %cr_targ_princ.i = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 5, i32 6
  %15 = ptrtoint ptr %cr_targ_princ.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cr_targ_princ.i, align 4
  tail call void @kfree(ptr noundef %16) #9
  %cr_gss_mech.i = getelementptr inbounds %struct.gssp_upcall_data, ptr %data, i32 0, i32 5, i32 7
  %17 = ptrtoint ptr %cr_gss_mech.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cr_gss_mech.i, align 4
  tail call void @gss_mech_put(ptr noundef %18) #9
  %19 = ptrtoint ptr %cr_group_info.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cr_group_info.i, align 4
  %20 = call ptr @memset(ptr %cr_raw_principal.i, i32 0, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gssx_enc_accept_sec_context(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gssx_dec_accept_sec_context(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_release_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gss_mech_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !10, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @init_gssp_clnt.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 125, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!4 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @gssp_rpc_create.gssp_localaddr, !15, !"gssp_localaddr", i1 false, i1 false}
!15 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 81, i32 34}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 90, i32 17}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 108, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gssp_rpc_create._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @gssp_rpc_create._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 115, i32 2}
!26 = !{ptr @gssp_rpc_create._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @gssp_rpc_create._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 397, i32 11}
!30 = !{ptr @gssp_program, !31, !"gssp_program", i1 false, i1 false}
!31 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 396, i32 33}
!32 = !{ptr @gssp_version, !33, !"gssp_version", i1 false, i1 false}
!33 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 389, i32 34}
!34 = !{ptr @gssp_version1, !35, !"gssp_version1", i1 false, i1 false}
!35 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 382, i32 33}
!36 = !{ptr @gssp_version1_counts, !37, !"gssp_version1_counts", i1 false, i1 false}
!37 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 381, i32 21}
!38 = !{ptr @gssp_stats, !39, !"gssp_stats", i1 false, i1 false}
!39 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 394, i32 24}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 54, i32 2}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 55, i32 9}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 56, i32 9}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 57, i32 9}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 58, i32 9}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 59, i32 9}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 60, i32 9}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 61, i32 9}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 62, i32 9}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 63, i32 9}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 64, i32 9}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 65, i32 9}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 66, i32 9}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 67, i32 9}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 68, i32 9}
!70 = !{ptr @gssp_procedures, !71, !"gssp_procedures", i1 false, i1 false}
!71 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 53, i32 34}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/sunrpc/auth_gss/gss_rpc_upcall.c", i32 179, i32 3}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @gssp_call._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @gssp_call._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 2149331309}
!91 = !{i64 2149331575}
!92 = !{i64 2148255000, i64 2148255032, i64 2148255061, i64 2148255095, i64 2148255126, i64 2148255149}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 2148341922}
!95 = !{i64 2148256655, i64 2148256687, i64 2148256716, i64 2148256750, i64 2148256781, i64 2148256804}
!96 = !{i64 2148342151}
