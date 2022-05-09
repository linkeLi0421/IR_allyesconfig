; ModuleID = '/llk/IR_all_yes/kernel/bpf/net_namespace.c_pt.bc'
source_filename = "../kernel/bpf/net_namespace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bpf_link_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.136 }
%union.anon.136 = type { i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon.12 = type { i32, i32, i32, i32, i64, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.156, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.156 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.150, i32, %struct.spinlock }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { ptr, ptr }
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
%struct.anon.7 = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.121, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.85 }
%union.anon.85 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.121 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { ptr, %union.anon.104 }
%union.anon.104 = type { i64 }
%struct.bpf_link_primer = type { ptr, ptr, i32, i32 }
%struct.anon.16 = type { i32, %union.anon.17, i32, i32, %union.anon.18 }
%union.anon.17 = type { i32 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i64, i32 }
%struct.bpf_netns_link = type { %struct.bpf_link, i32, i32, ptr, %struct.list_head }
%struct.bpf_link = type { %struct.atomic64_t, i32, i32, ptr, ptr, %struct.work_struct }
%struct.atomic64_t = type { i64 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { %struct.anon.101, [0 x %struct.sock_filter] }
%struct.anon.101 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_link_info = type { i32, i32, i32, %union.anon.161 }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i64, i32 }
%struct.anon.168 = type { i32, i32 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netns_bpf_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@netns_bpf_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @netns_bpf_mutex, i64 52), ptr getelementptr (i8, ptr @netns_bpf_mutex, i64 52) }, ptr @netns_bpf_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"netns_bpf_mutex\00", [16 x i8] zeroinitializer }, align 32
@netns_bpf_prog_attach.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kernel/bpf/net_namespace.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@bpf_netns_link_ops = internal constant { %struct.bpf_link_ops, [40 x i8] } { %struct.bpf_link_ops { ptr @bpf_netns_link_release, ptr @bpf_netns_link_dealloc, ptr @bpf_netns_link_detach, ptr @bpf_netns_link_update_prog, ptr @bpf_netns_link_show_fdinfo, ptr @bpf_netns_link_fill_info }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_net_namespace__404_567_netns_bpf_init4 = internal global ptr @netns_bpf_init, section ".initcall4.init", align 4
@__netns_bpf_prog_query.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@netns_bpf_run_array_detach.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bpf_netns_link_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpf_sk_lookup_enabled = external dso_local global %struct.static_key_false, align 4
@bpf_netns_link_update_prog.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"netns_ino:\09%u\0Aattach_type:\09%u\0A\00", [33 x i8] zeroinitializer }, align 32
@netns_bpf_link_attach.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netns_bpf_pernet_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @netns_bpf_pernet_init, ptr @netns_bpf_pernet_pre_exit, ptr null, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"netns_bpf_mutex\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 27, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 339, i32 14 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"bpf_netns_link_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 236, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 174, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 230, i32 6 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"netns_bpf_pernet_ops\00", align 1
@___asan_gen_.33 = private constant [30 x i8] c"../kernel/bpf/net_namespace.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 557, i32 33 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_net_namespace__404_567_netns_bpf_init4, ptr @.str, ptr @netns_bpf_mutex, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bpf_netns_link_ops, ptr @.str.6, ptr @.str.7, ptr @netns_bpf_pernet_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netns_bpf_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_netns_link_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netns_bpf_pernet_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netns_bpf_prog_query(ptr nocapture noundef readonly %attr, ptr noundef %uattr) local_unnamed_addr #0 align 64 {
entry:
  %prog_cnt.i = alloca i32, align 4
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %query_flags = getelementptr inbounds %struct.anon.12, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %query_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %query_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %attach_type = getelementptr inbounds %struct.anon.12, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %attach_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attach_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %3)
  %switch.selectcmp.i = icmp eq i32 %3, 36
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %switch.selectcmp2.i = icmp eq i32 %3, 17
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 0, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.select3.i)
  %cmp = icmp slt i32 %switch.select3.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr, align 8
  %call3 = tail call ptr @get_net_ns_by_fd(i32 noundef %5) #9
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  tail call void @mutex_lock_nested(ptr noundef nonnull @netns_bpf_mutex, i32 noundef 0) #9
  %prog_ids2.i = getelementptr inbounds %struct.anon.12, ptr %attr, i32 0, i32 4
  %7 = ptrtoint ptr %prog_ids2.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %prog_ids2.i, align 8
  %conv3.i = trunc i64 %8 to i32
  %9 = inttoptr i32 %conv3.i to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prog_cnt.i) #9
  %10 = ptrtoint ptr %prog_cnt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %prog_cnt.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #9
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags.i, align 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @netns_bpf_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end7.do.end.i_crit_edge

if.end7.do.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end7
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b43.i = load i1, ptr @__netns_bpf_prog_query.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__netns_bpf_prog_query.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 256, ptr noundef nonnull @.str.3) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end7.do.end.i_crit_edge
  %bpf.i = getelementptr inbounds %struct.net, ptr %call3, i32 0, i32 44
  %arrayidx.i = getelementptr [2 x ptr], ptr %bpf.i, i32 0, i32 %switch.select3.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %13, null
  br i1 %tobool10.not.i, label %do.end.i.if.end13.i_crit_edge, label %if.then11.i

do.end.i.if.end13.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then11.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i = tail call i32 @bpf_prog_array_length(ptr noundef nonnull %13) #9
  %14 = ptrtoint ptr %prog_cnt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call12.i, ptr %prog_cnt.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %do.end.i.if.end13.i_crit_edge
  %attach_flags.i = getelementptr inbounds %struct.anon.12, ptr %uattr, i32 0, i32 3
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.end13.i.__netns_bpf_prog_query.exit_crit_edge, label %if.end.i.i.i

if.end13.i.__netns_bpf_prog_query.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__netns_bpf_prog_query.exit

if.end.i.i.i:                                     ; preds = %if.end13.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %attach_flags.i, i32 4, i32 -1226833920) #12, !srcloc !43
  %asmresult.i.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.__netns_bpf_prog_query.exit_crit_edge

if.end.i.i.i.__netns_bpf_prog_query.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__netns_bpf_prog_query.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %flags.i, i32 noundef 4) #9
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %attach_flags.i, ptr noundef nonnull %flags.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool15.not.i = icmp eq i32 %call.i1.i.i.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %copy_to_user.exit.i.__netns_bpf_prog_query.exit_crit_edge

copy_to_user.exit.i.__netns_bpf_prog_query.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__netns_bpf_prog_query.exit

if.end17.i:                                       ; preds = %copy_to_user.exit.i
  %prog_cnt18.i = getelementptr inbounds %struct.anon.12, ptr %uattr, i32 0, i32 5
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i46.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i46.i, label %if.end17.i.__netns_bpf_prog_query.exit_crit_edge, label %if.end.i.i50.i

if.end17.i.__netns_bpf_prog_query.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__netns_bpf_prog_query.exit

if.end.i.i50.i:                                   ; preds = %if.end17.i
  %16 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %prog_cnt18.i, i32 4, i32 -1226833920) #12, !srcloc !43
  %asmresult.i.i48.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i48.i)
  %cmp.i.i49.i = icmp eq i32 %asmresult.i.i48.i, 0
  br i1 %cmp.i.i49.i, label %copy_to_user.exit55.i, label %if.end.i.i50.i.__netns_bpf_prog_query.exit_crit_edge

if.end.i.i50.i.__netns_bpf_prog_query.exit_crit_edge: ; preds = %if.end.i.i50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__netns_bpf_prog_query.exit

copy_to_user.exit55.i:                            ; preds = %if.end.i.i50.i
  %call.i.i.i51.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %prog_cnt.i, i32 noundef 4) #9
  %call.i1.i.i52.i = call i32 @arm_copy_to_user(ptr noundef %prog_cnt18.i, ptr noundef nonnull %prog_cnt.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i52.i)
  %tobool20.not.i = icmp eq i32 %call.i1.i.i52.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %copy_to_user.exit55.i.__netns_bpf_prog_query.exit_crit_edge

copy_to_user.exit55.i.__netns_bpf_prog_query.exit_crit_edge: ; preds = %copy_to_user.exit55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__netns_bpf_prog_query.exit

if.end22.i:                                       ; preds = %copy_to_user.exit55.i
  %prog_cnt23.i = getelementptr inbounds %struct.anon.12, ptr %attr, i32 0, i32 5
  %17 = ptrtoint ptr %prog_cnt23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prog_cnt23.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool24.not.i = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %tobool25.not.i = icmp eq i32 %conv3.i, 0
  %or.cond.i = select i1 %tobool24.not.i, i1 true, i1 %tobool25.not.i
  br i1 %or.cond.i, label %if.end22.i.__netns_bpf_prog_query.exit_crit_edge, label %lor.lhs.false26.i

if.end22.i.__netns_bpf_prog_query.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__netns_bpf_prog_query.exit

lor.lhs.false26.i:                                ; preds = %if.end22.i
  %19 = ptrtoint ptr %prog_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prog_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool27.not.i = icmp eq i32 %20, 0
  br i1 %tobool27.not.i, label %lor.lhs.false26.i.__netns_bpf_prog_query.exit_crit_edge, label %if.end29.i

lor.lhs.false26.i.__netns_bpf_prog_query.exit_crit_edge: ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__netns_bpf_prog_query.exit

if.end29.i:                                       ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i = call i32 @bpf_prog_array_copy_to_user(ptr noundef %13, ptr noundef nonnull %9, i32 noundef %18) #9
  br label %__netns_bpf_prog_query.exit

__netns_bpf_prog_query.exit:                      ; preds = %if.end29.i, %lor.lhs.false26.i.__netns_bpf_prog_query.exit_crit_edge, %if.end22.i.__netns_bpf_prog_query.exit_crit_edge, %copy_to_user.exit55.i.__netns_bpf_prog_query.exit_crit_edge, %if.end.i.i50.i.__netns_bpf_prog_query.exit_crit_edge, %if.end17.i.__netns_bpf_prog_query.exit_crit_edge, %copy_to_user.exit.i.__netns_bpf_prog_query.exit_crit_edge, %if.end.i.i.i.__netns_bpf_prog_query.exit_crit_edge, %if.end13.i.__netns_bpf_prog_query.exit_crit_edge
  %retval.0.i = phi i32 [ %call31.i, %if.end29.i ], [ -14, %copy_to_user.exit.i.__netns_bpf_prog_query.exit_crit_edge ], [ -14, %copy_to_user.exit55.i.__netns_bpf_prog_query.exit_crit_edge ], [ 0, %lor.lhs.false26.i.__netns_bpf_prog_query.exit_crit_edge ], [ 0, %if.end22.i.__netns_bpf_prog_query.exit_crit_edge ], [ -14, %if.end13.i.__netns_bpf_prog_query.exit_crit_edge ], [ -14, %if.end.i.i.i.__netns_bpf_prog_query.exit_crit_edge ], [ -14, %if.end17.i.__netns_bpf_prog_query.exit_crit_edge ], [ -14, %if.end.i.i50.i.__netns_bpf_prog_query.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prog_cnt.i) #9
  call void @mutex_unlock(ptr noundef nonnull @netns_bpf_mutex) #9
  %count.i = getelementptr inbounds %struct.net, ptr %call3, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #9
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #9, !srcloc !45
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i18, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %__netns_bpf_prog_query.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !46

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #9
  br label %cleanup

if.then.i18:                                      ; preds = %__netns_bpf_prog_query.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  call void @__put_net(ptr noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i18, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %retval.0.i, %if.then10.i.i.i.i ], [ %retval.0.i, %if.then.i18 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_net_ns_by_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_net(ptr noundef %net) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %count = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #9, !srcloc !45
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !46

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  tail call void @__put_net(ptr noundef %net) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netns_bpf_prog_attach(ptr nocapture noundef readonly %attr, ptr noundef %prog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %attach_flags = getelementptr inbounds %struct.anon.7, ptr %attr, i32 0, i32 3
  %2 = ptrtoint ptr %attach_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attach_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %replace_bpf_fd = getelementptr inbounds %struct.anon.7, ptr %attr, i32 0, i32 4
  %4 = ptrtoint ptr %replace_bpf_fd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %replace_bpf_fd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %attach_type = getelementptr inbounds %struct.anon.7, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %attach_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attach_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %7)
  %switch.selectcmp.i = icmp eq i32 %7, 36
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %7)
  %switch.selectcmp2.i = icmp eq i32 %7, 17
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 0, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.select3.i)
  %cmp = icmp slt i32 %switch.select3.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = tail call i32 @llvm.read_register.i32(metadata !33) #9
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
  tail call void @mutex_lock_nested(ptr noundef nonnull @netns_bpf_mutex, i32 noundef 0) #9
  %bpf = getelementptr inbounds %struct.net, ptr %15, i32 0, i32 44
  %arrayidx = getelementptr %struct.net, ptr %15, i32 0, i32 44, i32 2, i32 %switch.select3.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ne ptr %17, %arrayidx
  %switch.selectcmp2.i.not = xor i1 %switch.selectcmp2.i, true
  %brmerge = select i1 %cmp.i, i1 true, i1 %switch.selectcmp2.i.not
  %.mux = select i1 %cmp.i, i32 -17, i32 -22
  br i1 %brmerge, label %if.end5.out_unlock_crit_edge, label %sw.epilog

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

sw.epilog:                                        ; preds = %if.end5
  %call11 = tail call i32 @flow_dissector_bpf_prog_attach_check(ptr noundef %15, ptr noundef %prog) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %sw.epilog.out_unlock_crit_edge

sw.epilog.out_unlock_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end14:                                         ; preds = %sw.epilog
  %arrayidx16 = getelementptr %struct.net, ptr %15, i32 0, i32 44, i32 1, i32 %switch.select3.i
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx16, align 4
  %cmp17 = icmp eq ptr %19, %prog
  br i1 %cmp17, label %if.end14.out_unlock_crit_edge, label %do.body

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

do.body:                                          ; preds = %if.end14
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @netns_bpf_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true24

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true24:                                  ; preds = %land.lhs.true
  %.b132 = load i1, ptr @netns_bpf_prog_attach.__warned, align 1
  br i1 %.b132, label %land.lhs.true24.do.end_crit_edge, label %if.then26

land.lhs.true24.do.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netns_bpf_prog_attach.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 340, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then26, %land.lhs.true24.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %arrayidx30 = getelementptr [2 x ptr], ptr %bpf, i32 0, i32 %switch.select3.i
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %if.else, label %do.body37

do.body37:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %items = getelementptr inbounds %struct.bpf_prog_array, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %items to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %prog, ptr %items, align 8
  br label %if.end95

if.else:                                          ; preds = %do.end
  %call44 = tail call ptr @bpf_prog_array_alloc(i32 noundef 1, i32 noundef 3264) #9
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.else.out_unlock_crit_edge, label %if.end47

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end47:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %items48 = getelementptr inbounds %struct.bpf_prog_array, ptr %call44, i32 0, i32 1
  %23 = ptrtoint ptr %items48 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %prog, ptr %items48, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call44, ptr %arrayidx30, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end47, %do.body37
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %prog, ptr %arrayidx16, align 4
  %tobool99.not = icmp eq ptr %19, null
  br i1 %tobool99.not, label %if.end95.out_unlock_crit_edge, label %if.then100

if.end95.out_unlock_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bpf_prog_put(ptr noundef nonnull %19) #9
  br label %out_unlock

out_unlock:                                       ; preds = %if.then100, %if.end95.out_unlock_crit_edge, %if.else.out_unlock_crit_edge, %if.end14.out_unlock_crit_edge, %sw.epilog.out_unlock_crit_edge, %if.end5.out_unlock_crit_edge
  %ret.1 = phi i32 [ %call11, %sw.epilog.out_unlock_crit_edge ], [ 0, %if.then100 ], [ 0, %if.end95.out_unlock_crit_edge ], [ %.mux, %if.end5.out_unlock_crit_edge ], [ -22, %if.end14.out_unlock_crit_edge ], [ -12, %if.else.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @netns_bpf_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_unlock ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_dissector_bpf_prog_attach_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_array_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netns_bpf_prog_detach(ptr nocapture noundef readonly %attr, i32 noundef %ptype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %attach_type = getelementptr inbounds %struct.anon.7, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %attach_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attach_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %3)
  %switch.selectcmp.i = icmp eq i32 %3, 36
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %switch.selectcmp2.i = icmp eq i32 %3, 17
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 0, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.select3.i)
  %cmp = icmp slt i32 %switch.select3.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %attach_bpf_fd = getelementptr inbounds %struct.anon.7, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %attach_bpf_fd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attach_bpf_fd, align 4
  %call.i = tail call ptr @bpf_prog_get_type_dev(i32 noundef %5, i32 noundef %ptype, i1 noundef zeroext false) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  tail call void @mutex_lock_nested(ptr noundef nonnull @netns_bpf_mutex, i32 noundef 0) #9
  %7 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 110
  %11 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_ns, align 4
  %arrayidx.i = getelementptr %struct.net, ptr %14, i32 0, i32 44, i32 2, i32 %switch.select3.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %arrayidx.i
  br i1 %cmp.i.not.i, label %if.end.i, label %if.end7.__netns_bpf_prog_detach.exit_crit_edge

if.end7.__netns_bpf_prog_detach.exit_crit_edge:   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %__netns_bpf_prog_detach.exit

if.end.i:                                         ; preds = %if.end7
  %arrayidx2.i = getelementptr %struct.net, ptr %14, i32 0, i32 44, i32 1, i32 %switch.select3.i
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp ne ptr %18, null
  %cmp.not.i = icmp eq ptr %18, %call.i
  %or.cond.i = and i1 %tobool3.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.end5.i, label %if.end.i.__netns_bpf_prog_detach.exit_crit_edge

if.end.i.__netns_bpf_prog_detach.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__netns_bpf_prog_detach.exit

if.end5.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @netns_bpf_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end5.i.netns_bpf_run_array_detach.exit.i_crit_edge

if.end5.i.netns_bpf_run_array_detach.exit.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_run_array_detach.exit.i

land.lhs.true.i.i:                                ; preds = %if.end5.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.netns_bpf_run_array_detach.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.netns_bpf_run_array_detach.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_run_array_detach.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b54.i.i = load i1, ptr @netns_bpf_run_array_detach.__warned, align 1
  br i1 %.b54.i.i, label %land.lhs.true3.i.i.netns_bpf_run_array_detach.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.netns_bpf_run_array_detach.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_run_array_detach.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netns_bpf_run_array_detach.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 62, ptr noundef nonnull @.str.3) #9
  br label %netns_bpf_run_array_detach.exit.i

netns_bpf_run_array_detach.exit.i:                ; preds = %if.then.i.i, %land.lhs.true3.i.i.netns_bpf_run_array_detach.exit.i_crit_edge, %land.lhs.true.i.i.netns_bpf_run_array_detach.exit.i_crit_edge, %if.end5.i.netns_bpf_run_array_detach.exit.i_crit_edge
  %bpf.i.i = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 44
  %arrayidx.i.i = getelementptr [2 x ptr], ptr %bpf.i.i, i32 0, i32 %switch.select3.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  store volatile ptr null, ptr %arrayidx.i.i, align 4
  tail call void @bpf_prog_array_free(ptr noundef %20) #9
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx2.i, align 4
  tail call void @bpf_prog_put(ptr noundef nonnull %call.i) #9
  br label %__netns_bpf_prog_detach.exit

__netns_bpf_prog_detach.exit:                     ; preds = %netns_bpf_run_array_detach.exit.i, %if.end.i.__netns_bpf_prog_detach.exit_crit_edge, %if.end7.__netns_bpf_prog_detach.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %netns_bpf_run_array_detach.exit.i ], [ -22, %if.end7.__netns_bpf_prog_detach.exit_crit_edge ], [ -2, %if.end.i.__netns_bpf_prog_detach.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @netns_bpf_mutex) #9
  tail call void @bpf_prog_put(ptr noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %__netns_bpf_prog_detach.exit, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then5 ], [ %retval.0.i, %__netns_bpf_prog_detach.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netns_bpf_link_create(ptr nocapture noundef readonly %attr, ptr noundef %prog) local_unnamed_addr #0 align 64 {
entry:
  %link_primer = alloca %struct.bpf_link_primer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_primer) #9
  %flags = getelementptr inbounds %struct.anon.16, ptr %attr, i32 0, i32 3
  %0 = call ptr @memset(ptr %link_primer, i32 255, i32 16)
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %attach_type = getelementptr inbounds %struct.anon.16, ptr %attr, i32 0, i32 2
  %3 = ptrtoint ptr %attach_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %attach_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %4)
  %switch.selectcmp.i = icmp eq i32 %4, 36
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %4)
  %switch.selectcmp2.i = icmp eq i32 %4, 17
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 0, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.select3.i)
  %cmp = icmp slt i32 %switch.select3.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = getelementptr inbounds %struct.anon.16, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call3 = tail call ptr @get_net_ns_by_fd(i32 noundef %7) #9
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 1052096, i32 noundef 96) #13
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.out_put_net_crit_edge, label %if.end11

if.end7.out_put_net_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_put_net

if.end11:                                         ; preds = %if.end7
  tail call void @bpf_link_init(ptr noundef nonnull %call7.i.i, i32 noundef 5, ptr noundef nonnull @bpf_netns_link_ops, ptr noundef %prog) #9
  %net12 = getelementptr inbounds %struct.bpf_netns_link, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %net12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %net12, align 8
  %type13 = getelementptr inbounds %struct.bpf_netns_link, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %4, ptr %type13, align 8
  %netns_type14 = getelementptr inbounds %struct.bpf_netns_link, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %netns_type14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %switch.select3.i, ptr %netns_type14, align 4
  %call16 = call i32 @bpf_link_prime(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %link_primer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %out_put_net

if.end19:                                         ; preds = %if.end11
  call void @mutex_lock_nested(ptr noundef nonnull @netns_bpf_mutex, i32 noundef 0) #9
  %arrayidx.i.i = getelementptr %struct.net, ptr %call3, i32 0, i32 44, i32 2, i32 %switch.select3.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end19
  %pos.0.in.i.i = phi ptr [ %arrayidx.i.i, %if.end19 ], [ %pos.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %i.0.i.i = phi i32 [ 0, %if.end19 ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %13 = ptrtoint ptr %pos.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %pos.0.i.i = load ptr, ptr %pos.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %pos.0.i.i, %arrayidx.i.i
  %inc.i.i = add i32 %i.0.i.i, 1
  br i1 %cmp.i.not.i.i, label %link_count.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

link_count.exit.i:                                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %switch.select3.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.select3.i, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 64, i32 0
  %switch.select3.i.i = select i1 %switch.selectcmp2.i, i32 1, i32 %switch.select.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i, i32 %switch.select3.i.i)
  %cmp.not.i = icmp slt i32 %i.0.i.i, %switch.select3.i.i
  br i1 %cmp.not.i, label %if.end.i, label %link_count.exit.i.if.then23_crit_edge

link_count.exit.i.if.then23_crit_edge:            ; preds = %link_count.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.end.i:                                         ; preds = %link_count.exit.i
  %bpf.i = getelementptr inbounds %struct.net, ptr %call3, i32 0, i32 44
  %arrayidx.i = getelementptr %struct.net, ptr %call3, i32 0, i32 44, i32 1, i32 %switch.select3.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.if.then23_crit_edge

if.end.i.if.then23_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.end3.i:                                        ; preds = %if.end.i
  %16 = zext i32 %switch.select3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %switch.select3.i, label %if.end3.i.if.then23_crit_edge [
    i32 0, label %sw.epilog.i
    i32 1, label %if.end3.i.if.end8.i_crit_edge
  ]

if.end3.i.if.end8.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end3.i.if.then23_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

sw.epilog.i:                                      ; preds = %if.end3.i
  %prog.i = getelementptr inbounds %struct.bpf_link, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prog.i, align 4
  %call4.i = call i32 @flow_dissector_bpf_prog_attach_check(ptr noundef %call3, ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool6.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool6.not.i, label %sw.epilog.i.if.end8.i_crit_edge, label %sw.epilog.i.if.then23_crit_edge

sw.epilog.i.if.then23_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

sw.epilog.i.if.end8.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %sw.epilog.i.if.end8.i_crit_edge, %if.end3.i.if.end8.i_crit_edge
  %call9.i = call ptr @bpf_prog_array_alloc(i32 noundef %inc.i.i, i32 noundef 3264) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end8.i.if.then23_crit_edge, label %if.end12.i

if.end8.i.if.then23_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.end12.i:                                       ; preds = %if.end8.i
  %node.i = getelementptr inbounds %struct.bpf_netns_link, ptr %call7.i.i, i32 0, i32 4
  %prev.i.i = getelementptr %struct.net, ptr %call3, i32 0, i32 44, i32 2, i32 %switch.select3.i, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %20, ptr noundef %arrayidx.i.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end12.i.list_add_tail.exit.i_crit_edge

if.end12.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %node.i, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx.i.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.bpf_netns_link, ptr %call7.i.i, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 8
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %node.i, ptr %20, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end12.i.list_add_tail.exit.i_crit_edge
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn16.i.i = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.not17.i.i = icmp eq ptr %.pn16.i.i, %arrayidx.i.i
  br i1 %cmp.not17.i.i, label %list_add_tail.exit.i.fill_prog_array.exit.i_crit_edge, label %list_add_tail.exit.i.for.body.i.i_crit_edge

list_add_tail.exit.i.for.body.i.i_crit_edge:      ; preds = %list_add_tail.exit.i
  br label %for.body.i.i

list_add_tail.exit.i.fill_prog_array.exit.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fill_prog_array.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %list_add_tail.exit.i.for.body.i.i_crit_edge
  %.pn19.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn16.i.i, %list_add_tail.exit.i.for.body.i.i_crit_edge ]
  %i.018.i.i = phi i32 [ %inc.i93.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %list_add_tail.exit.i.for.body.i.i_crit_edge ]
  %prog.i.i = getelementptr i8, ptr %.pn19.i.i, i32 -64
  %26 = ptrtoint ptr %prog.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prog.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.bpf_prog_array, ptr %call9.i, i32 0, i32 1, i32 %i.018.i.i
  %28 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %arrayidx4.i.i, align 8
  %inc.i93.i = add i32 %i.018.i.i, 1
  %29 = ptrtoint ptr %.pn19.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i.i = load ptr, ptr %.pn19.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.fill_prog_array.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.fill_prog_array.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fill_prog_array.exit.i

fill_prog_array.exit.i:                           ; preds = %for.body.i.i.fill_prog_array.exit.i_crit_edge, %list_add_tail.exit.i.fill_prog_array.exit.i_crit_edge
  %call.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @netns_bpf_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool16.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i, label %fill_prog_array.exit.i.do.end.i_crit_edge

fill_prog_array.exit.i.do.end.i_crit_edge:        ; preds = %fill_prog_array.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %fill_prog_array.exit.i
  %call17.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true19.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true19.i:                                ; preds = %land.lhs.true.i
  %.b91.i = load i1, ptr @netns_bpf_link_attach.__warned, align 1
  br i1 %.b91.i, label %land.lhs.true19.i.do.end.i_crit_edge, label %if.then21.i

land.lhs.true19.i.do.end.i_crit_edge:             ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then21.i:                                      ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netns_bpf_link_attach.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 466, ptr noundef nonnull @.str.3) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then21.i, %land.lhs.true19.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %fill_prog_array.exit.i.do.end.i_crit_edge
  %arrayidx26.i = getelementptr [2 x ptr], ptr %bpf.i, i32 0, i32 %switch.select3.i
  %30 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx26.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  %32 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call9.i, ptr %arrayidx26.i, align 4
  call void @bpf_prog_array_free(ptr noundef %31) #9
  br i1 %switch.selectcmp.i.i, label %sw.bb.i.i, label %do.end.i.if.end24_crit_edge

do.end.i.if.end24_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

sw.bb.i.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @static_key_slow_inc(ptr noundef nonnull @bpf_sk_lookup_enabled) #9
  br label %if.end24

if.then23:                                        ; preds = %if.end8.i.if.then23_crit_edge, %sw.epilog.i.if.then23_crit_edge, %if.end3.i.if.then23_crit_edge, %if.end.i.if.then23_crit_edge, %link_count.exit.i.if.then23_crit_edge
  %err.1.i.ph = phi i32 [ -22, %if.end3.i.if.then23_crit_edge ], [ -12, %if.end8.i.if.then23_crit_edge ], [ -17, %if.end.i.if.then23_crit_edge ], [ -7, %link_count.exit.i.if.then23_crit_edge ], [ %call4.i, %sw.epilog.i.if.then23_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @netns_bpf_mutex) #9
  call void @bpf_link_cleanup(ptr noundef nonnull %link_primer) #9
  br label %out_put_net

if.end24:                                         ; preds = %sw.bb.i.i, %do.end.i.if.end24_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @netns_bpf_mutex) #9
  call fastcc void @put_net(ptr noundef %call3)
  %call25 = call i32 @bpf_link_settle(ptr noundef nonnull %link_primer) #9
  br label %cleanup

out_put_net:                                      ; preds = %if.then23, %if.then18, %if.end7.out_put_net_crit_edge
  %err.0 = phi i32 [ %call16, %if.then18 ], [ %err.1.i.ph, %if.then23 ], [ -12, %if.end7.out_put_net_crit_edge ]
  %count.i = getelementptr inbounds %struct.net, ptr %call3, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #9
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #9, !srcloc !45
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_put_net
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !46

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %out_put_net
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  call void @__put_net(ptr noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end24, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then5 ], [ %call25, %if.end24 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_primer) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_link_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_link_prime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_link_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_link_settle(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @netns_bpf_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @netns_bpf_pernet_ops) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_array_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_array_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get_type_dev(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_array_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_netns_link_release(ptr noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netns_type = getelementptr inbounds %struct.bpf_netns_link, ptr %link, i32 0, i32 2
  %0 = ptrtoint ptr %netns_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %netns_type, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @netns_bpf_mutex, i32 noundef 0) #9
  %net1 = getelementptr inbounds %struct.bpf_netns_link, ptr %link, i32 0, i32 3
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond.i = icmp eq i32 %1, 1
  br i1 %cond.i, label %sw.bb.i, label %if.end.netns_bpf_attach_type_unneed.exit_crit_edge

if.end.netns_bpf_attach_type_unneed.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_attach_type_unneed.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @static_key_slow_dec(ptr noundef nonnull @bpf_sk_lookup_enabled) #9
  br label %netns_bpf_attach_type_unneed.exit

netns_bpf_attach_type_unneed.exit:                ; preds = %sw.bb.i, %if.end.netns_bpf_attach_type_unneed.exit_crit_edge
  %arrayidx.i = getelementptr %struct.net, ptr %3, i32 0, i32 44, i32 2, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn16.i = load ptr, ptr %arrayidx.i, align 4
  %cmp.not17.i = icmp eq ptr %.pn16.i, %arrayidx.i
  br i1 %cmp.not17.i, label %netns_bpf_attach_type_unneed.exit.link_index.exit_crit_edge, label %netns_bpf_attach_type_unneed.exit.for.body.i_crit_edge

netns_bpf_attach_type_unneed.exit.for.body.i_crit_edge: ; preds = %netns_bpf_attach_type_unneed.exit
  br label %for.body.i

netns_bpf_attach_type_unneed.exit.link_index.exit_crit_edge: ; preds = %netns_bpf_attach_type_unneed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %link_index.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %netns_bpf_attach_type_unneed.exit.for.body.i_crit_edge
  %.pn19.i = phi ptr [ %.pn.i, %if.end.i.for.body.i_crit_edge ], [ %.pn16.i, %netns_bpf_attach_type_unneed.exit.for.body.i_crit_edge ]
  %i.018.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %netns_bpf_attach_type_unneed.exit.for.body.i_crit_edge ]
  %pos.0.i = getelementptr i8, ptr %.pn19.i, i32 -84
  %cmp4.i = icmp eq ptr %pos.0.i, %link
  br i1 %cmp4.i, label %for.body.i.link_index.exit_crit_edge, label %if.end.i

for.body.i.link_index.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %link_index.exit

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add i32 %i.018.i, 1
  %5 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn19.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp.not.i, label %if.end.i.link_index.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.link_index.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %link_index.exit

link_index.exit:                                  ; preds = %if.end.i.link_index.exit_crit_edge, %for.body.i.link_index.exit_crit_edge, %netns_bpf_attach_type_unneed.exit.link_index.exit_crit_edge
  %retval.0.i = phi i32 [ -2, %netns_bpf_attach_type_unneed.exit.link_index.exit_crit_edge ], [ %i.018.i, %for.body.i.link_index.exit_crit_edge ], [ -2, %if.end.i.link_index.exit_crit_edge ]
  %node = getelementptr inbounds %struct.bpf_netns_link, ptr %link, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i, label %if.end.i.i, label %link_index.exit.list_del.exit_crit_edge

link_index.exit.list_del.exit_crit_edge:          ; preds = %link_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %link_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.bpf_netns_link, ptr %link, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %link_index.exit.list_del.exit_crit_edge
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.bpf_netns_link, ptr %link, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %list_del.exit
  %pos.0.in.i = phi ptr [ %arrayidx.i, %list_del.exit ], [ %pos.0.i112, %for.cond.i.for.cond.i_crit_edge ]
  %i.0.i = phi i32 [ 0, %list_del.exit ], [ %inc.i113, %for.cond.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %pos.0.i112 = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i112, %arrayidx.i
  %inc.i113 = add i32 %i.0.i, 1
  br i1 %cmp.i.not.i, label %link_count.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

link_count.exit:                                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %tobool3.not = icmp eq i32 %i.0.i, 0
  %call.i.i114 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @netns_bpf_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i114)
  %tobool.not.i = icmp eq i32 %call.i.i114, 0
  br i1 %tobool3.not, label %if.then4, label %do.body

if.then4:                                         ; preds = %link_count.exit
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then4.netns_bpf_run_array_detach.exit_crit_edge

if.then4.netns_bpf_run_array_detach.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_run_array_detach.exit

land.lhs.true.i:                                  ; preds = %if.then4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.netns_bpf_run_array_detach.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.netns_bpf_run_array_detach.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_run_array_detach.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b54.i = load i1, ptr @netns_bpf_run_array_detach.__warned, align 1
  br i1 %.b54.i, label %land.lhs.true3.i.netns_bpf_run_array_detach.exit_crit_edge, label %if.then.i

land.lhs.true3.i.netns_bpf_run_array_detach.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_run_array_detach.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netns_bpf_run_array_detach.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 62, ptr noundef nonnull @.str.3) #9
  br label %netns_bpf_run_array_detach.exit

netns_bpf_run_array_detach.exit:                  ; preds = %if.then.i, %land.lhs.true3.i.netns_bpf_run_array_detach.exit_crit_edge, %land.lhs.true.i.netns_bpf_run_array_detach.exit_crit_edge, %if.then4.netns_bpf_run_array_detach.exit_crit_edge
  %bpf.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 44
  %arrayidx.i115 = getelementptr [2 x ptr], ptr %bpf.i, i32 0, i32 %1
  %15 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i115, align 4
  store volatile ptr null, ptr %arrayidx.i115, align 4
  tail call void @bpf_prog_array_free(ptr noundef %16) #9
  br label %out_unlock

do.body:                                          ; preds = %link_count.exit
  br i1 %tobool.not.i, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true10

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b110 = load i1, ptr @bpf_netns_link_release.__warned, align 1
  br i1 %.b110, label %land.lhs.true10.do.end_crit_edge, label %if.then12

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bpf_netns_link_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 135, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then12, %land.lhs.true10.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %bpf = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 44
  %arrayidx = getelementptr [2 x ptr], ptr %bpf, i32 0, i32 %1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %call15 = tail call ptr @bpf_prog_array_alloc(i32 noundef %i.0.i, i32 noundef 3264) #9
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end45

if.then17:                                        ; preds = %do.end
  %call18 = tail call i32 @bpf_prog_array_delete_safe_at(ptr noundef %18, i32 noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.out_unlock_crit_edge, label %do.end31, !prof !46

if.then17.out_unlock_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

do.end31:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 138, i32 noundef 9, ptr noundef null) #9
  br label %out_unlock

if.end45:                                         ; preds = %do.end
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn16.i117 = load ptr, ptr %arrayidx.i, align 4
  %cmp.not17.i118 = icmp eq ptr %.pn16.i117, %arrayidx.i
  br i1 %cmp.not17.i118, label %if.end45.fill_prog_array.exit_crit_edge, label %if.end45.for.body.i124_crit_edge

if.end45.for.body.i124_crit_edge:                 ; preds = %if.end45
  br label %for.body.i124

if.end45.fill_prog_array.exit_crit_edge:          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %fill_prog_array.exit

for.body.i124:                                    ; preds = %for.body.i124.for.body.i124_crit_edge, %if.end45.for.body.i124_crit_edge
  %.pn19.i119 = phi ptr [ %.pn.i122, %for.body.i124.for.body.i124_crit_edge ], [ %.pn16.i117, %if.end45.for.body.i124_crit_edge ]
  %i.018.i120 = phi i32 [ %inc.i121, %for.body.i124.for.body.i124_crit_edge ], [ 0, %if.end45.for.body.i124_crit_edge ]
  %prog.i = getelementptr i8, ptr %.pn19.i119, i32 -64
  %20 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prog.i, align 4
  %arrayidx4.i = getelementptr %struct.bpf_prog_array, ptr %call15, i32 0, i32 1, i32 %i.018.i120
  %22 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %arrayidx4.i, align 8
  %inc.i121 = add i32 %i.018.i120, 1
  %23 = ptrtoint ptr %.pn19.i119 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i122 = load ptr, ptr %.pn19.i119, align 4
  %cmp.not.i123 = icmp eq ptr %.pn.i122, %arrayidx.i
  br i1 %cmp.not.i123, label %for.body.i124.fill_prog_array.exit_crit_edge, label %for.body.i124.for.body.i124_crit_edge

for.body.i124.for.body.i124_crit_edge:            ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i124

for.body.i124.fill_prog_array.exit_crit_edge:     ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %fill_prog_array.exit

fill_prog_array.exit:                             ; preds = %for.body.i124.fill_prog_array.exit_crit_edge, %if.end45.fill_prog_array.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call15, ptr %arrayidx, align 4
  tail call void @bpf_prog_array_free(ptr noundef %18) #9
  br label %out_unlock

out_unlock:                                       ; preds = %fill_prog_array.exit, %do.end31, %if.then17.out_unlock_crit_edge, %netns_bpf_run_array_detach.exit, %entry.out_unlock_crit_edge
  %25 = ptrtoint ptr %net1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %net1, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @netns_bpf_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_netns_link_dealloc(ptr noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %link) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_netns_link_detach(ptr noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bpf_netns_link_release(ptr noundef %link)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_netns_link_update_prog(ptr noundef %link, ptr noundef %new_prog, ptr noundef readnone %old_prog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netns_type = getelementptr inbounds %struct.bpf_netns_link, ptr %link, i32 0, i32 2
  %0 = ptrtoint ptr %netns_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %netns_type, align 4
  %tobool.not = icmp eq ptr %old_prog, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %prog = getelementptr inbounds %struct.bpf_link, ptr %link, i32 0, i32 4
  %2 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prog, align 4
  %cmp.not = icmp eq ptr %3, %old_prog
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %type1 = getelementptr inbounds %struct.bpf_prog, ptr %new_prog, i32 0, i32 2
  %4 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type1, align 4
  %prog2 = getelementptr inbounds %struct.bpf_link, ptr %link, i32 0, i32 4
  %6 = ptrtoint ptr %prog2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prog2, align 4
  %type3 = getelementptr inbounds %struct.bpf_prog, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp4.not = icmp eq i32 %5, %9
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @netns_bpf_mutex, i32 noundef 0) #9
  %net7 = getelementptr inbounds %struct.bpf_netns_link, ptr %link, i32 0, i32 3
  %10 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net7, align 8
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.end6.out_unlock_crit_edge, label %lor.lhs.false

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

lor.lhs.false:                                    ; preds = %if.end6
  %count.i = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 14, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #9
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not = icmp eq i32 %13, 0
  br i1 %cmp.i.not, label %lor.lhs.false.out_unlock_crit_edge, label %do.body

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

do.body:                                          ; preds = %lor.lhs.false
  %call.i69 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @netns_bpf_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool13.not = icmp eq i32 %call.i69, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true14:                                  ; preds = %do.body
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true14.do.end_crit_edge, label %land.lhs.true17

land.lhs.true14.do.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %.b68 = load i1, ptr @bpf_netns_link_update_prog.__warned, align 1
  br i1 %.b68, label %land.lhs.true17.do.end_crit_edge, label %if.then19

land.lhs.true17.do.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bpf_netns_link_update_prog.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 190, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then19, %land.lhs.true17.do.end_crit_edge, %land.lhs.true14.do.end_crit_edge, %do.body.do.end_crit_edge
  %bpf = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 44
  %arrayidx = getelementptr [2 x ptr], ptr %bpf, i32 0, i32 %1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %arrayidx.i = getelementptr %struct.net, ptr %11, i32 0, i32 44, i32 2, i32 %1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn16.i = load ptr, ptr %arrayidx.i, align 4
  %cmp.not17.i = icmp eq ptr %.pn16.i, %arrayidx.i
  br i1 %cmp.not17.i, label %do.end.link_index.exit_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.link_index.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %link_index.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %.pn19.i = phi ptr [ %.pn.i, %if.end.i.for.body.i_crit_edge ], [ %.pn16.i, %do.end.for.body.i_crit_edge ]
  %i.018.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %pos.0.i = getelementptr i8, ptr %.pn19.i, i32 -84
  %cmp4.i = icmp eq ptr %pos.0.i, %link
  br i1 %cmp4.i, label %for.body.i.link_index.exit_crit_edge, label %if.end.i

for.body.i.link_index.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %link_index.exit

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add i32 %i.018.i, 1
  %17 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn19.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp.not.i, label %if.end.i.link_index.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.link_index.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %link_index.exit

link_index.exit:                                  ; preds = %if.end.i.link_index.exit_crit_edge, %for.body.i.link_index.exit_crit_edge, %do.end.link_index.exit_crit_edge
  %retval.0.i = phi i32 [ -2, %do.end.link_index.exit_crit_edge ], [ %i.018.i, %for.body.i.link_index.exit_crit_edge ], [ -2, %if.end.i.link_index.exit_crit_edge ]
  %call24 = tail call i32 @bpf_prog_array_update_at(ptr noundef %15, i32 noundef %retval.0.i, ptr noundef %new_prog) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %link_index.exit.out_unlock_crit_edge

link_index.exit.out_unlock_crit_edge:             ; preds = %link_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end27:                                         ; preds = %link_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prog2, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  %18 = ptrtoint ptr %new_prog to i32
  tail call void @llvm.prefetch.p0(ptr %prog2, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %18, ptr %prog2) #9, !srcloc !52
  %asmresult.i = extractvalue { i32, i32 } %19, 0
  %20 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @bpf_prog_put(ptr noundef %20) #9
  br label %out_unlock

out_unlock:                                       ; preds = %if.end27, %link_index.exit.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %if.end6.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call24, %link_index.exit.out_unlock_crit_edge ], [ 0, %if.end27 ], [ -67, %lor.lhs.false.out_unlock_crit_edge ], [ -67, %if.end6.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @netns_bpf_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_netns_link_show_fdinfo(ptr nocapture noundef readonly %link, ptr noundef %seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @netns_bpf_mutex, i32 noundef 0) #9
  %net1.i = getelementptr inbounds %struct.bpf_netns_link, ptr %link, i32 0, i32 3
  %0 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.bpf_netns_link_fill_info.exit_crit_edge, label %land.lhs.true.i

entry.bpf_netns_link_fill_info.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpf_netns_link_fill_info.exit

land.lhs.true.i:                                  ; preds = %entry
  %count.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i.bpf_netns_link_fill_info.exit_crit_edge, label %if.then.i

land.lhs.true.i.bpf_netns_link_fill_info.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpf_netns_link_fill_info.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %inum3.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %inum3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inum3.i, align 8
  br label %bpf_netns_link_fill_info.exit

bpf_netns_link_fill_info.exit:                    ; preds = %if.then.i, %land.lhs.true.i.bpf_netns_link_fill_info.exit_crit_edge, %entry.bpf_netns_link_fill_info.exit_crit_edge
  %inum.0.i = phi i32 [ %5, %if.then.i ], [ 0, %land.lhs.true.i.bpf_netns_link_fill_info.exit_crit_edge ], [ 0, %entry.bpf_netns_link_fill_info.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @netns_bpf_mutex) #9
  %type.i = getelementptr inbounds %struct.bpf_netns_link, ptr %link, i32 0, i32 1
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i32 noundef %inum.0.i, i32 noundef %7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_netns_link_fill_info(ptr nocapture noundef readonly %link, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @netns_bpf_mutex, i32 noundef 0) #9
  %net1 = getelementptr inbounds %struct.bpf_netns_link, ptr %link, i32 0, i32 3
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %count.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %inum3 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %inum3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inum3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %inum.0 = phi i32 [ %5, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @netns_bpf_mutex) #9
  %6 = getelementptr inbounds %struct.bpf_link_info, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inum.0, ptr %6, align 8
  %type = getelementptr inbounds %struct.bpf_netns_link, ptr %link, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  %attach_type = getelementptr inbounds %struct.anon.168, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %attach_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %attach_type, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_array_delete_safe_at(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_dec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_array_update_at(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netns_bpf_pernet_init(ptr noundef %net) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.net, ptr %net, i32 0, i32 44, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.net, ptr %net, i32 0, i32 44, i32 2, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %prev.i, align 4
  %arrayidx.1 = getelementptr %struct.net, ptr %net, i32 0, i32 44, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i.1 = getelementptr %struct.net, ptr %net, i32 0, i32 44, i32 2, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx.1, ptr %prev.i.1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netns_bpf_pernet_pre_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @netns_bpf_mutex, i32 noundef 0) #9
  %bpf.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 44
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @netns_bpf_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.netns_bpf_run_array_detach.exit_crit_edge

entry.netns_bpf_run_array_detach.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_run_array_detach.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.netns_bpf_run_array_detach.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.netns_bpf_run_array_detach.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_run_array_detach.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b54.i = load i1, ptr @netns_bpf_run_array_detach.__warned, align 1
  br i1 %.b54.i, label %land.lhs.true3.i.netns_bpf_run_array_detach.exit_crit_edge, label %if.then.i

land.lhs.true3.i.netns_bpf_run_array_detach.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_run_array_detach.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netns_bpf_run_array_detach.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 62, ptr noundef nonnull @.str.3) #9
  br label %netns_bpf_run_array_detach.exit

netns_bpf_run_array_detach.exit:                  ; preds = %if.then.i, %land.lhs.true3.i.netns_bpf_run_array_detach.exit_crit_edge, %land.lhs.true.i.netns_bpf_run_array_detach.exit_crit_edge, %entry.netns_bpf_run_array_detach.exit_crit_edge
  %0 = ptrtoint ptr %bpf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf.i, align 4
  store volatile ptr null, ptr %bpf.i, align 4
  tail call void @bpf_prog_array_free(ptr noundef %1) #9
  %arrayidx = getelementptr %struct.net, ptr %net, i32 0, i32 44, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn33 = load ptr, ptr %arrayidx, align 4
  %cmp5.not34 = icmp eq ptr %.pn33, %arrayidx
  br i1 %cmp5.not34, label %netns_bpf_run_array_detach.exit.for.end_crit_edge, label %netns_bpf_run_array_detach.exit.netns_bpf_attach_type_unneed.exit_crit_edge

netns_bpf_run_array_detach.exit.netns_bpf_attach_type_unneed.exit_crit_edge: ; preds = %netns_bpf_run_array_detach.exit
  br label %netns_bpf_attach_type_unneed.exit

netns_bpf_run_array_detach.exit.for.end_crit_edge: ; preds = %netns_bpf_run_array_detach.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

netns_bpf_attach_type_unneed.exit:                ; preds = %netns_bpf_attach_type_unneed.exit.netns_bpf_attach_type_unneed.exit_crit_edge, %netns_bpf_run_array_detach.exit.netns_bpf_attach_type_unneed.exit_crit_edge
  %.pn35 = phi ptr [ %.pn, %netns_bpf_attach_type_unneed.exit.netns_bpf_attach_type_unneed.exit_crit_edge ], [ %.pn33, %netns_bpf_run_array_detach.exit.netns_bpf_attach_type_unneed.exit_crit_edge ]
  %net7 = getelementptr i8, ptr %.pn35, i32 -4
  %3 = ptrtoint ptr %net7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %net7, align 8
  %4 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn35, align 4
  %cmp5.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp5.not, label %netns_bpf_attach_type_unneed.exit.for.end_crit_edge, label %netns_bpf_attach_type_unneed.exit.netns_bpf_attach_type_unneed.exit_crit_edge

netns_bpf_attach_type_unneed.exit.netns_bpf_attach_type_unneed.exit_crit_edge: ; preds = %netns_bpf_attach_type_unneed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_attach_type_unneed.exit

netns_bpf_attach_type_unneed.exit.for.end_crit_edge: ; preds = %netns_bpf_attach_type_unneed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %netns_bpf_attach_type_unneed.exit.for.end_crit_edge, %netns_bpf_run_array_detach.exit.for.end_crit_edge
  %arrayidx14 = getelementptr %struct.net, ptr %net, i32 0, i32 44, i32 1, i32 0
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx14, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.end.for.inc18_crit_edge, label %if.then

for.end.for.inc18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bpf_prog_put(ptr noundef nonnull %6) #9
  br label %for.inc18

for.inc18:                                        ; preds = %if.then, %for.end.for.inc18_crit_edge
  %call.i.i.1 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @netns_bpf_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.i.1, label %land.lhs.true.i.1, label %for.inc18.netns_bpf_run_array_detach.exit.1_crit_edge

for.inc18.netns_bpf_run_array_detach.exit.1_crit_edge: ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_run_array_detach.exit.1

land.lhs.true.i.1:                                ; preds = %for.inc18
  %call1.i.1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %land.lhs.true.i.1.netns_bpf_run_array_detach.exit.1_crit_edge, label %land.lhs.true3.i.1

land.lhs.true.i.1.netns_bpf_run_array_detach.exit.1_crit_edge: ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_run_array_detach.exit.1

land.lhs.true3.i.1:                               ; preds = %land.lhs.true.i.1
  %.b54.i.1 = load i1, ptr @netns_bpf_run_array_detach.__warned, align 1
  br i1 %.b54.i.1, label %land.lhs.true3.i.1.netns_bpf_run_array_detach.exit.1_crit_edge, label %if.then.i.1

land.lhs.true3.i.1.netns_bpf_run_array_detach.exit.1_crit_edge: ; preds = %land.lhs.true3.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_run_array_detach.exit.1

if.then.i.1:                                      ; preds = %land.lhs.true3.i.1
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netns_bpf_run_array_detach.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 62, ptr noundef nonnull @.str.3) #9
  br label %netns_bpf_run_array_detach.exit.1

netns_bpf_run_array_detach.exit.1:                ; preds = %if.then.i.1, %land.lhs.true3.i.1.netns_bpf_run_array_detach.exit.1_crit_edge, %land.lhs.true.i.1.netns_bpf_run_array_detach.exit.1_crit_edge, %for.inc18.netns_bpf_run_array_detach.exit.1_crit_edge
  %arrayidx.i.1 = getelementptr %struct.net, ptr %net, i32 0, i32 44, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.1, align 4
  store volatile ptr null, ptr %arrayidx.i.1, align 4
  tail call void @bpf_prog_array_free(ptr noundef %8) #9
  %arrayidx.1 = getelementptr %struct.net, ptr %net, i32 0, i32 44, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn33.1 = load ptr, ptr %arrayidx.1, align 4
  %cmp5.not34.1 = icmp eq ptr %.pn33.1, %arrayidx.1
  br i1 %cmp5.not34.1, label %netns_bpf_run_array_detach.exit.1.for.end.1_crit_edge, label %netns_bpf_run_array_detach.exit.1.netns_bpf_attach_type_unneed.exit.1_crit_edge

netns_bpf_run_array_detach.exit.1.netns_bpf_attach_type_unneed.exit.1_crit_edge: ; preds = %netns_bpf_run_array_detach.exit.1
  br label %netns_bpf_attach_type_unneed.exit.1

netns_bpf_run_array_detach.exit.1.for.end.1_crit_edge: ; preds = %netns_bpf_run_array_detach.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.1

netns_bpf_attach_type_unneed.exit.1:              ; preds = %netns_bpf_attach_type_unneed.exit.1.netns_bpf_attach_type_unneed.exit.1_crit_edge, %netns_bpf_run_array_detach.exit.1.netns_bpf_attach_type_unneed.exit.1_crit_edge
  %.pn35.1 = phi ptr [ %.pn.1, %netns_bpf_attach_type_unneed.exit.1.netns_bpf_attach_type_unneed.exit.1_crit_edge ], [ %.pn33.1, %netns_bpf_run_array_detach.exit.1.netns_bpf_attach_type_unneed.exit.1_crit_edge ]
  %net7.1 = getelementptr i8, ptr %.pn35.1, i32 -4
  %10 = ptrtoint ptr %net7.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %net7.1, align 8
  tail call void @static_key_slow_dec(ptr noundef nonnull @bpf_sk_lookup_enabled) #9
  %11 = ptrtoint ptr %.pn35.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.1 = load ptr, ptr %.pn35.1, align 4
  %cmp5.not.1 = icmp eq ptr %.pn.1, %arrayidx.1
  br i1 %cmp5.not.1, label %netns_bpf_attach_type_unneed.exit.1.for.end.1_crit_edge, label %netns_bpf_attach_type_unneed.exit.1.netns_bpf_attach_type_unneed.exit.1_crit_edge

netns_bpf_attach_type_unneed.exit.1.netns_bpf_attach_type_unneed.exit.1_crit_edge: ; preds = %netns_bpf_attach_type_unneed.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %netns_bpf_attach_type_unneed.exit.1

netns_bpf_attach_type_unneed.exit.1.for.end.1_crit_edge: ; preds = %netns_bpf_attach_type_unneed.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.1

for.end.1:                                        ; preds = %netns_bpf_attach_type_unneed.exit.1.for.end.1_crit_edge, %netns_bpf_run_array_detach.exit.1.for.end.1_crit_edge
  %arrayidx14.1 = getelementptr %struct.net, ptr %net, i32 0, i32 44, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14.1, align 4
  %tobool.not.1 = icmp eq ptr %13, null
  br i1 %tobool.not.1, label %for.end.1.for.inc18.1_crit_edge, label %if.then.1

for.end.1.for.inc18.1_crit_edge:                  ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.1

if.then.1:                                        ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bpf_prog_put(ptr noundef nonnull %13) #9
  br label %for.inc18.1

for.inc18.1:                                      ; preds = %if.then.1, %for.end.1.for.inc18.1_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @netns_bpf_mutex) #9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/bpf/net_namespace.c", i32 27, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @netns_bpf_mutex, !1, !"netns_bpf_mutex", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../kernel/bpf/net_namespace.c", i32 339, i32 14}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_net_namespace__404_567_netns_bpf_init4, !9, !"__initcall__kmod_net_namespace__404_567_netns_bpf_init4", i1 false, i1 false}
!9 = !{!"../kernel/bpf/net_namespace.c", i32 567, i32 1}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../kernel/bpf/net_namespace.c", i32 255, i32 14}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!14 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../kernel/bpf/net_namespace.c", i32 61, i32 14}
!21 = !{ptr @bpf_netns_link_ops, !22, !"bpf_netns_link_ops", i1 false, i1 false}
!22 = !{!"../kernel/bpf/net_namespace.c", i32 236, i32 34}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../kernel/bpf/net_namespace.c", i32 134, i32 14}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../kernel/bpf/net_namespace.c", i32 189, i32 14}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/bpf/net_namespace.c", i32 230, i32 6}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../kernel/bpf/net_namespace.c", i32 465, i32 14}
!31 = !{ptr @netns_bpf_pernet_ops, !32, !"netns_bpf_pernet_ops", i1 false, i1 false}
!32 = !{!"../kernel/bpf/net_namespace.c", i32 557, i32 33}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2153327235, i64 2153327260}
!44 = !{i64 2148785162}
!45 = !{i64 2148699602, i64 2148699634, i64 2148699663, i64 2148699697, i64 2148699728, i64 2148699751}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2150248478}
!48 = !{i64 2157060714}
!49 = !{i64 2157072208}
!50 = !{i64 2157041638}
!51 = !{i64 2157048568}
!52 = !{i64 1202375, i64 1202392, i64 1202416, i64 1202442, i64 1202460}
!53 = !{i64 2157048918}
