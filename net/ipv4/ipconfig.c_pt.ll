; ModuleID = '/llk/IR_all_yes/net/ipv4/ipconfig.c_pt.bc'
source_filename = "../net/ipv4/ipconfig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.93, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.93 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
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
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ic_device = type { ptr, ptr, i16, i16, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.132, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.132 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.146 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.112, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.112 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ifreq = type { %union.anon.133, %union.anon.134 }
%union.anon.133 = type { [16 x i8] }
%union.anon.134 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.rtentry = type { i32, %struct.sockaddr, %struct.sockaddr, %struct.sockaddr, i16, i16, i32, ptr, i16, ptr, i32, i32, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.122, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.123, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.124, ptr, %struct.address_space, %struct.list_head, %union.anon.127, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.122 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.123 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.124 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.127 = type { ptr }
%struct.sk_buff = type { %union.anon.49, %union.anon.52, %union.anon.53, [48 x i8], %union.anon.54, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.56, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, ptr, %union.anon.51 }
%union.anon.51 = type { ptr }
%union.anon.52 = type { ptr }
%union.anon.53 = type { i64 }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { i32, ptr }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.58, i32, i32, i32, i16, i16, %union.anon.60, i32, %union.anon.61, %union.anon.62, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.58 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.bootp_pkt = type { %struct.iphdr, %struct.udphdr, i8, i8, i8, i8, i32, i16, i16, i32, i32, i32, i32, [16 x i8], [64 x i8], [128 x i8], [312 x i8] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.arphdr = type { i16, i16, i8, i8, i16 }

@ic_set_manually = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@ic_proto_enabled = dso_local local_unnamed_addr global i32 259, section ".init.data", align 4
@ic_myaddr = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@ic_gateway = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@ic_servaddr = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@root_server_addr = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@root_server_path = dso_local global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@__initcall__kmod_ipconfig__516_1650_ip_auto_config7 = internal global ptr @ip_auto_config, section ".initcall7.init", align 4
@__setup_str_ip_auto_config_setup = internal constant [4 x i8] c"ip=\00", section ".init.rodata", align 1
@__setup_ip_auto_config_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ip_auto_config_setup, ptr @ip_auto_config_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_nfsaddrs_config_setup = internal constant [10 x i8] c"nfsaddrs=\00", section ".init.rodata", align 1
@__setup_nfsaddrs_config_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_nfsaddrs_config_setup, ptr @nfsaddrs_config_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_vendor_class_identifier_setup = internal constant [11 x i8] c"dhcpclass=\00", section ".init.rodata", align 1
@__setup_vendor_class_identifier_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_vendor_class_identifier_setup, ptr @vendor_class_identifier_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_set_carrier_timeout = internal constant [17 x i8] c"carrier_timeout=\00", section ".init.rodata", align 1
@__setup_set_carrier_timeout = internal global %struct.obs_kernel_param { ptr @__setup_str_set_carrier_timeout, ptr @set_carrier_timeout, i32 0 }, section ".init.setup", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pnp\00", [28 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ntp_servers\00", [20 x i8] zeroinitializer }, align 32
@ntp_servers_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @ntp_servers_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ic_enable = internal unnamed_addr global i1 false, section ".init.data", align 4
@ip_auto_config.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipconfig\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip_auto_config\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/ipv4/ipconfig.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IP-Config: Entered.\0A\00", [43 x i8] zeroinitializer }, align 32
@ROOT_DEV = external dso_local local_unnamed_addr global i32, align 4
@ic_first_dev = internal unnamed_addr global ptr null, section ".init.data", align 4
@ip_auto_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013IP-Config: Retrying forever (NFS root)...\0A\00", [51 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr = internal global ptr @ip_auto_config._entry, section ".printk_index", align 4
@ip_auto_config._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013IP-Config: Retrying forever (CIFS root)...\0A\00", [50 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.9 = internal global ptr @ip_auto_config._entry.7, section ".printk_index", align 4
@ip_auto_config._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013IP-Config: Reopening network devices...\0A\00", [53 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.12 = internal global ptr @ip_auto_config._entry.10, section ".printk_index", align 4
@ip_auto_config._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013IP-Config: Auto-configuration of network failed\0A\00", [45 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.15 = internal global ptr @ip_auto_config._entry.13, section ".printk_index", align 4
@ic_dev = internal unnamed_addr global ptr null, section ".init.data", align 4
@ic_got_reply = internal global i32 0, section ".init.data", align 4
@ic_proto_used = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ip_auto_config._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016IP-Config: Complete:\0A\00", [40 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.18 = internal global ptr @ip_auto_config._entry.16, section ".printk_index", align 4
@ip_auto_config._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016     device=%s, hwaddr=%*phC, ipaddr=%pI4, mask=%pI4, gw=%pI4\0A\00", [63 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.21 = internal global ptr @ip_auto_config._entry.19, section ".printk_index", align 4
@ic_netmask = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@ip_auto_config._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016     host=%s, domain=%s, nis-domain=%s\0A\00", [54 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.24 = internal global ptr @ip_auto_config._entry.22, section ".printk_index", align 4
@ic_domain = internal global { [64 x i8], [32 x i8] } zeroinitializer, align 32
@ip_auto_config._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 1601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016     bootserver=%pI4, rootserver=%pI4, rootpath=%s\00", [43 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.27 = internal global ptr @ip_auto_config._entry.25, section ".printk_index", align 4
@ic_dev_mtu = internal unnamed_addr global i32 0, section ".init.data", align 4
@ip_auto_config._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 1603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c, mtu=%d\00", [21 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.30 = internal global ptr @ip_auto_config._entry.28, section ".printk_index", align 4
@ic_nameservers = internal global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@ip_auto_config._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 1609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016     nameserver%u=%pI4\00", [39 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.33 = internal global ptr @ip_auto_config._entry.31, section ".printk_index", align 4
@ip_auto_config._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 1612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\01c, nameserver%u=%pI4\00", [42 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.36 = internal global ptr @ip_auto_config._entry.34, section ".printk_index", align 4
@ip_auto_config._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 1617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.39 = internal global ptr @ip_auto_config._entry.37, section ".printk_index", align 4
@ic_ntp_servers = internal global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@ip_auto_config._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 1624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016     ntpserver%u=%pI4\00", [40 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.42 = internal global ptr @ip_auto_config._entry.40, section ".printk_index", align 4
@ip_auto_config._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.3, ptr @.str.4, i32 1627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\01c, ntpserver%u=%pI4\00", [43 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.45 = internal global ptr @ip_auto_config._entry.43, section ".printk_index", align 4
@ip_auto_config._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 1632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_auto_config._entry_ptr.47 = internal global ptr @ip_auto_config._entry.46, section ".printk_index", align 4
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#PROTO: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RARP\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DHCP\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BOOTP\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"#MANUAL\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"domain %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nameserver %pI4\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bootserver %pI4\0A\00", [47 x i8] zeroinitializer }, align 32
@ipconfig_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipconfig/\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI4\0A\00", [26 x i8] zeroinitializer }, align 32
@user_dev_name = internal global [16 x i8] zeroinitializer, section ".init.data", align 1
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@ic_open_devs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013IP-Config: Failed to open %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ic_open_devs\00", [19 x i8] zeroinitializer }, align 32
@ic_open_devs._entry_ptr = internal global ptr @ic_open_devs._entry, section ".printk_index", align 4
@ic_open_devs._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.4, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014DHCP/BOOTP: Ignoring device %s, MTU %d too small\0A\00", [44 x i8] zeroinitializer }, align 32
@ic_open_devs._entry_ptr.64 = internal global ptr @ic_open_devs._entry.62, section ".printk_index", align 4
@ic_open_devs._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ic_open_devs._entry_ptr.66 = internal global ptr @ic_open_devs._entry.65, section ".printk_index", align 4
@ic_proto_have_if = internal unnamed_addr global i32 0, section ".init.data", align 4
@ic_open_devs.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.61, ptr @.str.4, ptr @.str.67, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IP-Config: %s UP (able=%d, xid=%08x)\0A\00", [58 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@carrier_timeout = internal global { i32, [28 x i8] } { i32 120, [28 x i8] zeroinitializer }, align 32
@ic_open_devs._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.4, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016Waiting up to %d more seconds for network.\0A\00", [50 x i8] zeroinitializer }, align 32
@ic_open_devs._entry_ptr.70 = internal global ptr @ic_open_devs._entry.68, section ".printk_index", align 4
@ic_open_devs._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.61, ptr @.str.4, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013IP-Config: Device `%s' not found\0A\00", [60 x i8] zeroinitializer }, align 32
@ic_open_devs._entry_ptr.73 = internal global ptr @ic_open_devs._entry.71, section ".printk_index", align 4
@ic_open_devs._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.61, ptr @.str.4, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013IP-Config: No network devices available\0A\00", [53 x i8] zeroinitializer }, align 32
@ic_open_devs._entry_ptr.76 = internal global ptr @ic_open_devs._entry.74, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ic_dynamic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 1200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013IP-Config: Incomplete network configuration information\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ic_dynamic\00", [21 x i8] zeroinitializer }, align 32
@ic_dynamic._entry_ptr = internal global ptr @ic_dynamic._entry, section ".printk_index", align 4
@ic_dynamic._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.4, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013DHCP/BOOTP: No suitable device found\0A\00", [56 x i8] zeroinitializer }, align 32
@ic_dynamic._entry_ptr.81 = internal global ptr @ic_dynamic._entry.79, section ".printk_index", align 4
@ic_dynamic._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.4, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013RARP: No suitable device found\0A\00", [62 x i8] zeroinitializer }, align 32
@ic_dynamic._entry_ptr.84 = internal global ptr @ic_dynamic._entry.82, section ".printk_index", align 4
@ic_dynamic._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.4, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015Sending %s%s%s requests .\00", [36 x i8] zeroinitializer }, align 32
@ic_dynamic._entry_ptr.87 = internal global ptr @ic_dynamic._entry.85, section ".printk_index", align 4
@.str.88 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" and \00", [26 x i8] zeroinitializer }, align 32
@ic_dhcp_msgtype = internal unnamed_addr global i32 0, section ".init.data", align 4
@ic_dynamic._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.78, ptr @.str.4, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c,\00", [28 x i8] zeroinitializer }, align 32
@ic_dynamic._entry_ptr.92 = internal global ptr @ic_dynamic._entry.90, section ".printk_index", align 4
@ic_dynamic._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.78, ptr @.str.4, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c OK\0A\00", [25 x i8] zeroinitializer }, align 32
@ic_dynamic._entry_ptr.95 = internal global ptr @ic_dynamic._entry.93, section ".printk_index", align 4
@ic_dynamic._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.78, ptr @.str.4, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c timed out!\0A\00", [17 x i8] zeroinitializer }, align 32
@ic_dynamic._entry_ptr.98 = internal global ptr @ic_dynamic._entry.96, section ".printk_index", align 4
@ic_dynamic._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.78, ptr @.str.4, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c.\00", [28 x i8] zeroinitializer }, align 32
@ic_dynamic._entry_ptr.101 = internal global ptr @ic_dynamic._entry.99, section ".printk_index", align 4
@ic_dynamic._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.78, ptr @.str.4, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016IP-Config: Got %s answer from %pI4, my address is %pI4\0A\00", [38 x i8] zeroinitializer }, align 32
@ic_dynamic._entry_ptr.104 = internal global ptr @ic_dynamic._entry.102, section ".printk_index", align 4
@ic_addrservaddr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@bootp_packet_type = internal global %struct.packet_type { i16 2048, i8 0, ptr null, ptr null, ptr @ic_bootp_recv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".init.data", align 4
@ic_bootp_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013DHCP/BOOTP: Ignoring fragmented reply\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ic_bootp_recv\00", [18 x i8] zeroinitializer }, align 32
@ic_bootp_recv._entry_ptr = internal global ptr @ic_bootp_recv._entry, section ".printk_index", align 4
@ic_recv_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.113, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ic_bootp_recv._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.4, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013DHCP/BOOTP: Reply not for us on %s, op[%x] xid[%x]\0A\00", [42 x i8] zeroinitializer }, align 32
@ic_bootp_recv._entry_ptr.109 = internal global ptr @ic_bootp_recv._entry.107, section ".printk_index", align 4
@ic_bootp_cookie = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"c\82Sc", [28 x i8] zeroinitializer }, align 32
@ic_bootp_recv.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.106, ptr @.str.4, ptr @.str.110, i8 1, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DHCP: Got message type %d (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@ic_bootp_recv.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.106, ptr @.str.4, ptr @.str.111, i8 1, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DHCP: Offered address %pI4 by server %pI4\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ic_recv_lock\00", [19 x i8] zeroinitializer }, align 32
@ic_do_bootp_ext.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.114, ptr @.str.4, ptr @.str.115, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ic_do_bootp_ext\00", [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DHCP/BOOTP: Got extension %d:\00", [34 x i8] zeroinitializer }, align 32
@ic_do_bootp_ext.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.114, ptr @.str.4, ptr @.str.116, i8 0, i8 -25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@ic_do_bootp_ext.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.114, ptr @.str.4, ptr @.str.117, i8 0, i8 -25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@ic_host_name_set = internal unnamed_addr global i1 false, section ".init.data", align 4
@rarp_packet_type = internal global %struct.packet_type { i16 -32715, i8 0, ptr null, ptr null, ptr @ic_rarp_recv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".init.data", align 4
@ic_bootp_send_if._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.4, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014Unknown ARP type 0x%04x for device %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ic_bootp_send_if\00", [47 x i8] zeroinitializer }, align 32
@ic_bootp_send_if._entry_ptr = internal global ptr @ic_bootp_send_if._entry, section ".printk_index", align 4
@ic_bootp_send_if._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.4, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@ic_bootp_send_if._entry_ptr.122 = internal global ptr @ic_bootp_send_if._entry.120, section ".printk_index", align 4
@ic_bootp_send_if._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.4, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ic_bootp_send_if._entry_ptr.124 = internal global ptr @ic_bootp_send_if._entry.123, section ".printk_index", align 4
@ic_dhcp_init_options.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.125, ptr @.str.4, ptr @.str.126, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ic_dhcp_init_options\00", [43 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DHCP: Sending message type %d (%s)\0A\00", [60 x i8] zeroinitializer }, align 32
@ic_dhcp_init_options.ic_req_params = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01\03\06\0C\0F\11\1A(*", [23 x i8] zeroinitializer }, align 32
@vendor_class_identifier = internal global [253 x i8] zeroinitializer, section ".init.data", align 1
@ic_dhcp_init_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.4, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016DHCP: sending class identifier \22%s\22\0A\00", [57 x i8] zeroinitializer }, align 32
@ic_dhcp_init_options._entry_ptr = internal global ptr @ic_dhcp_init_options._entry, section ".printk_index", align 4
@dhcp_client_identifier = internal global [253 x i8] zeroinitializer, section ".init.data", align 1
@ic_close_devs.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.128, ptr @.str.4, ptr @.str.129, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ic_close_devs\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IP-Config: Downing %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@ic_defaults._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.4, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013IP-Config: Unable to guess netmask for address %pI4\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ic_defaults\00", [20 x i8] zeroinitializer }, align 32
@ic_defaults._entry_ptr = internal global ptr @ic_defaults._entry, section ".printk_index", align 4
@ic_defaults._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.4, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015IP-Config: Guessing netmask %pI4\0A\00", [60 x i8] zeroinitializer }, align 32
@ic_defaults._entry_ptr.135 = internal global ptr @ic_defaults._entry.133, section ".printk_index", align 4
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@ic_setup_if._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.4, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013IP-Config: Unable to set interface address (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ic_setup_if\00", [20 x i8] zeroinitializer }, align 32
@ic_setup_if._entry_ptr = internal global ptr @ic_setup_if._entry, section ".printk_index", align 4
@ic_setup_if._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.4, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013IP-Config: Unable to set interface netmask (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@ic_setup_if._entry_ptr.140 = internal global ptr @ic_setup_if._entry.138, section ".printk_index", align 4
@ic_setup_if._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.137, ptr @.str.4, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013IP-Config: Unable to set interface broadcast address (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@ic_setup_if._entry_ptr.143 = internal global ptr @ic_setup_if._entry.141, section ".printk_index", align 4
@ic_setup_if._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.137, ptr @.str.4, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013IP-Config: Unable to set interface mtu to %d (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@ic_setup_if._entry_ptr.146 = internal global ptr @ic_setup_if._entry.144, section ".printk_index", align 4
@ic_setup_routes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.4, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013IP-Config: Gateway not on directly connected network\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ic_setup_routes\00", [16 x i8] zeroinitializer }, align 32
@ic_setup_routes._entry_ptr = internal global ptr @ic_setup_routes._entry, section ".printk_index", align 4
@ic_setup_routes._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.4, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013IP-Config: Cannot add default route (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@ic_setup_routes._entry_ptr.151 = internal global ptr @ic_setup_routes._entry.149, section ".printk_index", align 4
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@ip_auto_config_setup.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.154, ptr @.str.4, ptr @.str.155, i8 1, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip_auto_config_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IP-Config: Parameter #%d: `%s'\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dhcp\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dhcp,\00", [26 x i8] zeroinitializer }, align 32
@ic_proto_name.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.160, ptr @.str.4, ptr @.str.161, i8 1, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ic_proto_name\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DHCP: Invalid client identifier type\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bootp\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rarp\00", [27 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"both\00", [27 x i8] zeroinitializer }, align 32
@vendor_class_identifier_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.4, i32 1821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014DHCP: vendorclass too long, truncated to \22%s\22\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vendor_class_identifier_setup\00", [34 x i8] zeroinitializer }, align 32
@vendor_class_identifier_setup._entry_ptr = internal global ptr @vendor_class_identifier_setup._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 58]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 255]
@__sancov_gen_cov_switch_values.168 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 8, i64 53, i64 54]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.171 = internal global [11 x i64] [i64 9, i64 8, i64 1, i64 3, i64 6, i64 12, i64 15, i64 17, i64 26, i64 40, i64 42]
@___asan_gen_.172 = private unnamed_addr constant [10 x i8] c"ic_myaddr\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 132, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant [11 x i8] c"ic_gateway\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 134, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"ic_servaddr\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 140, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"root_server_addr\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 142, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"root_server_path\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 143, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1483, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1486, i32 28 }
@___asan_gen_.193 = private unnamed_addr constant [21 x i8] c"ntp_servers_proc_ops\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1395, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1492, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1542, i32 5 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1548, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1554, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1559, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant [14 x i8] c"ic_proto_used\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 155, i32 12 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1593, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1595, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [11 x i8] c"ic_netmask\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 133, i32 15 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1598, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [10 x i8] c"ic_domain\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 161, i32 11 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1600, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1603, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [15 x i8] c"ic_nameservers\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 159, i32 15 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1608, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1611, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1617, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant [15 x i8] c"ic_ntp_servers\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 160, i32 15 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1623, i32 5 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1626, i32 5 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1632, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1332, i32 19 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1333, i32 35 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1334, i32 41 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1334, i32 50 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1336, i32 17 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1340, i32 7 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1343, i32 20 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1347, i32 19 }
@___asan_gen_.334 = private unnamed_addr constant [13 x i8] c"ipconfig_dir\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1324, i32 31 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1372, i32 32 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1372, i32 40 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1391, i32 20 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 207, i32 26 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 225, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 234, i32 5 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 243, i32 5 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 261, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant [16 x i8] c"carrier_timeout\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 103, i32 21 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 297, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 306, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 309, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1200, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1206, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1210, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1237, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1271, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1277, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1285, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1295, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1312, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [16 x i8] c"ic_addrservaddr\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 137, i32 15 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1016, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant [13 x i8] c"ic_recv_lock\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1064, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant [16 x i8] c"ic_bootp_cookie\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 672, i32 17 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1100, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1113, i32 5 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 177, i32 8 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 922, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 924, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 925, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 862, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 887, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 892, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 684, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant [14 x i8] c"ic_req_params\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 707, i32 19 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 732, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 343, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 446, i32 37 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 461, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 465, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 377, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 383, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 389, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 400, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 417, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 425, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1725, i32 20 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1726, i32 20 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1741, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1659, i32 20 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1659, i32 43 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1666, i32 26 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1670, i32 28 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1680, i32 5 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1688, i32 25 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1694, i32 25 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1700, i32 25 }
@___asan_gen_.637 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.643 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.644 = private constant [23 x i8] c"../net/ipv4/ipconfig.c\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 1820, i32 3 }
@llvm.compiler.used = appending global [208 x ptr] [ptr @__initcall__kmod_ipconfig__516_1650_ip_auto_config7, ptr @__setup_ip_auto_config_setup, ptr @__setup_nfsaddrs_config_setup, ptr @__setup_set_carrier_timeout, ptr @__setup_vendor_class_identifier_setup, ptr @ic_bootp_recv._entry, ptr @ic_bootp_recv._entry.107, ptr @ic_bootp_recv._entry_ptr, ptr @ic_bootp_recv._entry_ptr.109, ptr @ic_bootp_send_if._entry, ptr @ic_bootp_send_if._entry.120, ptr @ic_bootp_send_if._entry.123, ptr @ic_bootp_send_if._entry_ptr, ptr @ic_bootp_send_if._entry_ptr.122, ptr @ic_bootp_send_if._entry_ptr.124, ptr @ic_defaults._entry, ptr @ic_defaults._entry.133, ptr @ic_defaults._entry_ptr, ptr @ic_defaults._entry_ptr.135, ptr @ic_dhcp_init_options._entry, ptr @ic_dhcp_init_options._entry_ptr, ptr @ic_dynamic._entry, ptr @ic_dynamic._entry.102, ptr @ic_dynamic._entry.79, ptr @ic_dynamic._entry.82, ptr @ic_dynamic._entry.85, ptr @ic_dynamic._entry.90, ptr @ic_dynamic._entry.93, ptr @ic_dynamic._entry.96, ptr @ic_dynamic._entry.99, ptr @ic_dynamic._entry_ptr, ptr @ic_dynamic._entry_ptr.101, ptr @ic_dynamic._entry_ptr.104, ptr @ic_dynamic._entry_ptr.81, ptr @ic_dynamic._entry_ptr.84, ptr @ic_dynamic._entry_ptr.87, ptr @ic_dynamic._entry_ptr.92, ptr @ic_dynamic._entry_ptr.95, ptr @ic_dynamic._entry_ptr.98, ptr @ic_open_devs._entry, ptr @ic_open_devs._entry.62, ptr @ic_open_devs._entry.65, ptr @ic_open_devs._entry.68, ptr @ic_open_devs._entry.71, ptr @ic_open_devs._entry.74, ptr @ic_open_devs._entry_ptr, ptr @ic_open_devs._entry_ptr.64, ptr @ic_open_devs._entry_ptr.66, ptr @ic_open_devs._entry_ptr.70, ptr @ic_open_devs._entry_ptr.73, ptr @ic_open_devs._entry_ptr.76, ptr @ic_setup_if._entry, ptr @ic_setup_if._entry.138, ptr @ic_setup_if._entry.141, ptr @ic_setup_if._entry.144, ptr @ic_setup_if._entry_ptr, ptr @ic_setup_if._entry_ptr.140, ptr @ic_setup_if._entry_ptr.143, ptr @ic_setup_if._entry_ptr.146, ptr @ic_setup_routes._entry, ptr @ic_setup_routes._entry.149, ptr @ic_setup_routes._entry_ptr, ptr @ic_setup_routes._entry_ptr.151, ptr @ip_auto_config._entry, ptr @ip_auto_config._entry.10, ptr @ip_auto_config._entry.13, ptr @ip_auto_config._entry.16, ptr @ip_auto_config._entry.19, ptr @ip_auto_config._entry.22, ptr @ip_auto_config._entry.25, ptr @ip_auto_config._entry.28, ptr @ip_auto_config._entry.31, ptr @ip_auto_config._entry.34, ptr @ip_auto_config._entry.37, ptr @ip_auto_config._entry.40, ptr @ip_auto_config._entry.43, ptr @ip_auto_config._entry.46, ptr @ip_auto_config._entry.7, ptr @ip_auto_config._entry_ptr, ptr @ip_auto_config._entry_ptr.12, ptr @ip_auto_config._entry_ptr.15, ptr @ip_auto_config._entry_ptr.18, ptr @ip_auto_config._entry_ptr.21, ptr @ip_auto_config._entry_ptr.24, ptr @ip_auto_config._entry_ptr.27, ptr @ip_auto_config._entry_ptr.30, ptr @ip_auto_config._entry_ptr.33, ptr @ip_auto_config._entry_ptr.36, ptr @ip_auto_config._entry_ptr.39, ptr @ip_auto_config._entry_ptr.42, ptr @ip_auto_config._entry_ptr.45, ptr @ip_auto_config._entry_ptr.47, ptr @ip_auto_config._entry_ptr.9, ptr @vendor_class_identifier_setup._entry, ptr @vendor_class_identifier_setup._entry_ptr, ptr @ic_myaddr, ptr @ic_gateway, ptr @ic_servaddr, ptr @root_server_addr, ptr @root_server_path, ptr @.str, ptr @.str.1, ptr @ntp_servers_proc_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @ic_proto_used, ptr @.str.17, ptr @.str.20, ptr @ic_netmask, ptr @.str.23, ptr @ic_domain, ptr @.str.26, ptr @.str.29, ptr @ic_nameservers, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @ic_ntp_servers, ptr @.str.41, ptr @.str.44, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @ipconfig_dir, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.67, ptr @carrier_timeout, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @ic_addrservaddr, ptr @.str.105, ptr @.str.106, ptr @ic_recv_lock, ptr @.str.108, ptr @ic_bootp_cookie, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.125, ptr @.str.126, ptr @ic_dhcp_init_options.ic_req_params, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166], section "llvm.metadata"
@0 = internal global [158 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_myaddr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_gateway to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_servaddr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_server_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_server_path to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntp_servers_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_proto_used to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_netmask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_domain to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_nameservers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_ntp_servers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_auto_config._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipconfig_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_open_devs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_open_devs._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_open_devs._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carrier_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_open_devs._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_open_devs._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_open_devs._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_dynamic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_dynamic._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_dynamic._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_dynamic._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_dynamic._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_dynamic._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_dynamic._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_dynamic._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_dynamic._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_addrservaddr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_bootp_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_recv_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_bootp_recv._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_bootp_cookie to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_bootp_send_if._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_bootp_send_if._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_bootp_send_if._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_dhcp_init_options.ic_req_params to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_dhcp_init_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_defaults._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_defaults._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_setup_if._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_setup_if._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_setup_if._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_setup_if._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_setup_routes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ic_setup_routes._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_class_identifier_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @root_nfs_parse_addr(ptr noundef %name) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %if.end.while.cond1.preheader_crit_edge, %entry
  %cq.067 = phi ptr [ %name, %entry ], [ %cp.2, %if.end.while.cond1.preheader_crit_edge ]
  %octets.066 = phi i32 [ 0, %entry ], [ %octets.1, %if.end.while.cond1.preheader_crit_edge ]
  br label %while.cond1

while.cond1:                                      ; preds = %while.cond1.while.cond1_crit_edge, %while.cond1.preheader
  %cp.1 = phi ptr [ %incdec.ptr, %while.cond1.while.cond1_crit_edge ], [ %cq.067, %while.cond1.preheader ]
  %0 = ptrtoint ptr %cp.1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cp.1, align 1
  %2 = add i8 %1, -48
  %3 = icmp ult i8 %2, 10
  %incdec.ptr = getelementptr i8, ptr %cp.1, i32 1
  br i1 %3, label %while.cond1.while.cond1_crit_edge, label %while.end

while.cond1.while.cond1_crit_edge:                ; preds = %while.cond1
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond1

while.end:                                        ; preds = %while.cond1
  %cmp8 = icmp eq ptr %cp.1, %cq.067
  %sub.ptr.lhs.cast = ptrtoint ptr %cp.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %cq.067 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub)
  %cmp10 = icmp sgt i32 %sub.ptr.sub, 3
  %or.cond64 = or i1 %cmp8, %cmp10
  br i1 %or.cond64, label %while.end.while.end25_crit_edge, label %if.end

while.end.while.end25_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end25

if.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %1)
  %cmp13 = icmp eq i8 %1, 46
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %octets.066)
  %cmp16 = icmp eq i32 %octets.066, 3
  %or.cond65 = select i1 %cmp13, i1 true, i1 %cmp16
  %inc = zext i1 %or.cond65 to i32
  %octets.1 = add i32 %octets.066, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %octets.1)
  %cmp20 = icmp slt i32 %octets.1, 4
  %cp.2.idx = zext i1 %cmp20 to i32
  %cp.2 = getelementptr i8, ptr %cp.1, i32 %cp.2.idx
  br i1 %cmp20, label %if.end.while.cond1.preheader_crit_edge, label %if.end.while.end25_crit_edge

if.end.while.end25_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end25

if.end.while.cond1.preheader_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond1.preheader

while.end25:                                      ; preds = %if.end.while.end25_crit_edge, %while.end.while.end25_crit_edge
  %octets.0.lcssa = phi i32 [ %octets.066, %while.end.while.end25_crit_edge ], [ %octets.1, %if.end.while.end25_crit_edge ]
  %cp.3 = phi ptr [ %cp.1, %while.end.while.end25_crit_edge ], [ %cp.2, %if.end.while.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %octets.0.lcssa)
  %cmp26 = icmp eq i32 %octets.0.lcssa, 4
  br i1 %cmp26, label %land.lhs.true, label %while.end25.if.end43_crit_edge

while.end25.if.end43_crit_edge:                   ; preds = %while.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

land.lhs.true:                                    ; preds = %while.end25
  %4 = ptrtoint ptr %cp.3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cp.3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %land.lhs.true.if.end43_crit_edge [
    i8 58, label %if.then39
    i8 0, label %land.lhs.true.if.end41_crit_edge
  ]

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %incdec.ptr40 = getelementptr i8, ptr %cp.3, i32 1
  %7 = ptrtoint ptr %cp.3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %cp.3, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %land.lhs.true.if.end41_crit_edge
  %cp.4 = phi ptr [ %incdec.ptr40, %if.then39 ], [ %cp.3, %land.lhs.true.if.end41_crit_edge ]
  %call = tail call i32 @in_aton(ptr noundef %name) #16
  %call42 = tail call i32 @strlen(ptr noundef %cp.4) #19
  %add = add i32 %call42, 1
  %8 = call ptr @memmove(ptr %name, ptr %cp.4, i32 %add)
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %land.lhs.true.if.end43_crit_edge, %while.end25.if.end43_crit_edge
  %addr.0 = phi i32 [ %call, %if.end41 ], [ -1, %land.lhs.true.if.end43_crit_edge ], [ -1, %while.end25.if.end43_crit_edge ]
  ret i32 %addr.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_aton(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_auto_config() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ic_set_manually, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = call ptr @memset(ptr @ic_nameservers, i32 255, i32 12)
  %2 = call ptr @memset(ptr @ic_ntp_servers, i32 255, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @pnp_seq_show, ptr noundef null) #16
  %call1 = tail call fastcc i32 @ipconfig_proc_net_init() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr @ipconfig_dir, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then3.if.end5_crit_edge, label %if.end.i

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end.i:                                         ; preds = %if.then3
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1) #16
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.if.end5_crit_edge, label %if.end3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call4.i = tail call ptr @proc_create(ptr noundef nonnull %call.i, i16 noundef zeroext 292, ptr noundef %5, ptr noundef nonnull @ntp_servers_proc_ops) #16
  tail call void @kfree(ptr noundef nonnull %call.i) #16
  br label %if.end5

if.end5:                                          ; preds = %if.end3.i, %if.end.i.if.end5_crit_edge, %if.then3.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %.b = load i1, ptr @ic_enable, align 4
  br i1 %.b, label %do.body, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip_auto_config.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip_auto_config, %if.then12)) #16
          to label %do.end [label %if.then12], !srcloc !367

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ip_auto_config.__UNIQUE_ID_ddebug515, ptr noundef nonnull @.str.5) #16
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %call14233237 = tail call fastcc i32 @wait_for_devices() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14233237)
  %tobool15.not234238 = icmp eq i32 %call14233237, 0
  br i1 %tobool15.not234238, label %do.end.if.end17.lr.ph_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end.if.end17.lr.ph_crit_edge:                  ; preds = %do.end
  br label %if.end17.lr.ph

if.end17.lr.ph:                                   ; preds = %do.end55.if.end17.lr.ph_crit_edge, %do.end.if.end17.lr.ph_crit_edge
  %tobool51.not = phi i1 [ true, %do.end55.if.end17.lr.ph_crit_edge ], [ false, %do.end.if.end17.lr.ph_crit_edge ]
  br label %if.end17

if.end17:                                         ; preds = %try_try_again.backedge.if.end17_crit_edge, %if.end17.lr.ph
  %call18 = tail call fastcc i32 @ic_open_devs() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  tail call void @msleep(i32 noundef 10) #16
  %6 = load i32, ptr @ic_myaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp22 = icmp eq i32 %6, -1
  br i1 %cmp22, label %if.end21.if.then31_crit_edge, label %lor.lhs.false

if.end21.if.then31_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.end21
  %7 = load i32, ptr @root_server_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp23 = icmp eq i32 %7, -1
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false.lor.lhs.false29_crit_edge

lor.lhs.false.lor.lhs.false29_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false29

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load i32, ptr @ic_servaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp24 = icmp eq i32 %8, -1
  br i1 %cmp24, label %land.lhs.true25, label %land.lhs.true.lor.lhs.false29_crit_edge

land.lhs.true.lor.lhs.false29_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false29

land.lhs.true25:                                  ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ROOT_DEV to i32))
  %9 = load i32, ptr @ROOT_DEV, align 4
  %10 = and i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %10)
  %switch = icmp eq i32 %10, 254
  br i1 %switch, label %land.lhs.true25.if.then31_crit_edge, label %land.lhs.true25.lor.lhs.false29_crit_edge

land.lhs.true25.lor.lhs.false29_crit_edge:        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false29

land.lhs.true25.if.then31_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then31

lor.lhs.false29:                                  ; preds = %land.lhs.true25.lor.lhs.false29_crit_edge, %land.lhs.true.lor.lhs.false29_crit_edge, %lor.lhs.false.lor.lhs.false29_crit_edge
  %11 = load ptr, ptr @ic_first_dev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool30.not = icmp eq ptr %13, null
  br i1 %tobool30.not, label %if.else, label %lor.lhs.false29.if.then31_crit_edge

lor.lhs.false29.if.then31_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false29.if.then31_crit_edge, %land.lhs.true25.if.then31_crit_edge, %if.end21.if.then31_crit_edge
  %call32 = tail call fastcc i32 @ic_dynamic() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.then31.if.end65_crit_edge

if.then31.if.end65_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then34:                                        ; preds = %if.then31
  tail call fastcc void @ic_close_devs() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ROOT_DEV to i32))
  %14 = load i32, ptr @ROOT_DEV, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %14, label %if.end50 [
    i32 255, label %do.end39
    i32 254, label %if.then34.try_try_again.backedge_crit_edge
  ]

if.then34.try_try_again.backedge_crit_edge:       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  br label %try_try_again.backedge

do.end39:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  br label %try_try_again.backedge

try_try_again.backedge:                           ; preds = %do.end39, %if.then34.try_try_again.backedge_crit_edge
  %.str.6.sink = phi ptr [ @.str.6, %do.end39 ], [ @.str.8, %if.then34.try_try_again.backedge_crit_edge ]
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.6.sink) #21
  %call14 = tail call fastcc i32 @wait_for_devices() #20
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %try_try_again.backedge.if.end17_crit_edge, label %try_try_again.backedge.cleanup_crit_edge

try_try_again.backedge.cleanup_crit_edge:         ; preds = %try_try_again.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

try_try_again.backedge.if.end17_crit_edge:        ; preds = %try_try_again.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.end50:                                         ; preds = %if.then34
  br i1 %tobool51.not, label %do.end61, label %do.end55

do.end55:                                         ; preds = %if.end50
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #21
  %call14233 = tail call fastcc i32 @wait_for_devices() #20
  %tobool15.not234 = icmp eq i32 %call14233, 0
  br i1 %tobool15.not234, label %do.end55.if.end17.lr.ph_crit_edge, label %do.end55.cleanup_crit_edge

do.end55.cleanup_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end55.if.end17.lr.ph_crit_edge:                ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.lr.ph

do.end61:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #21
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #18
  store ptr %11, ptr @ic_dev, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then31.if.end65_crit_edge
  %call66 = tail call i32 @root_nfs_parse_addr(ptr noundef nonnull @root_server_path) #20
  %16 = load i32, ptr @root_server_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp67 = icmp eq i32 %16, -1
  br i1 %cmp67, label %if.then68, label %if.end65.if.end69_crit_edge

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  store i32 %call66, ptr @root_server_addr, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end65.if.end69_crit_edge
  %call70 = tail call fastcc i32 @ic_defaults() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end69.cleanup_crit_edge, label %if.end73

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end73:                                         ; preds = %if.end69
  %17 = load volatile i32, ptr @ic_got_reply, align 4
  %18 = load i32, ptr @ic_proto_enabled, align 4
  %and = and i32 %18, 256
  %or = or i32 %and, %17
  store i32 %or, ptr @ic_proto_used, align 4
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #21
  %19 = load ptr, ptr @ic_dev, align 4
  %dev = getelementptr inbounds %struct.ic_device, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %addr_len = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 56
  %22 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %23 to i32
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 86
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %21, i32 noundef %conv, ptr noundef %25, ptr noundef nonnull @ic_myaddr, ptr noundef nonnull @ic_netmask, ptr noundef nonnull @ic_gateway) #21
  %26 = tail call i32 @llvm.read_register.i32(metadata !357) #16
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 110
  %30 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %uts_ns.i, align 4
  %nodename = getelementptr inbounds %struct.new_utsname, ptr %33, i32 0, i32 1
  %domainname = getelementptr inbounds %struct.new_utsname, ptr %33, i32 0, i32 5
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %nodename, ptr noundef nonnull @ic_domain, ptr noundef %domainname) #21
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @ic_servaddr, ptr noundef nonnull @root_server_addr, ptr noundef nonnull @root_server_path) #21
  %34 = load i32, ptr @ic_dev_mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool100.not = icmp eq i32 %34, 0
  br i1 %tobool100.not, label %if.end73.for.body.preheader_crit_edge, label %do.end104

if.end73.for.body.preheader_crit_edge:            ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.preheader

do.end104:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %34) #21
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end104, %if.end73.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0242 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %count.0241 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [3 x i32], ptr @ic_nameservers, i32 0, i32 %i.0242
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp110.not = icmp eq i32 %36, -1
  br i1 %cmp110.not, label %for.body.if.end130_crit_edge, label %if.then112

for.body.if.end130_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

if.then112:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0242)
  %cmp113 = icmp eq i32 %i.0242, 0
  br i1 %cmp113, label %do.end118, label %do.end125

do.end118:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #18
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef %arrayidx) #21
  br label %if.end129

do.end125:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #18
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %i.0242, ptr noundef %arrayidx) #21
  br label %if.end129

if.end129:                                        ; preds = %do.end125, %do.end118
  %inc = add i32 %count.0241, 1
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %for.body.if.end130_crit_edge
  %count.1 = phi i32 [ %inc, %if.end129 ], [ %count.0241, %for.body.if.end130_crit_edge ]
  %add = add nuw nsw i32 %i.0242, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp131 = icmp ne i32 %add, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %cmp134.not = icmp eq i32 %count.1, 0
  %or.cond = select i1 %cmp131, i1 true, i1 %cmp134.not
  br i1 %or.cond, label %if.end130.for.inc_crit_edge, label %do.end139

if.end130.for.inc_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end139:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #18
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #21
  br label %for.inc

for.inc:                                          ; preds = %do.end139, %if.end130.for.inc_crit_edge
  br i1 %cmp131, label %for.inc.for.body_crit_edge, label %for.inc.for.body147_crit_edge

for.inc.for.body147_crit_edge:                    ; preds = %for.inc
  br label %for.body147

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body147:                                      ; preds = %for.inc184.for.body147_crit_edge, %for.inc.for.body147_crit_edge
  %i.1246 = phi i32 [ %add171, %for.inc184.for.body147_crit_edge ], [ 0, %for.inc.for.body147_crit_edge ]
  %count.2245 = phi i32 [ %count.3, %for.inc184.for.body147_crit_edge ], [ 0, %for.inc.for.body147_crit_edge ]
  %arrayidx148 = getelementptr [3 x i32], ptr @ic_ntp_servers, i32 0, i32 %i.1246
  %37 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp149.not = icmp eq i32 %38, -1
  br i1 %cmp149.not, label %for.body147.if.end170_crit_edge, label %if.then151

for.body147.if.end170_crit_edge:                  ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end170

if.then151:                                       ; preds = %for.body147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1246)
  %cmp152 = icmp eq i32 %i.1246, 0
  br i1 %cmp152, label %do.end157, label %do.end164

do.end157:                                        ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #18
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef %arrayidx148) #21
  br label %if.end168

do.end164:                                        ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #18
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %i.1246, ptr noundef %arrayidx148) #21
  br label %if.end168

if.end168:                                        ; preds = %do.end164, %do.end157
  %inc169 = add i32 %count.2245, 1
  br label %if.end170

if.end170:                                        ; preds = %if.end168, %for.body147.if.end170_crit_edge
  %count.3 = phi i32 [ %inc169, %if.end168 ], [ %count.2245, %for.body147.if.end170_crit_edge ]
  %add171 = add nuw nsw i32 %i.1246, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add171)
  %cmp172 = icmp ne i32 %add171, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.3)
  %cmp175.not = icmp eq i32 %count.3, 0
  %or.cond227 = select i1 %cmp172, i1 true, i1 %cmp175.not
  br i1 %or.cond227, label %if.end170.for.inc184_crit_edge, label %do.end180

if.end170.for.inc184_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc184

do.end180:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #18
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #21
  br label %for.inc184

for.inc184:                                       ; preds = %do.end180, %if.end170.for.inc184_crit_edge
  br i1 %cmp172, label %for.inc184.for.body147_crit_edge, label %for.end186

for.inc184.for.body147_crit_edge:                 ; preds = %for.inc184
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body147

for.end186:                                       ; preds = %for.inc184
  %call187 = tail call fastcc i32 @ic_setup_if() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %cmp188 = icmp slt i32 %call187, 0
  br i1 %cmp188, label %for.end186.if.end196_crit_edge, label %lor.lhs.false190

for.end186.if.end196_crit_edge:                   ; preds = %for.end186
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end196

lor.lhs.false190:                                 ; preds = %for.end186
  call void @__sanitizer_cov_trace_pc() #18
  %call191 = tail call fastcc i32 @ic_setup_routes() #20
  %call191.lobit = ashr i32 %call191, 31
  br label %if.end196

if.end196:                                        ; preds = %lor.lhs.false190, %for.end186.if.end196_crit_edge
  %err.0 = phi i32 [ -1, %for.end186.if.end196_crit_edge ], [ %call191.lobit, %lor.lhs.false190 ]
  tail call fastcc void @ic_close_devs() #20
  br label %cleanup

cleanup:                                          ; preds = %if.end196, %if.end69.cleanup_crit_edge, %do.end61, %do.end55.cleanup_crit_edge, %try_try_again.backedge.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end61 ], [ %err.0, %if.end196 ], [ 0, %if.end5.cleanup_crit_edge ], [ -1, %if.end69.cleanup_crit_edge ], [ %call14233237, %do.end.cleanup_crit_edge ], [ %call14, %try_try_again.backedge.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call14233, %do.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_auto_config_setup(ptr noundef %addrs) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @ic_set_manually, align 4
  store i1 true, ptr @ic_enable, align 4
  %call = tail call fastcc i32 @ic_proto_name(ptr noundef %addrs) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %addrs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addrs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.end.if.then9_crit_edge, label %lor.lhs.false

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @strcmp(ptr noundef %addrs, ptr noundef nonnull dereferenceable(4) @.str.152) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %lor.lhs.false.if.then9_crit_edge, label %lor.lhs.false5

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @strcmp(ptr noundef %addrs, ptr noundef nonnull dereferenceable(5) @.str.153) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %lor.lhs.false5.if.then9_crit_edge, label %if.end10

lor.lhs.false5.if.then9_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false5.if.then9_crit_edge, %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  store i1 false, ptr @ic_enable, align 4
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false5
  %2 = call ptr @memset(ptr @ic_nameservers, i32 255, i32 12)
  %3 = call ptr @memset(ptr @ic_ntp_servers, i32 255, i32 12)
  %tobool11.not133 = icmp eq ptr %addrs, null
  br i1 %tobool11.not133, label %if.end10.cleanup_crit_edge, label %if.end10.land.rhs_crit_edge

if.end10.land.rhs_crit_edge:                      ; preds = %if.end10
  br label %land.rhs

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs:                                         ; preds = %if.end90.land.rhs_crit_edge, %if.end10.land.rhs_crit_edge
  %num.0137 = phi i32 [ %inc, %if.end90.land.rhs_crit_edge ], [ 0, %if.end10.land.rhs_crit_edge ]
  %ip.0134 = phi ptr [ %cp.0131, %if.end90.land.rhs_crit_edge ], [ %addrs, %if.end10.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %ip.0134 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ip.0134, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool13.not = icmp eq i8 %5, 0
  br i1 %tobool13.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %call14 = tail call ptr @strchr(ptr noundef nonnull %ip.0134, i32 noundef 58)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %while.body.do.body_crit_edge, label %if.end17

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.end17:                                         ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %call14, i32 1
  %6 = ptrtoint ptr %call14 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %call14, align 1
  %7 = ptrtoint ptr %ip.0134 to i32
  call void @__asan_load1_noabort(i32 %7)
  %char0.pr = load i8, ptr %ip.0134, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.pr)
  %cmp19.not = icmp eq i8 %char0.pr, 0
  br i1 %cmp19.not, label %if.end17.if.end90_crit_edge, label %if.end17.do.body_crit_edge

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.end17.if.end90_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

do.body:                                          ; preds = %if.end17.do.body_crit_edge, %while.body.do.body_crit_edge
  %cp.0130 = phi ptr [ %incdec.ptr, %if.end17.do.body_crit_edge ], [ null, %while.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip_auto_config_setup.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip_auto_config_setup, %if.then26)) #16
          to label %do.end [label %if.then26], !srcloc !367

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ip_auto_config_setup.__UNIQUE_ID_ddebug518, ptr noundef nonnull @.str.155, i32 noundef %num.0137, ptr noundef nonnull %ip.0134) #16
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body
  %8 = zext i32 %num.0137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %num.0137, label %do.end.if.end90_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
    i32 2, label %sw.bb39
    i32 3, label %sw.bb45
    i32 4, label %sw.bb51
    i32 5, label %sw.bb62
    i32 6, label %sw.bb64
    i32 7, label %sw.bb72
    i32 8, label %sw.bb78
    i32 9, label %sw.bb84
  ]

do.end.if.end90_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call28 = tail call i32 @in_aton(ptr noundef nonnull %ip.0134) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  %spec.store.select = select i1 %cmp29, i32 -1, i32 %call28
  store i32 %spec.store.select, ptr @ic_myaddr, align 4
  br label %if.end90

sw.bb33:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call34 = tail call i32 @in_aton(ptr noundef nonnull %ip.0134) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  %spec.store.select94 = select i1 %cmp35, i32 -1, i32 %call34
  store i32 %spec.store.select94, ptr @ic_servaddr, align 4
  br label %if.end90

sw.bb39:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call40 = tail call i32 @in_aton(ptr noundef nonnull %ip.0134) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp eq i32 %call40, 0
  %spec.store.select95 = select i1 %cmp41, i32 -1, i32 %call40
  store i32 %spec.store.select95, ptr @ic_gateway, align 4
  br label %if.end90

sw.bb45:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call46 = tail call i32 @in_aton(ptr noundef nonnull %ip.0134) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp eq i32 %call46, 0
  %spec.store.select96 = select i1 %cmp47, i32 -1, i32 %call46
  store i32 %spec.store.select96, ptr @ic_netmask, align 4
  br label %if.end90

sw.bb51:                                          ; preds = %do.end
  %call52 = tail call ptr @strchr(ptr noundef nonnull %ip.0134, i32 noundef 46)
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %sw.bb51.if.end58_crit_edge, label %if.then54

sw.bb51.if.end58_crit_edge:                       ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then54:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #18
  %incdec.ptr55 = getelementptr i8, ptr %call52, i32 1
  %9 = ptrtoint ptr %call52 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %call52, align 1
  %10 = tail call i32 @llvm.read_register.i32(metadata !357) #16
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 110
  %14 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %uts_ns.i, align 4
  %domainname = getelementptr inbounds %struct.new_utsname, ptr %17, i32 0, i32 5
  %call57 = tail call i32 @strlcpy(ptr noundef %domainname, ptr noundef %incdec.ptr55, i32 noundef 65) #16
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %sw.bb51.if.end58_crit_edge
  %18 = tail call i32 @llvm.read_register.i32(metadata !357) #16
  %and.i.i123 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i123 to ptr
  %task.i124 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i124 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i124, align 8
  %nsproxy.i125 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 110
  %22 = ptrtoint ptr %nsproxy.i125 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nsproxy.i125, align 4
  %uts_ns.i126 = getelementptr inbounds %struct.nsproxy, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %uts_ns.i126 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %uts_ns.i126, align 4
  %nodename = getelementptr inbounds %struct.new_utsname, ptr %25, i32 0, i32 1
  %call61 = tail call i32 @strlcpy(ptr noundef %nodename, ptr noundef nonnull %ip.0134, i32 noundef 65) #16
  store i1 true, ptr @ic_host_name_set, align 4
  br label %if.end90

sw.bb62:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call63 = tail call i32 @strlcpy(ptr noundef nonnull @user_dev_name, ptr noundef nonnull %ip.0134, i32 noundef 16) #16
  br label %if.end90

sw.bb64:                                          ; preds = %do.end
  %call65 = tail call fastcc i32 @ic_proto_name(ptr noundef nonnull %ip.0134) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %land.lhs.true, label %sw.bb64.if.end90_crit_edge

sw.bb64.if.end90_crit_edge:                       ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

land.lhs.true:                                    ; preds = %sw.bb64
  %26 = load i32, ptr @ic_myaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp68 = icmp eq i32 %26, -1
  br i1 %cmp68, label %if.then70, label %land.lhs.true.if.end90_crit_edge

land.lhs.true.if.end90_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

if.then70:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  store i1 false, ptr @ic_enable, align 4
  br label %if.end90

sw.bb72:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call73 = tail call i32 @in_aton(ptr noundef nonnull %ip.0134) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp eq i32 %call73, 0
  %spec.store.select97 = select i1 %cmp74, i32 -1, i32 %call73
  store i32 %spec.store.select97, ptr @ic_nameservers, align 4
  br label %if.end90

sw.bb78:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call79 = tail call i32 @in_aton(ptr noundef nonnull %ip.0134) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp eq i32 %call79, 0
  %spec.store.select98 = select i1 %cmp80, i32 -1, i32 %call79
  store i32 %spec.store.select98, ptr getelementptr inbounds ([3 x i32], ptr @ic_nameservers, i32 0, i32 1), align 4
  br label %if.end90

sw.bb84:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call85 = tail call i32 @in_aton(ptr noundef nonnull %ip.0134) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp eq i32 %call85, 0
  %spec.store.select99 = select i1 %cmp86, i32 -1, i32 %call85
  store i32 %spec.store.select99, ptr @ic_ntp_servers, align 4
  br label %if.end90

if.end90:                                         ; preds = %sw.bb84, %sw.bb78, %sw.bb72, %if.then70, %land.lhs.true.if.end90_crit_edge, %sw.bb64.if.end90_crit_edge, %sw.bb62, %if.end58, %sw.bb45, %sw.bb39, %sw.bb33, %sw.bb, %do.end.if.end90_crit_edge, %if.end17.if.end90_crit_edge
  %cp.0131 = phi ptr [ %cp.0130, %sw.bb ], [ %cp.0130, %sw.bb33 ], [ %cp.0130, %sw.bb39 ], [ %cp.0130, %sw.bb45 ], [ %cp.0130, %if.end58 ], [ %cp.0130, %sw.bb62 ], [ %cp.0130, %sw.bb72 ], [ %cp.0130, %sw.bb78 ], [ %cp.0130, %sw.bb84 ], [ %cp.0130, %do.end.if.end90_crit_edge ], [ %cp.0130, %if.then70 ], [ %cp.0130, %land.lhs.true.if.end90_crit_edge ], [ %cp.0130, %sw.bb64.if.end90_crit_edge ], [ %incdec.ptr, %if.end17.if.end90_crit_edge ]
  %inc = add i32 %num.0137, 1
  %tobool11.not = icmp eq ptr %cp.0131, null
  br i1 %tobool11.not, label %if.end90.cleanup_crit_edge, label %if.end90.land.rhs_crit_edge

if.end90.land.rhs_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end90.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfsaddrs_config_setup(ptr noundef %addrs) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_auto_config_setup(ptr noundef %addrs) #20
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_class_identifier_setup(ptr noundef %addrs) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlcpy(ptr noundef nonnull @vendor_class_identifier, ptr noundef %addrs, i32 noundef 253) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %call)
  %cmp = icmp ugt i32 %call, 252
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @vendor_class_identifier) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @set_carrier_timeout(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @kstrtouint(ptr noundef nonnull %str, i32 noundef 0, ptr noundef nonnull @carrier_timeout) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %. = zext i1 %tobool1.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pnp_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ic_proto_used, align 4
  %and = and i32 %0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %and1 = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %and3 = and i32 %0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond = select i1 %tobool4.not, ptr @.str.51, ptr @.str.50
  %cond5 = select i1 %tobool2.not, ptr %cond, ptr @.str.49
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond5) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.52) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i8, ptr @ic_domain, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool6.not = icmp eq i8 %1, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.53, ptr noundef nonnull @ic_domain) #16
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %2 = load i32, ptr @ic_nameservers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp9.not = icmp eq i32 %2, -1
  br i1 %cmp9.not, label %if.end8.for.inc_crit_edge, label %if.then10

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.54, ptr noundef nonnull @ic_nameservers) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end8.for.inc_crit_edge
  %3 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @ic_nameservers, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp9.not.1 = icmp eq i32 %3, -1
  br i1 %cmp9.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then10.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then10.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.54, ptr noundef getelementptr inbounds ([3 x i32], ptr @ic_nameservers, i32 0, i32 1)) #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then10.1, %for.inc.for.inc.1_crit_edge
  %4 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @ic_nameservers, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp9.not.2 = icmp eq i32 %4, -1
  br i1 %cmp9.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then10.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then10.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.54, ptr noundef getelementptr inbounds ([3 x i32], ptr @ic_nameservers, i32 0, i32 2)) #16
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then10.2, %for.inc.1.for.inc.2_crit_edge
  %5 = load i32, ptr @ic_servaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp13.not = icmp eq i32 %5, -1
  br i1 %cmp13.not, label %for.inc.2.if.end15_crit_edge, label %if.then14

for.inc.2.if.end15_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then14:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.55, ptr noundef nonnull @ic_servaddr) #16
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %for.inc.2.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipconfig_proc_net_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call.i = tail call ptr @_proc_mkdir(ptr noundef nonnull @.str.2, i16 noundef zeroext 0, ptr noundef %0, ptr noundef nonnull @init_net, i1 noundef zeroext true) #16
  store ptr %call.i, ptr @ipconfig_dir, align 4
  %tobool.not = icmp eq ptr %call.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_devices() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end9.critedge.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %if.end9.critedge.for.body_crit_edge ]
  tail call void @wait_for_device_probe() #16
  tail call void @rtnl_lock() #16
  br label %for.cond1

for.cond1:                                        ; preds = %for.body3.for.cond1_crit_edge, %for.body
  %.pn.in = phi ptr [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), %for.body ], [ %.pn, %for.body3.for.cond1_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp2.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp2.not, label %if.end9.critedge, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %dev.0 = getelementptr i8, ptr %.pn, i32 -40
  %call = tail call fastcc zeroext i1 @ic_is_init_dev(ptr noundef %dev.0) #20
  br i1 %call, label %if.then8.critedge, label %for.body3.for.cond1_crit_edge

for.body3.for.cond1_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond1

if.then8.critedge:                                ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_unlock() #16
  br label %cleanup13

if.end9.critedge:                                 ; preds = %for.cond1
  tail call void @rtnl_unlock() #16
  tail call void @msleep(i32 noundef 1000) #16
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %if.end9.critedge.cleanup13_crit_edge, label %if.end9.critedge.for.body_crit_edge

if.end9.critedge.for.body_crit_edge:              ; preds = %if.end9.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end9.critedge.cleanup13_crit_edge:             ; preds = %if.end9.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup13

cleanup13:                                        ; preds = %if.end9.critedge.cleanup13_crit_edge, %if.then8.critedge
  %retval.2 = phi i32 [ 0, %if.then8.critedge ], [ -19, %if.end9.critedge.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ic_open_devs() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn229 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not231 = icmp eq ptr %.pn229, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not231, label %entry.for.end96_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end96_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end96

for.cond14.preheader:                             ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn213234.pr = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp16.not236 = icmp eq ptr %.pn213234.pr, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp16.not236, label %for.cond14.preheader.for.end96_crit_edge, label %for.cond14.preheader.for.body18_crit_edge

for.cond14.preheader.for.body18_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body18

for.cond14.preheader.for.end96_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end96

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn232 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn229, %entry.for.body_crit_edge ]
  %dev.0233 = getelementptr i8, ptr %.pn232, i32 -40
  %flags = getelementptr i8, ptr %.pn232, i32 64
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %or = or i32 %1, 1
  %call = tail call i32 @dev_change_flags(ptr noundef %dev.0233, i32 noundef %or, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %do.end, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %dev.0233) #21
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %.pn232 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn232, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %for.cond14.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body18:                                       ; preds = %for.inc90.for.body18_crit_edge, %for.cond14.preheader.for.body18_crit_edge
  %.pn213238 = phi ptr [ %.pn213, %for.inc90.for.body18_crit_edge ], [ %.pn213234.pr, %for.cond14.preheader.for.body18_crit_edge ]
  %last.0237 = phi ptr [ %last.2, %for.inc90.for.body18_crit_edge ], [ @ic_first_dev, %for.cond14.preheader.for.body18_crit_edge ]
  %dev.1239 = getelementptr i8, ptr %.pn213238, i32 -40
  %call19 = tail call fastcc zeroext i1 @ic_is_init_dev(ptr noundef %dev.1239) #20
  br i1 %call19, label %if.then20, label %for.body18.for.inc90_crit_edge

for.body18.for.inc90_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc90

if.then20:                                        ; preds = %for.body18
  %mtu = getelementptr i8, ptr %.pn213238, i32 92
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 363, i32 %4)
  %cmp21 = icmp ugt i32 %4, 363
  br i1 %cmp21, label %if.then20.if.end32_crit_edge, label %do.end26

if.then20.if.end32_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

do.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #18
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %dev.1239, i32 noundef %4) #21
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.then20.if.end32_crit_edge
  %able.0 = phi i32 [ 0, %do.end26 ], [ 1, %if.then20.if.end32_crit_edge ]
  %flags33 = getelementptr i8, ptr %.pn213238, i32 64
  %5 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags33, align 8
  %and34 = lshr i32 %6, 6
  %7 = and i32 %and34, 2
  %8 = or i32 %7, %able.0
  %9 = xor i32 %8, 2
  %10 = load i32, ptr @ic_proto_enabled, align 4
  %and39 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool40.not = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool41.not = icmp eq i32 %and39, 0
  %or.cond = select i1 %tobool40.not, i1 %tobool41.not, i1 false
  br i1 %or.cond, label %if.end32.for.inc90_crit_edge, label %if.end43

if.end32.for.inc90_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc90

if.end43:                                         ; preds = %if.end32
  %conv = trunc i32 %6 to i16
  %conv45 = and i32 %6, 65534
  %or46 = or i32 %conv45, 1
  %call47 = tail call i32 @dev_change_flags(ptr noundef %dev.1239, i32 noundef %or46, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end53, label %if.end58

do.end53:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %dev.1239) #21
  br label %for.inc90

if.end58:                                         ; preds = %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 16) #22
  %tobool60.not = icmp eq ptr %call7.i, null
  br i1 %tobool60.not, label %cleanup.thread223, label %if.end62

cleanup.thread223:                                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_unlock() #16
  br label %cleanup167

if.end62:                                         ; preds = %if.end58
  %dev63 = getelementptr inbounds %struct.ic_device, ptr %call7.i, i32 0, i32 1
  %12 = ptrtoint ptr %dev63 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev.1239, ptr %dev63, align 4
  %13 = ptrtoint ptr %last.0237 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i, ptr %last.0237, align 4
  %flags65 = getelementptr inbounds %struct.ic_device, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %flags65 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %flags65, align 8
  %conv66 = trunc i32 %and39 to i16
  %able67 = getelementptr inbounds %struct.ic_device, ptr %call7.i, i32 0, i32 3
  %15 = ptrtoint ptr %able67 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv66, ptr %able67, align 2
  %and68 = and i32 %and39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %xid72 = getelementptr inbounds %struct.ic_device, ptr %call7.i, i32 0, i32 4
  br i1 %tobool69.not, label %if.else71, label %if.then70

if.then70:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @get_random_bytes(ptr noundef %xid72, i32 noundef 4) #16
  br label %if.end73

if.else71:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %xid72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %xid72, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %if.then70
  %17 = load i32, ptr @ic_proto_have_if, align 4
  %or74 = or i32 %17, %and39
  store i32 %or74, ptr @ic_proto_have_if, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ic_open_devs.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ic_open_devs, %if.then82)) #16
          to label %for.inc90 [label %if.then82], !srcloc !367

if.then82:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  %xid85 = getelementptr inbounds %struct.ic_device, ptr %call7.i, i32 0, i32 4
  %18 = ptrtoint ptr %xid85 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xid85, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ic_open_devs.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.67, ptr noundef %dev.1239, i32 noundef %and39, i32 noundef %19) #16
  br label %for.inc90

for.inc90:                                        ; preds = %if.then82, %if.end73, %do.end53, %if.end32.for.inc90_crit_edge, %for.body18.for.inc90_crit_edge
  %last.2 = phi ptr [ %last.0237, %for.body18.for.inc90_crit_edge ], [ %call7.i, %if.end73 ], [ %call7.i, %if.then82 ], [ %last.0237, %if.end32.for.inc90_crit_edge ], [ %last.0237, %do.end53 ]
  %20 = ptrtoint ptr %.pn213238 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn213 = load ptr, ptr %.pn213238, align 4
  %cmp16.not = icmp eq ptr %.pn213, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp16.not, label %for.inc90.for.end96_crit_edge, label %for.inc90.for.body18_crit_edge

for.inc90.for.body18_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body18

for.inc90.for.end96_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end96

for.end96:                                        ; preds = %for.inc90.for.end96_crit_edge, %for.cond14.preheader.for.end96_crit_edge, %entry.for.end96_crit_edge
  %last.0.lcssa = phi ptr [ @ic_first_dev, %for.cond14.preheader.for.end96_crit_edge ], [ @ic_first_dev, %entry.for.end96_crit_edge ], [ %last.2, %for.inc90.for.end96_crit_edge ]
  tail call void @rtnl_unlock() #16
  %21 = load ptr, ptr @ic_first_dev, align 4
  %tobool97.not = icmp eq ptr %21, null
  br i1 %tobool97.not, label %for.end96.have_carrier_crit_edge, label %if.end99

for.end96.have_carrier_crit_edge:                 ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #18
  br label %have_carrier

if.end99:                                         ; preds = %for.end96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end133, %if.end99
  %next_msg.0.ph.in = phi i32 [ %33, %if.end133 ], [ %22, %if.end99 ]
  %next_msg.0.ph = add i32 %next_msg.0.ph.in, 2000
  br label %while.cond

while.cond:                                       ; preds = %for.end128.while.cond_crit_edge, %while.cond.outer
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = load i32, ptr @carrier_timeout, align 4
  %mul = mul i32 %24, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #16
  %25 = add i32 %22, %call2.i
  %sub = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp103 = icmp slt i32 %sub, 0
  br i1 %cmp103, label %while.body, label %while.cond.have_carrier_crit_edge

while.cond.have_carrier_crit_edge:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %have_carrier

while.body:                                       ; preds = %while.cond
  tail call void @rtnl_lock() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn214240 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp110.not241 = icmp eq ptr %.pn214240, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp110.not241, label %while.body.for.end128_crit_edge, label %while.body.for.body114_crit_edge

while.body.for.body114_crit_edge:                 ; preds = %while.body
  br label %for.body114

while.body.for.end128_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end128

for.body114:                                      ; preds = %for.inc122.for.body114_crit_edge, %while.body.for.body114_crit_edge
  %.pn214242 = phi ptr [ %.pn214, %for.inc122.for.body114_crit_edge ], [ %.pn214240, %while.body.for.body114_crit_edge ]
  %dev.2 = getelementptr i8, ptr %.pn214242, i32 -40
  %call115 = tail call fastcc zeroext i1 @ic_is_init_dev(ptr noundef %dev.2) #20
  br i1 %call115, label %land.lhs.true117, label %for.body114.for.inc122_crit_edge

for.body114.for.inc122_crit_edge:                 ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc122

land.lhs.true117:                                 ; preds = %for.body114
  %state.i = getelementptr i8, ptr %.pn214242, i32 -4
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %cleanup146.thread, label %land.lhs.true117.for.inc122_crit_edge

land.lhs.true117.for.inc122_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc122

cleanup146.thread:                                ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_unlock() #16
  br label %have_carrier

for.inc122:                                       ; preds = %land.lhs.true117.for.inc122_crit_edge, %for.body114.for.inc122_crit_edge
  %29 = ptrtoint ptr %.pn214242 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn214 = load ptr, ptr %.pn214242, align 4
  %cmp110.not = icmp eq ptr %.pn214, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp110.not, label %for.inc122.for.end128_crit_edge, label %for.inc122.for.body114_crit_edge

for.inc122.for.body114_crit_edge:                 ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body114

for.inc122.for.end128_crit_edge:                  ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end128

for.end128:                                       ; preds = %for.inc122.for.end128_crit_edge, %while.body.for.end128_crit_edge
  tail call void @rtnl_unlock() #16
  tail call void @msleep(i32 noundef 1) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub129 = sub i32 %30, %next_msg.0.ph
  %cmp130 = icmp slt i32 %sub129, 0
  br i1 %cmp130, label %for.end128.while.cond_crit_edge, label %if.end133

for.end128.while.cond_crit_edge:                  ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

if.end133:                                        ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub134 = sub i32 %31, %22
  %call135 = tail call i32 @jiffies_to_msecs(i32 noundef %sub134) #16
  %32 = load i32, ptr @carrier_timeout, align 4
  %mul136 = mul i32 %32, 1000
  %sub137 = sub i32 500, %call135
  %add138 = add i32 %sub137, %mul136
  %div = udiv i32 %add138, 1000
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %div) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  br label %while.cond.outer

have_carrier:                                     ; preds = %cleanup146.thread, %while.cond.have_carrier_crit_edge, %for.end96.have_carrier_crit_edge
  %34 = ptrtoint ptr %last.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %last.0.lcssa, align 4
  %35 = load ptr, ptr @ic_first_dev, align 4
  %tobool150.not = icmp eq ptr %35, null
  br i1 %tobool150.not, label %if.then151, label %have_carrier.cleanup167_crit_edge

have_carrier.cleanup167_crit_edge:                ; preds = %have_carrier
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup167

if.then151:                                       ; preds = %have_carrier
  %36 = load i8, ptr @user_dev_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool152.not = icmp eq i8 %36, 0
  br i1 %tobool152.not, label %do.end162, label %do.end156

do.end156:                                        ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #18
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @user_dev_name) #21
  br label %cleanup167

do.end162:                                        ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #18
  %call164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #21
  br label %cleanup167

cleanup167:                                       ; preds = %do.end162, %do.end156, %have_carrier.cleanup167_crit_edge, %cleanup.thread223
  %retval.3 = phi i32 [ -19, %do.end162 ], [ -19, %do.end156 ], [ 0, %have_carrier.cleanup167_crit_edge ], [ -12, %cleanup.thread223 ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ic_dynamic() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %timeout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout) #16
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %timeout, align 4, !annotation !368
  %1 = load i32, ptr @ic_proto_have_if, align 4
  %and = and i32 %1, 1
  %and1 = and i32 %1, 2
  %2 = load i32, ptr @ic_proto_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %xor = xor i32 %2, %1
  %and2 = and i32 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #21
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  %3 = load i32, ptr @ic_proto_enabled, align 4
  %4 = load i32, ptr @ic_proto_have_if, align 4
  %xor11 = xor i32 %4, %3
  %and12 = and i32 %xor11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end20_crit_edge, label %do.end17

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #21
  %.pr = load i32, ptr @ic_proto_have_if, align 4
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %if.end10.if.end20_crit_edge
  %5 = phi i32 [ %.pr, %do.end17 ], [ %4, %if.end10.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool21.not = icmp eq i32 %5, 0
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.then25

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %6 = call ptr @memset(ptr @ic_nameservers, i32 255, i32 12)
  %7 = call ptr @memset(ptr @ic_ntp_servers, i32 255, i32 12)
  tail call void @dev_add_pack(ptr noundef nonnull @bootp_packet_type) #16
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool27 = icmp ne i32 %and1, 0
  br i1 %tobool27, label %if.then28, label %if.end26.do.end32_crit_edge

if.end26.do.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end32

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dev_add_pack(ptr noundef nonnull @rarp_packet_type) #16
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %if.end26.do.end32_crit_edge
  br i1 %tobool24.not, label %do.end32.cond.end_crit_edge, label %cond.true

do.end32.cond.end_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #18
  %8 = load i32, ptr @ic_proto_enabled, align 4
  %and35 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %cond = select i1 %tobool36.not, ptr @.str.51, ptr @.str.50
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end32.cond.end_crit_edge
  %cond37 = phi ptr [ %cond, %cond.true ], [ @.str.88, %do.end32.cond.end_crit_edge ]
  %not.tobool24.not = xor i1 %tobool24.not, true
  %spec.select = select i1 %not.tobool24.not, i1 %tobool27, i1 false
  %cond40 = select i1 %spec.select, ptr @.str.89, ptr @.str.88
  %cond42 = select i1 %tobool27, ptr @.str.49, ptr @.str.88
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull %cond37, ptr noundef nonnull %cond40, ptr noundef nonnull %cond42) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = load ptr, ptr @ic_first_dev, align 4
  call void @get_random_bytes(ptr noundef nonnull %timeout, i32 noundef 4) #16
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timeout, align 4
  %rem = urem i32 %12, 100
  %add = add nuw nsw i32 %rem, 200
  store i32 %add, ptr %timeout, align 4
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end101, %cond.end
  %d.0.ph = phi ptr [ %36, %if.end101 ], [ %10, %cond.end ]
  %retries.0.ph = phi i32 [ %dec, %if.end101 ], [ 6, %cond.end ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer
  %d.0 = phi ptr [ %d.0.ph, %for.cond.outer ], [ %d.0.be, %for.cond.backedge ]
  br i1 %tobool24.not, label %for.cond.if.end48_crit_edge, label %land.lhs.true

for.cond.if.end48_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

land.lhs.true:                                    ; preds = %for.cond
  %able = getelementptr inbounds %struct.ic_device, ptr %d.0, i32 0, i32 3
  %13 = ptrtoint ptr %able to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %able, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool46.not = icmp eq i16 %15, 0
  br i1 %tobool46.not, label %land.lhs.true.if.end48_crit_edge, label %if.then47

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %16, %9
  call fastcc void @ic_bootp_send_if(ptr noundef %d.0, i32 noundef %sub) #20
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %land.lhs.true.if.end48_crit_edge, %for.cond.if.end48_crit_edge
  br i1 %tobool27, label %land.lhs.true50, label %if.end48.if.end56_crit_edge

if.end48.if.end56_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

land.lhs.true50:                                  ; preds = %if.end48
  %able51 = getelementptr inbounds %struct.ic_device, ptr %d.0, i32 0, i32 3
  %17 = ptrtoint ptr %able51 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %able51, align 2
  %19 = and i16 %18, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool54.not = icmp eq i16 %19, 0
  br i1 %tobool54.not, label %land.lhs.true50.if.end56_crit_edge, label %if.then55

land.lhs.true50.if.end56_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.then55:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @ic_rarp_send_if(ptr noundef %d.0) #20
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %land.lhs.true50.if.end56_crit_edge, %if.end48.if.end56_crit_edge
  %20 = ptrtoint ptr %d.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d.0, align 4
  %tobool57.not = icmp eq ptr %21, null
  br i1 %tobool57.not, label %if.then58, label %if.end56.if.end66_crit_edge

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

if.then58:                                        ; preds = %if.end56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %timeout, align 4
  %25 = add i32 %24, %22
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub60158 = sub i32 %26, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub60158)
  %cmp159 = icmp slt i32 %sub60158, 0
  br i1 %cmp159, label %if.then58.land.rhs62_crit_edge, label %if.then58.if.end66_crit_edge

if.then58.if.end66_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

if.then58.land.rhs62_crit_edge:                   ; preds = %if.then58
  br label %land.rhs62

land.rhs62:                                       ; preds = %while.body.land.rhs62_crit_edge, %if.then58.land.rhs62_crit_edge
  %27 = load volatile i32, ptr @ic_got_reply, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool63.not = icmp eq i32 %27, 0
  br i1 %tobool63.not, label %while.body, label %land.rhs62.if.end66_crit_edge

land.rhs62.if.end66_crit_edge:                    ; preds = %land.rhs62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

while.body:                                       ; preds = %land.rhs62
  %call65 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub60 = sub i32 %28, %25
  %cmp = icmp slt i32 %sub60, 0
  br i1 %cmp, label %while.body.land.rhs62_crit_edge, label %while.body.if.end66_crit_edge

while.body.if.end66_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

while.body.land.rhs62_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs62

if.end66:                                         ; preds = %while.body.if.end66_crit_edge, %land.rhs62.if.end66_crit_edge, %if.then58.if.end66_crit_edge, %if.end56.if.end66_crit_edge
  %29 = load volatile i32, ptr @ic_got_reply, align 4
  %and67 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end81_crit_edge, label %land.lhs.true69

if.end66.if.end81_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81

land.lhs.true69:                                  ; preds = %if.end66
  %30 = load i32, ptr @ic_proto_enabled, align 4
  %and70 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %land.lhs.true69.if.end81_crit_edge, label %land.lhs.true72

land.lhs.true69.if.end81_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81

land.lhs.true72:                                  ; preds = %land.lhs.true69
  %31 = load i32, ptr @ic_dhcp_msgtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %31)
  %cmp73.not = icmp eq i32 %31, 5
  br i1 %cmp73.not, label %land.lhs.true72.if.end81_crit_edge, label %if.then75

land.lhs.true72.if.end81_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81

if.then75:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #18
  store volatile i32 0, ptr @ic_got_reply, align 4
  %32 = load ptr, ptr @ic_dev, align 4
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #21
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end89.for.cond.backedge_crit_edge, %if.then75
  %d.0.be = phi ptr [ %32, %if.then75 ], [ %35, %if.end89.for.cond.backedge_crit_edge ]
  br label %for.cond

if.end81:                                         ; preds = %land.lhs.true72.if.end81_crit_edge, %land.lhs.true69.if.end81_crit_edge, %if.end66.if.end81_crit_edge
  %33 = load volatile i32, ptr @ic_got_reply, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool82.not = icmp eq i32 %33, 0
  br i1 %tobool82.not, label %if.end89, label %if.end81.for.end_crit_edge

if.end81.for.end_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end89:                                         ; preds = %if.end81
  %34 = ptrtoint ptr %d.0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d.0, align 4
  %tobool91.not = icmp eq ptr %35, null
  br i1 %tobool91.not, label %if.end93, label %if.end89.for.cond.backedge_crit_edge

if.end89.for.cond.backedge_crit_edge:             ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.backedge

if.end93:                                         ; preds = %if.end89
  %dec = add nsw i32 %retries.0.ph, -1
  %tobool94.not = icmp eq i32 %dec, 0
  br i1 %tobool94.not, label %if.end93.for.end_crit_edge, label %if.end101

if.end93.for.end_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end101:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #18
  %36 = load ptr, ptr @ic_first_dev, align 4
  %37 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timeout, align 4
  %mul = mul i32 %38, 7
  %div154 = lshr i32 %mul, 2
  %39 = call i32 @llvm.umin.i32(i32 %div154, i32 3000)
  %40 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %timeout, align 4
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #21
  br label %for.cond.outer

for.end:                                          ; preds = %if.end93.for.end_crit_edge, %if.end81.for.end_crit_edge
  %.str.97.sink = phi ptr [ @.str.94, %if.end81.for.end_crit_edge ], [ @.str.97, %if.end93.for.end_crit_edge ]
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.97.sink) #21
  br i1 %tobool24.not, label %for.end.if.end113_crit_edge, label %if.then112

for.end.if.end113_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

if.then112:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @dev_remove_pack(ptr noundef nonnull @bootp_packet_type) #16
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %for.end.if.end113_crit_edge
  br i1 %tobool27, label %if.then115, label %if.end113.if.end116_crit_edge

if.end113.if.end116_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end116

if.then115:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #18
  call void @dev_remove_pack(ptr noundef nonnull @rarp_packet_type) #16
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end113.if.end116_crit_edge
  %41 = load volatile i32, ptr @ic_got_reply, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool117.not = icmp eq i32 %41, 0
  br i1 %tobool117.not, label %if.then118, label %do.end122

if.then118:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #18
  store i32 -1, ptr @ic_myaddr, align 4
  br label %cleanup

do.end122:                                        ; preds = %if.end116
  %42 = load volatile i32, ptr @ic_got_reply, align 4
  %and124 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %cond.false127, label %do.end122.cond.end131_crit_edge

do.end122.cond.end131_crit_edge:                  ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end131

cond.false127:                                    ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #18
  %43 = load i32, ptr @ic_proto_enabled, align 4
  %and128 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  %cond130 = select i1 %tobool129.not, ptr @.str.51, ptr @.str.50
  br label %cond.end131

cond.end131:                                      ; preds = %cond.false127, %do.end122.cond.end131_crit_edge
  %cond132 = phi ptr [ %cond130, %cond.false127 ], [ @.str.49, %do.end122.cond.end131_crit_edge ]
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull %cond132, ptr noundef nonnull @ic_addrservaddr, ptr noundef nonnull @ic_myaddr) #21
  br label %cleanup

cleanup:                                          ; preds = %cond.end131, %if.then118, %if.end20.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %cond.end131 ], [ -1, %if.then118 ], [ -1, %do.end ], [ -1, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout) #16
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ic_close_devs() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ic_dev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.ic_device, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %2, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  tail call void @rtnl_lock() #16
  %3 = load ptr, ptr @ic_first_dev, align 4
  %tobool2.not37 = icmp eq ptr %3, null
  br i1 %tobool2.not37, label %cond.end.while.end_crit_edge, label %while.body.lr.ph

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %cond.end
  %tobool5.not = icmp eq ptr %cond, null
  %lower6 = getelementptr inbounds %struct.net_device, ptr %cond, i32 0, i32 13, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.body.lr.ph
  %next.038 = phi ptr [ %3, %while.body.lr.ph ], [ %7, %if.end23.while.body_crit_edge ]
  %4 = load ptr, ptr @ic_dev, align 4
  %cmp.not = icmp eq ptr %next.038, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #16
  %5 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !368
  %6 = ptrtoint ptr %next.038 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next.038, align 4
  %dev4 = getelementptr inbounds %struct.ic_device, ptr %next.038, i32 0, i32 1
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  br i1 %tobool5.not, label %while.body.if.end12_crit_edge, label %if.then

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then:                                          ; preds = %while.body
  %10 = ptrtoint ptr %lower6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lower6, align 8
  %12 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %iter, align 4
  %call = call ptr @netdev_lower_get_next(ptr noundef nonnull %cond, ptr noundef nonnull %iter) #16
  %tobool8.not35 = icmp eq ptr %call, null
  br i1 %tobool8.not35, label %if.then.if.end12_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %lower.036 = phi ptr [ %call11, %for.inc.for.body_crit_edge ], [ %call, %if.then.for.body_crit_edge ]
  %cmp9 = icmp eq ptr %9, %lower.036
  br i1 %cmp9, label %for.body.if.end23_crit_edge, label %for.inc

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

for.inc:                                          ; preds = %for.body
  %call11 = call ptr @netdev_lower_get_next(ptr noundef nonnull %cond, ptr noundef nonnull %iter) #16
  %tobool8.not = icmp eq ptr %call11, null
  br i1 %tobool8.not, label %for.inc.if.end12_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end12:                                         ; preds = %for.inc.if.end12_crit_edge, %if.then.if.end12_crit_edge, %while.body.if.end12_crit_edge
  br i1 %cmp.not, label %if.end12.if.end23_crit_edge, label %do.body

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

do.body:                                          ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ic_close_devs.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ic_close_devs, %if.then20)) #16
          to label %do.end [label %if.then20], !srcloc !367

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ic_close_devs.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.129, ptr noundef %9) #16
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %flags = getelementptr inbounds %struct.ic_device, ptr %next.038, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 4
  %conv = zext i16 %14 to i32
  %call22 = call i32 @dev_change_flags(ptr noundef %9, i32 noundef %conv, ptr noundef null) #16
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.end12.if.end23_crit_edge, %for.body.if.end23_crit_edge
  call void @kfree(ptr noundef nonnull %next.038) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #16
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end23.while.end_crit_edge, label %if.end23.while.body_crit_edge

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end23.while.end_crit_edge, %cond.end.while.end_crit_edge
  call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ic_defaults() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @ic_host_name_set, align 4
  br i1 %.b, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 1), ptr noundef nonnull @.str.130, ptr noundef nonnull @ic_myaddr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %0 = load i32, ptr @root_server_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %1 = load i32, ptr @ic_servaddr, align 4
  store i32 %1, ptr @root_server_addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %2 = load i32, ptr @ic_netmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp4 = icmp eq i32 %2, -1
  br i1 %cmp4, label %if.then5, label %if.end3.return_crit_edge

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then5:                                         ; preds = %if.end3
  %3 = load i32, ptr @ic_myaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp6 = icmp sgt i32 %3, -1
  br i1 %cmp6, label %if.then5.do.end26_crit_edge, label %if.else

if.then5.do.end26_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26

if.else:                                          ; preds = %if.then5
  %and8 = and i32 %3, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and8)
  %cmp9 = icmp eq i32 %and8, -2147483648
  br i1 %cmp9, label %if.else.do.end26_crit_edge, label %if.else11

if.else.do.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26

if.else11:                                        ; preds = %if.else
  %and12 = and i32 %3, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %and12)
  %cmp13 = icmp eq i32 %and12, -1073741824
  br i1 %cmp13, label %if.else11.do.end26_crit_edge, label %if.else15

if.else11.do.end26_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26

if.else15:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435457, i32 %3)
  %cmp17 = icmp ugt i32 %3, -268435457
  br i1 %cmp17, label %if.else15.do.end26_crit_edge, label %do.end

if.else15.do.end26_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26

do.end:                                           ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #18
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @ic_myaddr) #21
  br label %return

do.end26:                                         ; preds = %if.else15.do.end26_crit_edge, %if.else11.do.end26_crit_edge, %if.else.do.end26_crit_edge, %if.then5.do.end26_crit_edge
  %.sink = phi i32 [ -16777216, %if.then5.do.end26_crit_edge ], [ -65536, %if.else.do.end26_crit_edge ], [ -256, %if.else11.do.end26_crit_edge ], [ -1, %if.else15.do.end26_crit_edge ]
  store i32 %.sink, ptr @ic_netmask, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @ic_netmask) #21
  br label %return

return:                                           ; preds = %do.end26, %do.end, %if.end3.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %do.end26 ], [ 0, %if.end3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ic_setup_if() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %ir = alloca %struct.ifreq, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ir) #16
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ir, i32 0, i32 1
  %0 = call ptr @memset(ptr %ir, i32 0, i32 32)
  %1 = load ptr, ptr @ic_dev, align 4
  %dev = getelementptr inbounds %struct.ic_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = call ptr @strcpy(ptr noundef nonnull %ir, ptr noundef %3) #19
  %4 = load i32, ptr @ic_myaddr, align 4
  %5 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %ifr_ifru, align 4
  %sin_addr.i = getelementptr inbounds %struct.ifreq, ptr %ir, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %sin_addr.i, align 4
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %ifr_ifru, i32 0, i32 1
  %7 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %sin_port.i, align 2
  %call2 = call i32 @devinet_ioctl(ptr noundef nonnull @init_net, i32 noundef 35094, ptr noundef nonnull %ir) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %call2) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, ptr @ic_netmask, align 4
  %9 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %ifr_ifru, align 4
  %10 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %sin_addr.i, align 4
  %11 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %sin_port.i, align 2
  %call4 = call i32 @devinet_ioctl(ptr noundef nonnull @init_net, i32 noundef 35100, ptr noundef nonnull %ir) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %call4) #21
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %12 = load i32, ptr @ic_myaddr, align 4
  %13 = load i32, ptr @ic_netmask, align 4
  %neg = xor i32 %13, -1
  %or = or i32 %12, %neg
  %14 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %ifr_ifru, align 4
  %15 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %sin_addr.i, align 4
  %16 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %sin_port.i, align 2
  %call13 = call i32 @devinet_ioctl(ptr noundef nonnull @init_net, i32 noundef 35098, ptr noundef nonnull %ir) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %call13) #21
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %17 = load i32, ptr @ic_dev_mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp22.not = icmp eq i32 %17, 0
  br i1 %cmp22.not, label %if.end21.cleanup_crit_edge, label %if.then23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  call void @rtnl_lock() #16
  %18 = load ptr, ptr @ic_dev, align 4
  %dev24 = getelementptr inbounds %struct.ic_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev24, align 4
  %21 = load i32, ptr @ic_dev_mtu, align 4
  %call25 = call i32 @dev_set_mtu(ptr noundef %20, i32 noundef %21) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.then23.if.end33_crit_edge

if.then23.if.end33_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

do.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  %22 = load i32, ptr @ic_dev_mtu, align 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef %22, i32 noundef %call25) #21
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %if.then23.if.end33_crit_edge
  call void @rtnl_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end21.cleanup_crit_edge, %do.end18, %do.end9, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end9 ], [ -1, %do.end18 ], [ 0, %if.end33 ], [ 0, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ir) #16
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ic_setup_routes() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %rm = alloca %struct.rtentry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ic_gateway, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %rm) #16
  %1 = call ptr @memset(ptr %rm, i32 0, i32 84)
  %2 = load i32, ptr @ic_myaddr, align 4
  %xor = xor i32 %2, %0
  %3 = load i32, ptr @ic_netmask, align 4
  %and = and i32 %xor, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #21
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %rt_dst = getelementptr inbounds %struct.rtentry, ptr %rm, i32 0, i32 1
  %4 = ptrtoint ptr %rt_dst to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %rt_dst, align 4
  %sin_port.i = getelementptr inbounds %struct.rtentry, ptr %rm, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %sin_port.i, align 2
  %rt_genmask = getelementptr inbounds %struct.rtentry, ptr %rm, i32 0, i32 3
  %6 = ptrtoint ptr %rt_genmask to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %rt_genmask, align 4
  %sin_port.i14 = getelementptr inbounds %struct.rtentry, ptr %rm, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %sin_port.i14 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %sin_port.i14, align 2
  %rt_gateway = getelementptr inbounds %struct.rtentry, ptr %rm, i32 0, i32 2
  %8 = ptrtoint ptr %rt_gateway to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %rt_gateway, align 4
  %sin_addr.i15 = getelementptr inbounds %struct.rtentry, ptr %rm, i32 0, i32 2, i32 1, i32 2
  %9 = ptrtoint ptr %sin_addr.i15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %0, ptr %sin_addr.i15, align 4
  %rt_flags = getelementptr inbounds %struct.rtentry, ptr %rm, i32 0, i32 4
  %10 = ptrtoint ptr %rt_flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 3, ptr %rt_flags, align 4
  %call2 = call i32 @ip_rt_ioctl(ptr noundef nonnull @init_net, i32 noundef 35083, ptr noundef nonnull %rm) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %call2) #21
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %rm) #16
  br label %return

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %rm) #16
  br label %return

return:                                           ; preds = %cleanup, %cleanup.thread, %entry.return_crit_edge
  %retval.1 = phi i32 [ -1, %cleanup.thread ], [ 0, %cleanup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_proc_mkdir(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntp_servers_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %call1 = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ntp_servers_show, ptr noundef %1) #16
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntp_servers_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ic_ntp_servers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp1.not = icmp eq i32 %0, -1
  br i1 %cmp1.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.58, ptr noundef nonnull @ic_ntp_servers) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %1 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @ic_ntp_servers, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1.not.1 = icmp eq i32 %1, -1
  br i1 %cmp1.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.58, ptr noundef getelementptr inbounds ([3 x i32], ptr @ic_ntp_servers, i32 0, i32 1)) #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %2 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @ic_ntp_servers, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp1.not.2 = icmp eq i32 %2, -1
  br i1 %cmp1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.58, ptr noundef getelementptr inbounds ([3 x i32], ptr @ic_ntp_servers, i32 0, i32 2)) #16
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_device_probe() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @ic_is_init_dev(ptr nocapture noundef readonly %dev) unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8, ptr @user_dev_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %land.lhs.true, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @strcmp(ptr noundef %dev, ptr noundef nonnull @user_dev_name) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br label %return

land.lhs.true:                                    ; preds = %if.end
  %and7 = and i32 %1, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %land.lhs.true.return_crit_edge, label %land.rhs

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = tail call i32 @strncmp(ptr noundef %dev, ptr noundef nonnull dereferenceable(6) @.str.59, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12 = icmp ne i32 %call11, 0
  br label %return

return:                                           ; preds = %land.rhs, %land.lhs.true.return_crit_edge, %cond.true, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %tobool2.not, %cond.true ], [ false, %land.lhs.true.return_crit_edge ], [ %tobool12, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ic_bootp_send_if(ptr nocapture noundef readonly %d, i32 noundef %jiffies_diff) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ic_device, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %3 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %needed_headroom, align 8
  %conv2 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv2, %conv
  %and = and i32 %add, 131056
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %needed_tailroom, align 2
  %conv4 = zext i16 %7 to i32
  %add6 = add nuw nsw i32 %conv4, 607
  %add7 = add nuw nsw i32 %add6, %and
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add7, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add3 = add nuw nsw i32 %and, 16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add3
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 %add3
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i133 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 576) #16
  %12 = call ptr @memset(ptr %call.i133, i32 0, i32 576)
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %conv.i.i
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 69, ptr %add.ptr.i.i, align 4
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 576, ptr %tot_len, align 2
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 16384, ptr %frag_off, align 2
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 64, ptr %ttl, align 4
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 17, ptr %protocol, align 1
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %daddr, align 4
  %24 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i.i, i32 5) #16, !srcloc !369
  %asmresult.i = extractvalue { i32, ptr, i32, i32 } %24, 0
  %25 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i) #23, !srcloc !370
  %neg.i.i = xor i32 %25, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i135 = trunc i32 %shr.i.i to i16
  %check = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i135, ptr %check, align 2
  %udph = getelementptr inbounds %struct.bootp_pkt, ptr %call.i133, i32 0, i32 1
  %27 = ptrtoint ptr %udph to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 68, ptr %udph, align 4
  %dest = getelementptr inbounds %struct.bootp_pkt, ptr %call.i133, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 67, ptr %dest, align 2
  %len = getelementptr inbounds %struct.bootp_pkt, ptr %call.i133, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 556, ptr %len, align 4
  %op = getelementptr inbounds %struct.bootp_pkt, ptr %call.i133, i32 0, i32 2
  %30 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %op, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %type, align 16
  %conv19 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %32)
  %cmp = icmp ult i16 %32, 256
  br i1 %cmp, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conv23 = trunc i16 %32 to i8
  br label %if.end38

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 774, i16 %32)
  %cmp26 = icmp eq i16 %32, 774
  br i1 %cmp26, label %if.else.if.end38_crit_edge, label %do.end

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %conv19, ptr noundef %1) #21
  %33 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %type, align 16
  %conv35 = trunc i16 %34 to i8
  br label %if.end38

if.end38:                                         ; preds = %do.end, %if.else.if.end38_crit_edge, %if.then21
  %.sink = phi i8 [ %conv35, %do.end ], [ %conv23, %if.then21 ], [ 1, %if.else.if.end38_crit_edge ]
  %htype29 = getelementptr inbounds %struct.bootp_pkt, ptr %call.i133, i32 0, i32 3
  %35 = ptrtoint ptr %htype29 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink, ptr %htype29, align 1
  %addr_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %36 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr_len, align 1
  %hlen39 = getelementptr inbounds %struct.bootp_pkt, ptr %call.i133, i32 0, i32 4
  %38 = ptrtoint ptr %hlen39 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %hlen39, align 2
  %hw_addr = getelementptr inbounds %struct.bootp_pkt, ptr %call.i133, i32 0, i32 13
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %39 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_addr, align 64
  %41 = load i8, ptr %addr_len, align 1
  %conv42 = zext i8 %41 to i32
  %42 = call ptr @memcpy(ptr %hw_addr, ptr %40, i32 %conv42)
  %div = udiv i32 %jiffies_diff, 100
  %conv43 = trunc i32 %div to i16
  %secs = getelementptr inbounds %struct.bootp_pkt, ptr %call.i133, i32 0, i32 7
  %43 = ptrtoint ptr %secs to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv43, ptr %secs, align 4
  %xid = getelementptr inbounds %struct.ic_device, ptr %d, i32 0, i32 4
  %44 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xid, align 4
  %xid44 = getelementptr inbounds %struct.bootp_pkt, ptr %call.i133, i32 0, i32 6
  %46 = ptrtoint ptr %xid44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %xid44, align 4
  %47 = load i32, ptr @ic_proto_enabled, align 4
  %and45 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %exten50 = getelementptr inbounds %struct.bootp_pkt, ptr %call.i133, i32 0, i32 16
  br i1 %tobool46.not, label %if.else49, label %if.then47

if.then47:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ic_dhcp_init_options(ptr noundef %exten50, ptr noundef %d) #20
  br label %if.end52

if.else49:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ic_bootp_init_ext(ptr noundef %exten50) #20
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then47
  %48 = getelementptr inbounds %struct.anon.50, ptr %call.i, i32 0, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %1, ptr %48, align 8
  %protocol53 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %50 = ptrtoint ptr %protocol53 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 2048, ptr %protocol53, align 8
  %broadcast = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %51 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_addr, align 64
  %len57 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %53 = ptrtoint ptr %len57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len57, align 4
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 49
  %55 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %if.end52.if.end67_crit_edge, label %lor.lhs.false.i

if.end52.if.end67_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

lor.lhs.false.i:                                  ; preds = %if.end52
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %tobool2.not.i = icmp eq ptr %58, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end67_crit_edge, label %dev_hard_header.exit

lor.lhs.false.i.if.end67_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

dev_hard_header.exit:                             ; preds = %lor.lhs.false.i
  %call.i136 = tail call i32 %58(ptr noundef nonnull %call.i, ptr noundef %1, i16 noundef zeroext 2048, ptr noundef %broadcast, ptr noundef %52, i32 noundef %54) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %cmp59 = icmp slt i32 %call.i136, 0
  br i1 %cmp59, label %if.then61, label %dev_hard_header.exit.if.end67_crit_edge

dev_hard_header.exit.if.end67_crit_edge:          ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

if.then61:                                        ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #16
  br label %cleanup.sink.split

if.end67:                                         ; preds = %dev_hard_header.exit.if.end67_crit_edge, %lor.lhs.false.i.if.end67_crit_edge, %if.end52.if.end67_crit_edge
  %call68 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end67.cleanup.sink.split_crit_edge, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end67.cleanup.sink.split_crit_edge:            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end67.cleanup.sink.split_crit_edge, %if.then61
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #21
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end67.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ic_rarp_send_if(ptr nocapture noundef readonly %d) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ic_device, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  tail call void @arp_send(i32 noundef 3, i32 noundef 32821, i32 noundef 0, ptr noundef %1, i32 noundef 0, ptr noundef null, ptr noundef %3, ptr noundef %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ic_bootp_recv(ptr noundef %skb, ptr noundef readonly %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %1, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup275.sink.split_crit_edge

entry.cleanup275.sink.split_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

if.end:                                           ; preds = %entry
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, 24576
  br i1 %cmp, label %if.end.cleanup275.sink.split_crit_edge, label %if.end4

if.end.cleanup275.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

if.end4:                                          ; preds = %if.end
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #16
  %3 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i.not.i = icmp eq i32 %4, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end4
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #16
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then6.i.cleanup275.sink.split_crit_edge, label %skb_share_check.exit.thread371, !prof !371

if.then6.i.cleanup275.sink.split_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

skb_share_check.exit.thread371:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @consume_skb(ptr noundef %skb) #16
  br label %if.end8

skb_share_check.exit:                             ; preds = %if.end4
  %tobool6.not = icmp eq ptr %skb, null
  br i1 %tobool6.not, label %skb_share_check.exit.cleanup275_crit_edge, label %skb_share_check.exit.if.end8_crit_edge

skb_share_check.exit.if.end8_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

skb_share_check.exit.cleanup275_crit_edge:        ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275

if.end8:                                          ; preds = %skb_share_check.exit.if.end8_crit_edge, %skb_share_check.exit.thread371
  %skb.addr.0.i374 = phi ptr [ %call7.i, %skb_share_check.exit.thread371 ], [ %skb, %skb_share_check.exit.if.end8_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i374, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i374, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 28
  br i1 %cmp.not.i, label %if.end.i, label %if.end8.if.end11_crit_edge, !prof !371

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %6)
  %cmp3.i = icmp ult i32 %6, 28
  br i1 %cmp3.i, label %if.end.i.cleanup275.sink.split_crit_edge, label %pskb_may_pull.exit, !prof !371

if.end.i.cleanup275.sink.split_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 28, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i374, i32 noundef %sub.i) #16
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup275.sink.split_crit_edge, label %pskb_may_pull.exit.if.end11_crit_edge

pskb_may_pull.exit.if.end11_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

pskb_may_pull.exit.cleanup275.sink.split_crit_edge: ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

if.end11:                                         ; preds = %pskb_may_pull.exit.if.end11_crit_edge, %if.end8.if.end11_crit_edge
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i374, i32 0, i32 18
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i374, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i, align 4
  %conv.i363 = zext i16 %12 to i32
  %add.ptr.i = getelementptr i8, ptr %10, i32 %conv.i363
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load13 = load i8, ptr %add.ptr.i, align 4
  %bf.clear = and i8 %bf.load13, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %bf.load13)
  %14 = icmp eq i8 %bf.load13, 69
  br i1 %14, label %lor.lhs.false22, label %if.end11.cleanup275.sink.split_crit_edge

if.end11.cleanup275.sink.split_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

lor.lhs.false22:                                  ; preds = %if.end11
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 6
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %16)
  %cmp24.not = icmp eq i8 %16, 17
  br i1 %cmp24.not, label %if.end27, label %lor.lhs.false22.cleanup275.sink.split_crit_edge

lor.lhs.false22.cleanup275.sink.split_crit_edge:  ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

if.end27:                                         ; preds = %lor.lhs.false22
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 4
  %17 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %frag_off.i, align 2
  %19 = and i16 %18, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.i364.not = icmp eq i16 %19, 0
  br i1 %cmp.i364.not, label %if.end38, label %do.body

do.body:                                          ; preds = %if.end27
  %call30 = tail call i32 @net_ratelimit() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body.cleanup275.sink.split_crit_edge, label %do.end

do.body.cleanup275.sink.split_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #21
  br label %cleanup275.sink.split

if.end38:                                         ; preds = %if.end27
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i, align 4
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 2
  %22 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tot_len, align 2
  %conv40 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv40)
  %cmp41 = icmp ult i32 %21, %conv40
  br i1 %cmp41, label %if.end38.cleanup275.sink.split_crit_edge, label %if.end44

if.end38.cleanup275.sink.split_crit_edge:         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

if.end44:                                         ; preds = %if.end38
  %conv47 = zext i8 %bf.clear to i32
  %24 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i, i32 %conv47) #16, !srcloc !369
  %asmresult.i = extractvalue { i32, ptr, i32, i32 } %24, 0
  %25 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i) #23, !srcloc !370
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %25)
  %tobool49.not = icmp ugt i32 %25, -65537
  br i1 %tobool49.not, label %if.end51, label %if.end44.cleanup275.sink.split_crit_edge

if.end44.cleanup275.sink.split_crit_edge:         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

if.end51:                                         ; preds = %if.end44
  %udph = getelementptr inbounds %struct.bootp_pkt, ptr %add.ptr.i, i32 0, i32 1
  %26 = ptrtoint ptr %udph to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %udph, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %27)
  %cmp53.not = icmp eq i16 %27, 67
  br i1 %cmp53.not, label %lor.lhs.false55, label %if.end51.cleanup275.sink.split_crit_edge

if.end51.cleanup275.sink.split_crit_edge:         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

lor.lhs.false55:                                  ; preds = %if.end51
  %dest = getelementptr inbounds %struct.bootp_pkt, ptr %add.ptr.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 68, i16 %29)
  %cmp58.not = icmp eq i16 %29, 68
  br i1 %cmp58.not, label %if.end61, label %lor.lhs.false55.cleanup275.sink.split_crit_edge

lor.lhs.false55.cleanup275.sink.split_crit_edge:  ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

if.end61:                                         ; preds = %lor.lhs.false55
  %30 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tot_len, align 2
  %conv63 = zext i16 %31 to i32
  %len65 = getelementptr inbounds %struct.bootp_pkt, ptr %add.ptr.i, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %len65 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len65, align 4
  %conv66 = zext i16 %33 to i32
  %add = add nuw nsw i32 %conv66, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv63)
  %cmp67 = icmp ugt i32 %add, %conv63
  call void @__sanitizer_cov_trace_const_cmp2(i16 244, i16 %33)
  %cmp75 = icmp ult i16 %33, 244
  %or.cond358 = select i1 %cmp67, i1 true, i1 %cmp75
  br i1 %or.cond358, label %if.end61.cleanup275.sink.split_crit_edge, label %if.end78

if.end61.cleanup275.sink.split_crit_edge:         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

if.end78:                                         ; preds = %if.end61
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i.i, align 4
  %call80 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef nonnull %skb.addr.0.i374, i32 noundef %35)
  br i1 %call80, label %if.end82, label %if.end78.cleanup275.sink.split_crit_edge

if.end78.cleanup275.sink.split_crit_edge:         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup275.sink.split

if.end82:                                         ; preds = %if.end78
  %36 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i, align 8
  %38 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i, align 4
  %conv.i367 = zext i16 %39 to i32
  %add.ptr.i368 = getelementptr i8, ptr %37, i32 %conv.i367
  tail call void @_raw_spin_lock(ptr noundef nonnull @ic_recv_lock) #16
  %40 = load volatile i32, ptr @ic_got_reply, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool85.not = icmp eq i32 %40, 0
  br i1 %tobool85.not, label %if.end82.while.cond_crit_edge, label %if.end82.drop_unlock_crit_edge

if.end82.drop_unlock_crit_edge:                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop_unlock

if.end82.while.cond_crit_edge:                    ; preds = %if.end82
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.end82.while.cond_crit_edge
  %d.0.in = phi ptr [ %d.0, %land.rhs.while.cond_crit_edge ], [ @ic_first_dev, %if.end82.while.cond_crit_edge ]
  %41 = ptrtoint ptr %d.0.in to i32
  call void @__asan_load4_noabort(i32 %41)
  %d.0 = load ptr, ptr %d.0.in, align 4
  %tobool88.not = icmp eq ptr %d.0, null
  br i1 %tobool88.not, label %while.cond.drop_unlock_crit_edge, label %land.rhs

while.cond.drop_unlock_crit_edge:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop_unlock

land.rhs:                                         ; preds = %while.cond
  %dev89 = getelementptr inbounds %struct.ic_device, ptr %d.0, i32 0, i32 1
  %42 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev89, align 4
  %cmp90.not = icmp eq ptr %43, %dev
  br i1 %cmp90.not, label %if.end94.critedge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

if.end94.critedge:                                ; preds = %land.rhs
  %dev89.le = getelementptr inbounds %struct.ic_device, ptr %d.0, i32 0, i32 1
  %op = getelementptr inbounds %struct.bootp_pkt, ptr %add.ptr.i368, i32 0, i32 2
  %44 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp96.not = icmp eq i8 %45, 2
  br i1 %cmp96.not, label %lor.lhs.false98, label %if.end94.critedge.do.body103_crit_edge

if.end94.critedge.do.body103_crit_edge:           ; preds = %if.end94.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body103

lor.lhs.false98:                                  ; preds = %if.end94.critedge
  %xid = getelementptr inbounds %struct.bootp_pkt, ptr %add.ptr.i368, i32 0, i32 6
  %46 = ptrtoint ptr %xid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xid, align 4
  %xid99 = getelementptr inbounds %struct.ic_device, ptr %d.0, i32 0, i32 4
  %48 = ptrtoint ptr %xid99 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xid99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp100.not = icmp eq i32 %47, %49
  br i1 %cmp100.not, label %if.end119, label %lor.lhs.false98.do.body103_crit_edge

lor.lhs.false98.do.body103_crit_edge:             ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body103

do.body103:                                       ; preds = %lor.lhs.false98.do.body103_crit_edge, %if.end94.critedge.do.body103_crit_edge
  %call104 = tail call i32 @net_ratelimit() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %do.body103.drop_unlock_crit_edge, label %do.end109

do.body103.drop_unlock_crit_edge:                 ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop_unlock

do.end109:                                        ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %dev89.le to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev89.le, align 4
  %52 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %op, align 4
  %conv113 = zext i8 %53 to i32
  %xid114 = getelementptr inbounds %struct.bootp_pkt, ptr %add.ptr.i368, i32 0, i32 6
  %54 = ptrtoint ptr %xid114 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %xid114, align 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %51, i32 noundef %conv113, i32 noundef %55) #21
  br label %drop_unlock

if.end119:                                        ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_const_cmp2(i16 247, i16 %33)
  %cmp120 = icmp ugt i16 %33, 247
  br i1 %cmp120, label %land.lhs.true, label %if.end119.if.end259_crit_edge

if.end119.if.end259_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end259

land.lhs.true:                                    ; preds = %if.end119
  %exten = getelementptr inbounds %struct.bootp_pkt, ptr %add.ptr.i368, i32 0, i32 16
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %exten, ptr noundef nonnull dereferenceable(4) @ic_bootp_cookie, i32 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool124.not = icmp eq i32 %bcmp, 0
  br i1 %tobool124.not, label %if.then125, label %land.lhs.true.if.end259_crit_edge

land.lhs.true.if.end259_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end259

if.then125:                                       ; preds = %land.lhs.true
  %tot_len127 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i368, i32 0, i32 2
  %56 = ptrtoint ptr %tot_len127 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %tot_len127, align 2
  %conv128 = zext i16 %57 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i368, i32 %conv128
  %58 = load i32, ptr @ic_proto_enabled, align 4
  %and = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool129.not = icmp eq i32 %and, 0
  br i1 %tobool129.not, label %if.then125.if.end225_crit_edge, label %if.then130

if.then125.if.end225_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end225

if.then130:                                       ; preds = %if.then125
  %arrayidx = getelementptr %struct.bootp_pkt, ptr %add.ptr.i368, i32 0, i32 16, i32 4
  %cmp133390 = icmp ult ptr %arrayidx, %add.ptr
  br i1 %cmp133390, label %if.then130.land.rhs135_crit_edge, label %if.then130.do.body169_crit_edge

if.then130.do.body169_crit_edge:                  ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body169

if.then130.land.rhs135_crit_edge:                 ; preds = %if.then130
  br label %land.rhs135

land.rhs135:                                      ; preds = %cleanup.land.rhs135_crit_edge, %if.then130.land.rhs135_crit_edge
  %mt.0393 = phi i32 [ %mt.2, %cleanup.land.rhs135_crit_edge ], [ 0, %if.then130.land.rhs135_crit_edge ]
  %server_id.0392 = phi i32 [ %server_id.2, %cleanup.land.rhs135_crit_edge ], [ -1, %if.then130.land.rhs135_crit_edge ]
  %ext.0391 = phi ptr [ %ext.1, %cleanup.land.rhs135_crit_edge ], [ %arrayidx, %if.then130.land.rhs135_crit_edge ]
  %59 = ptrtoint ptr %ext.0391 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ext.0391, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %cmp137.not = icmp eq i8 %60, -1
  br i1 %cmp137.not, label %land.rhs135.do.body169_crit_edge, label %while.body140

land.rhs135.do.body169_crit_edge:                 ; preds = %land.rhs135
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body169

while.body140:                                    ; preds = %land.rhs135
  %incdec.ptr = getelementptr i8, ptr %ext.0391, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp142 = icmp eq i8 %60, 0
  br i1 %cmp142, label %while.body140.cleanup_crit_edge, label %if.end145

while.body140.cleanup_crit_edge:                  ; preds = %while.body140
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end145:                                        ; preds = %while.body140
  %61 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %incdec.ptr, align 1
  %conv146 = zext i8 %62 to i32
  %add147 = add nuw nsw i32 %conv146, 1
  %add.ptr148 = getelementptr i8, ptr %incdec.ptr, i32 %add147
  %cmp149.not = icmp ult ptr %add.ptr148, %add.ptr
  br i1 %cmp149.not, label %if.end152, label %if.end145.do.body169_crit_edge

if.end145.do.body169_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body169

if.end152:                                        ; preds = %if.end145
  %63 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.169)
  switch i8 %60, label %if.end152.cleanup_crit_edge [
    i8 53, label %sw.bb
    i8 54, label %sw.bb160
  ]

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool155.not = icmp eq i8 %62, 0
  br i1 %tobool155.not, label %sw.bb.cleanup_crit_edge, label %if.then156

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then156:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx157 = getelementptr i8, ptr %ext.0391, i32 2
  %64 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx157, align 1
  %conv158 = zext i8 %65 to i32
  br label %cleanup

sw.bb160:                                         ; preds = %if.end152
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %62)
  %cmp163 = icmp ugt i8 %62, 3
  br i1 %cmp163, label %if.then165, label %sw.bb160.cleanup_crit_edge

sw.bb160.cleanup_crit_edge:                       ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then165:                                       ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr166 = getelementptr i8, ptr %ext.0391, i32 2
  %66 = ptrtoint ptr %add.ptr166 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %server_id.0.copyload = load i32, ptr %add.ptr166, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then165, %sw.bb160.cleanup_crit_edge, %if.then156, %sw.bb.cleanup_crit_edge, %if.end152.cleanup_crit_edge, %while.body140.cleanup_crit_edge
  %ext.1 = phi ptr [ %incdec.ptr, %while.body140.cleanup_crit_edge ], [ %add.ptr148, %sw.bb160.cleanup_crit_edge ], [ %add.ptr148, %if.then165 ], [ %add.ptr148, %sw.bb.cleanup_crit_edge ], [ %add.ptr148, %if.then156 ], [ %add.ptr148, %if.end152.cleanup_crit_edge ]
  %server_id.2 = phi i32 [ %server_id.0392, %while.body140.cleanup_crit_edge ], [ %server_id.0392, %sw.bb160.cleanup_crit_edge ], [ %server_id.0.copyload, %if.then165 ], [ %server_id.0392, %sw.bb.cleanup_crit_edge ], [ %server_id.0392, %if.then156 ], [ %server_id.0392, %if.end152.cleanup_crit_edge ]
  %mt.2 = phi i32 [ %mt.0393, %while.body140.cleanup_crit_edge ], [ %mt.0393, %sw.bb160.cleanup_crit_edge ], [ %mt.0393, %if.then165 ], [ %mt.0393, %sw.bb.cleanup_crit_edge ], [ %conv158, %if.then156 ], [ %mt.0393, %if.end152.cleanup_crit_edge ]
  %cmp133 = icmp ult ptr %ext.1, %add.ptr
  br i1 %cmp133, label %cleanup.land.rhs135_crit_edge, label %cleanup.do.body169_crit_edge

cleanup.do.body169_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body169

cleanup.land.rhs135_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs135

do.body169:                                       ; preds = %cleanup.do.body169_crit_edge, %if.end145.do.body169_crit_edge, %land.rhs135.do.body169_crit_edge, %if.then130.do.body169_crit_edge
  %server_id.0.lcssa = phi i32 [ -1, %if.then130.do.body169_crit_edge ], [ %server_id.0392, %if.end145.do.body169_crit_edge ], [ %server_id.0392, %land.rhs135.do.body169_crit_edge ], [ %server_id.2, %cleanup.do.body169_crit_edge ]
  %mt.0.lcssa = phi i32 [ 0, %if.then130.do.body169_crit_edge ], [ %mt.0393, %if.end145.do.body169_crit_edge ], [ %mt.0393, %land.rhs135.do.body169_crit_edge ], [ %mt.2, %cleanup.do.body169_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ic_bootp_recv.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ic_bootp_recv, %if.then175)) #16
          to label %do.end181 [label %if.then175], !srcloc !367

if.then175:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %dev89.le to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev89.le, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ic_bootp_recv.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.110, i32 noundef %mt.0.lcssa, ptr noundef %68) #16
  br label %do.end181

do.end181:                                        ; preds = %if.then175, %do.body169
  %69 = zext i32 %mt.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %mt.0.lcssa, label %sw.default [
    i32 2, label %sw.bb182
    i32 5, label %sw.bb212
  ]

sw.bb182:                                         ; preds = %do.end181
  %70 = load i32, ptr @ic_myaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp183.not = icmp eq i32 %70, -1
  br i1 %cmp183.not, label %if.end186, label %sw.bb182.drop_unlock_crit_edge

sw.bb182.drop_unlock_crit_edge:                   ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop_unlock

if.end186:                                        ; preds = %sw.bb182
  %your_ip = getelementptr inbounds %struct.bootp_pkt, ptr %add.ptr.i368, i32 0, i32 10
  %71 = ptrtoint ptr %your_ip to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %your_ip, align 4
  store i32 %72, ptr @ic_myaddr, align 4
  store i32 %server_id.0.lcssa, ptr @ic_servaddr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ic_bootp_recv.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ic_bootp_recv, %if.then199)) #16
          to label %do.end203 [label %if.then199], !srcloc !367

if.then199:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #18
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i368, i32 0, i32 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ic_bootp_recv.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.111, ptr noundef nonnull @ic_myaddr, ptr noundef %saddr) #16
  br label %do.end203

do.end203:                                        ; preds = %if.then199, %if.end186
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %server_id.0.lcssa)
  %cmp204.not = icmp eq i32 %server_id.0.lcssa, -1
  br i1 %cmp204.not, label %do.end203.cleanup221_crit_edge, label %land.lhs.true206

do.end203.cleanup221_crit_edge:                   ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup221

land.lhs.true206:                                 ; preds = %do.end203
  %server_ip = getelementptr inbounds %struct.bootp_pkt, ptr %add.ptr.i368, i32 0, i32 11
  %73 = ptrtoint ptr %server_ip to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %server_ip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %server_id.0.lcssa)
  %cmp207.not = icmp eq i32 %74, %server_id.0.lcssa
  br i1 %cmp207.not, label %land.lhs.true206.cleanup221_crit_edge, label %if.then209

land.lhs.true206.cleanup221_crit_edge:            ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup221

if.then209:                                       ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #18
  %75 = load i32, ptr @ic_servaddr, align 4
  %76 = ptrtoint ptr %server_ip to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %server_ip, align 4
  br label %cleanup221

sw.bb212:                                         ; preds = %do.end181
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %77 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_addr, align 64
  %hw_addr = getelementptr inbounds %struct.bootp_pkt, ptr %add.ptr.i368, i32 0, i32 13
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %79 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %addr_len, align 1
  %conv214 = zext i8 %80 to i32
  %bcmp357 = tail call i32 @bcmp(ptr %78, ptr %hw_addr, i32 %conv214) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp357)
  %cmp216.not = icmp eq i32 %bcmp357, 0
  br i1 %cmp216.not, label %sw.bb212.cleanup221_crit_edge, label %sw.bb212.drop_unlock_crit_edge

sw.bb212.drop_unlock_crit_edge:                   ; preds = %sw.bb212
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop_unlock

sw.bb212.cleanup221_crit_edge:                    ; preds = %sw.bb212
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup221

sw.default:                                       ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #18
  store i32 -1, ptr @ic_myaddr, align 4
  store i32 -1, ptr @ic_servaddr, align 4
  br label %drop_unlock

cleanup221:                                       ; preds = %sw.bb212.cleanup221_crit_edge, %if.then209, %land.lhs.true206.cleanup221_crit_edge, %do.end203.cleanup221_crit_edge
  store i32 %mt.0.lcssa, ptr @ic_dhcp_msgtype, align 4
  br label %if.end225

if.end225:                                        ; preds = %cleanup221, %if.then125.if.end225_crit_edge
  %arrayidx227 = getelementptr %struct.bootp_pkt, ptr %add.ptr.i368, i32 0, i32 16, i32 4
  %cmp229399 = icmp ult ptr %arrayidx227, %add.ptr
  br i1 %cmp229399, label %if.end225.land.rhs231_crit_edge, label %if.end225.if.end259_crit_edge

if.end225.if.end259_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end259

if.end225.land.rhs231_crit_edge:                  ; preds = %if.end225
  br label %land.rhs231

land.rhs231:                                      ; preds = %cleanup251.land.rhs231_crit_edge, %if.end225.land.rhs231_crit_edge
  %ext.2400 = phi ptr [ %ext.3, %cleanup251.land.rhs231_crit_edge ], [ %arrayidx227, %if.end225.land.rhs231_crit_edge ]
  %81 = ptrtoint ptr %ext.2400 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ext.2400, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %82)
  %cmp233.not = icmp eq i8 %82, -1
  br i1 %cmp233.not, label %land.rhs231.if.end259_crit_edge, label %while.body236

land.rhs231.if.end259_crit_edge:                  ; preds = %land.rhs231
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end259

while.body236:                                    ; preds = %land.rhs231
  %incdec.ptr238 = getelementptr i8, ptr %ext.2400, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp240 = icmp eq i8 %82, 0
  br i1 %cmp240, label %while.body236.cleanup251_crit_edge, label %if.end243

while.body236.cleanup251_crit_edge:               ; preds = %while.body236
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup251

if.end243:                                        ; preds = %while.body236
  %83 = ptrtoint ptr %incdec.ptr238 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %incdec.ptr238, align 1
  %conv244 = zext i8 %84 to i32
  %add245 = add nuw nsw i32 %conv244, 1
  %add.ptr246 = getelementptr i8, ptr %incdec.ptr238, i32 %add245
  %cmp247 = icmp ult ptr %add.ptr246, %add.ptr
  br i1 %cmp247, label %if.then249, label %if.end243.cleanup251_crit_edge

if.end243.cleanup251_crit_edge:                   ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup251

if.then249:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ic_do_bootp_ext(ptr noundef %ext.2400) #20
  br label %cleanup251

cleanup251:                                       ; preds = %if.then249, %if.end243.cleanup251_crit_edge, %while.body236.cleanup251_crit_edge
  %ext.3 = phi ptr [ %incdec.ptr238, %while.body236.cleanup251_crit_edge ], [ %add.ptr246, %if.then249 ], [ %add.ptr246, %if.end243.cleanup251_crit_edge ]
  %cmp229 = icmp ult ptr %ext.3, %add.ptr
  br i1 %cmp229, label %cleanup251.land.rhs231_crit_edge, label %cleanup251.if.end259_crit_edge

cleanup251.if.end259_crit_edge:                   ; preds = %cleanup251
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end259

cleanup251.land.rhs231_crit_edge:                 ; preds = %cleanup251
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs231

if.end259:                                        ; preds = %cleanup251.if.end259_crit_edge, %land.rhs231.if.end259_crit_edge, %if.end225.if.end259_crit_edge, %land.lhs.true.if.end259_crit_edge, %if.end119.if.end259_crit_edge
  store ptr %d.0, ptr @ic_dev, align 4
  %your_ip260 = getelementptr inbounds %struct.bootp_pkt, ptr %add.ptr.i368, i32 0, i32 10
  %85 = ptrtoint ptr %your_ip260 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %your_ip260, align 4
  store i32 %86, ptr @ic_myaddr, align 4
  %server_ip261 = getelementptr inbounds %struct.bootp_pkt, ptr %add.ptr.i368, i32 0, i32 11
  %87 = ptrtoint ptr %server_ip261 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %server_ip261, align 4
  store i32 %88, ptr @ic_servaddr, align 4
  %saddr263 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i368, i32 0, i32 8
  %89 = ptrtoint ptr %saddr263 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %saddr263, align 4
  store i32 %90, ptr @ic_addrservaddr, align 4
  %91 = load i32, ptr @ic_gateway, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %91)
  %cmp264 = icmp eq i32 %91, -1
  br i1 %cmp264, label %land.lhs.true266, label %if.end259.if.end270_crit_edge

if.end259.if.end270_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end270

land.lhs.true266:                                 ; preds = %if.end259
  %relay_ip = getelementptr inbounds %struct.bootp_pkt, ptr %add.ptr.i368, i32 0, i32 12
  %92 = ptrtoint ptr %relay_ip to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %relay_ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool267.not = icmp eq i32 %93, 0
  br i1 %tobool267.not, label %land.lhs.true266.if.end270_crit_edge, label %if.then268

land.lhs.true266.if.end270_crit_edge:             ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end270

if.then268:                                       ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #18
  store i32 %93, ptr @ic_gateway, align 4
  br label %if.end270

if.end270:                                        ; preds = %if.then268, %land.lhs.true266.if.end270_crit_edge, %if.end259.if.end270_crit_edge
  %94 = load i32, ptr @ic_nameservers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %cmp271 = icmp eq i32 %94, -1
  br i1 %cmp271, label %if.then273, label %if.end270.if.end274_crit_edge

if.end270.if.end274_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end274

if.then273:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #18
  store i32 %88, ptr @ic_nameservers, align 4
  br label %if.end274

if.end274:                                        ; preds = %if.then273, %if.end270.if.end274_crit_edge
  store volatile i32 1, ptr @ic_got_reply, align 4
  br label %drop_unlock

drop_unlock:                                      ; preds = %if.end274, %sw.default, %sw.bb212.drop_unlock_crit_edge, %sw.bb182.drop_unlock_crit_edge, %do.end109, %do.body103.drop_unlock_crit_edge, %while.cond.drop_unlock_crit_edge, %if.end82.drop_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ic_recv_lock) #16
  br label %cleanup275.sink.split

cleanup275.sink.split:                            ; preds = %drop_unlock, %if.end78.cleanup275.sink.split_crit_edge, %if.end61.cleanup275.sink.split_crit_edge, %lor.lhs.false55.cleanup275.sink.split_crit_edge, %if.end51.cleanup275.sink.split_crit_edge, %if.end44.cleanup275.sink.split_crit_edge, %if.end38.cleanup275.sink.split_crit_edge, %do.end, %do.body.cleanup275.sink.split_crit_edge, %lor.lhs.false22.cleanup275.sink.split_crit_edge, %if.end11.cleanup275.sink.split_crit_edge, %pskb_may_pull.exit.cleanup275.sink.split_crit_edge, %if.end.i.cleanup275.sink.split_crit_edge, %if.then6.i.cleanup275.sink.split_crit_edge, %if.end.cleanup275.sink.split_crit_edge, %entry.cleanup275.sink.split_crit_edge
  %skb.sink = phi ptr [ %skb, %if.then6.i.cleanup275.sink.split_crit_edge ], [ %skb, %if.end.cleanup275.sink.split_crit_edge ], [ %skb.addr.0.i374, %if.end11.cleanup275.sink.split_crit_edge ], [ %skb.addr.0.i374, %lor.lhs.false22.cleanup275.sink.split_crit_edge ], [ %skb.addr.0.i374, %do.end ], [ %skb.addr.0.i374, %do.body.cleanup275.sink.split_crit_edge ], [ %skb.addr.0.i374, %if.end38.cleanup275.sink.split_crit_edge ], [ %skb.addr.0.i374, %if.end44.cleanup275.sink.split_crit_edge ], [ %skb.addr.0.i374, %if.end51.cleanup275.sink.split_crit_edge ], [ %skb.addr.0.i374, %lor.lhs.false55.cleanup275.sink.split_crit_edge ], [ %skb.addr.0.i374, %if.end61.cleanup275.sink.split_crit_edge ], [ %skb.addr.0.i374, %drop_unlock ], [ %skb.addr.0.i374, %if.end78.cleanup275.sink.split_crit_edge ], [ %skb.addr.0.i374, %pskb_may_pull.exit.cleanup275.sink.split_crit_edge ], [ %skb, %entry.cleanup275.sink.split_crit_edge ], [ %skb.addr.0.i374, %if.end.i.cleanup275.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 1, %if.then6.i.cleanup275.sink.split_crit_edge ], [ 0, %if.end.cleanup275.sink.split_crit_edge ], [ 0, %if.end11.cleanup275.sink.split_crit_edge ], [ 0, %lor.lhs.false22.cleanup275.sink.split_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup275.sink.split_crit_edge ], [ 0, %if.end38.cleanup275.sink.split_crit_edge ], [ 0, %if.end44.cleanup275.sink.split_crit_edge ], [ 0, %if.end51.cleanup275.sink.split_crit_edge ], [ 0, %lor.lhs.false55.cleanup275.sink.split_crit_edge ], [ 0, %if.end61.cleanup275.sink.split_crit_edge ], [ 0, %drop_unlock ], [ 0, %if.end78.cleanup275.sink.split_crit_edge ], [ 0, %pskb_may_pull.exit.cleanup275.sink.split_crit_edge ], [ 0, %entry.cleanup275.sink.split_crit_edge ], [ 0, %if.end.i.cleanup275.sink.split_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.sink, i32 noundef 0) #16
  br label %cleanup275

cleanup275:                                       ; preds = %cleanup275.sink.split, %skb_share_check.exit.cleanup275_crit_edge
  %retval.0 = phi i32 [ 1, %skb_share_check.exit.cleanup275_crit_edge ], [ %retval.0.ph, %cleanup275.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %len) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not = icmp ult i32 %sub.i, %len
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !371

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp3 = icmp ult i32 %1, %len
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end11, !prof !371

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sub = sub i32 %len, %sub.i
  %call13 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub) #16
  %cmp14 = icmp ne ptr %call13, null
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end11 ], [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ic_do_bootp_ext(ptr noundef readonly %ext) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ic_do_bootp_ext.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ic_do_bootp_ext, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ext, align 1
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ic_do_bootp_ext.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.115, i32 noundef %conv) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %ext, i32 2
  %arrayidx = getelementptr i8, ptr %ext, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv4193 = zext i8 %3 to i32
  %add.ptr5194 = getelementptr i8, ptr %add.ptr, i32 %conv4193
  %cmp195 = icmp ult ptr %add.ptr, %add.ptr5194
  br i1 %cmp195, label %do.end.do.body7_crit_edge, label %do.end.do.body24_crit_edge

do.end.do.body24_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

do.end.do.body7_crit_edge:                        ; preds = %do.end
  br label %do.body7

do.body7:                                         ; preds = %for.inc.do.body7_crit_edge, %do.end.do.body7_crit_edge
  %c.0196 = phi ptr [ %incdec.ptr, %for.inc.do.body7_crit_edge ], [ %add.ptr, %do.end.do.body7_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ic_do_bootp_ext.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ic_do_bootp_ext, %if.then19)) #16
          to label %for.inc [label %if.then19], !srcloc !367

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %c.0196 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %c.0196, align 1
  %conv20 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ic_do_bootp_ext.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.116, i32 noundef %conv20) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %do.body7
  %incdec.ptr = getelementptr i8, ptr %c.0196, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %7 to i32
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %conv4
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr5
  br i1 %cmp, label %for.inc.do.body7_crit_edge, label %for.inc.do.body24_crit_edge

for.inc.do.body24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.inc.do.body7_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body7

do.body24:                                        ; preds = %for.inc.do.body24_crit_edge, %do.end.do.body24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ic_do_bootp_ext.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ic_do_bootp_ext, %if.then36)) #16
          to label %do.end39 [label %if.then36], !srcloc !367

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ic_do_bootp_ext.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.117) #16
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24
  %8 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ext, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.171)
  switch i8 %9, label %do.end39.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb47
    i8 6, label %sw.bb53
    i8 12, label %sw.bb76
    i8 15, label %sw.bb84
    i8 17, label %sw.bb91
    i8 26, label %sw.bb98
    i8 40, label %sw.bb101
    i8 42, label %sw.bb107
  ]

do.end39.sw.epilog_crit_edge:                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end39
  %11 = load i32, ptr @ic_netmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp42 = icmp eq i32 %11, -1
  br i1 %cmp42, label %if.then44, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then44:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr, align 1
  store i32 %13, ptr @ic_netmask, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %do.end39
  %14 = load i32, ptr @ic_gateway, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp48 = icmp eq i32 %14, -1
  br i1 %cmp48, label %if.then50, label %sw.bb47.sw.epilog_crit_edge

sw.bb47.sw.epilog_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then50:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr, align 1
  store i32 %16, ptr @ic_gateway, align 4
  br label %sw.epilog

sw.bb53:                                          ; preds = %do.end39
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = lshr i8 %18, 2
  %20 = tail call i8 @llvm.umin.i8(i8 %19, i8 3)
  %conv62 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp63201.not = icmp eq i8 %20, 0
  br i1 %cmp63201.not, label %sw.bb53.sw.epilog_crit_edge, label %sw.bb53.for.body65_crit_edge

sw.bb53.for.body65_crit_edge:                     ; preds = %sw.bb53
  br label %for.body65

sw.bb53.sw.epilog_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.body65:                                       ; preds = %for.inc74.for.body65_crit_edge, %sw.bb53.for.body65_crit_edge
  %i.0202 = phi i32 [ %inc, %for.inc74.for.body65_crit_edge ], [ 0, %sw.bb53.for.body65_crit_edge ]
  %arrayidx66 = getelementptr [3 x i32], ptr @ic_nameservers, i32 0, i32 %i.0202
  %21 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp67 = icmp eq i32 %22, -1
  br i1 %cmp67, label %if.then69, label %for.body65.for.inc74_crit_edge

for.body65.for.inc74_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc74

if.then69:                                        ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #18
  %mul = shl i32 %i.0202, 2
  %add.ptr72 = getelementptr i8, ptr %add.ptr, i32 %mul
  %23 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %add.ptr72, align 1
  %25 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx66, align 4
  br label %for.inc74

for.inc74:                                        ; preds = %if.then69, %for.body65.for.inc74_crit_edge
  %inc = add nuw nsw i32 %i.0202, 1
  %exitcond205.not = icmp eq i32 %inc, %conv62
  br i1 %exitcond205.not, label %for.inc74.sw.epilog_crit_edge, label %for.inc74.for.body65_crit_edge

for.inc74.for.body65_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body65

for.inc74.sw.epilog_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb76:                                          ; preds = %do.end39
  %.b = load i1, ptr @ic_host_name_set, align 4
  br i1 %.b, label %sw.bb76.sw.epilog_crit_edge, label %if.then78

sw.bb76.sw.epilog_crit_edge:                      ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then78:                                        ; preds = %sw.bb76
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %if.then78.ic_bootp_string.exit_crit_edge, label %if.end.i

if.then78.ic_bootp_string.exit_crit_edge:         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #18
  br label %ic_bootp_string.exit

if.end.i:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #18
  %conv81 = zext i8 %27 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !357) #16
  %and.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 110
  %32 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uts_ns.i, align 4
  %nodename = getelementptr inbounds %struct.new_utsname, ptr %35, i32 0, i32 1
  %36 = tail call i32 @llvm.smin.i32(i32 %conv81, i32 63) #16
  %37 = call ptr @memcpy(ptr %nodename, ptr %add.ptr, i32 %36)
  %arrayidx.i = getelementptr i8, ptr %nodename, i32 %36
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx.i, align 1
  br label %ic_bootp_string.exit

ic_bootp_string.exit:                             ; preds = %if.end.i, %if.then78.ic_bootp_string.exit_crit_edge
  store i1 true, ptr @ic_host_name_set, align 4
  br label %sw.epilog

sw.bb84:                                          ; preds = %do.end39
  %39 = load i8, ptr @ic_domain, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool85.not = icmp eq i8 %39, 0
  br i1 %tobool85.not, label %if.then86, label %sw.bb84.sw.epilog_crit_edge

sw.bb84.sw.epilog_crit_edge:                      ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then86:                                        ; preds = %sw.bb84
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i173 = icmp eq i8 %41, 0
  br i1 %tobool.not.i173, label %if.then86.sw.epilog_crit_edge, label %if.end.i175

if.then86.sw.epilog_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.i175:                                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #18
  %conv88 = zext i8 %41 to i32
  %42 = tail call i32 @llvm.smin.i32(i32 %conv88, i32 63) #16
  %43 = call ptr @memcpy(ptr @ic_domain, ptr %add.ptr, i32 %42)
  %arrayidx.i174 = getelementptr i8, ptr @ic_domain, i32 %42
  %44 = ptrtoint ptr %arrayidx.i174 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx.i174, align 1
  br label %sw.epilog

sw.bb91:                                          ; preds = %do.end39
  %45 = load i8, ptr @root_server_path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool92.not = icmp eq i8 %45, 0
  br i1 %tobool92.not, label %if.then93, label %sw.bb91.sw.epilog_crit_edge

sw.bb91.sw.epilog_crit_edge:                      ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then93:                                        ; preds = %sw.bb91
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i177 = icmp eq i8 %47, 0
  br i1 %tobool.not.i177, label %if.then93.sw.epilog_crit_edge, label %if.end.i179

if.then93.sw.epilog_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.i179:                                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  %conv95 = zext i8 %47 to i32
  %48 = call ptr @memcpy(ptr @root_server_path, ptr %add.ptr, i32 %conv95)
  %arrayidx.i178 = getelementptr i8, ptr @root_server_path, i32 %conv95
  %49 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx.i178, align 1
  br label %sw.epilog

sw.bb98:                                          ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %mtu.0.copyload = load i16, ptr %add.ptr, align 1
  %conv100 = zext i16 %mtu.0.copyload to i32
  store i32 %conv100, ptr @ic_dev_mtu, align 4
  br label %sw.epilog

sw.bb101:                                         ; preds = %do.end39
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i185 = icmp eq i8 %52, 0
  br i1 %tobool.not.i185, label %sw.bb101.sw.epilog_crit_edge, label %if.end.i187

sw.bb101.sw.epilog_crit_edge:                     ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.i187:                                      ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #18
  %conv105 = zext i8 %52 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !357) #16
  %and.i.i181 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i181 to ptr
  %task.i182 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i182 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i182, align 8
  %nsproxy.i183 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 110
  %57 = ptrtoint ptr %nsproxy.i183 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nsproxy.i183, align 4
  %uts_ns.i184 = getelementptr inbounds %struct.nsproxy, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %uts_ns.i184 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %uts_ns.i184, align 4
  %domainname = getelementptr inbounds %struct.new_utsname, ptr %60, i32 0, i32 5
  %61 = tail call i32 @llvm.smin.i32(i32 %conv105, i32 63) #16
  %62 = call ptr @memcpy(ptr %domainname, ptr %add.ptr, i32 %61)
  %arrayidx.i186 = getelementptr i8, ptr %domainname, i32 %61
  %63 = ptrtoint ptr %arrayidx.i186 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx.i186, align 1
  br label %sw.epilog

sw.bb107:                                         ; preds = %do.end39
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx, align 1
  %66 = lshr i8 %65, 2
  %67 = tail call i8 @llvm.umin.i8(i8 %66, i8 3)
  %conv117 = zext i8 %67 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp118198.not = icmp eq i8 %67, 0
  br i1 %cmp118198.not, label %sw.bb107.sw.epilog_crit_edge, label %sw.bb107.for.body120_crit_edge

sw.bb107.for.body120_crit_edge:                   ; preds = %sw.bb107
  br label %for.body120

sw.bb107.sw.epilog_crit_edge:                     ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.body120:                                      ; preds = %for.inc130.for.body120_crit_edge, %sw.bb107.for.body120_crit_edge
  %i.1199 = phi i32 [ %inc131, %for.inc130.for.body120_crit_edge ], [ 0, %sw.bb107.for.body120_crit_edge ]
  %arrayidx121 = getelementptr [3 x i32], ptr @ic_ntp_servers, i32 0, i32 %i.1199
  %68 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp122 = icmp eq i32 %69, -1
  br i1 %cmp122, label %if.then124, label %for.body120.for.inc130_crit_edge

for.body120.for.inc130_crit_edge:                 ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc130

if.then124:                                       ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #18
  %mul127 = shl i32 %i.1199, 2
  %add.ptr128 = getelementptr i8, ptr %add.ptr, i32 %mul127
  %70 = ptrtoint ptr %add.ptr128 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %add.ptr128, align 1
  %72 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx121, align 4
  br label %for.inc130

for.inc130:                                       ; preds = %if.then124, %for.body120.for.inc130_crit_edge
  %inc131 = add nuw nsw i32 %i.1199, 1
  %exitcond.not = icmp eq i32 %inc131, %conv117
  br i1 %exitcond.not, label %for.inc130.sw.epilog_crit_edge, label %for.inc130.for.body120_crit_edge

for.inc130.for.body120_crit_edge:                 ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body120

for.inc130.sw.epilog_crit_edge:                   ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc130.sw.epilog_crit_edge, %sw.bb107.sw.epilog_crit_edge, %if.end.i187, %sw.bb101.sw.epilog_crit_edge, %sw.bb98, %if.end.i179, %if.then93.sw.epilog_crit_edge, %sw.bb91.sw.epilog_crit_edge, %if.end.i175, %if.then86.sw.epilog_crit_edge, %sw.bb84.sw.epilog_crit_edge, %ic_bootp_string.exit, %sw.bb76.sw.epilog_crit_edge, %for.inc74.sw.epilog_crit_edge, %sw.bb53.sw.epilog_crit_edge, %if.then50, %sw.bb47.sw.epilog_crit_edge, %if.then44, %sw.bb.sw.epilog_crit_edge, %do.end39.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ic_rarp_recv(ptr noundef %skb, ptr noundef readonly %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %1, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #16
  %2 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #16
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.then6.i.cleanup.sink.split_crit_edge, label %skb_share_check.exit.thread108, !prof !371

if.then6.i.cleanup.sink.split_crit_edge:          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

skb_share_check.exit.thread108:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @consume_skb(ptr noundef %skb) #16
  br label %if.end5

skb_share_check.exit:                             ; preds = %if.end
  %tobool3.not = icmp eq ptr %skb, null
  br i1 %tobool3.not, label %skb_share_check.exit.cleanup_crit_edge, label %skb_share_check.exit.if.end5_crit_edge

skb_share_check.exit.if.end5_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

skb_share_check.exit.cleanup_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %skb_share_check.exit.if.end5_crit_edge, %skb_share_check.exit.thread108
  %skb.addr.0.i111 = phi ptr [ %call7.i, %skb_share_check.exit.thread108 ], [ %skb, %skb_share_check.exit.if.end5_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i111, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i111, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp.not.i, label %if.end.i, label %if.end5.if.end8_crit_edge, !prof !371

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp3.i = icmp ult i32 %5, 8
  br i1 %cmp3.i, label %if.end.i.cleanup.sink.split_crit_edge, label %pskb_may_pull.exit, !prof !371

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 8, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i111, i32 noundef %sub.i) #16
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup.sink.split_crit_edge, label %pskb_may_pull.exit.if.end8_crit_edge

pskb_may_pull.exit.if.end8_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

pskb_may_pull.exit.cleanup.sink.split_crit_edge:  ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end8:                                          ; preds = %pskb_may_pull.exit.if.end8_crit_edge, %if.end5.if.end8_crit_edge
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i111, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i111, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %transport_header.i, align 2
  %conv.i100 = zext i16 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i100
  %ar_hln = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i, i32 0, i32 2
  %12 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ar_hln, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %14 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp.not = icmp eq i8 %13, %15
  br i1 %cmp.not, label %lor.lhs.false, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %type, align 16
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp14.not = icmp eq i16 %17, %19
  br i1 %cmp14.not, label %if.end17, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end17:                                         ; preds = %lor.lhs.false
  %ar_op = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i, i32 0, i32 4
  %20 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ar_op, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %21)
  %cmp19.not = icmp eq i16 %21, 4
  br i1 %cmp19.not, label %if.end22, label %if.end17.cleanup.sink.split_crit_edge

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end17
  %ar_pro = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i, i32 0, i32 1
  %22 = ptrtoint ptr %ar_pro to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ar_pro, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %23)
  %cmp24.not = icmp eq i16 %23, 2048
  br i1 %cmp24.not, label %if.end27, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %17)
  %cond.i = icmp ne i16 %17, 24
  %conv1.i = zext i8 %13 to i32
  %add5.i = zext i1 %cond.i to i32
  %retval.0.in.i = shl nuw nsw i32 %conv1.i, %add5.i
  %retval.0.i101 = add nuw nsw i32 %retval.0.in.i, 16
  %call29 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef nonnull %skb.addr.0.i111, i32 noundef %retval.0.i101)
  br i1 %call29, label %if.end31, label %if.end27.cleanup.sink.split_crit_edge

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end27
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i, align 8
  %26 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %transport_header.i, align 2
  %conv.i104 = zext i16 %27 to i32
  %add.ptr.i105 = getelementptr i8, ptr %25, i32 %conv.i104
  %add.ptr = getelementptr %struct.arphdr, ptr %add.ptr.i105, i32 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @ic_recv_lock) #16
  %28 = load volatile i32, ptr @ic_got_reply, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool33.not = icmp eq i32 %28, 0
  br i1 %tobool33.not, label %if.end31.while.cond_crit_edge, label %if.end31.drop_unlock_crit_edge

if.end31.drop_unlock_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop_unlock

if.end31.while.cond_crit_edge:                    ; preds = %if.end31
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.end31.while.cond_crit_edge
  %d.0.in = phi ptr [ %d.0, %land.rhs.while.cond_crit_edge ], [ @ic_first_dev, %if.end31.while.cond_crit_edge ]
  %29 = ptrtoint ptr %d.0.in to i32
  call void @__asan_load4_noabort(i32 %29)
  %d.0 = load ptr, ptr %d.0.in, align 4
  %tobool36.not = icmp eq ptr %d.0, null
  br i1 %tobool36.not, label %while.cond.drop_unlock_crit_edge, label %land.rhs

while.cond.drop_unlock_crit_edge:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop_unlock

land.rhs:                                         ; preds = %while.cond
  %dev37 = getelementptr inbounds %struct.ic_device, ptr %d.0, i32 0, i32 1
  %30 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev37, align 4
  %cmp38.not = icmp eq ptr %31, %dev
  br i1 %cmp38.not, label %if.end42.critedge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

if.end42.critedge:                                ; preds = %land.rhs
  %32 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %addr_len, align 1
  %conv44 = zext i8 %33 to i32
  %add.ptr45 = getelementptr i8, ptr %add.ptr, i32 %conv44
  %34 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %sip.0.copyload = load i32, ptr %add.ptr45, align 1
  %add.ptr46 = getelementptr i8, ptr %add.ptr45, i32 4
  %add.ptr49 = getelementptr i8, ptr %add.ptr46, i32 %conv44
  %35 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %tip.0.copyload = load i32, ptr %add.ptr49, align 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %36 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_addr, align 64
  %bcmp = tail call i32 @bcmp(ptr %add.ptr46, ptr %37, i32 %conv44) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool53.not = icmp eq i32 %bcmp, 0
  br i1 %tobool53.not, label %if.end55, label %if.end42.critedge.drop_unlock_crit_edge

if.end42.critedge.drop_unlock_crit_edge:          ; preds = %if.end42.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop_unlock

if.end55:                                         ; preds = %if.end42.critedge
  %38 = load i32, ptr @ic_servaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp56.not = icmp eq i32 %38, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %sip.0.copyload)
  %cmp58.not = icmp eq i32 %38, %sip.0.copyload
  %or.cond = select i1 %cmp56.not, i1 true, i1 %cmp58.not
  br i1 %or.cond, label %if.end61, label %if.end55.drop_unlock_crit_edge

if.end55.drop_unlock_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop_unlock

if.end61:                                         ; preds = %if.end55
  store ptr %d.0, ptr @ic_dev, align 4
  %39 = load i32, ptr @ic_myaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp62 = icmp eq i32 %39, -1
  br i1 %cmp62, label %if.then64, label %if.end61.if.end65_crit_edge

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  store i32 %tip.0.copyload, ptr @ic_myaddr, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end61.if.end65_crit_edge
  store i32 %sip.0.copyload, ptr @ic_servaddr, align 4
  store i32 %sip.0.copyload, ptr @ic_addrservaddr, align 4
  store volatile i32 2, ptr @ic_got_reply, align 4
  br label %drop_unlock

drop_unlock:                                      ; preds = %if.end65, %if.end55.drop_unlock_crit_edge, %if.end42.critedge.drop_unlock_crit_edge, %while.cond.drop_unlock_crit_edge, %if.end31.drop_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ic_recv_lock) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %drop_unlock, %if.end27.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge, %if.end17.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge, %pskb_may_pull.exit.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %if.then6.i.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %skb.sink = phi ptr [ %skb, %if.then6.i.cleanup.sink.split_crit_edge ], [ %skb.addr.0.i111, %if.end8.cleanup.sink.split_crit_edge ], [ %skb.addr.0.i111, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ %skb.addr.0.i111, %if.end17.cleanup.sink.split_crit_edge ], [ %skb.addr.0.i111, %if.end22.cleanup.sink.split_crit_edge ], [ %skb.addr.0.i111, %drop_unlock ], [ %skb.addr.0.i111, %if.end27.cleanup.sink.split_crit_edge ], [ %skb.addr.0.i111, %pskb_may_pull.exit.cleanup.sink.split_crit_edge ], [ %skb, %entry.cleanup.sink.split_crit_edge ], [ %skb.addr.0.i111, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 1, %if.then6.i.cleanup.sink.split_crit_edge ], [ 0, %if.end8.cleanup.sink.split_crit_edge ], [ 0, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ 0, %if.end17.cleanup.sink.split_crit_edge ], [ 0, %if.end22.cleanup.sink.split_crit_edge ], [ 0, %drop_unlock ], [ 0, %if.end27.cleanup.sink.split_crit_edge ], [ 0, %pskb_may_pull.exit.cleanup.sink.split_crit_edge ], [ 0, %entry.cleanup.sink.split_crit_edge ], [ 0, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.sink, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %skb_share_check.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %skb_share_check.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ic_dhcp_init_options(ptr noundef %options, ptr nocapture noundef readonly %d) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ic_servaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  %conv = select i1 %cmp, i8 1, i8 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ic_dhcp_init_options.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ic_dhcp_init_options, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !367

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv3 = zext i8 %conv to i32
  %dev = getelementptr inbounds %struct.ic_device, ptr %d, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ic_dhcp_init_options.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.126, i32 noundef %conv3, ptr noundef %2) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %options to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 1669485411, ptr %options, align 1
  %add.ptr = getelementptr i8, ptr %options, i32 4
  %incdec.ptr = getelementptr i8, ptr %options, i32 5
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 53, ptr %add.ptr, align 1
  %incdec.ptr4 = getelementptr i8, ptr %options, i32 6
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %incdec.ptr, align 1
  %incdec.ptr5 = getelementptr i8, ptr %options, i32 7
  %6 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %incdec.ptr4, align 1
  br i1 %cmp, label %do.end.if.end16_crit_edge, label %if.then9

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %incdec.ptr10 = getelementptr i8, ptr %options, i32 8
  %7 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 54, ptr %incdec.ptr5, align 1
  %incdec.ptr11 = getelementptr i8, ptr %options, i32 9
  %8 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %incdec.ptr10, align 1
  %9 = load i32, ptr @ic_servaddr, align 4
  %10 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %incdec.ptr11, align 1
  %add.ptr12 = getelementptr i8, ptr %options, i32 13
  %incdec.ptr13 = getelementptr i8, ptr %options, i32 14
  %11 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 50, ptr %add.ptr12, align 1
  %incdec.ptr14 = getelementptr i8, ptr %options, i32 15
  %12 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %incdec.ptr13, align 1
  %13 = load i32, ptr @ic_myaddr, align 4
  %14 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %incdec.ptr14, align 1
  %add.ptr15 = getelementptr i8, ptr %options, i32 19
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %do.end.if.end16_crit_edge
  %e.0 = phi ptr [ %add.ptr15, %if.then9 ], [ %incdec.ptr5, %do.end.if.end16_crit_edge ]
  %incdec.ptr17 = getelementptr i8, ptr %e.0, i32 1
  %15 = ptrtoint ptr %e.0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 55, ptr %e.0, align 1
  %incdec.ptr18 = getelementptr i8, ptr %e.0, i32 2
  %16 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 9, ptr %incdec.ptr17, align 1
  %17 = call ptr @memcpy(ptr %incdec.ptr18, ptr @ic_dhcp_init_options.ic_req_params, i32 9)
  %add.ptr19 = getelementptr i8, ptr %e.0, i32 11
  %.b = load i1, ptr @ic_host_name_set, align 4
  br i1 %.b, label %if.then21, label %if.end16.if.end32_crit_edge

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %incdec.ptr22 = getelementptr i8, ptr %e.0, i32 12
  %18 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 12, ptr %add.ptr19, align 1
  %19 = tail call i32 @llvm.read_register.i32(metadata !357) #16
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 110
  %23 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %uts_ns.i, align 4
  %nodename = getelementptr inbounds %struct.new_utsname, ptr %26, i32 0, i32 1
  %call25 = tail call i32 @strlen(ptr noundef %nodename) #19
  %conv26 = trunc i32 %call25 to i8
  %incdec.ptr27 = getelementptr i8, ptr %e.0, i32 13
  %27 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv26, ptr %incdec.ptr22, align 1
  %28 = tail call i32 @llvm.read_register.i32(metadata !357) #16
  %and.i.i104 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i104 to ptr
  %task.i105 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i105 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i105, align 8
  %nsproxy.i106 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 110
  %32 = ptrtoint ptr %nsproxy.i106 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nsproxy.i106, align 4
  %uts_ns.i107 = getelementptr inbounds %struct.nsproxy, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %uts_ns.i107 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uts_ns.i107, align 4
  %nodename29 = getelementptr inbounds %struct.new_utsname, ptr %35, i32 0, i32 1
  %36 = call ptr @memcpy(ptr %incdec.ptr27, ptr %nodename29, i32 %call25)
  %add.ptr31 = getelementptr i8, ptr %incdec.ptr27, i32 %call25
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %if.end16.if.end32_crit_edge
  %e.1 = phi ptr [ %add.ptr31, %if.then21 ], [ %add.ptr19, %if.end16.if.end32_crit_edge ]
  %37 = load i8, ptr @vendor_class_identifier, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool33.not = icmp eq i8 %37, 0
  br i1 %tobool33.not, label %if.end32.if.end45_crit_edge, label %do.end37

if.end32.if.end45_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

do.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @vendor_class_identifier) #21
  %incdec.ptr40 = getelementptr i8, ptr %e.1, i32 1
  %38 = ptrtoint ptr %e.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 60, ptr %e.1, align 1
  %call41 = tail call i32 @strlen(ptr noundef nonnull @vendor_class_identifier) #19
  %conv42 = trunc i32 %call41 to i8
  %incdec.ptr43 = getelementptr i8, ptr %e.1, i32 2
  %39 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv42, ptr %incdec.ptr40, align 1
  %40 = call ptr @memcpy(ptr %incdec.ptr43, ptr @vendor_class_identifier, i32 %call41)
  %add.ptr44 = getelementptr i8, ptr %incdec.ptr43, i32 %call41
  br label %if.end45

if.end45:                                         ; preds = %do.end37, %if.end32.if.end45_crit_edge
  %e.2 = phi ptr [ %add.ptr44, %do.end37 ], [ %e.1, %if.end32.if.end45_crit_edge ]
  %call46 = tail call i32 @strlen(ptr noundef getelementptr inbounds ([253 x i8], ptr @dhcp_client_identifier, i32 0, i32 1)) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp sgt i32 %call46, 0
  br i1 %cmp47, label %land.lhs.true, label %if.end45.if.end59_crit_edge

if.end45.if.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end45
  %sub.ptr.lhs.cast = ptrtoint ptr %e.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %options to i32
  %sub.ptr.sub.neg = add i32 %sub.ptr.rhs.cast, 311
  %sub49 = sub i32 %sub.ptr.sub.neg, %sub.ptr.lhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %sub49)
  %cmp50 = icmp slt i32 %call46, %sub49
  br i1 %cmp50, label %if.then52, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %incdec.ptr53 = getelementptr i8, ptr %e.2, i32 1
  %41 = ptrtoint ptr %e.2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 61, ptr %e.2, align 1
  %add = add nuw nsw i32 %call46, 1
  %conv54 = trunc i32 %add to i8
  %incdec.ptr55 = getelementptr i8, ptr %e.2, i32 2
  %42 = ptrtoint ptr %incdec.ptr53 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv54, ptr %incdec.ptr53, align 1
  %43 = call ptr @memcpy(ptr %incdec.ptr55, ptr @dhcp_client_identifier, i32 %add)
  %add.ptr58 = getelementptr i8, ptr %incdec.ptr55, i32 %add
  br label %if.end59

if.end59:                                         ; preds = %if.then52, %land.lhs.true.if.end59_crit_edge, %if.end45.if.end59_crit_edge
  %e.3 = phi ptr [ %add.ptr58, %if.then52 ], [ %e.2, %land.lhs.true.if.end59_crit_edge ], [ %e.2, %if.end45.if.end59_crit_edge ]
  %44 = ptrtoint ptr %e.3 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %e.3, align 1
  ret void
}

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @ic_bootp_init_ext(ptr nocapture noundef writeonly %e) unnamed_addr #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %e to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 1669485411, ptr %e, align 1
  %add.ptr = getelementptr i8, ptr %e, i32 4
  %incdec.ptr = getelementptr i8, ptr %e, i32 5
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %add.ptr, align 1
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %incdec.ptr, align 1
  %add.ptr2 = getelementptr i8, ptr %e, i32 10
  %incdec.ptr3 = getelementptr i8, ptr %e, i32 11
  %3 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %add.ptr2, align 1
  %4 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %incdec.ptr3, align 1
  %add.ptr5 = getelementptr i8, ptr %e, i32 16
  %incdec.ptr6 = getelementptr i8, ptr %e, i32 17
  %5 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %add.ptr5, align 1
  %6 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %incdec.ptr6, align 1
  %add.ptr8 = getelementptr i8, ptr %e, i32 30
  %incdec.ptr9 = getelementptr i8, ptr %e, i32 31
  %7 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 12, ptr %add.ptr8, align 1
  %8 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %incdec.ptr9, align 1
  %add.ptr11 = getelementptr i8, ptr %e, i32 64
  %incdec.ptr12 = getelementptr i8, ptr %e, i32 65
  %9 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 40, ptr %add.ptr11, align 1
  %10 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %incdec.ptr12, align 1
  %add.ptr14 = getelementptr i8, ptr %e, i32 98
  %incdec.ptr15 = getelementptr i8, ptr %e, i32 99
  %11 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 17, ptr %add.ptr14, align 1
  %12 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 40, ptr %incdec.ptr15, align 1
  %add.ptr17 = getelementptr i8, ptr %e, i32 140
  %incdec.ptr18 = getelementptr i8, ptr %e, i32 141
  %13 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 57, ptr %add.ptr17, align 1
  %incdec.ptr19 = getelementptr i8, ptr %e, i32 142
  %14 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %incdec.ptr18, align 1
  %incdec.ptr20 = getelementptr i8, ptr %e, i32 143
  %15 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %incdec.ptr19, align 1
  %incdec.ptr21 = getelementptr i8, ptr %e, i32 144
  %16 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -106, ptr %incdec.ptr20, align 1
  %17 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %incdec.ptr21, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arp_send(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devinet_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_rt_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ic_proto_name(ptr noundef %name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(3) @.str.156) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(4) @.str.157) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(4) @.str.152) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.return_crit_edge, label %lor.lhs.false5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false5:                                   ; preds = %if.end
  %call6 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.153) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false5.return_crit_edge, label %if.else

lor.lhs.false5.return_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.else:                                          ; preds = %lor.lhs.false5
  %call9 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.158, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else33

if.then11:                                        ; preds = %if.else
  %0 = load i32, ptr @ic_proto_enabled, align 4
  %and = and i32 %0, -3
  store i32 %and, ptr @ic_proto_enabled, align 4
  %call12 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.159)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then11.return_crit_edge, label %if.then14

if.then11.return_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then14:                                        ; preds = %if.then11
  %add.ptr = getelementptr i8, ptr %call12, i32 5
  %call15 = tail call ptr @strchr(ptr noundef %add.ptr, i32 noundef 44)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then14.return_crit_edge, label %if.end18

if.then14.return_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end18:                                         ; preds = %if.then14
  %1 = ptrtoint ptr %call15 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %call15, align 1
  %call19 = tail call i32 @kstrtou8(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull @dhcp_client_identifier) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.if.end28_crit_edge, label %do.body

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

do.body:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ic_proto_name.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ic_proto_name, %if.then26)) #16
          to label %if.end28 [label %if.then26], !srcloc !367

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ic_proto_name.__UNIQUE_ID_ddebug517, ptr noundef nonnull @.str.161) #16
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %do.body, %if.end18.if.end28_crit_edge
  %add.ptr29 = getelementptr i8, ptr %call15, i32 1
  %call30 = tail call ptr @strncpy(ptr noundef getelementptr inbounds ([253 x i8], ptr @dhcp_client_identifier, i32 0, i32 1), ptr noundef %add.ptr29, i32 noundef 251)
  %2 = ptrtoint ptr %call15 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 44, ptr %call15, align 1
  br label %return

if.else33:                                        ; preds = %if.else
  %call34 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.162) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #18
  %3 = load i32, ptr @ic_proto_enabled, align 4
  %and37 = and i32 %3, -259
  store i32 %and37, ptr @ic_proto_enabled, align 4
  br label %return

if.else38:                                        ; preds = %if.else33
  %call39 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.163) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #18
  %4 = load i32, ptr @ic_proto_enabled, align 4
  %and42 = and i32 %4, -258
  store i32 %and42, ptr @ic_proto_enabled, align 4
  br label %return

if.else43:                                        ; preds = %if.else38
  %call44 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.164) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.else43.return_crit_edge

if.else43.return_crit_edge:                       ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then46:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #18
  %5 = load i32, ptr @ic_proto_enabled, align 4
  %and47 = and i32 %5, -257
  store i32 %and47, ptr @ic_proto_enabled, align 4
  br label %return

return:                                           ; preds = %if.then46, %if.else43.return_crit_edge, %if.then41, %if.then36, %if.end28, %if.then14.return_crit_edge, %if.then11.return_crit_edge, %lor.lhs.false5.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ 1, %if.then46 ], [ 1, %if.then41 ], [ 1, %if.then36 ], [ 1, %lor.lhs.false.return_crit_edge ], [ 1, %entry.return_crit_edge ], [ 0, %lor.lhs.false5.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 1, %if.then14.return_crit_edge ], [ 1, %if.then11.return_crit_edge ], [ 1, %if.end28 ], [ 0, %if.else43.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nobuiltin }
attributes #20 = { cold }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !156, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !213, !214, !216, !218, !219, !221, !223, !224, !225, !227, !228, !230, !231, !233, !235, !237, !238, !239, !240, !242, !243, !244, !246, !247, !249, !250, !251, !253, !255, !256, !257, !259, !261, !263, !265, !267, !268, !269, !271, !273, !275, !276, !277, !278, !280, !281, !282, !284, !286, !288, !290, !292, !294, !296, !298, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !318, !320, !321, !322, !323, !325, !327, !329, !330, !331, !333, !335, !337, !339, !341, !342, !343, !345, !347, !349, !350, !351, !353, !354, !355, !356}
!llvm.named.register.sp = !{!357}
!llvm.module.flags = !{!358, !359, !360, !361, !362, !363, !364, !365}
!llvm.ident = !{!366}

!0 = !{ptr @ic_set_manually, !1, !"ic_set_manually", i1 false, i1 false}
!1 = !{!"../net/ipv4/ipconfig.c", i32 113, i32 5}
!2 = !{ptr @ic_proto_enabled, !3, !"ic_proto_enabled", i1 false, i1 false}
!3 = !{!"../net/ipv4/ipconfig.c", i32 118, i32 5}
!4 = !{ptr @ic_myaddr, !5, !"ic_myaddr", i1 false, i1 false}
!5 = !{!"../net/ipv4/ipconfig.c", i32 132, i32 8}
!6 = !{ptr @ic_gateway, !7, !"ic_gateway", i1 false, i1 false}
!7 = !{!"../net/ipv4/ipconfig.c", i32 134, i32 8}
!8 = !{ptr @ic_servaddr, !9, !"ic_servaddr", i1 false, i1 false}
!9 = !{!"../net/ipv4/ipconfig.c", i32 140, i32 8}
!10 = !{ptr @root_server_addr, !11, !"root_server_addr", i1 false, i1 false}
!11 = !{!"../net/ipv4/ipconfig.c", i32 142, i32 8}
!12 = !{ptr @root_server_path, !13, !"root_server_path", i1 false, i1 false}
!13 = !{!"../net/ipv4/ipconfig.c", i32 143, i32 4}
!14 = !{ptr @__initcall__kmod_ipconfig__516_1650_ip_auto_config7, !15, !"__initcall__kmod_ipconfig__516_1650_ip_auto_config7", i1 false, i1 false}
!15 = !{!"../net/ipv4/ipconfig.c", i32 1650, i32 1}
!16 = !{ptr @__setup_ip_auto_config_setup, !17, !"__setup_ip_auto_config_setup", i1 false, i1 false}
!17 = !{!"../net/ipv4/ipconfig.c", i32 1807, i32 1}
!18 = !{ptr @__setup_nfsaddrs_config_setup, !19, !"__setup_nfsaddrs_config_setup", i1 false, i1 false}
!19 = !{!"../net/ipv4/ipconfig.c", i32 1813, i32 1}
!20 = !{ptr @__setup_vendor_class_identifier_setup, !21, !"__setup_vendor_class_identifier_setup", i1 false, i1 false}
!21 = !{!"../net/ipv4/ipconfig.c", i32 1824, i32 1}
!22 = !{ptr @__setup_set_carrier_timeout, !23, !"__setup_set_carrier_timeout", i1 false, i1 false}
!23 = !{!"../net/ipv4/ipconfig.c", i32 1839, i32 1}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ipv4/ipconfig.c", i32 1483, i32 2}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv4/ipconfig.c", i32 1486, i32 28}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ipv4/ipconfig.c", i32 1492, i32 2}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ip_auto_config.__UNIQUE_ID_ddebug515, !29, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/ipv4/ipconfig.c", i32 1542, i32 5}
!36 = !{ptr @ip_auto_config._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ip_auto_config._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ipv4/ipconfig.c", i32 1548, i32 5}
!40 = !{ptr @ip_auto_config._entry.7, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ip_auto_config._entry_ptr.9, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/ipv4/ipconfig.c", i32 1554, i32 5}
!44 = !{ptr @ip_auto_config._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ip_auto_config._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/ipv4/ipconfig.c", i32 1559, i32 4}
!48 = !{ptr @ip_auto_config._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ip_auto_config._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/ipv4/ipconfig.c", i32 1593, i32 2}
!52 = !{ptr @ip_auto_config._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ip_auto_config._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/ipv4/ipconfig.c", i32 1595, i32 2}
!56 = !{ptr @ip_auto_config._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ip_auto_config._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/ipv4/ipconfig.c", i32 1598, i32 2}
!60 = !{ptr @ip_auto_config._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ip_auto_config._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/ipv4/ipconfig.c", i32 1600, i32 2}
!64 = !{ptr @ip_auto_config._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ip_auto_config._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/ipv4/ipconfig.c", i32 1603, i32 3}
!68 = !{ptr @ip_auto_config._entry.28, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ip_auto_config._entry_ptr.30, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/ipv4/ipconfig.c", i32 1608, i32 5}
!72 = !{ptr @ip_auto_config._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ip_auto_config._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/ipv4/ipconfig.c", i32 1611, i32 5}
!76 = !{ptr @ip_auto_config._entry.34, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ip_auto_config._entry_ptr.36, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/ipv4/ipconfig.c", i32 1617, i32 4}
!80 = !{ptr @ip_auto_config._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ip_auto_config._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/ipv4/ipconfig.c", i32 1623, i32 5}
!84 = !{ptr @ip_auto_config._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ip_auto_config._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/ipv4/ipconfig.c", i32 1626, i32 5}
!88 = !{ptr @ip_auto_config._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ip_auto_config._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @ip_auto_config._entry.46, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../net/ipv4/ipconfig.c", i32 1632, i32 4}
!92 = !{ptr @ip_auto_config._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/ipv4/ipconfig.c", i32 1332, i32 19}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/ipv4/ipconfig.c", i32 1333, i32 35}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/ipv4/ipconfig.c", i32 1334, i32 41}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/ipv4/ipconfig.c", i32 1334, i32 50}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/ipv4/ipconfig.c", i32 1336, i32 17}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/ipv4/ipconfig.c", i32 1340, i32 7}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/ipv4/ipconfig.c", i32 1343, i32 20}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/ipv4/ipconfig.c", i32 1347, i32 19}
!109 = !{ptr @ipconfig_dir, !110, !"ipconfig_dir", i1 false, i1 false}
!110 = !{!"../net/ipv4/ipconfig.c", i32 1324, i32 31}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/ipv4/ipconfig.c", i32 1372, i32 32}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/ipv4/ipconfig.c", i32 1372, i32 40}
!115 = !{ptr @ntp_servers_proc_ops, !116, !"ntp_servers_proc_ops", i1 false, i1 false}
!116 = !{!"../net/ipv4/ipconfig.c", i32 1395, i32 1}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/ipv4/ipconfig.c", i32 1391, i32 20}
!119 = distinct !{null, !120, !"ic_enable", i1 false, i1 false}
!120 = !{!"../net/ipv4/ipconfig.c", i32 115, i32 12}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/ipv4/ipconfig.c", i32 207, i32 26}
!123 = !{ptr @user_dev_name, !124, !"user_dev_name", i1 false, i1 false}
!124 = !{!"../net/ipv4/ipconfig.c", i32 168, i32 13}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/ipv4/ipconfig.c", i32 225, i32 4}
!127 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ic_open_devs._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @ic_open_devs._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/ipv4/ipconfig.c", i32 234, i32 5}
!132 = !{ptr @ic_open_devs._entry.62, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ic_open_devs._entry_ptr.64, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @ic_open_devs._entry.65, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../net/ipv4/ipconfig.c", i32 243, i32 5}
!136 = !{ptr @ic_open_devs._entry_ptr.66, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/ipv4/ipconfig.c", i32 261, i32 4}
!139 = !{ptr @ic_open_devs.__UNIQUE_ID_ddebug507, !138, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/ipv4/ipconfig.c", i32 297, i32 3}
!142 = !{ptr @ic_open_devs._entry.68, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ic_open_devs._entry_ptr.70, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/ipv4/ipconfig.c", i32 306, i32 4}
!146 = !{ptr @ic_open_devs._entry.71, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @ic_open_devs._entry_ptr.73, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/ipv4/ipconfig.c", i32 309, i32 4}
!150 = !{ptr @ic_open_devs._entry.74, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @ic_open_devs._entry_ptr.76, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @ic_proto_have_if, !153, !"ic_proto_have_if", i1 false, i1 false}
!153 = !{!"../net/ipv4/ipconfig.c", i32 171, i32 12}
!154 = !{ptr @carrier_timeout, !155, !"carrier_timeout", i1 false, i1 false}
!155 = !{!"../net/ipv4/ipconfig.c", i32 103, i32 21}
!156 = !{ptr @ic_first_dev, !157, !"ic_first_dev", i1 false, i1 false}
!157 = !{!"../net/ipv4/ipconfig.c", i32 197, i32 26}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/ipv4/ipconfig.c", i32 1200, i32 3}
!160 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ic_dynamic._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @ic_dynamic._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../net/ipv4/ipconfig.c", i32 1206, i32 3}
!165 = !{ptr @ic_dynamic._entry.79, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @ic_dynamic._entry_ptr.81, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../net/ipv4/ipconfig.c", i32 1210, i32 3}
!169 = !{ptr @ic_dynamic._entry.82, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @ic_dynamic._entry_ptr.84, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.86, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/ipv4/ipconfig.c", i32 1237, i32 2}
!173 = !{ptr @ic_dynamic._entry.85, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @ic_dynamic._entry_ptr.87, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.91, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../net/ipv4/ipconfig.c", i32 1271, i32 4}
!179 = !{ptr @ic_dynamic._entry.90, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @ic_dynamic._entry_ptr.92, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.94, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../net/ipv4/ipconfig.c", i32 1277, i32 4}
!183 = !{ptr @ic_dynamic._entry.93, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @ic_dynamic._entry_ptr.95, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.97, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/ipv4/ipconfig.c", i32 1285, i32 4}
!187 = !{ptr @ic_dynamic._entry.96, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @ic_dynamic._entry_ptr.98, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.100, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/ipv4/ipconfig.c", i32 1295, i32 3}
!191 = !{ptr @ic_dynamic._entry.99, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @ic_dynamic._entry_ptr.101, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.103, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../net/ipv4/ipconfig.c", i32 1312, i32 2}
!195 = !{ptr @ic_dynamic._entry.102, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @ic_dynamic._entry_ptr.104, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @bootp_packet_type, !198, !"bootp_packet_type", i1 false, i1 false}
!198 = !{!"../net/ipv4/ipconfig.c", i32 663, i32 27}
!199 = !{ptr @.str.105, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../net/ipv4/ipconfig.c", i32 1016, i32 3}
!201 = !{ptr @.str.106, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @ic_bootp_recv._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @ic_bootp_recv._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.108, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../net/ipv4/ipconfig.c", i32 1064, i32 3}
!206 = !{ptr @ic_bootp_recv._entry.107, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @ic_bootp_recv._entry_ptr.109, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.110, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../net/ipv4/ipconfig.c", i32 1100, i32 4}
!210 = !{ptr @ic_bootp_recv.__UNIQUE_ID_ddebug513, !209, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!211 = !{ptr @.str.111, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../net/ipv4/ipconfig.c", i32 1113, i32 5}
!213 = !{ptr @ic_bootp_recv.__UNIQUE_ID_ddebug514, !212, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!214 = distinct !{null, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!216 = !{ptr @.str.113, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../net/ipv4/ipconfig.c", i32 177, i32 8}
!218 = !{ptr @ic_recv_lock, !217, !"ic_recv_lock", i1 false, i1 false}
!219 = !{ptr @ic_bootp_cookie, !220, !"ic_bootp_cookie", i1 false, i1 false}
!220 = !{!"../net/ipv4/ipconfig.c", i32 672, i32 17}
!221 = !{ptr @.str.114, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../net/ipv4/ipconfig.c", i32 922, i32 2}
!223 = !{ptr @.str.115, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @ic_do_bootp_ext.__UNIQUE_ID_ddebug510, !222, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!225 = !{ptr @.str.116, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../net/ipv4/ipconfig.c", i32 924, i32 3}
!227 = !{ptr @ic_do_bootp_ext.__UNIQUE_ID_ddebug511, !226, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!228 = !{ptr @.str.117, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../net/ipv4/ipconfig.c", i32 925, i32 2}
!230 = !{ptr @ic_do_bootp_ext.__UNIQUE_ID_ddebug512, !229, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!231 = distinct !{null, !232, !"ic_host_name_set", i1 false, i1 false}
!232 = !{!"../net/ipv4/ipconfig.c", i32 130, i32 12}
!233 = !{ptr @rarp_packet_type, !234, !"rarp_packet_type", i1 false, i1 false}
!234 = !{!"../net/ipv4/ipconfig.c", i32 480, i32 27}
!235 = !{ptr @.str.118, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../net/ipv4/ipconfig.c", i32 862, i32 3}
!237 = !{ptr @.str.119, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @ic_bootp_send_if._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @ic_bootp_send_if._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.121, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../net/ipv4/ipconfig.c", i32 887, i32 3}
!242 = !{ptr @ic_bootp_send_if._entry.120, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @ic_bootp_send_if._entry_ptr.122, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @ic_bootp_send_if._entry.123, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../net/ipv4/ipconfig.c", i32 892, i32 3}
!246 = !{ptr @ic_bootp_send_if._entry_ptr.124, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.125, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../net/ipv4/ipconfig.c", i32 684, i32 2}
!249 = !{ptr @.str.126, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @ic_dhcp_init_options.__UNIQUE_ID_ddebug509, !248, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!251 = !{ptr @ic_dhcp_init_options.ic_req_params, !252, !"ic_req_params", i1 false, i1 false}
!252 = !{!"../net/ipv4/ipconfig.c", i32 707, i32 19}
!253 = !{ptr @.str.127, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../net/ipv4/ipconfig.c", i32 732, i32 4}
!255 = !{ptr @ic_dhcp_init_options._entry, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @ic_dhcp_init_options._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @vendor_class_identifier, !258, !"vendor_class_identifier", i1 false, i1 false}
!258 = !{!"../net/ipv4/ipconfig.c", i32 146, i32 13}
!259 = !{ptr @dhcp_client_identifier, !260, !"dhcp_client_identifier", i1 false, i1 false}
!260 = !{!"../net/ipv4/ipconfig.c", i32 149, i32 13}
!261 = !{ptr @ic_dhcp_msgtype, !262, !"ic_dhcp_msgtype", i1 false, i1 false}
!262 = !{!"../net/ipv4/ipconfig.c", i32 181, i32 12}
!263 = !{ptr @ic_addrservaddr, !264, !"ic_addrservaddr", i1 false, i1 false}
!264 = !{!"../net/ipv4/ipconfig.c", i32 137, i32 15}
!265 = !{ptr @.str.128, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../net/ipv4/ipconfig.c", i32 343, i32 4}
!267 = !{ptr @.str.129, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @ic_close_devs.__UNIQUE_ID_ddebug508, !266, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!269 = !{ptr @ic_dev, !270, !"ic_dev", i1 false, i1 false}
!270 = !{!"../net/ipv4/ipconfig.c", i32 198, i32 26}
!271 = !{ptr @.str.130, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../net/ipv4/ipconfig.c", i32 446, i32 37}
!273 = !{ptr @.str.131, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../net/ipv4/ipconfig.c", i32 461, i32 4}
!275 = !{ptr @.str.132, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @ic_defaults._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @ic_defaults._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.134, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../net/ipv4/ipconfig.c", i32 465, i32 3}
!280 = !{ptr @ic_defaults._entry.133, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @ic_defaults._entry_ptr.135, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @ic_got_reply, !283, !"ic_got_reply", i1 false, i1 false}
!283 = !{!"../net/ipv4/ipconfig.c", i32 178, i32 21}
!284 = !{ptr @ic_proto_used, !285, !"ic_proto_used", i1 false, i1 false}
!285 = !{!"../net/ipv4/ipconfig.c", i32 155, i32 12}
!286 = !{ptr @ic_netmask, !287, !"ic_netmask", i1 false, i1 false}
!287 = !{!"../net/ipv4/ipconfig.c", i32 133, i32 15}
!288 = !{ptr @ic_domain, !289, !"ic_domain", i1 false, i1 false}
!289 = !{!"../net/ipv4/ipconfig.c", i32 161, i32 11}
!290 = !{ptr @ic_dev_mtu, !291, !"ic_dev_mtu", i1 false, i1 false}
!291 = !{!"../net/ipv4/ipconfig.c", i32 174, i32 12}
!292 = !{ptr @ic_nameservers, !293, !"ic_nameservers", i1 false, i1 false}
!293 = !{!"../net/ipv4/ipconfig.c", i32 159, i32 15}
!294 = !{ptr @ic_ntp_servers, !295, !"ic_ntp_servers", i1 false, i1 false}
!295 = !{!"../net/ipv4/ipconfig.c", i32 160, i32 15}
!296 = !{ptr @.str.136, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../net/ipv4/ipconfig.c", i32 377, i32 3}
!298 = !{ptr @.str.137, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @ic_setup_if._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @ic_setup_if._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.139, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../net/ipv4/ipconfig.c", i32 383, i32 3}
!303 = !{ptr @ic_setup_if._entry.138, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @ic_setup_if._entry_ptr.140, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.142, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../net/ipv4/ipconfig.c", i32 389, i32 3}
!307 = !{ptr @ic_setup_if._entry.141, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @ic_setup_if._entry_ptr.143, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.145, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../net/ipv4/ipconfig.c", i32 400, i32 4}
!311 = !{ptr @ic_setup_if._entry.144, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @ic_setup_if._entry_ptr.146, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.147, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../net/ipv4/ipconfig.c", i32 417, i32 4}
!315 = !{ptr @.str.148, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @ic_setup_routes._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @ic_setup_routes._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.150, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../net/ipv4/ipconfig.c", i32 425, i32 4}
!320 = !{ptr @ic_setup_routes._entry.149, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @ic_setup_routes._entry_ptr.151, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @__setup_str_ip_auto_config_setup, !17, !"__setup_str_ip_auto_config_setup", i1 false, i1 false}
!323 = !{ptr @.str.152, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../net/ipv4/ipconfig.c", i32 1725, i32 20}
!325 = !{ptr @.str.153, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../net/ipv4/ipconfig.c", i32 1726, i32 20}
!327 = !{ptr @.str.154, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../net/ipv4/ipconfig.c", i32 1741, i32 4}
!329 = !{ptr @.str.155, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @ip_auto_config_setup.__UNIQUE_ID_ddebug518, !328, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!331 = !{ptr @.str.156, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../net/ipv4/ipconfig.c", i32 1659, i32 20}
!333 = !{ptr @.str.157, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../net/ipv4/ipconfig.c", i32 1659, i32 43}
!335 = !{ptr @.str.158, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../net/ipv4/ipconfig.c", i32 1666, i32 26}
!337 = !{ptr @.str.159, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../net/ipv4/ipconfig.c", i32 1670, i32 28}
!339 = !{ptr @.str.160, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../net/ipv4/ipconfig.c", i32 1680, i32 5}
!341 = !{ptr @.str.161, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @ic_proto_name.__UNIQUE_ID_ddebug517, !340, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!343 = !{ptr @.str.162, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../net/ipv4/ipconfig.c", i32 1688, i32 25}
!345 = !{ptr @.str.163, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../net/ipv4/ipconfig.c", i32 1694, i32 25}
!347 = !{ptr @.str.164, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../net/ipv4/ipconfig.c", i32 1700, i32 25}
!349 = !{ptr @__setup_str_nfsaddrs_config_setup, !19, !"__setup_str_nfsaddrs_config_setup", i1 false, i1 false}
!350 = !{ptr @__setup_str_vendor_class_identifier_setup, !21, !"__setup_str_vendor_class_identifier_setup", i1 false, i1 false}
!351 = !{ptr @.str.165, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../net/ipv4/ipconfig.c", i32 1820, i32 3}
!353 = !{ptr @.str.166, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @vendor_class_identifier_setup._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @vendor_class_identifier_setup._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @__setup_str_set_carrier_timeout, !23, !"__setup_str_set_carrier_timeout", i1 false, i1 false}
!357 = !{!"sp"}
!358 = !{i32 1, !"wchar_size", i32 2}
!359 = !{i32 1, !"min_enum_size", i32 4}
!360 = !{i32 8, !"branch-target-enforcement", i32 0}
!361 = !{i32 8, !"sign-return-address", i32 0}
!362 = !{i32 8, !"sign-return-address-all", i32 0}
!363 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!364 = !{i32 7, !"uwtable", i32 1}
!365 = !{i32 7, !"frame-pointer", i32 2}
!366 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!367 = !{i64 2148748922, i64 2148748927, i64 2148748940, i64 2148748984, i64 2148749018, i64 2148749039}
!368 = !{!"auto-init"}
!369 = !{i64 6768540, i64 6768579, i64 6768605, i64 6768629, i64 6768654, i64 6768680, i64 6768705, i64 6768731, i64 6768758, i64 6768784, i64 6768823, i64 6768867, i64 6768898, i64 6768923}
!370 = !{i64 6768157}
!371 = !{!"branch_weights", i32 1, i32 2000}
